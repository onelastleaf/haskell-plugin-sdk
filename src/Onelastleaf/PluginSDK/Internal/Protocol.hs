module Onelastleaf.PluginSDK.Internal.Protocol (
    ProtocolViolation(..)
  , protocolViolation
  , validUuidV4
  ) where

import Control.Exception
import Data.Text (Text)
import Data.Text qualified as Text

newtype ProtocolViolation = ProtocolViolation Text
  deriving stock (Show)

instance Exception ProtocolViolation where
  displayException (ProtocolViolation message) = Text.unpack message

protocolViolation :: Text -> IO a
protocolViolation = throwIO . ProtocolViolation

validUuidV4 :: Text -> Bool
validUuidV4 value =
    Text.length value == 36
      && and [Text.index value index == '-' | index <- hyphenIndexes]
      && Text.index value 14 == '4'
      && Text.index value 19 `elem` ("89ab" :: String)
      && all validAt [0 .. 35]
  where
    hyphenIndexes = [8, 13, 18, 23]

    validAt index
      | index `elem` hyphenIndexes = True
      | otherwise =
          let character = Text.index value index
          in character >= '0' && character <= '9'
              || character >= 'a' && character <= 'f'
