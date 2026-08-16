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
  ) where

import Control.Concurrent.STM
import Control.Exception
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

import Onelastleaf.PluginSDK.Internal.Sender

data Pending = Pending !Text !(TMVar PluginEnvelope'Payload)

data Host = Host {
      hostSender                    :: !Sender
    , hostPending                   :: !(TVar (Map Word64 Pending))
    , hostMaximumArtifactChunkBytes :: !Word64
    , maximumCallDepth              :: !Word32
    }

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
          Nothing -> throwIO $ userError "host response names no pending plugin request"
          Just (Pending correlationId response) -> do
            let responseCorrelation = envelope ^. #trace . #correlationId
            if responseCorrelation /= correlationId
              then throwIO $ userError "host response changed correlation context"
              else case envelope ^. #maybe'payload of
                Nothing -> throwIO $ userError "host response has no payload"
                Just payload -> atomically (putTMVar response payload) >> pure True

hostCall :: Host -> TraceContext -> HostCallRequest -> IO HostCallResponse
hostCall host trace request =
    requestPayload host trace (PluginEnvelope'HostCall request) >>= \case
      PluginEnvelope'HostResult response ->
        case response ^. #maybe'result of
          Just (HostCallResponse'Error protocolError) -> throwIO $ HostError protocolError
          _ -> pure response
      PluginEnvelope'ProtocolError protocolError -> throwIO $ HostError protocolError
      _ -> throwIO $ userError "host call received another response kind"

getConfig :: Host -> TraceContext -> Maybe ConfigPath -> IO GetConfigResponse
getConfig host trace path = do
    let request = defMessage & #maybe'path .~ path
    response <- hostCall host trace $
      defMessage & #maybe'call .~ Just (HostCallRequest'GetConfig request)
    case response ^. #maybe'result of
      Just (HostCallResponse'GetConfig value) -> pure value
      _ -> throwIO $ userError "GetConfig received another response kind"

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
      _ -> throwIO $ userError "InvokeConfigFunction received another response kind"

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
      _ -> throwIO $ userError "host did not accept the artifact transfer"
    mapM_ sendChunk (zip [0 ..] chunks)
    let complete = defMessage & #artifactId .~ (descriptor ^. #artifactId)
    requestPayload host trace (PluginEnvelope'ArtifactComplete complete) >>= \case
      PluginEnvelope'ArtifactStored stored
        | stored ^. #artifactId == descriptor ^. #artifactId -> pure stored
      _ -> throwIO $ userError "host did not acknowledge the stored artifact"
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
    let correlationId = trace ^. #correlationId
    (messageId, response) <- sendPayloadRegistered
      (hostSender host)
      Nothing
      trace
      payload
      (\registeredId -> do
        waiter <- newEmptyTMVar
        modifyTVar' (hostPending host) $
          Map.insert registeredId (Pending correlationId waiter)
        pure waiter)
    let remove = atomically $ modifyTVar' (hostPending host) (Map.delete messageId)
    restore (atomically $ takeTMVar response) `finally` remove

validateArtifact :: Host -> ArtifactDescriptor -> [ByteString] -> IO ()
validateArtifact host descriptor chunks
  | not (validUuidV4 $ descriptor ^. #artifactId . #value) =
      invalid "artifact ID must be a canonical UUID v4"
  | Text.null (descriptor ^. #fileName) || Text.null (descriptor ^. #mediaType) =
      invalid "artifact name and media type must not be empty"
  | ByteString.length (descriptor ^. #sha256) /= 32 =
      invalid "artifact SHA-256 must contain 32 bytes"
  | null chunks || any ByteString.null chunks = invalid "artifact chunks must be nonempty"
  | length chunks > fromIntegral (maxBound :: Word32) = invalid "artifact has too many chunks"
  | any ((> fromIntegral (hostMaximumArtifactChunkBytes host)) . ByteString.length) chunks =
      invalid "artifact chunk exceeds the negotiated limit"
  | toInteger (descriptor ^. #sizeBytes) /= sum (map (toInteger . ByteString.length) chunks) =
      invalid "artifact size does not match its bytes"
  | descriptor ^. #sha256 /= SHA256.hash (ByteString.concat chunks) =
      invalid "artifact SHA-256 does not match its bytes"
  | otherwise = pure ()
  where
    invalid = throwIO . userError

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
                    in c >= '0' && c <= '9' || c >= 'a' && c <= 'f'
