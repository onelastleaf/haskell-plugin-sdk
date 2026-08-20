module Onelastleaf.PluginSDK.Runtime (runPlugin) where

import Control.Concurrent.Async
import Control.Concurrent.STM
import Control.Exception
import Control.Monad
import Data.ByteString qualified as ByteString
import Data.Char (isDigit)
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.Maybe
import Data.ProtoLens.Labels ()
import Data.ProtoLens.Encoding qualified as Protobuf
import Data.Text (Text)
import Data.Text qualified as Text
import Data.Word
import System.Environment
import System.IO

import Network.GRPC.Client
import Network.GRPC.Client.StreamType.IO
import Network.GRPC.Common
import Network.GRPC.Common.Protobuf

import Proto.Oll.Common
import Proto.Oll.Plugin.API

import Onelastleaf.PluginSDK.Host
import Onelastleaf.PluginSDK.Internal.Endpoint
import Onelastleaf.PluginSDK.Internal.Sender
import Onelastleaf.PluginSDK.Types

data Phase = AwaitHostHello | AwaitHostReady !Text | Active

data Job = Job {
      jobTask      :: !(Async ())
    , jobCancelled :: !(TVar Bool)
    }

data Event = HostEnvelope !PluginEnvelope | HostStreamClosed | JobFinished !Text

data Runtime = Runtime {
      runtimePlugin        :: !Plugin
    , runtimeSender        :: !Sender
    , runtimeEvents        :: !(TBQueue Event)
    , runtimePhase         :: !Phase
    , runtimeSessionId     :: !Text
    , runtimeInstanceId    :: !Text
    , runtimeLastMessageId :: !Word64
    , runtimeMaxCallDepth  :: !Word32
    , runtimeMaxCausalDepth :: !Word32
    , runtimeHost          :: !(Maybe Host)
    , runtimeJobs          :: !(Map Text Job)
    , runtimeJobRegistry   :: !(TVar (Map Text Job))
    }

maximumEnvelopeBytes :: Int
maximumEnvelopeBytes = 64 * 1024 * 1024

runPlugin :: Plugin -> IO ()
runPlugin plugin = do
    endpointValue <- getEnv "OLL_PLUGIN_ENDPOINT"
    endpoint <- either (throwIO . userError) pure $ parseEndpoint endpointValue
    race_ observeParent $ withConnection def (server endpoint) $ \connection ->
      biDiStreaming connection (rpc @(Protobuf PluginRuntime "connect")) $
        runSession plugin
  where
    server endpoint = ServerInsecure $ Address
      (endpointHost endpoint)
      (endpointPort endpoint)
      Nothing

observeParent :: IO ()
observeParent = do
    bytes <- ByteString.hGetSome stdin 4096
    unless (ByteString.null bytes) observeParent

runSession
  :: Plugin
  -> (NextElem (Proto PluginEnvelope) -> IO ())
  -> IO (NextElem (Proto PluginEnvelope))
  -> IO ()
runSession plugin send receive = do
    sender <- newSender
    events <- newTBQueueIO 256
    jobRegistry <- newTVarIO Map.empty
    let initial = Runtime {
          runtimePlugin = plugin
        , runtimeSender = sender
        , runtimeEvents = events
        , runtimePhase = AwaitHostHello
        , runtimeSessionId = ""
        , runtimeInstanceId = ""
        , runtimeLastMessageId = 0
        , runtimeMaxCallDepth = 0
        , runtimeMaxCausalDepth = 0
        , runtimeHost = Nothing
        , runtimeJobs = Map.empty
        , runtimeJobRegistry = jobRegistry
        }
    withAsync (runSender sender send) $ \writer -> do
      link writer
      withAsync (receiveLoop receive events) $ \receiver -> do
        link receiver
        runLoop initial `finally` (readTVarIO jobRegistry >>= cancelAll)
        closeSender sender
        wait writer

receiveLoop
  :: IO (NextElem (Proto PluginEnvelope))
  -> TBQueue Event
  -> IO ()
receiveLoop receive events = receive >>= \case
    NoNextElem -> atomically $ writeTBQueue events HostStreamClosed
    NextElem envelope -> do
      atomically $ writeTBQueue events (HostEnvelope $ getProto envelope)
      receiveLoop receive events

runLoop :: Runtime -> IO ()
runLoop staleRuntime = do
  activeJobs <- readTVarIO (runtimeJobRegistry staleRuntime)
  let runtime = staleRuntime {runtimeJobs = activeJobs}
  atomically (readTBQueue $ runtimeEvents runtime) >>= \case
    HostStreamClosed -> throwIO $ userError "host closed the plugin stream"
    JobFinished jobId ->
      atomically (modifyTVar' (runtimeJobRegistry runtime) $ Map.delete jobId)
        >> runLoop runtime {runtimeJobs = Map.delete jobId (runtimeJobs runtime)}
    HostEnvelope envelope -> do
      validated <- validateEnvelope runtime envelope
      continue <- handleEnvelope validated envelope
      maybe (pure ()) runLoop continue

validateEnvelope :: Runtime -> PluginEnvelope -> IO Runtime
validateEnvelope runtime envelope = do
    when (ByteString.length (Protobuf.encodeMessage envelope) > maximumEnvelopeBytes) $
      protocolError "host envelope exceeds 64 MiB"
    let messageId = envelope ^. #messageId
    when (messageId == 0 || messageId <= runtimeLastMessageId runtime) $
      protocolError "host message IDs must be nonzero and strictly increasing"
    trace <- maybe (protocolError "host omitted trace context") pure $
      envelope ^. #maybe'trace
    when (Text.null $ trace ^. #correlationId) $
      protocolError "host omitted correlation context"
    unless (runtimeSessionId runtime == "") $ do
      when (envelope ^. #sessionId /= runtimeSessionId runtime
            || envelope ^. #pluginInstanceId /= runtimeInstanceId runtime) $
        protocolError "host envelope belongs to another plugin instance"
      when (trace ^. #callDepth > runtimeMaxCallDepth runtime) $
        protocolError "host envelope exceeds maximum call depth"
      when (trace ^. #causalDepth > runtimeMaxCausalDepth runtime) $
        protocolError "host envelope exceeds maximum causal depth"
    pure runtime {runtimeLastMessageId = messageId}

handleEnvelope :: Runtime -> PluginEnvelope -> IO (Maybe Runtime)
handleEnvelope runtime envelope = do
    routed <- case runtimeHost runtime of
      Nothing -> pure False
      Just host -> routeHostResponse host envelope
    if routed
      then pure $ Just runtime
      else handleUnsolicited runtime envelope

handleUnsolicited :: Runtime -> PluginEnvelope -> IO (Maybe Runtime)
handleUnsolicited runtime envelope =
    case (runtimePhase runtime, envelope ^. #maybe'payload) of
      (AwaitHostHello, Just (PluginEnvelope'HostHello hello)) ->
        Just <$> acceptHostHello runtime envelope hello
      (AwaitHostReady correlationId, Just (PluginEnvelope'Ready _)) -> do
        when (envelope ^. #trace . #correlationId /= correlationId) $
          protocolError "SessionReady changed handshake correlation context"
        _ <- sendPayload
          (runtimeSender runtime)
          Nothing
          (envelope ^. #trace)
          (PluginEnvelope'Ready defMessage)
        pure $ Just runtime {runtimePhase = Active}
      (Active, Just (PluginEnvelope'StartJob request)) ->
        Just <$> startJob runtime envelope request
      (Active, Just (PluginEnvelope'CancelJob request)) ->
        Just <$> cancelJob runtime envelope request
      (Active, Just (PluginEnvelope'Heartbeat heartbeat)) -> do
        _ <- sendPayload
          (runtimeSender runtime)
          (Just $ envelope ^. #messageId)
          (envelope ^. #trace)
          (PluginEnvelope'Heartbeat heartbeat)
        pure $ Just runtime
      (Active, Just (PluginEnvelope'Shutdown _)) -> do
        cancelAll (runtimeJobs runtime)
        _ <- sendPayload
          (runtimeSender runtime)
          (Just $ envelope ^. #messageId)
          (envelope ^. #trace)
          (PluginEnvelope'ShutdownAcknowledged defMessage)
        pure Nothing
      (_, Just (PluginEnvelope'ProtocolError protocolErrorValue)) ->
        throwIO $ HostError protocolErrorValue
      _ -> protocolError "unexpected host message"

acceptHostHello :: Runtime -> PluginEnvelope -> HostHello -> IO Runtime
acceptHostHello runtime envelope hello = do
    let sessionId = envelope ^. #sessionId
        instanceId = envelope ^. #pluginInstanceId
    when (sessionId == "" || instanceId == "") $
      protocolError "HostHello envelope omitted its session or instance identity"
    validateHostHello (runtimePlugin runtime) hello
    configureSender (runtimeSender runtime) sessionId instanceId
    when (envelope ^. #trace . #callDepth > hello ^. #maximumCallDepth
          || envelope ^. #trace . #causalDepth > hello ^. #maximumCausalDepth) $
      protocolError "HostHello exceeds a negotiated trace depth limit"
    host <- newHost
      (runtimeSender runtime)
      (hello ^. #maximumArtifactChunkBytes)
      (hello ^. #maximumCallDepth)
    let descriptors = map actionDescriptor $
          Map.elems (pluginActions $ runtimePlugin runtime)
        reply = defMessage
          & #pluginId . #value .~ pluginId (runtimePlugin runtime)
          & #pluginName .~ (hello ^. #pluginName)
          & #actions .~ descriptors
          & #pluginVersion .~ pluginVersion (runtimePlugin runtime)
    _ <- sendPayload
      (runtimeSender runtime)
      Nothing
      (envelope ^. #trace)
      (PluginEnvelope'PluginHello reply)
    pure runtime {
        runtimePhase = AwaitHostReady (envelope ^. #trace . #correlationId)
      , runtimeSessionId = sessionId
      , runtimeInstanceId = instanceId
      , runtimeMaxCallDepth = hello ^. #maximumCallDepth
      , runtimeMaxCausalDepth = hello ^. #maximumCausalDepth
      , runtimeHost = Just host
      }
  where
    actionDescriptor action = defMessage
      & #name .~ actionName action
      & #description .~ actionDescription action

validateHostHello :: Plugin -> HostHello -> IO ()
validateHostHello plugin hello = do
    let present = isJust (hello ^. #maybe'node)
          && isJust (hello ^. #maybe'pluginId)
          && isJust (hello ^. #maybe'pluginName)
        valid = present
          && hello ^. #pluginId . #value == pluginId plugin
          && hello ^. #pluginName . #value /= ""
          && hello ^. #maximumCallDepth > 0
          && hello ^. #maximumCausalDepth > 0
          && hello ^. #maximumArtifactChunkBytes > 0
    unless valid $
      protocolError "HostHello does not describe the expected plugin instance"

startJob :: Runtime -> PluginEnvelope -> StartJobRequest -> IO Runtime
startJob runtime envelope request = do
    jobId <- requireJobId request
    when (Map.member jobId $ runtimeJobs runtime) $
      protocolError "duplicate active job"
    invocation <- case request ^. #maybe'invocation of
      Just (StartJobRequest'Action value) -> pure value
      Nothing -> protocolError "StartJobRequest has no action invocation"
    action <- maybe (protocolError "unknown plugin action") pure $
      Map.lookup (invocation ^. #action) (pluginActions $ runtimePlugin runtime)
    _ <- sendPayload
      (runtimeSender runtime)
      (Just $ envelope ^. #messageId)
      (envelope ^. #trace)
      (PluginEnvelope'JobAccepted $ defMessage & #jobId .~ (request ^. #jobId))
    cancellation <- newTVarIO False
    let host = fromMaybe (error "active runtime without host") (runtimeHost runtime)
        context = ActionContext {
            actionContextJobId = jobId
          , actionContextDeadline = request ^. #maybe'deadline
          , actionContextTrace = envelope ^. #trace
          , actionContextCancellation = cancellation
          , actionContextHost = host
          , actionContextParentCallId = envelope ^. #messageId
          }
    task <- async $ runAction runtime context action (invocation ^. #arguments)
    atomically $ modifyTVar' (runtimeJobRegistry runtime) $
      Map.insert jobId (Job task cancellation)
    pure runtime {
      runtimeJobs = Map.insert jobId (Job task cancellation) (runtimeJobs runtime)
      }

runAction :: Runtime -> ActionContext -> Action -> [Text] -> IO ()
runAction runtime context action arguments =
    (do
      outcome <- try $ actionHandler action context arguments
      cancelled <- isCancelled context
      unless cancelled $ do
        update <- case outcome of
          Right result -> do
            checkCancellation context
            pure $ defMessage
              & #jobId . #value .~ contextJobId context
              & #state .~ JOB_STATE_SUCCEEDED
              & #progress .~ 1.0
              & #maybe'result .~ actionResultValue result
              & #artifacts .~ actionResultArtifacts result
          Left (errorValue :: SomeException) -> pure $ defMessage
              & #jobId . #value .~ contextJobId context
              & #state .~ JOB_STATE_FAILED
              & #progress .~ 1.0
              & #error .~ (defMessage
                  & #code .~ ERROR_CODE_INTERNAL
                  & #message .~ Text.pack (displayException errorValue))
        _ <- sendPayload
          (runtimeSender runtime)
          Nothing
          (contextTrace context)
          (PluginEnvelope'JobUpdate update)
        pure ())
    `finally` atomically (do
      modifyTVar' (runtimeJobRegistry runtime) $ Map.delete (contextJobId context)
      full <- isFullTBQueue (runtimeEvents runtime)
      unless full $ writeTBQueue
        (runtimeEvents runtime)
        (JobFinished $ contextJobId context))

cancelJob :: Runtime -> PluginEnvelope -> CancelJobRequest -> IO Runtime
cancelJob runtime envelope request = do
    let jobId = request ^. #jobId . #value
    job <- maybe (protocolError "cancellation names no active job") pure $
      Map.lookup jobId (runtimeJobs runtime)
    atomically $ writeTVar (jobCancelled job) True
    cancel (jobTask job)
    atomically $ modifyTVar' (runtimeJobRegistry runtime) $ Map.delete jobId
    _ <- sendPayload
      (runtimeSender runtime)
      (Just $ envelope ^. #messageId)
      (envelope ^. #trace)
      (PluginEnvelope'CancelJobAcknowledged $
        defMessage & #jobId .~ (request ^. #jobId))
    pure runtime {runtimeJobs = Map.delete jobId (runtimeJobs runtime)}

cancelAll :: Map Text Job -> IO ()
cancelAll jobs = forM_ (Map.elems jobs) $ \job -> do
    atomically $ writeTVar (jobCancelled job) True
    cancel (jobTask job)

requireJobId :: StartJobRequest -> IO Text
requireJobId request = do
    let value = request ^. #jobId . #value
    unless (validUuidV4 value) $ protocolError "job ID is not a canonical UUID v4"
    pure value

validUuidV4 :: Text -> Bool
validUuidV4 value =
    Text.length value == 36
      && and [Text.index value index == '-' | index <- [8, 13, 18, 23]]
      && Text.index value 14 == '4'
      && Text.index value 19 `elem` ("89ab" :: String)
      && all validAt [0 .. 35]
  where
    validAt index
      | index `elem` [8, 13, 18, 23] = True
      | otherwise = let c = Text.index value index
                    in isDigit c || c >= 'a' && c <= 'f'

protocolError :: String -> IO a
protocolError message = throwIO $ userError ("plugin protocol violation: " ++ message)
