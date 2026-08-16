module Onelastleaf.PluginSDK.Internal.Sender (
    Sender
  , newSender
  , configureSender
  , sendPayload
  , sendPayloadRegistered
  , runSender
  , closeSender
  ) where

import Control.Concurrent.STM
import Data.ByteString qualified as ByteString
import Data.ProtoLens.Labels ()
import Data.ProtoLens.Encoding qualified as Protobuf
import Data.Text (Text)
import Data.Word

import Network.GRPC.Common
import Network.GRPC.Common.Protobuf (Proto(..), (&), (.~), defMessage)

import Proto.Oll.Common
import Proto.Oll.Plugin

data Sender = Sender {
      senderQueue    :: !(TBQueue (Maybe (Proto PluginEnvelope)))
    , senderNextId   :: !(TVar Word64)
    , senderIdentity :: !(TVar (Text, Text))
    }

maximumEnvelopeBytes :: Int
maximumEnvelopeBytes = 64 * 1024 * 1024

newSender :: IO Sender
newSender = atomically $ Sender
    <$> newTBQueue 256
    <*> newTVar 1
    <*> newTVar ("", "")

configureSender :: Sender -> Text -> Text -> IO ()
configureSender sender sessionId instanceId =
    atomically $ writeTVar (senderIdentity sender) (sessionId, instanceId)

sendPayload
  :: Sender
  -> Maybe Word64
  -> TraceContext
  -> PluginEnvelope'Payload
  -> IO Word64
sendPayload sender replyTo trace payload =
    fst <$> sendPayloadRegistered sender replyTo trace payload (const $ pure ())

sendPayloadRegistered
  :: Sender
  -> Maybe Word64
  -> TraceContext
  -> PluginEnvelope'Payload
  -> (Word64 -> STM a)
  -> IO (Word64, a)
sendPayloadRegistered sender replyTo trace payload register = atomically $ do
    messageId <- readTVar (senderNextId sender)
    if messageId == maxBound
      then throwSTM $ userError "plugin message IDs exhausted"
      else writeTVar (senderNextId sender) (messageId + 1)
    (sessionId, instanceId) <- readTVar (senderIdentity sender)
    let envelope = (defMessage :: PluginEnvelope)
          & #messageId .~ messageId
          & #maybe'replyTo .~ replyTo
          & #sessionId .~ sessionId
          & #pluginInstanceId .~ instanceId
          & #trace .~ trace
          & #maybe'payload .~ Just payload
    if ByteString.length (Protobuf.encodeMessage envelope) > maximumEnvelopeBytes
      then throwSTM $ userError "plugin envelope exceeds 64 MiB"
      else do
        registered <- register messageId
        writeTBQueue (senderQueue sender) (Just (Proto envelope))
        pure (messageId, registered)

runSender :: Sender -> (NextElem (Proto PluginEnvelope) -> IO ()) -> IO ()
runSender sender send = loop
  where
    loop = atomically (readTBQueue $ senderQueue sender) >>= \case
      Nothing -> send NoNextElem
      Just envelope -> send (NextElem envelope) >> loop

closeSender :: Sender -> IO ()
closeSender sender = atomically $ writeTBQueue (senderQueue sender) Nothing
