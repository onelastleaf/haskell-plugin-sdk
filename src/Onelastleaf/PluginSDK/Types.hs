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

data Plugin = Plugin {
      pluginId      :: !Text
    , pluginVersion :: !Text
    , pluginActions :: !(Map Text Action)
    }

data Action = Action {
      actionName        :: !Text
    , actionDescription :: !Text
    , actionHandler     :: ActionHandler
    }

type ActionHandler = ActionContext -> [Text] -> IO ActionResult

data ActionContext = ActionContext {
      actionContextJobId       :: !Text
    , actionContextDeadline    :: !(Maybe Timestamp)
    , actionContextTrace       :: !TraceContext
    , actionContextCancellation :: !(TVar Bool)
    , actionContextHost        :: !Host
    , actionContextParentCallId :: !Word64
    }

data ActionResult = ActionResult {
      actionResultValue     :: !(Maybe ConfigValue)
    , actionResultArtifacts :: ![ArtifactDescriptor]
    }

data Cancelled = Cancelled
  deriving stock (Show)
  deriving anyclass (Exception)

newPlugin :: Text -> Text -> Either Text Plugin
newPlugin ident version
  | not (validPluginId ident) = Left "invalid plugin ID"
  | Text.null version = Left "plugin version must not be empty"
  | otherwise = Right Plugin {
        pluginId = ident
      , pluginVersion = version
      , pluginActions = Map.empty
      }

addAction :: Action -> Plugin -> Either Text Plugin
addAction action plugin
  | Text.null (actionName action) = Left "action name must not be empty"
  | Map.member (actionName action) (pluginActions plugin) =
      Left "action names must be unique"
  | otherwise = Right plugin {
        pluginActions = Map.insert (actionName action) action (pluginActions plugin)
      }

stringResult :: Text -> ActionResult
stringResult value = ActionResult {
      actionResultValue = Just $ defMessage & #stringValue .~ value
    , actionResultArtifacts = []
    }

boolResult :: Bool -> ActionResult
boolResult value = ActionResult {
      actionResultValue = Just $ defMessage & #boolValue .~ value
    , actionResultArtifacts = []
    }

integerResult :: Int -> ActionResult
integerResult value = ActionResult {
      actionResultValue = Just $ defMessage & #integerValue .~ fromIntegral value
    , actionResultArtifacts = []
    }

contextJobId :: ActionContext -> Text
contextJobId = actionContextJobId

contextTrace :: ActionContext -> TraceContext
contextTrace = actionContextTrace

contextDeadline :: ActionContext -> Maybe Timestamp
contextDeadline = actionContextDeadline

isCancelled :: ActionContext -> IO Bool
isCancelled = readTVarIO . actionContextCancellation

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

-- Runtime-only construction; exported through the abstract ActionContext.
instance Eq Action where
  left == right =
    actionName left == actionName right
      && actionDescription left == actionDescription right
