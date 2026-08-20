-- | Stable public API for defining and running an onelastleaf plugin.
--
-- Plugin authors normally need only this module plus the re-exported
-- @Proto.Oll.*@ modules for capability-specific request and result types.
module Onelastleaf.PluginSDK (
    Plugin
  , Action(..)
  , ActionHandler
  , ActionContext
  , ActionResult(..)
  , Cancelled(..)
  , HostError(..)
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

import Control.Exception
import Data.ByteString (ByteString)
import Data.Map.Strict (Map)
import Data.ProtoLens.Labels ()
import Data.Text (Text)
import Network.GRPC.Common.Protobuf ((&), (.~), (^.), defMessage)

import Proto.Oll.Common
import Proto.Oll.Config
import Proto.Oll.Plugin

import Onelastleaf.PluginSDK.Host
import Onelastleaf.PluginSDK.Runtime
import Onelastleaf.PluginSDK.Types

-- | Invoke an oll-owned document or configuration capability.
callHost :: ActionContext -> HostCallRequest -> IO HostCallResponse
callHost context request = do
    checkCancellation context
    trace <- nestedTrace context
    hostCall (actionContextHost context) trace request

-- | Read this plugin's current host-owned Lua configuration.
getPluginConfig :: ActionContext -> Maybe ConfigPath -> IO GetConfigResponse
getPluginConfig context path = do
    checkCancellation context
    trace <- nestedTrace context
    getConfig (actionContextHost context) trace path

-- | Invoke a session-bound Lua function returned by 'getPluginConfig'.
invokePluginConfigFunction
  :: ActionContext
  -> ConfigFunctionRef
  -> [ConfigValue]
  -> IO InvokeConfigFunctionResponse
invokePluginConfigFunction context function arguments = do
    checkCancellation context
    trace <- nestedTrace context
    invokeConfigFunction (actionContextHost context) trace function arguments

-- | Emit one structured, job-correlated log record.
logMessage
  :: ActionContext
  -> LogLevel
  -> Text
  -> Text
  -> Map Text ConfigValue
  -> IO ()
logMessage context level target message fields = do
    checkCancellation context
    pluginLog (actionContextHost context) (contextTrace context) level target message fields

-- | Validate and upload a complete chunked artifact for the current job.
uploadArtifact
  :: ActionContext
  -> ArtifactDescriptor
  -> [ByteString]
  -> IO ArtifactStored
uploadArtifact context descriptor chunks = do
    checkCancellation context
    storeArtifact
      (actionContextHost context)
      (contextTrace context)
      (contextJobId context)
      descriptor
      chunks

nestedTrace :: ActionContext -> IO TraceContext
nestedTrace context = do
    let host = actionContextHost context
        current = contextTrace context
        nextDepth = current ^. #callDepth + 1
    if nextDepth == 0 || nextDepth > maximumCallDepth host
      then throwIO $ HostError $ defMessage
        & #code .~ ERROR_CODE_CALL_DEPTH_EXCEEDED
        & #message .~ "host call exceeds the negotiated call-depth limit"
      else pure $ current
        & #maybe'parentCallId .~ Just (actionContextParentCallId context)
        & #callDepth .~ nextDepth
