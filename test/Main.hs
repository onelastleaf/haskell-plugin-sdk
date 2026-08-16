module Main (main) where

import Control.Monad (unless)

import Onelastleaf.PluginSDK
import Onelastleaf.PluginSDK.Internal.Endpoint

main :: IO ()
main = do
    unless (either (const False) (const True) $ newPlugin "example.echo" "0.1.0") $
      fail "valid plugin identity was rejected"
    unless (either (const True) (const False) $ newPlugin "invalid" "0.1.0") $
      fail "invalid plugin identity was accepted"
    unless (parseEndpoint "http://127.0.0.1:1234" == Right (Endpoint "127.0.0.1" 1234)) $
      fail "IPv4 loopback endpoint was rejected"
    unless (either (const True) (const False) $ parseEndpoint "http://0.0.0.0:1234") $
      fail "non-loopback endpoint was accepted"

