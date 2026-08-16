# onelastleaf Haskell plugin SDK

The official Haskell runtime for trusted onelastleaf process plugins. It uses
[Grapesy](https://github.com/well-typed/grapesy) for the long-lived local gRPC
session and exposes jobs, cancellation, host calls, logs, and artifact upload.

```haskell
import Onelastleaf.PluginSDK
import qualified Data.Text as Text

main :: IO ()
main = runPlugin plugin
  where
    plugin = either (error . Text.unpack) id $
      newPlugin "example.echo" "0.1.0" >>= addAction echo
    echo = Action "echo" "Return the supplied arguments" $ \_ arguments ->
      pure $ stringResult (Text.unwords arguments)
```

`OLL_PLUGIN_ENDPOINT` is supplied by oll. The SDK validates that it is an
explicit plaintext loopback endpoint and continuously observes stdin for parent
liveness.

The checked-in generated modules come from the canonical files under `proto/`.
Regenerate them with `proto-lens-protoc` before publishing after any protocol
change.
