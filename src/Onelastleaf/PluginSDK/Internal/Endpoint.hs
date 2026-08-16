module Onelastleaf.PluginSDK.Internal.Endpoint (
    Endpoint(..)
  , parseEndpoint
  ) where

import Data.Char (isDigit)
import Data.List (stripPrefix)
import Network.Socket (PortNumber)
import Text.Read (readMaybe)

data Endpoint = Endpoint {
      endpointHost :: !String
    , endpointPort :: !PortNumber
    }
  deriving stock (Eq, Show)

parseEndpoint :: String -> Either String Endpoint
parseEndpoint value = do
    authority <- maybe invalid Right $ stripPrefix "http://" value
    (host, portText) <- parseAuthority authority
    port <- maybe invalid Right (readMaybe portText :: Maybe Int)
    if port < 1 || port > 65535
      then invalid
      else pure Endpoint {
          endpointHost = host
        , endpointPort = fromIntegral port
        }
  where
    invalid = Left "OLL_PLUGIN_ENDPOINT must be an explicit plaintext loopback HTTP endpoint"

    parseAuthority authority
      | Just rest <- stripPrefix "[::1]:" authority
      , not (null rest)
      , all isDigit rest = Right ("::1", rest)
      | otherwise =
          case break (== ':') authority of
            (host, ':' : port)
              | validIPv4Loopback host && not (null port) && all isDigit port ->
                  Right (host, port)
            _ -> invalid

validIPv4Loopback :: String -> Bool
validIPv4Loopback host =
    case splitDots host of
      ["127", b, c, d] -> all validOctet [b, c, d]
      _ -> False
  where
    validOctet value =
      not (null value)
        && all isDigit value
        && maybe False (\octet -> octet >= (0 :: Int) && octet <= 255) (readMaybe value)

splitDots :: String -> [String]
splitDots [] = [""]
splitDots input =
    let (part, rest) = break (== '.') input
    in part : case rest of
      [] -> []
      _ : remaining -> splitDots remaining

