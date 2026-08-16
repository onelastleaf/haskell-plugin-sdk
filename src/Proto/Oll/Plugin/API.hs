{-# OPTIONS_GHC -Wno-orphans #-}

module Proto.Oll.Plugin.API (module Proto.Oll.Plugin) where

import Network.GRPC.Common
import Network.GRPC.Common.Protobuf

import Proto.Oll.Plugin

type instance RequestMetadata (Protobuf PluginRuntime method) = NoMetadata
type instance ResponseInitialMetadata (Protobuf PluginRuntime method) = NoMetadata
type instance ResponseTrailingMetadata (Protobuf PluginRuntime method) = NoMetadata

