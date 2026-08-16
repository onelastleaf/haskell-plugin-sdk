module Main (main) where

import Control.Concurrent (threadDelay)
import Data.ByteString qualified as ByteString
import Data.Map.Strict qualified as Map
import Data.ProtoLens.Labels ()
import Data.Text qualified as Text
import Network.GRPC.Common.Protobuf ((&), (.~), (^.), defMessage)

import Onelastleaf.PluginSDK
import Proto.Oll.Common
import Proto.Oll.Config
import Proto.Oll.Document
import Proto.Oll.Plugin

main :: IO ()
main = either (fail . Text.unpack) runPlugin $ do
    plugin <- newPlugin "org.onelastleaf.conformance" "0.1.0"
    withEcho <- addAction (Action "echo" "Echo arguments" echoAction) plugin
    withWait <- addAction (Action "wait" "Wait for cancellation" waitAction) withEcho
    withHost <- addAction (Action "host" "Exercise host capabilities" hostAction) withWait
    addAction (Action "artifact" "Exercise artifact transfer" artifactAction) withHost

echoAction :: ActionHandler
echoAction _ arguments = pure $ stringResult (Text.unwords arguments)

waitAction :: ActionHandler
waitAction context _ = do
    cancelled <- isCancelled context
    if cancelled
      then checkCancellation context >> pure (ActionResult Nothing [])
      else threadDelay 1_000 >> waitAction context []

hostAction :: ActionHandler
hostAction context _ = do
    configured <- getPluginConfig context Nothing
    function <- case configured ^. #value . #maybe'kind of
      Just (ConfigValue'FunctionValue value) -> pure value
      _ -> fail "GetConfig omitted function"
    let argument = defMessage & #stringValue .~ "config"
    invoked <- invokePluginConfigFunction context function [argument]
    functionResult <- case invoked ^. #results of
      [value] -> case value ^. #maybe'kind of
        Just (ConfigValue'StringValue result) -> pure result
        _ -> fail "configuration function omitted string result"
      _ -> fail "configuration function omitted string result"
    let request = defMessage
          & #path . #value .~ "/conformance.md"
          & #projection .~ DOCUMENT_PROJECTION_CONTENT
    response <- callHost context $ defMessage
      & #maybe'call .~ Just (HostCallRequest'ReadDocument request)
    document <- case response ^. #maybe'result of
      Just (HostCallResponse'ReadDocument readResponse) ->
        case readResponse ^. #document . #maybe'representation of
          Just (DocumentSnapshot'Content content) -> pure content
          _ -> fail "document call omitted text content"
      _ -> fail "document call omitted text content"
    logMessage context LOG_LEVEL_INFO "conformance" "host action complete" Map.empty
    pure $ stringResult (functionResult <> "|" <> document)

artifactAction :: ActionHandler
artifactAction context _ = do
    let chunks = ["artifact ", "payload"]
        descriptor = defMessage
          & #artifactId . #value .~ "aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa"
          & #fileName .~ "conformance.txt"
          & #mediaType .~ "text/plain"
          & #sizeBytes .~ 16
          & #sha256 .~ ByteString.pack [
              0xa1, 0x1a, 0x40, 0x45, 0xc8, 0x9f, 0x72, 0x7f
            , 0xad, 0xb9, 0xae, 0xdd, 0xb0, 0xf2, 0x96, 0x37
            , 0xce, 0x5b, 0x50, 0x58, 0x46, 0xaf, 0xeb, 0xd8
            , 0x2a, 0xe2, 0xc0, 0x1b, 0x67, 0x33, 0xa6, 0xb5
            ]
    _ <- uploadArtifact context descriptor chunks
    pure (stringResult "artifact") {actionResultArtifacts = [descriptor]}
