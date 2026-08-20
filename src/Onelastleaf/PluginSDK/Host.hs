module Onelastleaf.PluginSDK.Host (
    Host
  , HostError(..)
  , newHost
  , routeHostResponse
  , hostCall
  , getConfig
  , invokeConfigFunction
  , pluginLog
  , storeArtifact
  , maximumCallDepth
  , maximumPendingHostCalls
  ) where

import Control.Concurrent.STM
import Control.Exception
import Control.Monad
import Crypto.Hash.SHA256 qualified as SHA256
import Data.ByteString (ByteString)
import Data.ByteString qualified as ByteString
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.ProtoLens.Labels ()
import Data.Text (Text)
import Data.Text qualified as Text
import Data.Time.Clock.POSIX
import Data.Word

import Network.GRPC.Common.Protobuf

import Proto.Oll.Common
import Proto.Oll.Config
import Proto.Oll.Plugin

import Onelastleaf.PluginSDK.Internal.Protocol
import Onelastleaf.PluginSDK.Internal.Sender

data Pending
  = Waiting !TraceContext !(TMVar PluginEnvelope'Payload)
  -- Keep the routing identity after action cancellation so the host's already
  -- running request can reply without turning a job-scoped cancel into a
  -- session-wide protocol failure.
  | Abandoned !TraceContext

data Host = Host {
      hostSender                    :: !Sender
    , hostPending                   :: !(TVar (Map Word64 Pending))
    , hostMaximumArtifactChunkBytes :: !Word64
    , maximumCallDepth              :: !Word32
    }

-- Pending calls include abandoned routing tombstones. Keeping their number
-- bounded provides backpressure without discarding the information needed to
-- consume a valid late response exactly once.
maximumPendingHostCalls :: Int
maximumPendingHostCalls = 256

-- | A structured failure returned by, or detected while invoking, an
-- oll-owned host capability.
data HostError = HostError !ProtocolError
  deriving stock (Show)
  deriving anyclass (Exception)

newHost :: Sender -> Word64 -> Word32 -> IO Host
newHost sender maximumChunkBytes maximumDepth = Host sender
    <$> newTVarIO Map.empty
    <*> pure maximumChunkBytes
    <*> pure maximumDepth

routeHostResponse :: Host -> PluginEnvelope -> IO Bool
routeHostResponse host envelope =
    case envelope ^. #maybe'replyTo of
      Nothing -> pure False
      Just replyTo -> do
        pending <- atomically $ do
          entries <- readTVar (hostPending host)
          case Map.lookup replyTo entries of
            Nothing -> pure Nothing
            Just entry -> do
              writeTVar (hostPending host) $ Map.delete replyTo entries
              pure $ Just entry
        case pending of
          Nothing -> case envelope ^. #maybe'payload of
            Just (PluginEnvelope'ProtocolError errorValue) -> throwIO $ HostError errorValue
            _ -> protocolViolation "host response names no pending plugin request"
          Just entry -> do
            let expectedTrace = case entry of
                  Waiting trace _ -> trace
                  Abandoned trace -> trace
            when (envelope ^. #trace /= expectedTrace) $
              protocolViolation "host response changed trace context"
            payload <- maybe (protocolViolation "host response has no payload") pure $
              envelope ^. #maybe'payload
            case entry of
              Waiting _ response -> atomically (putTMVar response payload) >> pure True
              Abandoned _ -> pure True

hostCall :: Host -> TraceContext -> HostCallRequest -> IO HostCallResponse
hostCall host trace request =
    requestPayload host trace (PluginEnvelope'HostCall request) >>= \case
      PluginEnvelope'HostResult response ->
        case response ^. #maybe'result of
          Nothing -> protocolViolation "host call response has no result"
          Just (HostCallResponse'Error protocolError) -> throwIO $ HostError protocolError
          Just _ -> pure response
      PluginEnvelope'ProtocolError protocolError -> throwIO $ HostError protocolError
      _ -> protocolViolation "host call received another response kind"

getConfig :: Host -> TraceContext -> Maybe ConfigPath -> IO GetConfigResponse
getConfig host trace path = do
    let request = defMessage & #maybe'path .~ path
    response <- hostCall host trace $
      defMessage & #maybe'call .~ Just (HostCallRequest'GetConfig request)
    case response ^. #maybe'result of
      Just (HostCallResponse'GetConfig value) -> pure value
      _ -> protocolViolation "GetConfig received another response kind"

invokeConfigFunction
  :: Host
  -> TraceContext
  -> ConfigFunctionRef
  -> [ConfigValue]
  -> IO InvokeConfigFunctionResponse
invokeConfigFunction host trace function arguments = do
    let request = defMessage
          & #function .~ function
          & #arguments .~ arguments
    response <- hostCall host trace $
      defMessage & #maybe'call .~ Just (HostCallRequest'InvokeConfigFunction request)
    case response ^. #maybe'result of
      Just (HostCallResponse'InvokeConfigFunction value) -> pure value
      _ -> protocolViolation "InvokeConfigFunction received another response kind"

pluginLog
  :: Host
  -> TraceContext
  -> LogLevel
  -> Text
  -> Text
  -> Map Text ConfigValue
  -> IO ()
pluginLog host trace level target message fields = do
    now <- getPOSIXTime
    let seconds = floor now
        nanos = floor ((now - fromIntegral seconds) * 1_000_000_000)
        timestamp = defMessage & #seconds .~ seconds & #nanos .~ nanos
        record = defMessage
          & #timestamp .~ timestamp
          & #level .~ level
          & #target .~ target
          & #message .~ message
          & #fields .~ fields
    _ <- sendPayload (hostSender host) Nothing trace (PluginEnvelope'Log record)
    pure ()

storeArtifact
  :: Host
  -> TraceContext
  -> Text
  -> ArtifactDescriptor
  -> [ByteString]
  -> IO ArtifactStored
storeArtifact host trace jobId descriptor chunks = do
    validateArtifact host descriptor chunks
    let start = defMessage
          & #jobId . #value .~ jobId
          & #artifact .~ descriptor
          & #chunkCount .~ fromIntegral (length chunks)
    requestPayload host trace (PluginEnvelope'ArtifactStart start) >>= \case
      PluginEnvelope'ArtifactAccepted accepted
        | accepted ^. #artifactId == descriptor ^. #artifactId -> pure ()
      _ -> protocolViolation "host did not accept the artifact transfer"
    mapM_ sendChunk (zip [0 ..] chunks)
    let complete = defMessage & #artifactId .~ (descriptor ^. #artifactId)
    requestPayload host trace (PluginEnvelope'ArtifactComplete complete) >>= \case
      PluginEnvelope'ArtifactStored stored
        | stored ^. #artifactId == descriptor ^. #artifactId -> pure stored
      _ -> protocolViolation "host did not acknowledge the stored artifact"
  where
    sendChunk (index, bytes) = do
      let chunk = defMessage
            & #artifactId .~ (descriptor ^. #artifactId)
            & #chunkIndex .~ index
            & #data' .~ bytes
      _ <- sendPayload (hostSender host) Nothing trace (PluginEnvelope'ArtifactChunk chunk)
      pure ()

requestPayload :: Host -> TraceContext -> PluginEnvelope'Payload -> IO PluginEnvelope'Payload
requestPayload host trace payload = mask $ \restore -> do
    (messageId, response) <- sendPayloadRegistered
      (hostSender host)
      Nothing
      trace
      payload
      (\registeredId -> do
        waiter <- newEmptyTMVar
        entries <- readTVar (hostPending host)
        check (Map.size entries < maximumPendingHostCalls)
        writeTVar (hostPending host) $
          Map.insert registeredId (Waiting trace waiter) entries
        pure waiter)
    let abandon = atomically $ modifyTVar' (hostPending host) $
          Map.adjust abandonPending messageId
    restore (atomically $ takeTMVar response) `finally` abandon
  where
    abandonPending (Waiting expectedTrace _) = Abandoned expectedTrace
    abandonPending pending@(Abandoned _) = pending

validateArtifact :: Host -> ArtifactDescriptor -> [ByteString] -> IO ()
validateArtifact host descriptor chunks
  | not (validUuidV4 $ descriptor ^. #artifactId . #value) =
      invalid "artifact ID must be a canonical UUID v4"
  | Text.null (descriptor ^. #fileName) || Text.null (descriptor ^. #mediaType) =
      invalid "artifact name and media type must not be empty"
  | ByteString.length (descriptor ^. #sha256) /= 32 =
      invalid "artifact SHA-256 must contain 32 bytes"
  | null chunks || any ByteString.null chunks = invalid "artifact chunks must be nonempty"
  | toInteger (length chunks) > toInteger (maxBound :: Word32) =
      invalid "artifact has too many chunks"
  | any ((> toInteger (hostMaximumArtifactChunkBytes host))
          . toInteger . ByteString.length) chunks =
      invalid "artifact chunk exceeds the negotiated limit"
  | descriptor ^. #sizeBytes /= actualSize =
      invalid "artifact size does not match its bytes"
  | descriptor ^. #sha256 /= actualHash =
      invalid "artifact SHA-256 does not match its bytes"
  | otherwise = pure ()
  where
    -- The hashing API already tracks the streamed byte count, avoiding a
    -- second full size fold and any whole-artifact concatenation.
    (actualHash, actualSize) =
      SHA256.finalizeAndLength (SHA256.updates SHA256.init chunks)

    invalid message = throwIO $ HostError $ defMessage
      & #code .~ ERROR_CODE_INVALID_ARGUMENT
      & #message .~ Text.pack message
