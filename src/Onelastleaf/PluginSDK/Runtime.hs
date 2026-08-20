module Onelastleaf.PluginSDK.Runtime (runPlugin, runSession) where

import Control.Concurrent
import Control.Concurrent.Async
import Control.Concurrent.STM
import Control.Exception
import Control.Monad
import Data.ByteString qualified as ByteString
import Data.Int
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.ProtoLens.Labels ()
import Data.Text (Text)
import Data.Text qualified as Text
import Data.Word
import Numeric.Natural
import System.Environment
import System.IO

import Network.GRPC.Client
import Network.GRPC.Client.StreamType.IO
import Network.GRPC.Common
import Network.GRPC.Common.Protobuf

import Proto.Oll.Common
import Proto.Oll.Plugin
import Proto.Oll.Plugin.API ()
import Proto.Google.Protobuf.Timestamp (Timestamp)

import Onelastleaf.PluginSDK.Host
import Onelastleaf.PluginSDK.Internal.Endpoint
import Onelastleaf.PluginSDK.Internal.Protocol
import Onelastleaf.PluginSDK.Internal.Sender
import Onelastleaf.PluginSDK.Types

data Phase
  = AwaitHostHello
  | AwaitHostReady !TraceContext
  | Active
  | ShuttingDown !ShutdownReply

data ShutdownReply = ShutdownReply !Word64 !TraceContext

data CancelReply = CancelReply !Word64 !TraceContext !PluginJobId

data JobPhase
  = JobRunning
  -- Replies are stored newest-first while the action is stopping.
  | JobCancelling ![CancelReply]

data Job = Job {
      jobTask      :: !(Async JobOutcome)
    , jobMonitor   :: !(Async ())
    , jobCancelled :: !(TVar Bool)
    , jobTrace     :: !TraceContext
    , jobPhase     :: !JobPhase
    }

data JobOutcome
  = JobSucceeded !ActionResult
  | JobFailed !SomeException

data Event
  = HostEnvelope !PluginEnvelope
  | HostStreamClosed
  | JobCompleted !Text !JobOutcome

-- The protocol loop is the sole normal writer of runtimeJobs. Action threads
-- publish exactly one JobCompleted event and never remove or settle themselves;
-- FIFO event order therefore decides whether completion or cancellation wins.
data Runtime = Runtime {
      runtimePlugin         :: !Plugin
    , runtimeSender         :: !Sender
    , runtimeEvents         :: !(TBQueue Event)
    , runtimePhase          :: !Phase
    , runtimeSessionId      :: !Text
    , runtimeInstanceId     :: !Text
    , runtimeLastMessageId  :: !Word64
    , runtimeMaxCallDepth   :: !Word32
    , runtimeMaxCausalDepth :: !Word32
    , runtimeHost           :: !(Maybe Host)
    , runtimeJobs           :: !(TVar (Map Text Job))
    }

runtimeEventQueueCapacity :: Natural
runtimeEventQueueCapacity = 256

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
    events <- newTBQueueIO runtimeEventQueueCapacity
    jobs <- newTVarIO Map.empty
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
        , runtimeJobs = jobs
        }
    withAsync (runSender sender send) $ \writer -> do
      link writer
      withAsync (receiveLoop receive events) $ \receiver -> do
        link receiver
        runLoop initial `finally` (readTVarIO jobs >>= abortJobs)
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
runLoop runtime =
    atomically (readTBQueue $ runtimeEvents runtime) >>= \case
      HostStreamClosed -> protocolViolation "host closed the plugin stream"
      JobCompleted jobId outcome ->
        finishJob runtime jobId outcome >>= maybe (pure ()) runLoop
      HostEnvelope envelope -> do
        validated <- validateEnvelope runtime envelope
        handleEnvelope validated envelope >>= maybe (pure ()) runLoop

validateEnvelope :: Runtime -> PluginEnvelope -> IO Runtime
validateEnvelope runtime envelope = do
    let messageId = envelope ^. #messageId
    when (messageId == 0 || messageId <= runtimeLastMessageId runtime) $
      protocolViolation "host message IDs must be nonzero and strictly increasing"
    trace <- maybe (protocolViolation "host omitted trace context") pure $
      envelope ^. #maybe'trace
    when (Text.null $ trace ^. #correlationId) $
      protocolViolation "host omitted correlation context"
    unless (Text.null $ runtimeSessionId runtime) $ do
      when (envelope ^. #sessionId /= runtimeSessionId runtime
            || envelope ^. #pluginInstanceId /= runtimeInstanceId runtime) $
        protocolViolation "host envelope belongs to another plugin instance"
      when (trace ^. #callDepth > runtimeMaxCallDepth runtime) $
        protocolViolation "host envelope exceeds maximum call depth"
      when (trace ^. #causalDepth > runtimeMaxCausalDepth runtime) $
        protocolViolation "host envelope exceeds maximum causal depth"
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
      (AwaitHostReady expectedTrace, Just (PluginEnvelope'Ready _)) -> do
        when (envelope ^. #trace /= expectedTrace) $
          protocolViolation "SessionReady changed handshake trace context"
        _ <- sendPayload
          (runtimeSender runtime)
          Nothing
          expectedTrace
          (PluginEnvelope'Ready defMessage)
        pure $ Just runtime {runtimePhase = Active}
      (Active, Just (PluginEnvelope'StartJob request)) ->
        Just <$> startJob runtime envelope request
      (phase, Just (PluginEnvelope'CancelJob request))
        | phaseAllowsCancellation phase -> Just <$> cancelJob runtime envelope request
      (phase, Just (PluginEnvelope'Heartbeat heartbeat))
        | phaseAllowsHeartbeat phase -> Just <$> respondHeartbeat runtime envelope heartbeat
      (Active, Just (PluginEnvelope'Shutdown request)) ->
        beginShutdown runtime envelope request
      (_, Just (PluginEnvelope'ProtocolError errorValue)) ->
        throwIO $ HostError errorValue
      _ -> protocolViolation "unexpected host message"

phaseAllowsCancellation :: Phase -> Bool
phaseAllowsCancellation Active = True
phaseAllowsCancellation (ShuttingDown _) = True
phaseAllowsCancellation _ = False

phaseAllowsHeartbeat :: Phase -> Bool
phaseAllowsHeartbeat Active = True
phaseAllowsHeartbeat (ShuttingDown _) = True
phaseAllowsHeartbeat _ = False

respondHeartbeat :: Runtime -> PluginEnvelope -> Heartbeat -> IO Runtime
respondHeartbeat runtime envelope heartbeat = do
    _ <- sendPayload
      (runtimeSender runtime)
      (Just $ envelope ^. #messageId)
      (envelope ^. #trace)
      (PluginEnvelope'Heartbeat heartbeat)
    pure runtime

acceptHostHello :: Runtime -> PluginEnvelope -> HostHello -> IO Runtime
acceptHostHello runtime envelope hello = do
    when (envelope ^. #maybe'replyTo /= Nothing) $
      protocolViolation "HostHello must not set reply_to"
    let sessionId = envelope ^. #sessionId
        instanceId = envelope ^. #pluginInstanceId
        trace = envelope ^. #trace
    when (Text.null sessionId || Text.null instanceId) $
      protocolViolation "HostHello envelope omitted its session or instance identity"
    validateHostHello (runtimePlugin runtime) hello
    configureSender (runtimeSender runtime) sessionId instanceId
    when (trace ^. #callDepth > hello ^. #maximumCallDepth
          || trace ^. #causalDepth > hello ^. #maximumCausalDepth) $
      protocolViolation "HostHello exceeds a negotiated trace depth limit"
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
      trace
      (PluginEnvelope'PluginHello reply)
    pure runtime {
        runtimePhase = AwaitHostReady trace
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
    case hello ^. #maybe'node of
      Nothing -> protocolViolation "HostHello omitted node identity"
      Just _ -> pure ()
    helloPluginId <- maybe (protocolViolation "HostHello omitted plugin ID") pure $
      hello ^. #maybe'pluginId
    when (helloPluginId ^. #value /= pluginId plugin) $
      protocolViolation "HostHello plugin ID differs from this plugin"
    helloPluginName <- maybe (protocolViolation "HostHello omitted plugin name") pure $
      hello ^. #maybe'pluginName
    when (Text.null $ helloPluginName ^. #value) $
      protocolViolation "HostHello plugin name must not be empty"
    when (hello ^. #maximumCallDepth == 0) $
      protocolViolation "HostHello maximum call depth must be positive"
    when (hello ^. #maximumCausalDepth == 0) $
      protocolViolation "HostHello maximum causal depth must be positive"
    when (hello ^. #maximumArtifactChunkBytes == 0) $
      protocolViolation "HostHello artifact chunk limit must be positive"

startJob :: Runtime -> PluginEnvelope -> StartJobRequest -> IO Runtime
startJob runtime envelope request = do
    jobId <- requireJobId (request ^. #jobId . #value)
    active <- readTVarIO (runtimeJobs runtime)
    when (Map.member jobId active) $
      protocolViolation "duplicate active job"
    invocation <- case request ^. #maybe'invocation of
      Just (StartJobRequest'Action value) -> pure value
      Nothing -> protocolViolation "StartJobRequest has no action invocation"
    action <- maybe (protocolViolation "unknown plugin action") pure $
      Map.lookup (invocation ^. #action) (pluginActions $ runtimePlugin runtime)
    host <- maybe (protocolViolation "active session has no host") pure $
      runtimeHost runtime
    cancellation <- newTVarIO False
    gate <- newEmptyTMVarIO
    let context = ActionContext {
            actionContextJobId = jobId
          , actionContextDeadline = request ^. #maybe'deadline
          , actionContextTrace = envelope ^. #trace
          , actionContextCancellation = cancellation
          , actionContextHost = host
          , actionContextParentCallId = envelope ^. #messageId
          }
    mask_ $ do
      task <- asyncWithUnmask $ \unmask -> do
        atomically $ takeTMVar gate
        runAction $ unmask $ actionHandler action context (invocation ^. #arguments)
      monitor <- async $
        monitorJob (runtimeEvents runtime) (contextJobId context) task
      let job = Job task monitor cancellation (envelope ^. #trace) JobRunning
          removeAndCancel = do
            atomically $ modifyTVar' (runtimeJobs runtime) $ Map.delete jobId
            cancel task
            cancel monitor
      registered <- atomically $ do
        jobs <- readTVar (runtimeJobs runtime)
        if Map.member jobId jobs
          then pure False
          else writeTVar (runtimeJobs runtime) (Map.insert jobId job jobs) >> pure True
      unless registered $ do
        cancel task
        cancel monitor
        protocolViolation "duplicate active job"
      _ <- sendPayload
        (runtimeSender runtime)
        (Just $ envelope ^. #messageId)
        (envelope ^. #trace)
        (PluginEnvelope'JobAccepted $ defMessage & #jobId .~ (request ^. #jobId))
        `onException` removeAndCancel
      link monitor
      atomically $ putTMVar gate ()
    pure runtime

runAction :: IO ActionResult -> IO JobOutcome
runAction action = do
    outcome <- tryJust synchronousException action
    pure $ either JobFailed JobSucceeded outcome
  where
    synchronousException errorValue =
      case ( fromException errorValue :: Maybe AsyncCancelled
           , fromException errorValue :: Maybe AsyncException
           , fromException errorValue :: Maybe ProtocolViolation
           ) of
        -- async's AsyncCancelled is the expected job-scoped cancellation
        -- signal, not base's process-level AsyncException. Recording it as an
        -- outcome lets the protocol loop settle and acknowledge the job.
        (Just _, _, _) -> Just errorValue
        (_, Just _, _) -> Nothing
        (_, _, Just _) -> Nothing
        _ -> Just errorValue

monitorJob :: TBQueue Event -> Text -> Async JobOutcome -> IO ()
monitorJob events jobId task = waitCatch task >>= \case
    Right outcome -> do
      -- The task has ended, so a cancellation acknowledgement emitted after
      -- this handoff really does assert that no action remains active.
      atomically $ writeTBQueue events (JobCompleted jobId outcome)
    Left errorValue -> throwIO errorValue

data CancelTransition
  = AcknowledgeInactive
  | AwaitCompletion
  | RequestCancellation !(Async JobOutcome)

cancelJob :: Runtime -> PluginEnvelope -> CancelJobRequest -> IO Runtime
cancelJob runtime envelope request = do
    jobId <- requireJobId (request ^. #jobId . #value)
    let reply = CancelReply
          (envelope ^. #messageId)
          (envelope ^. #trace)
          (request ^. #jobId)
    transition <- atomically $ do
      jobs <- readTVar (runtimeJobs runtime)
      case Map.lookup jobId jobs of
        Nothing -> pure AcknowledgeInactive
        Just job -> case jobPhase job of
          JobRunning -> do
            writeTVar (jobCancelled job) True
            writeTVar (runtimeJobs runtime) $
              Map.insert jobId (job {jobPhase = JobCancelling [reply]}) jobs
            pure $ RequestCancellation (jobTask job)
          JobCancelling replies -> do
            writeTVar (runtimeJobs runtime) $
              Map.insert jobId (job {jobPhase = JobCancelling (reply : replies)}) jobs
            pure AwaitCompletion
    case transition of
      AcknowledgeInactive -> sendCancelReply (runtimeSender runtime) reply
      AwaitCompletion -> pure ()
      RequestCancellation task -> requestTaskCancellation task
    pure runtime

finishJob :: Runtime -> Text -> JobOutcome -> IO (Maybe Runtime)
finishJob runtime jobId outcome = do
    jobs <- readTVarIO (runtimeJobs runtime)
    job <- maybe (protocolViolation "job completion names no active job") pure $
      Map.lookup jobId jobs
    case jobPhase job of
      JobRunning -> do
        sendJobOutcome (runtimeSender runtime) (jobTrace job) jobId outcome
        atomically $ modifyTVar' (runtimeJobs runtime) $ Map.delete jobId
      JobCancelling replies -> do
        atomically $ modifyTVar' (runtimeJobs runtime) $ Map.delete jobId
        mapM_ (sendCancelReply (runtimeSender runtime)) (reverse replies)
    continueAfterJob runtime

sendJobOutcome :: Sender -> TraceContext -> Text -> JobOutcome -> IO ()
sendJobOutcome sender trace jobId outcome = do
    let update = case outcome of
          JobSucceeded result -> defMessage
            & #jobId . #value .~ jobId
            & #state .~ JOB_STATE_SUCCEEDED
            & #progress .~ 1.0
            & #maybe'result .~ actionResultValue result
            & #artifacts .~ actionResultArtifacts result
          JobFailed errorValue -> defMessage
            & #jobId . #value .~ jobId
            & #state .~ JOB_STATE_FAILED
            & #progress .~ 1.0
            & #error .~ actionError errorValue
    _ <- sendPayload sender Nothing trace (PluginEnvelope'JobUpdate update)
    pure ()
  where
    actionError errorValue = case fromException errorValue of
      Just (HostError hostError) -> hostError
      Nothing -> defMessage
        & #code .~ ERROR_CODE_INTERNAL
        & #message .~ Text.pack (displayException errorValue)

sendCancelReply :: Sender -> CancelReply -> IO ()
sendCancelReply sender (CancelReply replyTo trace jobId) = do
    _ <- sendPayload
      sender
      (Just replyTo)
      trace
      (PluginEnvelope'CancelJobAcknowledged $ defMessage & #jobId .~ jobId)
    pure ()

requestTaskCancellation :: Async JobOutcome -> IO ()
requestTaskCancellation task = async (cancel task) >>= link

beginShutdown :: Runtime -> PluginEnvelope -> ShutdownRequest -> IO (Maybe Runtime)
beginShutdown runtime envelope request = do
    validateShutdownRequest request
    -- oll owns signal escalation at the advertised deadline. The SDK must not
    -- invent a process-kill path or claim graceful shutdown while plugin code
    -- is still running; an uninterruptible handler is ultimately host-enforced.
    tasks <- atomically $ do
      jobs <- readTVar (runtimeJobs runtime)
      forM_ (Map.elems jobs) $ \job -> case jobPhase job of
        JobRunning -> writeTVar (jobCancelled job) True
        JobCancelling _ -> pure ()
      let (tasksToCancel, cancelling) = Map.mapAccum markCancelling [] jobs
      writeTVar (runtimeJobs runtime) cancelling
      pure tasksToCancel
    mapM_ requestTaskCancellation tasks
    let reply = ShutdownReply (envelope ^. #messageId) (envelope ^. #trace)
        shuttingDown = runtime {runtimePhase = ShuttingDown reply}
    continueAfterJob shuttingDown
  where
    markCancelling tasks job = case jobPhase job of
      JobRunning ->
        (jobTask job : tasks, job {jobPhase = JobCancelling []})
      JobCancelling _ -> (tasks, job)

validateShutdownRequest :: ShutdownRequest -> IO ()
validateShutdownRequest request = do
    when (Text.null $ request ^. #reason) $
      protocolViolation "ShutdownRequest reason must not be empty"
    case request ^. #maybe'gracePeriodDeadline of
      Nothing -> protocolViolation "ShutdownRequest omitted its grace-period deadline"
      Just deadline -> unless (validTimestamp deadline) $
        protocolViolation "ShutdownRequest grace-period deadline is not a valid Timestamp"

validTimestamp :: Timestamp -> Bool
validTimestamp timestamp =
    let seconds = timestamp ^. #seconds
        nanoseconds = timestamp ^. #nanos
    in seconds >= minimumTimestampSeconds
        && seconds <= maximumTimestampSeconds
        && nanoseconds >= 0
        && nanoseconds <= maximumTimestampNanoseconds

-- Bounds defined by google.protobuf.Timestamp.
minimumTimestampSeconds, maximumTimestampSeconds :: Int64
minimumTimestampSeconds = -62_135_596_800
maximumTimestampSeconds = 253_402_300_799

maximumTimestampNanoseconds :: Int32
maximumTimestampNanoseconds = 999_999_999

continueAfterJob :: Runtime -> IO (Maybe Runtime)
continueAfterJob runtime = do
    noJobs <- Map.null <$> readTVarIO (runtimeJobs runtime)
    case runtimePhase runtime of
      ShuttingDown reply | noJobs -> acknowledgeShutdown (runtimeSender runtime) reply
      _ -> pure $ Just runtime

acknowledgeShutdown :: Sender -> ShutdownReply -> IO (Maybe Runtime)
acknowledgeShutdown sender (ShutdownReply replyTo trace) = do
    _ <- sendPayload
      sender
      (Just replyTo)
      trace
      (PluginEnvelope'ShutdownAcknowledged defMessage)
    pure Nothing

abortJobs :: Map Text Job -> IO ()
abortJobs jobs = forM_ (Map.elems jobs) $ \job -> do
    atomically $ writeTVar (jobCancelled job) True
    -- Session failure and stdin EOF must not wait for an uninterruptible plugin
    -- action. Normal Shutdown uses the settled path above and does wait.
    void $ forkIO $ void (try (cancel $ jobTask job) :: IO (Either SomeException ()))
    void $ forkIO $ void (try (cancel $ jobMonitor job) :: IO (Either SomeException ()))

requireJobId :: Text -> IO Text
requireJobId value = do
    unless (validUuidV4 value) $
      protocolViolation "job ID is not a canonical UUID v4"
    pure value
