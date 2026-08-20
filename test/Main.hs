module Main (main) where

import Control.Concurrent.Async
import Control.Concurrent.STM
import Control.Exception hiding (assert)
import Control.Monad
import Data.Int
import Data.ProtoLens.Labels ()
import Data.Text (Text)
import Data.Text qualified as Text
import Data.Word
import Network.GRPC.Common
import Network.GRPC.Common.Protobuf
import System.Timeout

import Onelastleaf.PluginSDK
import Onelastleaf.PluginSDK.Host
import Onelastleaf.PluginSDK.Internal.Endpoint
import Onelastleaf.PluginSDK.Internal.Protocol
import Onelastleaf.PluginSDK.Internal.Sender
import Onelastleaf.PluginSDK.Runtime
import Proto.Oll.Common
import Proto.Oll.Config
import Proto.Oll.Plugin

data Harness = Harness {
      harnessIncoming :: !(TQueue (NextElem (Proto PluginEnvelope)))
    , harnessOutgoing :: !(TQueue (NextElem (Proto PluginEnvelope)))
    , harnessRuntime  :: !(Async ())
    }

main :: IO ()
main = do
    testIdentityAndEndpointValidation
    testCompletedAndUnknownJobsAcknowledgeLateCancellation
    testCancellationKeepsTheProtocolLoopResponsive
    testShutdownSettlesJobsWithoutBlockingHeartbeats
    testShutdownRequiresValidContractFields
    testWriterFailureTerminatesTheSession
    testAbandonedHostRequestConsumesItsLateResponse
    testPendingHostCallsAreBackpressured
    testHandshakeRequiresTheCompleteTrace

testIdentityAndEndpointValidation :: IO ()
testIdentityAndEndpointValidation = do
    assert "valid plugin identity was rejected" $
      either (const False) (const True) $ newPlugin pluginIdValue "0.1.0"
    assert "invalid plugin identity was accepted" $
      either (const True) (const False) $ newPlugin "invalid" "0.1.0"
    assert "IPv4 loopback endpoint was rejected" $
      parseEndpoint "http://127.0.0.1:1234" == Right (Endpoint "127.0.0.1" 1234)
    assert "non-loopback endpoint was accepted" $
      either (const True) (const False) $ parseEndpoint "http://0.0.0.0:1234"
    assert "integerResult did not preserve a full sint64 value" $
      resultInteger (integerResult maxBound) == Just (maxBound :: Int64)
  where
    resultInteger result = case actionResultValue result >>= (^. #maybe'kind) of
      Just (ConfigValue'IntegerValue value) -> Just value
      _ -> Nothing

testCompletedAndUnknownJobsAcknowledgeLateCancellation :: IO ()
testCompletedAndUnknownJobsAcknowledgeLateCancellation =
    withHarness fastPlugin $ \harness -> do
      handshake harness rootTrace
      sendHost harness $ startJobEnvelope 3 completedTrace completedJobId "fast"
      accepted <- receivePlugin harness
      assertJobAccepted 3 completedJobId accepted
      completed <- receivePlugin harness
      assertSucceeded completedJobId completed

      sendHost harness $ cancelJobEnvelope 4 completedTrace completedJobId
      late <- receivePlugin harness
      assertCancelAcknowledged 4 completedJobId late

      sendHost harness $ cancelJobEnvelope 5 unknownTrace unknownJobId
      unknown <- receivePlugin harness
      assertCancelAcknowledged 5 unknownJobId unknown

      sendHost harness $ startJobEnvelope 6 errorTrace errorJobId "host-error"
      errorAccepted <- receivePlugin harness
      assertJobAccepted 6 errorJobId errorAccepted
      failed <- receivePlugin harness
      assertHostErrorPreserved errorJobId failed

      shutdown harness 7
  where
    fastPlugin = buildPlugin [
        Action "fast" "Finish immediately" $ \_ _ -> pure (stringResult "done")
      , Action "host-error" "Return a structured host failure" $ \_ _ ->
          throwIO $ HostError $ defMessage
            & #code .~ ERROR_CODE_INVALID_ARGUMENT
            & #message .~ "structured failure"
            & #retryable .~ True
      ]

testCancellationKeepsTheProtocolLoopResponsive :: IO ()
testCancellationKeepsTheProtocolLoopResponsive = do
    release <- newEmptyTMVarIO
    let blocked = Action "blocked" "Wait without accepting async exceptions" $ \_ _ ->
          uninterruptibleMask_ $ do
            atomically $ takeTMVar release
            pure $ stringResult "too late"
    withHarness (buildPlugin [blocked]) $ \harness -> do
      handshake harness rootTrace
      sendHost harness $ startJobEnvelope 3 cancelledTrace cancelledJobId "blocked"
      accepted <- receivePlugin harness
      assertJobAccepted 3 cancelledJobId accepted

      sendHost harness $ cancelJobEnvelope 4 cancelledTrace cancelledJobId
      sendHost harness $ cancelJobEnvelope 5 cancelledTrace cancelledJobId
      sendHost harness $ heartbeatEnvelope 6 heartbeatTrace 42
      heartbeat <- receivePlugin harness
      assertHeartbeat 6 heartbeatTrace 42 heartbeat
      expectNoPluginEnvelope harness

      atomically $ putTMVar release ()
      firstAcknowledged <- receivePlugin harness
      assertCancelAcknowledged 4 cancelledJobId firstAcknowledged
      secondAcknowledged <- receivePlugin harness
      assertCancelAcknowledged 5 cancelledJobId secondAcknowledged
      shutdown harness 7

testShutdownSettlesJobsWithoutBlockingHeartbeats :: IO ()
testShutdownSettlesJobsWithoutBlockingHeartbeats = do
    release <- newEmptyTMVarIO
    let blocked = Action "blocked" "Wait during shutdown" $ \_ _ ->
          uninterruptibleMask_ $ do
            atomically $ takeTMVar release
            pure $ stringResult "too late"
    withHarness (buildPlugin [blocked]) $ \harness -> do
      handshake harness rootTrace
      sendHost harness $ startJobEnvelope 3 cancelledTrace cancelledJobId "blocked"
      accepted <- receivePlugin harness
      assertJobAccepted 3 cancelledJobId accepted

      sendHost harness $ shutdownEnvelope 4 shutdownTrace
      sendHost harness $ heartbeatEnvelope 5 heartbeatTrace 99
      heartbeat <- receivePlugin harness
      assertHeartbeat 5 heartbeatTrace 99 heartbeat
      expectNoPluginEnvelope harness

      atomically $ putTMVar release ()
      acknowledged <- receivePlugin harness
      assert "shutdown acknowledgement differs from its request" $
        acknowledged ^. #maybe'replyTo == Just 4
          && case acknowledged ^. #maybe'payload of
            Just (PluginEnvelope'ShutdownAcknowledged _) -> True
            _ -> False
      _ <- within "plugin runtime did not exit after settled shutdown" $
        wait (harnessRuntime harness)
      pure ()

testShutdownRequiresValidContractFields :: IO ()
testShutdownRequiresValidContractFields =
    forM_ malformedRequests $ \request -> do
      harness <- startHarness (buildPlugin [])
      (`finally` cancel (harnessRuntime harness)) $ do
        handshake harness rootTrace
        sendHost harness $ pluginEnvelope 3 shutdownTrace $
          PluginEnvelope'Shutdown request
        result <- within "malformed shutdown did not terminate the session" $
          waitCatch (harnessRuntime harness)
        case result of
          Left errorValue -> assert "malformed shutdown raised another error" $
            maybe False (const True) (fromException errorValue :: Maybe ProtocolViolation)
          Right () -> fail "malformed shutdown contract fields were accepted"
  where
    malformedRequests =
      [ defMessage
      , defMessage
          & #reason .~ "invalid timestamp"
          & #maybe'gracePeriodDeadline .~ Just
              (defMessage & #nanos .~ 1_000_000_000)
      ]

testWriterFailureTerminatesTheSession :: IO ()
testWriterFailureTerminatesTheSession = do
    harness <- startHarnessWith (buildPlugin [fast]) failOnTerminalUpdate
    (`finally` cancel (harnessRuntime harness)) $ do
      handshake harness rootTrace
      sendHost harness $ startJobEnvelope 3 completedTrace completedJobId "fast"
      accepted <- receivePlugin harness
      assertJobAccepted 3 completedJobId accepted
      result <- within "writer failure did not terminate the session" $
        waitCatch (harnessRuntime harness)
      case result of
        Left errorValue -> assert "writer failure was replaced by another exception" $
          "simulated writer failure" `Text.isInfixOf` Text.pack (displayException errorValue)
        Right () -> fail "writer failure allowed the session to exit successfully"
  where
    fast = Action "fast" "Finish immediately" $ \_ _ -> pure (stringResult "done")

    failOnTerminalUpdate (NextElem envelope)
      | Just (PluginEnvelope'JobUpdate _) <- getProto envelope ^. #maybe'payload =
          throwIO $ userError "simulated writer failure"
    failOnTerminalUpdate _ = pure ()

testAbandonedHostRequestConsumesItsLateResponse :: IO ()
testAbandonedHostRequestConsumesItsLateResponse = do
    sender <- newSender
    configureSender sender sessionId instanceId
    outgoing <- newTQueueIO
    withAsync (runSender sender $ atomically . writeTQueue outgoing) $ \writer -> do
      host <- newHost sender 65536 10
      abandoned <- async $ hostCall host nestedTrace getConfigHostCall
      firstRequest <- receiveQueuedEnvelope outgoing
      cancel abandoned
      routed <- routeHostResponse host $ responseTo firstRequest nestedTrace
      assert "late response to an abandoned host call was not consumed" routed

      active <- async $ hostCall host nestedTrace getConfigHostCall
      secondRequest <- receiveQueuedEnvelope outgoing
      routedActive <- routeHostResponse host $ responseTo secondRequest nestedTrace
      assert "active host response was not routed" routedActive
      _ <- within "active host call did not receive its response" $ wait active

      malformed <- async $ hostCall host nestedTrace getConfigHostCall
      malformedRequest <- receiveQueuedEnvelope outgoing
      routedMalformed <- routeHostResponse host $
        responseToWith malformedRequest nestedTrace defMessage
      assert "malformed host response was not routed" routedMalformed
      malformedResult <- within "malformed host response left its call waiting" $
        waitCatch malformed
      case malformedResult of
        Left errorValue -> assert "malformed host response raised another error" $
          maybe False (const True) (fromException errorValue :: Maybe ProtocolViolation)
        Right _ -> fail "host call accepted a response without a result"

      mismatched <- async $ hostCall host nestedTrace getConfigHostCall
      thirdRequest <- receiveQueuedEnvelope outgoing
      cancel mismatched
      let changedTrace = nestedTrace & #causalDepth .~ 1
      mismatch <- try @ProtocolViolation $
        routeHostResponse host (responseTo thirdRequest changedTrace)
      assert "host response changing non-correlation trace fields was accepted" $
        either (const True) (const False) mismatch

      closeSender sender
      _ <- within "sender did not close" $ wait writer
      pure ()

testPendingHostCallsAreBackpressured :: IO ()
testPendingHostCallsAreBackpressured = do
    sender <- newSender
    configureSender sender sessionId instanceId
    outgoing <- newTQueueIO
    withAsync (runSender sender $ atomically . writeTQueue outgoing) $ \writer -> do
      host <- newHost sender 65536 10
      bracket
        (replicateM maximumPendingHostCalls $
          async $ hostCall host nestedTrace getConfigHostCall)
        (mapM_ cancel)
        $ \calls -> do
          firstRequest <- receiveQueuedEnvelope outgoing
          remainingRequests <- replicateM (maximumPendingHostCalls - 1) $
            receiveQueuedEnvelope outgoing
          let requests = firstRequest : remainingRequests
          -- Cancellation turns every waiter into a routing tombstone. Those
          -- tombstones must remain bounded while still accepting a late reply.
          mapM_ cancel calls
          withAsync (hostCall host nestedTrace getConfigHostCall) $ \_ -> do
            expectNoQueuedEnvelope
              "host admitted a call beyond its pending-call bound"
              outgoing
            routed <- routeHostResponse host $
              responseTo firstRequest nestedTrace
            assert "host did not route the response that released capacity" routed
            overflowRequest <- receiveQueuedEnvelope outgoing
            assert "backpressured host call reused an earlier message ID" $
              overflowRequest ^. #messageId > maximum (0 : map (^. #messageId) requests)
      closeSender sender
      _ <- within "backpressure-test sender did not close" $ wait writer
      pure ()

testHandshakeRequiresTheCompleteTrace :: IO ()
testHandshakeRequiresTheCompleteTrace = do
    harness <- startHarness (buildPlugin [])
    (`finally` cancel (harnessRuntime harness)) $ do
      sendHost harness $ hostHelloEnvelope 1 rootTrace
      _ <- receivePlugin harness
      let changedTrace = rootTrace & #maybe'taskId .~ Just "changed-task"
      sendHost harness $ readyEnvelope 2 changedTrace
      result <- within "changed handshake trace did not terminate the session" $
        waitCatch (harnessRuntime harness)
      case result of
        Left errorValue -> assert "changed handshake trace raised another error" $
          maybe False (const True) (fromException errorValue :: Maybe ProtocolViolation)
        Right () -> fail "changed handshake trace was accepted"

startHarness :: Plugin -> IO Harness
startHarness plugin = startHarnessWith plugin (const $ pure ())

startHarnessWith
  :: Plugin
  -> (NextElem (Proto PluginEnvelope) -> IO ())
  -> IO Harness
startHarnessWith plugin beforeSend = do
    incoming <- newTQueueIO
    outgoing <- newTQueueIO
    let send value = beforeSend value >> atomically (writeTQueue outgoing value)
        receive = atomically $ readTQueue incoming
    runtime <- async $ runSession plugin send receive
    pure $ Harness incoming outgoing runtime

withHarness :: Plugin -> (Harness -> IO a) -> IO a
withHarness plugin = bracket (startHarness plugin) (cancel . harnessRuntime)

sendHost :: Harness -> PluginEnvelope -> IO ()
sendHost harness envelope =
    atomically $ writeTQueue (harnessIncoming harness) (NextElem $ Proto envelope)

receivePlugin :: Harness -> IO PluginEnvelope
receivePlugin harness = do
    value <- within "timed out waiting for a plugin envelope" $
      atomically $ readTQueue (harnessOutgoing harness)
    case value of
      NoNextElem -> fail "plugin closed its request stream unexpectedly"
      NextElem envelope -> pure $ getProto envelope

receiveQueuedEnvelope :: TQueue (NextElem (Proto PluginEnvelope)) -> IO PluginEnvelope
receiveQueuedEnvelope outgoing = do
    value <- within "timed out waiting for a queued plugin envelope" $
      atomically $ readTQueue outgoing
    case value of
      NoNextElem -> fail "sender closed unexpectedly"
      NextElem envelope -> pure $ getProto envelope

expectNoPluginEnvelope :: Harness -> IO ()
expectNoPluginEnvelope harness =
    expectNoQueuedEnvelope
      "plugin emitted an envelope before the active action settled"
      (harnessOutgoing harness)

expectNoQueuedEnvelope
  :: String
  -> TQueue (NextElem (Proto PluginEnvelope))
  -> IO ()
expectNoQueuedEnvelope message outgoing = do
    unexpected <- timeout 100000 $ atomically $ readTQueue outgoing
    case unexpected of
      Nothing -> pure ()
      Just _ -> fail message

handshake :: Harness -> TraceContext -> IO ()
handshake harness traceContext = do
    sendHost harness $ hostHelloEnvelope 1 traceContext
    hello <- receivePlugin harness
    assert "plugin did not answer HostHello" $
      hello ^. #maybe'replyTo == Nothing
        && case hello ^. #maybe'payload of
          Just (PluginEnvelope'PluginHello _) -> True
          _ -> False
    sendHost harness $ readyEnvelope 2 traceContext
    ready <- receivePlugin harness
    assert "plugin did not complete SessionReady" $
      ready ^. #maybe'replyTo == Nothing
        && case ready ^. #maybe'payload of
          Just (PluginEnvelope'Ready _) -> True
          _ -> False

shutdown :: Harness -> Word64 -> IO ()
shutdown harness messageId = do
    sendHost harness $ shutdownEnvelope messageId shutdownTrace
    acknowledged <- receivePlugin harness
    assert "plugin did not acknowledge shutdown" $
      acknowledged ^. #maybe'replyTo == Just messageId
        && case acknowledged ^. #maybe'payload of
          Just (PluginEnvelope'ShutdownAcknowledged _) -> True
          _ -> False
    _ <- within "plugin runtime did not exit after shutdown" $
      wait (harnessRuntime harness)
    pure ()

hostHelloEnvelope :: Word64 -> TraceContext -> PluginEnvelope
hostHelloEnvelope messageId traceContext = pluginEnvelope messageId traceContext $
    PluginEnvelope'HostHello $ defMessage
      & #maybe'node .~ Just defMessage
      & #maximumCallDepth .~ 10
      & #maximumCausalDepth .~ 10
      & #maximumArtifactChunkBytes .~ 65536
      & #pluginId . #value .~ pluginIdValue
      & #pluginName . #value .~ "unit-fixture"

readyEnvelope :: Word64 -> TraceContext -> PluginEnvelope
readyEnvelope messageId traceContext =
    pluginEnvelope messageId traceContext $ PluginEnvelope'Ready defMessage

startJobEnvelope :: Word64 -> TraceContext -> Text -> Text -> PluginEnvelope
startJobEnvelope messageId traceContext jobId actionName = pluginEnvelope messageId traceContext $
    PluginEnvelope'StartJob $ defMessage
      & #jobId . #value .~ jobId
      & #maybe'invocation .~ Just (StartJobRequest'Action $
          defMessage & #action .~ actionName)

cancelJobEnvelope :: Word64 -> TraceContext -> Text -> PluginEnvelope
cancelJobEnvelope messageId traceContext jobId = pluginEnvelope messageId traceContext $
    PluginEnvelope'CancelJob $ defMessage
      & #jobId . #value .~ jobId
      & #reason .~ JOB_CANCELLATION_REASON_USER_REQUEST

heartbeatEnvelope :: Word64 -> TraceContext -> Word64 -> PluginEnvelope
heartbeatEnvelope messageId traceContext nonce = pluginEnvelope messageId traceContext $
    PluginEnvelope'Heartbeat $ defMessage & #nonce .~ nonce

shutdownEnvelope :: Word64 -> TraceContext -> PluginEnvelope
shutdownEnvelope messageId traceContext = pluginEnvelope messageId traceContext $
    PluginEnvelope'Shutdown $ defMessage
      & #reason .~ "unit test complete"
      & #maybe'gracePeriodDeadline .~ Just
          (defMessage & #seconds .~ 4_102_444_800)

pluginEnvelope :: Word64 -> TraceContext -> PluginEnvelope'Payload -> PluginEnvelope
pluginEnvelope messageId traceContext payload = defMessage
    & #messageId .~ messageId
    & #sessionId .~ sessionId
    & #pluginInstanceId .~ instanceId
    & #trace .~ traceContext
    & #maybe'payload .~ Just payload

responseTo :: PluginEnvelope -> TraceContext -> PluginEnvelope
responseTo request traceContext = responseToWith request traceContext $
    defMessage
      & #maybe'result .~ Just (HostCallResponse'GetConfig defMessage)

responseToWith
  :: PluginEnvelope
  -> TraceContext
  -> HostCallResponse
  -> PluginEnvelope
responseToWith request traceContext response =
    pluginEnvelope 100 traceContext (PluginEnvelope'HostResult response)
    & #maybe'replyTo .~ Just (request ^. #messageId)

getConfigHostCall :: HostCallRequest
getConfigHostCall = defMessage
    & #maybe'call .~ Just (HostCallRequest'GetConfig defMessage)

assertJobAccepted :: Word64 -> Text -> PluginEnvelope -> IO ()
assertJobAccepted startId jobId envelope = assert "JobAccepted differs from its request" $
    envelope ^. #maybe'replyTo == Just startId
      && case envelope ^. #maybe'payload of
        Just (PluginEnvelope'JobAccepted accepted) ->
          accepted ^. #jobId . #value == jobId
        _ -> False

assertSucceeded :: Text -> PluginEnvelope -> IO ()
assertSucceeded jobId envelope = assert "job did not report successful completion" $
    case envelope ^. #maybe'payload of
      Just (PluginEnvelope'JobUpdate update) ->
        update ^. #jobId . #value == jobId
          && update ^. #state == JOB_STATE_SUCCEEDED
      _ -> False

assertHostErrorPreserved :: Text -> PluginEnvelope -> IO ()
assertHostErrorPreserved jobId envelope = assert "structured HostError was flattened" $
    case envelope ^. #maybe'payload of
      Just (PluginEnvelope'JobUpdate update) ->
        update ^. #jobId . #value == jobId
          && update ^. #state == JOB_STATE_FAILED
          && update ^. #error . #code == ERROR_CODE_INVALID_ARGUMENT
          && update ^. #error . #message == "structured failure"
          && update ^. #error . #retryable
      _ -> False

assertCancelAcknowledged :: Word64 -> Text -> PluginEnvelope -> IO ()
assertCancelAcknowledged cancelId jobId envelope =
    assert "CancelJobAcknowledged differs from its request" $
      envelope ^. #maybe'replyTo == Just cancelId
        && case envelope ^. #maybe'payload of
          Just (PluginEnvelope'CancelJobAcknowledged acknowledged) ->
            acknowledged ^. #jobId . #value == jobId
          _ -> False

assertHeartbeat :: Word64 -> TraceContext -> Word64 -> PluginEnvelope -> IO ()
assertHeartbeat requestId traceContext nonce envelope = assert "heartbeat response changed context" $
    envelope ^. #maybe'replyTo == Just requestId
      && envelope ^. #trace == traceContext
      && case envelope ^. #maybe'payload of
        Just (PluginEnvelope'Heartbeat heartbeat) -> heartbeat ^. #nonce == nonce
        _ -> False

buildPlugin :: [Action] -> Plugin
buildPlugin actions = either (error . Text.unpack) id $ do
    plugin <- newPlugin pluginIdValue "0.1.0"
    foldM (flip addAction) plugin actions

within :: String -> IO a -> IO a
within message action = timeout 2000000 action >>= maybe (fail message) pure

assert :: String -> Bool -> IO ()
assert message condition = unless condition $ fail message

pluginIdValue, sessionId, instanceId :: Text
pluginIdValue = "org.onelastleaf.unit"
sessionId = "unit-session"
instanceId = "unit-instance"

completedJobId, unknownJobId, errorJobId, cancelledJobId :: Text
completedJobId = "00000000-0000-4000-8000-000000000101"
unknownJobId = "00000000-0000-4000-8000-000000000102"
errorJobId = "00000000-0000-4000-8000-000000000103"
cancelledJobId = "00000000-0000-4000-8000-000000000104"

rootTrace, completedTrace, unknownTrace, errorTrace, cancelledTrace, heartbeatTrace, shutdownTrace, nestedTrace :: TraceContext
rootTrace = makeTrace "00000000-0000-4000-8000-000000000001"
completedTrace = makeTrace "00000000-0000-4000-8000-000000000111"
unknownTrace = makeTrace "00000000-0000-4000-8000-000000000112"
errorTrace = makeTrace "00000000-0000-4000-8000-000000000113"
cancelledTrace = makeTrace "00000000-0000-4000-8000-000000000114"
heartbeatTrace = makeTrace "00000000-0000-4000-8000-000000000115"
shutdownTrace = makeTrace "00000000-0000-4000-8000-000000000116"
nestedTrace = (makeTrace "00000000-0000-4000-8000-000000000117")
  & #maybe'parentCallId .~ Just 3
  & #callDepth .~ 1

makeTrace :: Text -> TraceContext
makeTrace correlation = defMessage & #correlationId .~ correlation
