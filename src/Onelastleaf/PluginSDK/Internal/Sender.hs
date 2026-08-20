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
import Control.Exception
import Control.Monad
import Data.ProtoLens.Labels ()
import Data.Text (Text)
import Data.Word
import Numeric.Natural

import Network.GRPC.Common
import Network.GRPC.Common.Protobuf (Proto(..), (&), (.~), defMessage)

import Proto.Oll.Common
import Proto.Oll.Plugin

data Sender = Sender {
      senderQueue    :: !(TBQueue (Maybe (Proto PluginEnvelope)))
    , senderNextId   :: !(TVar Word64)
    , senderIdentity :: !(TVar (Text, Text))
    , senderClosed   :: !(TVar Bool)
    , senderFailure  :: !(TVar (Maybe SomeException))
    }

senderQueueCapacity :: Natural
senderQueueCapacity = 256

newSender :: IO Sender
newSender = atomically $ Sender
    <$> newTBQueue senderQueueCapacity
    <*> newTVar 1
    <*> newTVar ("", "")
    <*> newTVar False
    <*> newTVar Nothing

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
    readTVar (senderFailure sender) >>= maybe (pure ()) throwSTM
    readTVar (senderClosed sender) >>= \closed ->
      when closed $ throwSTM $ userError "plugin sender is closed"
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
    -- Registration and queue admission are one transaction. A response can
    -- therefore never reach the stream reader before its waiter is visible.
    registered <- register messageId
    writeTBQueue (senderQueue sender) (Just (Proto envelope))
    pure (messageId, registered)

runSender :: Sender -> (NextElem (Proto PluginEnvelope) -> IO ()) -> IO ()
runSender sender send = loop `catch` rememberFailure
  where
    loop = atomically (readTBQueue $ senderQueue sender) >>= \case
      Nothing -> send NoNextElem
      Just envelope -> send (NextElem envelope) >> loop

    rememberFailure (errorValue :: SomeException) = do
      atomically $ writeTVar (senderFailure sender) (Just errorValue)
      throwIO errorValue

closeSender :: Sender -> IO ()
closeSender sender = atomically $ do
    readTVar (senderFailure sender) >>= maybe (pure ()) throwSTM
    closed <- readTVar (senderClosed sender)
    unless closed $ do
      writeTVar (senderClosed sender) True
      writeTBQueue (senderQueue sender) Nothing
