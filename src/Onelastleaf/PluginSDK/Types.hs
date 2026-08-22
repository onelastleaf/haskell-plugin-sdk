module Onelastleaf.PluginSDK.Types (
    Plugin(..)
  , Action(..)
  , ActionHandler
  , ActionContext(..)
  , ActionResult(..)
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
  , Cancelled(..)
  ) where

import Control.Concurrent.STM
import Control.Exception
import Data.Char (isAsciiLower, isDigit)
import Data.Int
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.ProtoLens.Labels ()
import Data.Text (Text)
import Data.Text qualified as Text
import Data.Word

import Network.GRPC.Common.Protobuf

import Proto.Oll.Common
import Proto.Oll.Config
import Proto.Oll.Plugin
import Proto.Google.Protobuf.Timestamp (Timestamp)

import Onelastleaf.PluginSDK.Host (Host)

-- | An immutable plugin definition. Construct one with 'newPlugin' and
-- register actions with 'addAction'.
data Plugin = Plugin {
      pluginId      :: !Text
    , pluginVersion :: !Text
    , pluginActions :: !(Map Text Action)
    }

-- | A named operation exposed to oll.
data Action = Action {
      actionName        :: !Text
    , actionDescription :: !Text
    , actionHandler     :: ActionHandler
    }

-- | A concurrent job handler. The argument list preserves shell-style order,
-- duplicates, empty values, and leading dashes.
type ActionHandler = ActionContext -> [Text] -> IO ActionResult

-- | Per-invocation capabilities and cancellation state. Its constructor is
-- private outside the package so contexts cannot be forged.
data ActionContext = ActionContext {
      actionContextJobId        :: !Text
    , actionContextDeadline     :: !(Maybe Timestamp)
    , actionContextTrace        :: !TraceContext
    , actionContextCancellation :: !(TVar Bool)
    , actionContextHost         :: !Host
    , actionContextParentCallId :: !Word64
    }

-- | The structured value and already-stored artifacts returned by an action.
data ActionResult = ActionResult {
      actionResultValue     :: !(Maybe ConfigValue)
    , actionResultArtifacts :: ![ArtifactDescriptor]
    }

-- | Raised by 'checkCancellation' after oll cancels the current job.
data Cancelled = Cancelled
  deriving stock (Show)
  deriving anyclass (Exception)

-- | Validate an immutable dotted-DNS plugin ID and informational version.
newPlugin :: Text -> Text -> Either Text Plugin
newPlugin ident version
  | not (validPluginId ident) = Left "invalid plugin ID"
  | Text.null version = Left "plugin version must not be empty"
  | otherwise = Right Plugin {
        pluginId = ident
      , pluginVersion = version
      , pluginActions = Map.empty
      }

-- | Add an action, rejecting empty or duplicate names.
addAction :: Action -> Plugin -> Either Text Plugin
addAction action plugin
  | Text.null (actionName action) = Left "action name must not be empty"
  | Map.member (actionName action) (pluginActions plugin) =
      Left "action names must be unique"
  | otherwise = Right plugin {
        pluginActions = Map.insert (actionName action) action (pluginActions plugin)
      }

-- | Return a protobuf string value without artifacts.
stringResult :: Text -> ActionResult
stringResult value = ActionResult {
      actionResultValue = Just $ defMessage & #stringValue .~ value
    , actionResultArtifacts = []
    }

-- | Return a protobuf Boolean value without artifacts.
boolResult :: Bool -> ActionResult
boolResult value = ActionResult {
      actionResultValue = Just $ defMessage & #boolValue .~ value
    , actionResultArtifacts = []
    }

-- | Return the full signed 64-bit range supported by protobuf @sint64@.
integerResult :: Int64 -> ActionResult
integerResult value = ActionResult {
      actionResultValue = Just $ defMessage & #integerValue .~ value
    , actionResultArtifacts = []
    }

-- | Return the identifier of the current job.
contextJobId :: ActionContext -> Text
contextJobId = actionContextJobId

-- | Return the trace context inherited from the current job.
contextTrace :: ActionContext -> TraceContext
contextTrace = actionContextTrace

-- | Return the optional deadline advertised for the current job.
contextDeadline :: ActionContext -> Maybe Timestamp
contextDeadline = actionContextDeadline

-- | Check cancellation without throwing.
isCancelled :: ActionContext -> IO Bool
isCancelled = readTVarIO . actionContextCancellation

-- | Throw 'Cancelled' when cancellation has been requested.
checkCancellation :: ActionContext -> IO ()
checkCancellation context = do
    cancelled <- isCancelled context
    if cancelled then throwIO Cancelled else pure ()

validPluginId :: Text -> Bool
validPluginId ident =
    Text.length ident >= 3
      && Text.length ident <= 191
      && length labels >= 2
      && all validLabel labels
  where
    labels = Text.splitOn "." ident
    validLabel label =
      not (Text.null label)
        && Text.length label <= 63
        && validEdge (Text.head label)
        && validEdge (Text.last label)
        && Text.all (\c -> validEdge c || c == '-') label
    validEdge c = isAsciiLower c || isDigit c
