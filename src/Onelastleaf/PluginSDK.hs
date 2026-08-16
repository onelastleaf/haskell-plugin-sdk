module Onelastleaf.PluginSDK (
    Plugin
  , Action(..)
  , ActionHandler
  , ActionContext
  , ActionResult(..)
  , Cancelled(..)
  , newPlugin
  , addAction
  , stringResult
  , boolResult
  , integerResult
  , contextJobId
  , contextTrace
  , contextDeadline
  , isCancelled
  , checkCancellation
  , callHost
  , getPluginConfig
  , invokePluginConfigFunction
  , logMessage
  , uploadArtifact
  , runPlugin
  ) where

import Data.ByteString (ByteString)
import Data.Map.Strict (Map)
import Data.Text (Text)
import Data.ProtoLens.Labels ()
import Network.GRPC.Common.Protobuf ((&), (.~), (^.))

import Proto.Oll.Common
import Proto.Oll.Config
import Proto.Oll.Plugin

import Onelastleaf.PluginSDK.Host
import Onelastleaf.PluginSDK.Runtime
import Onelastleaf.PluginSDK.Types

callHost :: ActionContext -> HostCallRequest -> IO HostCallResponse
callHost context request = do
    trace <- nestedTrace context
    hostCall (actionContextHost context) trace request

getPluginConfig :: ActionContext -> Maybe ConfigPath -> IO GetConfigResponse
getPluginConfig context path = do
    trace <- nestedTrace context
    getConfig (actionContextHost context) trace path

invokePluginConfigFunction
  :: ActionContext
  -> ConfigFunctionRef
  -> [ConfigValue]
  -> IO InvokeConfigFunctionResponse
invokePluginConfigFunction context function arguments = do
    trace <- nestedTrace context
    invokeConfigFunction (actionContextHost context) trace function arguments

logMessage
  :: ActionContext
  -> LogLevel
  -> Text
  -> Text
  -> Map Text ConfigValue
  -> IO ()
logMessage context = pluginLog (actionContextHost context) (contextTrace context)

uploadArtifact
  :: ActionContext
  -> ArtifactDescriptor
  -> [ByteString]
  -> IO ArtifactStored
uploadArtifact context =
    storeArtifact
      (actionContextHost context)
      (contextTrace context)
      (contextJobId context)

nestedTrace :: ActionContext -> IO TraceContext
nestedTrace context = do
    let host = actionContextHost context
        current = contextTrace context
        nextDepth = current ^. #callDepth + 1
    if nextDepth == 0 || nextDepth > maximumCallDepth host
      then ioError $ userError "host call exceeds the negotiated call-depth limit"
      else pure $ current
        & #maybe'parentCallId .~ Just (actionContextParentCallId context)
        & #callDepth .~ nextDepth
