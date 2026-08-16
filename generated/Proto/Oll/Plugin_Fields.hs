{- This file was auto-generated from oll/plugin.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Oll.Plugin_Fields where
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Oll.Common
import qualified Proto.Oll.Config
import qualified Proto.Oll.Document
action ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "action" a) =>
  Lens.Family2.LensLike' f s a
action = Data.ProtoLens.Field.field @"action"
actions ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "actions" a) =>
  Lens.Family2.LensLike' f s a
actions = Data.ProtoLens.Field.field @"actions"
arguments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "arguments" a) =>
  Lens.Family2.LensLike' f s a
arguments = Data.ProtoLens.Field.field @"arguments"
artifact ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "artifact" a) =>
  Lens.Family2.LensLike' f s a
artifact = Data.ProtoLens.Field.field @"artifact"
artifactAccepted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "artifactAccepted" a) =>
  Lens.Family2.LensLike' f s a
artifactAccepted = Data.ProtoLens.Field.field @"artifactAccepted"
artifactChunk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "artifactChunk" a) =>
  Lens.Family2.LensLike' f s a
artifactChunk = Data.ProtoLens.Field.field @"artifactChunk"
artifactComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "artifactComplete" a) =>
  Lens.Family2.LensLike' f s a
artifactComplete = Data.ProtoLens.Field.field @"artifactComplete"
artifactId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "artifactId" a) =>
  Lens.Family2.LensLike' f s a
artifactId = Data.ProtoLens.Field.field @"artifactId"
artifactStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "artifactStart" a) =>
  Lens.Family2.LensLike' f s a
artifactStart = Data.ProtoLens.Field.field @"artifactStart"
artifactStored ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "artifactStored" a) =>
  Lens.Family2.LensLike' f s a
artifactStored = Data.ProtoLens.Field.field @"artifactStored"
artifacts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "artifacts" a) =>
  Lens.Family2.LensLike' f s a
artifacts = Data.ProtoLens.Field.field @"artifacts"
cancelJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cancelJob" a) =>
  Lens.Family2.LensLike' f s a
cancelJob = Data.ProtoLens.Field.field @"cancelJob"
cancelJobAcknowledged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cancelJobAcknowledged" a) =>
  Lens.Family2.LensLike' f s a
cancelJobAcknowledged
  = Data.ProtoLens.Field.field @"cancelJobAcknowledged"
chunkCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunkCount" a) =>
  Lens.Family2.LensLike' f s a
chunkCount = Data.ProtoLens.Field.field @"chunkCount"
chunkIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunkIndex" a) =>
  Lens.Family2.LensLike' f s a
chunkIndex = Data.ProtoLens.Field.field @"chunkIndex"
commitDocuments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commitDocuments" a) =>
  Lens.Family2.LensLike' f s a
commitDocuments = Data.ProtoLens.Field.field @"commitDocuments"
data' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "data'" a) =>
  Lens.Family2.LensLike' f s a
data' = Data.ProtoLens.Field.field @"data'"
deadline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deadline" a) =>
  Lens.Family2.LensLike' f s a
deadline = Data.ProtoLens.Field.field @"deadline"
description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "description" a) =>
  Lens.Family2.LensLike' f s a
description = Data.ProtoLens.Field.field @"description"
error ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "error" a) =>
  Lens.Family2.LensLike' f s a
error = Data.ProtoLens.Field.field @"error"
fields ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fields" a) =>
  Lens.Family2.LensLike' f s a
fields = Data.ProtoLens.Field.field @"fields"
fileName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fileName" a) =>
  Lens.Family2.LensLike' f s a
fileName = Data.ProtoLens.Field.field @"fileName"
getConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "getConfig" a) =>
  Lens.Family2.LensLike' f s a
getConfig = Data.ProtoLens.Field.field @"getConfig"
getDirectoryTree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "getDirectoryTree" a) =>
  Lens.Family2.LensLike' f s a
getDirectoryTree = Data.ProtoLens.Field.field @"getDirectoryTree"
gracePeriodDeadline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "gracePeriodDeadline" a) =>
  Lens.Family2.LensLike' f s a
gracePeriodDeadline
  = Data.ProtoLens.Field.field @"gracePeriodDeadline"
heartbeat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "heartbeat" a) =>
  Lens.Family2.LensLike' f s a
heartbeat = Data.ProtoLens.Field.field @"heartbeat"
hostCall ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostCall" a) =>
  Lens.Family2.LensLike' f s a
hostCall = Data.ProtoLens.Field.field @"hostCall"
hostHello ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostHello" a) =>
  Lens.Family2.LensLike' f s a
hostHello = Data.ProtoLens.Field.field @"hostHello"
hostResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostResult" a) =>
  Lens.Family2.LensLike' f s a
hostResult = Data.ProtoLens.Field.field @"hostResult"
invokeConfigFunction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "invokeConfigFunction" a) =>
  Lens.Family2.LensLike' f s a
invokeConfigFunction
  = Data.ProtoLens.Field.field @"invokeConfigFunction"
jobAccepted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "jobAccepted" a) =>
  Lens.Family2.LensLike' f s a
jobAccepted = Data.ProtoLens.Field.field @"jobAccepted"
jobId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "jobId" a) =>
  Lens.Family2.LensLike' f s a
jobId = Data.ProtoLens.Field.field @"jobId"
jobUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "jobUpdate" a) =>
  Lens.Family2.LensLike' f s a
jobUpdate = Data.ProtoLens.Field.field @"jobUpdate"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
level ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "level" a) =>
  Lens.Family2.LensLike' f s a
level = Data.ProtoLens.Field.field @"level"
listDirectory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listDirectory" a) =>
  Lens.Family2.LensLike' f s a
listDirectory = Data.ProtoLens.Field.field @"listDirectory"
log ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "log" a) =>
  Lens.Family2.LensLike' f s a
log = Data.ProtoLens.Field.field @"log"
maximumArtifactChunkBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maximumArtifactChunkBytes" a) =>
  Lens.Family2.LensLike' f s a
maximumArtifactChunkBytes
  = Data.ProtoLens.Field.field @"maximumArtifactChunkBytes"
maximumCallDepth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maximumCallDepth" a) =>
  Lens.Family2.LensLike' f s a
maximumCallDepth = Data.ProtoLens.Field.field @"maximumCallDepth"
maximumCausalDepth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maximumCausalDepth" a) =>
  Lens.Family2.LensLike' f s a
maximumCausalDepth
  = Data.ProtoLens.Field.field @"maximumCausalDepth"
maybe'action ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'action" a) =>
  Lens.Family2.LensLike' f s a
maybe'action = Data.ProtoLens.Field.field @"maybe'action"
maybe'artifact ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'artifact" a) =>
  Lens.Family2.LensLike' f s a
maybe'artifact = Data.ProtoLens.Field.field @"maybe'artifact"
maybe'artifactAccepted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'artifactAccepted" a) =>
  Lens.Family2.LensLike' f s a
maybe'artifactAccepted
  = Data.ProtoLens.Field.field @"maybe'artifactAccepted"
maybe'artifactChunk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'artifactChunk" a) =>
  Lens.Family2.LensLike' f s a
maybe'artifactChunk
  = Data.ProtoLens.Field.field @"maybe'artifactChunk"
maybe'artifactComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'artifactComplete" a) =>
  Lens.Family2.LensLike' f s a
maybe'artifactComplete
  = Data.ProtoLens.Field.field @"maybe'artifactComplete"
maybe'artifactId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'artifactId" a) =>
  Lens.Family2.LensLike' f s a
maybe'artifactId = Data.ProtoLens.Field.field @"maybe'artifactId"
maybe'artifactStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'artifactStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'artifactStart
  = Data.ProtoLens.Field.field @"maybe'artifactStart"
maybe'artifactStored ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'artifactStored" a) =>
  Lens.Family2.LensLike' f s a
maybe'artifactStored
  = Data.ProtoLens.Field.field @"maybe'artifactStored"
maybe'call ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'call" a) =>
  Lens.Family2.LensLike' f s a
maybe'call = Data.ProtoLens.Field.field @"maybe'call"
maybe'cancelJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cancelJob" a) =>
  Lens.Family2.LensLike' f s a
maybe'cancelJob = Data.ProtoLens.Field.field @"maybe'cancelJob"
maybe'cancelJobAcknowledged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cancelJobAcknowledged" a) =>
  Lens.Family2.LensLike' f s a
maybe'cancelJobAcknowledged
  = Data.ProtoLens.Field.field @"maybe'cancelJobAcknowledged"
maybe'commitDocuments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commitDocuments" a) =>
  Lens.Family2.LensLike' f s a
maybe'commitDocuments
  = Data.ProtoLens.Field.field @"maybe'commitDocuments"
maybe'deadline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'deadline" a) =>
  Lens.Family2.LensLike' f s a
maybe'deadline = Data.ProtoLens.Field.field @"maybe'deadline"
maybe'error ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'error" a) =>
  Lens.Family2.LensLike' f s a
maybe'error = Data.ProtoLens.Field.field @"maybe'error"
maybe'getConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'getConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'getConfig = Data.ProtoLens.Field.field @"maybe'getConfig"
maybe'getDirectoryTree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'getDirectoryTree" a) =>
  Lens.Family2.LensLike' f s a
maybe'getDirectoryTree
  = Data.ProtoLens.Field.field @"maybe'getDirectoryTree"
maybe'gracePeriodDeadline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gracePeriodDeadline" a) =>
  Lens.Family2.LensLike' f s a
maybe'gracePeriodDeadline
  = Data.ProtoLens.Field.field @"maybe'gracePeriodDeadline"
maybe'heartbeat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'heartbeat" a) =>
  Lens.Family2.LensLike' f s a
maybe'heartbeat = Data.ProtoLens.Field.field @"maybe'heartbeat"
maybe'hostCall ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostCall" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostCall = Data.ProtoLens.Field.field @"maybe'hostCall"
maybe'hostHello ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostHello" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostHello = Data.ProtoLens.Field.field @"maybe'hostHello"
maybe'hostResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostResult" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostResult = Data.ProtoLens.Field.field @"maybe'hostResult"
maybe'invocation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'invocation" a) =>
  Lens.Family2.LensLike' f s a
maybe'invocation = Data.ProtoLens.Field.field @"maybe'invocation"
maybe'invokeConfigFunction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'invokeConfigFunction" a) =>
  Lens.Family2.LensLike' f s a
maybe'invokeConfigFunction
  = Data.ProtoLens.Field.field @"maybe'invokeConfigFunction"
maybe'jobAccepted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'jobAccepted" a) =>
  Lens.Family2.LensLike' f s a
maybe'jobAccepted = Data.ProtoLens.Field.field @"maybe'jobAccepted"
maybe'jobId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'jobId" a) =>
  Lens.Family2.LensLike' f s a
maybe'jobId = Data.ProtoLens.Field.field @"maybe'jobId"
maybe'jobUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'jobUpdate" a) =>
  Lens.Family2.LensLike' f s a
maybe'jobUpdate = Data.ProtoLens.Field.field @"maybe'jobUpdate"
maybe'listDirectory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listDirectory" a) =>
  Lens.Family2.LensLike' f s a
maybe'listDirectory
  = Data.ProtoLens.Field.field @"maybe'listDirectory"
maybe'log ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'log" a) =>
  Lens.Family2.LensLike' f s a
maybe'log = Data.ProtoLens.Field.field @"maybe'log"
maybe'node ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'node" a) =>
  Lens.Family2.LensLike' f s a
maybe'node = Data.ProtoLens.Field.field @"maybe'node"
maybe'payload ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'payload" a) =>
  Lens.Family2.LensLike' f s a
maybe'payload = Data.ProtoLens.Field.field @"maybe'payload"
maybe'pluginHello ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pluginHello" a) =>
  Lens.Family2.LensLike' f s a
maybe'pluginHello = Data.ProtoLens.Field.field @"maybe'pluginHello"
maybe'pluginId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pluginId" a) =>
  Lens.Family2.LensLike' f s a
maybe'pluginId = Data.ProtoLens.Field.field @"maybe'pluginId"
maybe'pluginName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pluginName" a) =>
  Lens.Family2.LensLike' f s a
maybe'pluginName = Data.ProtoLens.Field.field @"maybe'pluginName"
maybe'progress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'progress" a) =>
  Lens.Family2.LensLike' f s a
maybe'progress = Data.ProtoLens.Field.field @"maybe'progress"
maybe'protocolError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protocolError" a) =>
  Lens.Family2.LensLike' f s a
maybe'protocolError
  = Data.ProtoLens.Field.field @"maybe'protocolError"
maybe'readCrdt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'readCrdt" a) =>
  Lens.Family2.LensLike' f s a
maybe'readCrdt = Data.ProtoLens.Field.field @"maybe'readCrdt"
maybe'readDocument ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'readDocument" a) =>
  Lens.Family2.LensLike' f s a
maybe'readDocument
  = Data.ProtoLens.Field.field @"maybe'readDocument"
maybe'ready ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ready" a) =>
  Lens.Family2.LensLike' f s a
maybe'ready = Data.ProtoLens.Field.field @"maybe'ready"
maybe'replyTo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'replyTo" a) =>
  Lens.Family2.LensLike' f s a
maybe'replyTo = Data.ProtoLens.Field.field @"maybe'replyTo"
maybe'result ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'result" a) =>
  Lens.Family2.LensLike' f s a
maybe'result = Data.ProtoLens.Field.field @"maybe'result"
maybe'shutdown ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'shutdown" a) =>
  Lens.Family2.LensLike' f s a
maybe'shutdown = Data.ProtoLens.Field.field @"maybe'shutdown"
maybe'shutdownAcknowledged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'shutdownAcknowledged" a) =>
  Lens.Family2.LensLike' f s a
maybe'shutdownAcknowledged
  = Data.ProtoLens.Field.field @"maybe'shutdownAcknowledged"
maybe'startJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startJob" a) =>
  Lens.Family2.LensLike' f s a
maybe'startJob = Data.ProtoLens.Field.field @"maybe'startJob"
maybe'statusMessage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statusMessage" a) =>
  Lens.Family2.LensLike' f s a
maybe'statusMessage
  = Data.ProtoLens.Field.field @"maybe'statusMessage"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'trace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trace" a) =>
  Lens.Family2.LensLike' f s a
maybe'trace = Data.ProtoLens.Field.field @"maybe'trace"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
mediaType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mediaType" a) =>
  Lens.Family2.LensLike' f s a
mediaType = Data.ProtoLens.Field.field @"mediaType"
message ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "message" a) =>
  Lens.Family2.LensLike' f s a
message = Data.ProtoLens.Field.field @"message"
messageId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "messageId" a) =>
  Lens.Family2.LensLike' f s a
messageId = Data.ProtoLens.Field.field @"messageId"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
node ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "node" a) =>
  Lens.Family2.LensLike' f s a
node = Data.ProtoLens.Field.field @"node"
nonce ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nonce" a) =>
  Lens.Family2.LensLike' f s a
nonce = Data.ProtoLens.Field.field @"nonce"
pluginHello ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pluginHello" a) =>
  Lens.Family2.LensLike' f s a
pluginHello = Data.ProtoLens.Field.field @"pluginHello"
pluginId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pluginId" a) =>
  Lens.Family2.LensLike' f s a
pluginId = Data.ProtoLens.Field.field @"pluginId"
pluginInstanceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pluginInstanceId" a) =>
  Lens.Family2.LensLike' f s a
pluginInstanceId = Data.ProtoLens.Field.field @"pluginInstanceId"
pluginName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pluginName" a) =>
  Lens.Family2.LensLike' f s a
pluginName = Data.ProtoLens.Field.field @"pluginName"
pluginVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pluginVersion" a) =>
  Lens.Family2.LensLike' f s a
pluginVersion = Data.ProtoLens.Field.field @"pluginVersion"
progress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "progress" a) =>
  Lens.Family2.LensLike' f s a
progress = Data.ProtoLens.Field.field @"progress"
protocolError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protocolError" a) =>
  Lens.Family2.LensLike' f s a
protocolError = Data.ProtoLens.Field.field @"protocolError"
protocolSchemaSha256 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protocolSchemaSha256" a) =>
  Lens.Family2.LensLike' f s a
protocolSchemaSha256
  = Data.ProtoLens.Field.field @"protocolSchemaSha256"
readCrdt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readCrdt" a) =>
  Lens.Family2.LensLike' f s a
readCrdt = Data.ProtoLens.Field.field @"readCrdt"
readDocument ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readDocument" a) =>
  Lens.Family2.LensLike' f s a
readDocument = Data.ProtoLens.Field.field @"readDocument"
ready ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ready" a) =>
  Lens.Family2.LensLike' f s a
ready = Data.ProtoLens.Field.field @"ready"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
replyTo ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "replyTo" a) =>
  Lens.Family2.LensLike' f s a
replyTo = Data.ProtoLens.Field.field @"replyTo"
result ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "result" a) =>
  Lens.Family2.LensLike' f s a
result = Data.ProtoLens.Field.field @"result"
sessionId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sessionId" a) =>
  Lens.Family2.LensLike' f s a
sessionId = Data.ProtoLens.Field.field @"sessionId"
sha256 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sha256" a) =>
  Lens.Family2.LensLike' f s a
sha256 = Data.ProtoLens.Field.field @"sha256"
shutdown ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "shutdown" a) =>
  Lens.Family2.LensLike' f s a
shutdown = Data.ProtoLens.Field.field @"shutdown"
shutdownAcknowledged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "shutdownAcknowledged" a) =>
  Lens.Family2.LensLike' f s a
shutdownAcknowledged
  = Data.ProtoLens.Field.field @"shutdownAcknowledged"
sizeBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sizeBytes" a) =>
  Lens.Family2.LensLike' f s a
sizeBytes = Data.ProtoLens.Field.field @"sizeBytes"
startJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startJob" a) =>
  Lens.Family2.LensLike' f s a
startJob = Data.ProtoLens.Field.field @"startJob"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"
statusMessage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statusMessage" a) =>
  Lens.Family2.LensLike' f s a
statusMessage = Data.ProtoLens.Field.field @"statusMessage"
target ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "target" a) =>
  Lens.Family2.LensLike' f s a
target = Data.ProtoLens.Field.field @"target"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
trace ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "trace" a) =>
  Lens.Family2.LensLike' f s a
trace = Data.ProtoLens.Field.field @"trace"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'actions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'actions" a) =>
  Lens.Family2.LensLike' f s a
vec'actions = Data.ProtoLens.Field.field @"vec'actions"
vec'arguments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'arguments" a) =>
  Lens.Family2.LensLike' f s a
vec'arguments = Data.ProtoLens.Field.field @"vec'arguments"
vec'artifacts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'artifacts" a) =>
  Lens.Family2.LensLike' f s a
vec'artifacts = Data.ProtoLens.Field.field @"vec'artifacts"