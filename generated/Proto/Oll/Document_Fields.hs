{- This file was auto-generated from oll/document.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Oll.Document_Fields where
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
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Oll.Common
actual ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "actual" a) =>
  Lens.Family2.LensLike' f s a
actual = Data.ProtoLens.Field.field @"actual"
applyCrdtOperations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "applyCrdtOperations" a) =>
  Lens.Family2.LensLike' f s a
applyCrdtOperations
  = Data.ProtoLens.Field.field @"applyCrdtOperations"
binaryId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binaryId" a) =>
  Lens.Family2.LensLike' f s a
binaryId = Data.ProtoLens.Field.field @"binaryId"
boolValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "boolValue" a) =>
  Lens.Family2.LensLike' f s a
boolValue = Data.ProtoLens.Field.field @"boolValue"
bytesValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bytesValue" a) =>
  Lens.Family2.LensLike' f s a
bytesValue = Data.ProtoLens.Field.field @"bytesValue"
catalog ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "catalog" a) =>
  Lens.Family2.LensLike' f s a
catalog = Data.ProtoLens.Field.field @"catalog"
catalogNodeId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "catalogNodeId" a) =>
  Lens.Family2.LensLike' f s a
catalogNodeId = Data.ProtoLens.Field.field @"catalogNodeId"
catalogRevision ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "catalogRevision" a) =>
  Lens.Family2.LensLike' f s a
catalogRevision = Data.ProtoLens.Field.field @"catalogRevision"
catalogUnchanged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "catalogUnchanged" a) =>
  Lens.Family2.LensLike' f s a
catalogUnchanged = Data.ProtoLens.Field.field @"catalogUnchanged"
children ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "children" a) =>
  Lens.Family2.LensLike' f s a
children = Data.ProtoLens.Field.field @"children"
content ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "content" a) =>
  Lens.Family2.LensLike' f s a
content = Data.ProtoLens.Field.field @"content"
count ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "count" a) =>
  Lens.Family2.LensLike' f s a
count = Data.ProtoLens.Field.field @"count"
counter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "counter" a) =>
  Lens.Family2.LensLike' f s a
counter = Data.ProtoLens.Field.field @"counter"
counterIncrement ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "counterIncrement" a) =>
  Lens.Family2.LensLike' f s a
counterIncrement = Data.ProtoLens.Field.field @"counterIncrement"
crdt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "crdt" a) =>
  Lens.Family2.LensLike' f s a
crdt = Data.ProtoLens.Field.field @"crdt"
createDirectory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "createDirectory" a) =>
  Lens.Family2.LensLike' f s a
createDirectory = Data.ProtoLens.Field.field @"createDirectory"
createDocument ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "createDocument" a) =>
  Lens.Family2.LensLike' f s a
createDocument = Data.ProtoLens.Field.field @"createDocument"
deleteNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deleteNode" a) =>
  Lens.Family2.LensLike' f s a
deleteNode = Data.ProtoLens.Field.field @"deleteNode"
deleteScalarCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deleteScalarCount" a) =>
  Lens.Family2.LensLike' f s a
deleteScalarCount = Data.ProtoLens.Field.field @"deleteScalarCount"
deleted ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "deleted" a) =>
  Lens.Family2.LensLike' f s a
deleted = Data.ProtoLens.Field.field @"deleted"
delta ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "delta" a) =>
  Lens.Family2.LensLike' f s a
delta = Data.ProtoLens.Field.field @"delta"
destination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "destination" a) =>
  Lens.Family2.LensLike' f s a
destination = Data.ProtoLens.Field.field @"destination"
directory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "directory" a) =>
  Lens.Family2.LensLike' f s a
directory = Data.ProtoLens.Field.field @"directory"
document ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "document" a) =>
  Lens.Family2.LensLike' f s a
document = Data.ProtoLens.Field.field @"document"
documentId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "documentId" a) =>
  Lens.Family2.LensLike' f s a
documentId = Data.ProtoLens.Field.field @"documentId"
documentRevision ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "documentRevision" a) =>
  Lens.Family2.LensLike' f s a
documentRevision = Data.ProtoLens.Field.field @"documentRevision"
documentUnchanged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "documentUnchanged" a) =>
  Lens.Family2.LensLike' f s a
documentUnchanged = Data.ProtoLens.Field.field @"documentUnchanged"
encoding ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "encoding" a) =>
  Lens.Family2.LensLike' f s a
encoding = Data.ProtoLens.Field.field @"encoding"
endScalar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endScalar" a) =>
  Lens.Family2.LensLike' f s a
endScalar = Data.ProtoLens.Field.field @"endScalar"
entries ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "entries" a) =>
  Lens.Family2.LensLike' f s a
entries = Data.ProtoLens.Field.field @"entries"
exists ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "exists" a) =>
  Lens.Family2.LensLike' f s a
exists = Data.ProtoLens.Field.field @"exists"
expected ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expected" a) =>
  Lens.Family2.LensLike' f s a
expected = Data.ProtoLens.Field.field @"expected"
hasByteOrderMark ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hasByteOrderMark" a) =>
  Lens.Family2.LensLike' f s a
hasByteOrderMark = Data.ProtoLens.Field.field @"hasByteOrderMark"
index ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "index" a) =>
  Lens.Family2.LensLike' f s a
index = Data.ProtoLens.Field.field @"index"
indexInParent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "indexInParent" a) =>
  Lens.Family2.LensLike' f s a
indexInParent = Data.ProtoLens.Field.field @"indexInParent"
insertText ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "insertText" a) =>
  Lens.Family2.LensLike' f s a
insertText = Data.ProtoLens.Field.field @"insertText"
integerValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "integerValue" a) =>
  Lens.Family2.LensLike' f s a
integerValue = Data.ProtoLens.Field.field @"integerValue"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
kind ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "kind" a) =>
  Lens.Family2.LensLike' f s a
kind = Data.ProtoLens.Field.field @"kind"
list ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "list" a) =>
  Lens.Family2.LensLike' f s a
list = Data.ProtoLens.Field.field @"list"
listDelete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listDelete" a) =>
  Lens.Family2.LensLike' f s a
listDelete = Data.ProtoLens.Field.field @"listDelete"
listIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listIndex" a) =>
  Lens.Family2.LensLike' f s a
listIndex = Data.ProtoLens.Field.field @"listIndex"
listInsert ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listInsert" a) =>
  Lens.Family2.LensLike' f s a
listInsert = Data.ProtoLens.Field.field @"listInsert"
listMove ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listMove" a) =>
  Lens.Family2.LensLike' f s a
listMove = Data.ProtoLens.Field.field @"listMove"
map ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "map" a) =>
  Lens.Family2.LensLike' f s a
map = Data.ProtoLens.Field.field @"map"
mapDelete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mapDelete" a) =>
  Lens.Family2.LensLike' f s a
mapDelete = Data.ProtoLens.Field.field @"mapDelete"
mapKey ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mapKey" a) =>
  Lens.Family2.LensLike' f s a
mapKey = Data.ProtoLens.Field.field @"mapKey"
mapSet ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mapSet" a) =>
  Lens.Family2.LensLike' f s a
mapSet = Data.ProtoLens.Field.field @"mapSet"
marks ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "marks" a) =>
  Lens.Family2.LensLike' f s a
marks = Data.ProtoLens.Field.field @"marks"
maybe'actual ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'actual" a) =>
  Lens.Family2.LensLike' f s a
maybe'actual = Data.ProtoLens.Field.field @"maybe'actual"
maybe'applyCrdtOperations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'applyCrdtOperations" a) =>
  Lens.Family2.LensLike' f s a
maybe'applyCrdtOperations
  = Data.ProtoLens.Field.field @"maybe'applyCrdtOperations"
maybe'binaryId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binaryId" a) =>
  Lens.Family2.LensLike' f s a
maybe'binaryId = Data.ProtoLens.Field.field @"maybe'binaryId"
maybe'boolValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'boolValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'boolValue = Data.ProtoLens.Field.field @"maybe'boolValue"
maybe'bytesValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytesValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytesValue = Data.ProtoLens.Field.field @"maybe'bytesValue"
maybe'catalog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'catalog" a) =>
  Lens.Family2.LensLike' f s a
maybe'catalog = Data.ProtoLens.Field.field @"maybe'catalog"
maybe'catalogNodeId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'catalogNodeId" a) =>
  Lens.Family2.LensLike' f s a
maybe'catalogNodeId
  = Data.ProtoLens.Field.field @"maybe'catalogNodeId"
maybe'catalogRevision ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'catalogRevision" a) =>
  Lens.Family2.LensLike' f s a
maybe'catalogRevision
  = Data.ProtoLens.Field.field @"maybe'catalogRevision"
maybe'catalogUnchanged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'catalogUnchanged" a) =>
  Lens.Family2.LensLike' f s a
maybe'catalogUnchanged
  = Data.ProtoLens.Field.field @"maybe'catalogUnchanged"
maybe'condition ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'condition" a) =>
  Lens.Family2.LensLike' f s a
maybe'condition = Data.ProtoLens.Field.field @"maybe'condition"
maybe'conflict ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'conflict" a) =>
  Lens.Family2.LensLike' f s a
maybe'conflict = Data.ProtoLens.Field.field @"maybe'conflict"
maybe'content ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'content" a) =>
  Lens.Family2.LensLike' f s a
maybe'content = Data.ProtoLens.Field.field @"maybe'content"
maybe'counter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'counter" a) =>
  Lens.Family2.LensLike' f s a
maybe'counter = Data.ProtoLens.Field.field @"maybe'counter"
maybe'counterIncrement ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'counterIncrement" a) =>
  Lens.Family2.LensLike' f s a
maybe'counterIncrement
  = Data.ProtoLens.Field.field @"maybe'counterIncrement"
maybe'crdt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'crdt" a) =>
  Lens.Family2.LensLike' f s a
maybe'crdt = Data.ProtoLens.Field.field @"maybe'crdt"
maybe'createDirectory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'createDirectory" a) =>
  Lens.Family2.LensLike' f s a
maybe'createDirectory
  = Data.ProtoLens.Field.field @"maybe'createDirectory"
maybe'createDocument ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'createDocument" a) =>
  Lens.Family2.LensLike' f s a
maybe'createDocument
  = Data.ProtoLens.Field.field @"maybe'createDocument"
maybe'deleteNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'deleteNode" a) =>
  Lens.Family2.LensLike' f s a
maybe'deleteNode = Data.ProtoLens.Field.field @"maybe'deleteNode"
maybe'destination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'destination" a) =>
  Lens.Family2.LensLike' f s a
maybe'destination = Data.ProtoLens.Field.field @"maybe'destination"
maybe'directory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'directory" a) =>
  Lens.Family2.LensLike' f s a
maybe'directory = Data.ProtoLens.Field.field @"maybe'directory"
maybe'document ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'document" a) =>
  Lens.Family2.LensLike' f s a
maybe'document = Data.ProtoLens.Field.field @"maybe'document"
maybe'documentId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'documentId" a) =>
  Lens.Family2.LensLike' f s a
maybe'documentId = Data.ProtoLens.Field.field @"maybe'documentId"
maybe'documentRevision ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'documentRevision" a) =>
  Lens.Family2.LensLike' f s a
maybe'documentRevision
  = Data.ProtoLens.Field.field @"maybe'documentRevision"
maybe'documentUnchanged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'documentUnchanged" a) =>
  Lens.Family2.LensLike' f s a
maybe'documentUnchanged
  = Data.ProtoLens.Field.field @"maybe'documentUnchanged"
maybe'encoding ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'encoding" a) =>
  Lens.Family2.LensLike' f s a
maybe'encoding = Data.ProtoLens.Field.field @"maybe'encoding"
maybe'expected ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expected" a) =>
  Lens.Family2.LensLike' f s a
maybe'expected = Data.ProtoLens.Field.field @"maybe'expected"
maybe'indexInParent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'indexInParent" a) =>
  Lens.Family2.LensLike' f s a
maybe'indexInParent
  = Data.ProtoLens.Field.field @"maybe'indexInParent"
maybe'integerValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'integerValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'integerValue
  = Data.ProtoLens.Field.field @"maybe'integerValue"
maybe'kind ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kind" a) =>
  Lens.Family2.LensLike' f s a
maybe'kind = Data.ProtoLens.Field.field @"maybe'kind"
maybe'list ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'list" a) =>
  Lens.Family2.LensLike' f s a
maybe'list = Data.ProtoLens.Field.field @"maybe'list"
maybe'listDelete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listDelete" a) =>
  Lens.Family2.LensLike' f s a
maybe'listDelete = Data.ProtoLens.Field.field @"maybe'listDelete"
maybe'listIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listIndex" a) =>
  Lens.Family2.LensLike' f s a
maybe'listIndex = Data.ProtoLens.Field.field @"maybe'listIndex"
maybe'listInsert ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listInsert" a) =>
  Lens.Family2.LensLike' f s a
maybe'listInsert = Data.ProtoLens.Field.field @"maybe'listInsert"
maybe'listMove ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listMove" a) =>
  Lens.Family2.LensLike' f s a
maybe'listMove = Data.ProtoLens.Field.field @"maybe'listMove"
maybe'map ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'map" a) =>
  Lens.Family2.LensLike' f s a
maybe'map = Data.ProtoLens.Field.field @"maybe'map"
maybe'mapDelete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mapDelete" a) =>
  Lens.Family2.LensLike' f s a
maybe'mapDelete = Data.ProtoLens.Field.field @"maybe'mapDelete"
maybe'mapKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mapKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'mapKey = Data.ProtoLens.Field.field @"maybe'mapKey"
maybe'mapSet ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mapSet" a) =>
  Lens.Family2.LensLike' f s a
maybe'mapSet = Data.ProtoLens.Field.field @"maybe'mapSet"
maybe'mediaType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mediaType" a) =>
  Lens.Family2.LensLike' f s a
maybe'mediaType = Data.ProtoLens.Field.field @"maybe'mediaType"
maybe'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadata = Data.ProtoLens.Field.field @"maybe'metadata"
maybe'moveNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'moveNode" a) =>
  Lens.Family2.LensLike' f s a
maybe'moveNode = Data.ProtoLens.Field.field @"maybe'moveNode"
maybe'mustExist ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mustExist" a) =>
  Lens.Family2.LensLike' f s a
maybe'mustExist = Data.ProtoLens.Field.field @"maybe'mustExist"
maybe'mustNotExist ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mustNotExist" a) =>
  Lens.Family2.LensLike' f s a
maybe'mustNotExist
  = Data.ProtoLens.Field.field @"maybe'mustNotExist"
maybe'mutation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mutation" a) =>
  Lens.Family2.LensLike' f s a
maybe'mutation = Data.ProtoLens.Field.field @"maybe'mutation"
maybe'nodeId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nodeId" a) =>
  Lens.Family2.LensLike' f s a
maybe'nodeId = Data.ProtoLens.Field.field @"maybe'nodeId"
maybe'nullValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nullValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'nullValue = Data.ProtoLens.Field.field @"maybe'nullValue"
maybe'numberValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'numberValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'numberValue = Data.ProtoLens.Field.field @"maybe'numberValue"
maybe'object ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'object" a) =>
  Lens.Family2.LensLike' f s a
maybe'object = Data.ProtoLens.Field.field @"maybe'object"
maybe'operation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'operation" a) =>
  Lens.Family2.LensLike' f s a
maybe'operation = Data.ProtoLens.Field.field @"maybe'operation"
maybe'parentId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'parentId" a) =>
  Lens.Family2.LensLike' f s a
maybe'parentId = Data.ProtoLens.Field.field @"maybe'parentId"
maybe'path ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'path" a) =>
  Lens.Family2.LensLike' f s a
maybe'path = Data.ProtoLens.Field.field @"maybe'path"
maybe'replaceDocument ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'replaceDocument" a) =>
  Lens.Family2.LensLike' f s a
maybe'replaceDocument
  = Data.ProtoLens.Field.field @"maybe'replaceDocument"
maybe'representation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'representation" a) =>
  Lens.Family2.LensLike' f s a
maybe'representation
  = Data.ProtoLens.Field.field @"maybe'representation"
maybe'revision ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'revision" a) =>
  Lens.Family2.LensLike' f s a
maybe'revision = Data.ProtoLens.Field.field @"maybe'revision"
maybe'root ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'root" a) =>
  Lens.Family2.LensLike' f s a
maybe'root = Data.ProtoLens.Field.field @"maybe'root"
maybe'scalar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scalar" a) =>
  Lens.Family2.LensLike' f s a
maybe'scalar = Data.ProtoLens.Field.field @"maybe'scalar"
maybe'source ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'source" a) =>
  Lens.Family2.LensLike' f s a
maybe'source = Data.ProtoLens.Field.field @"maybe'source"
maybe'spliceDocumentText ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'spliceDocumentText" a) =>
  Lens.Family2.LensLike' f s a
maybe'spliceDocumentText
  = Data.ProtoLens.Field.field @"maybe'spliceDocumentText"
maybe'stringValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stringValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'stringValue = Data.ProtoLens.Field.field @"maybe'stringValue"
maybe'target ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'target" a) =>
  Lens.Family2.LensLike' f s a
maybe'target = Data.ProtoLens.Field.field @"maybe'target"
maybe'text ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'text" a) =>
  Lens.Family2.LensLike' f s a
maybe'text = Data.ProtoLens.Field.field @"maybe'text"
maybe'textDelete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'textDelete" a) =>
  Lens.Family2.LensLike' f s a
maybe'textDelete = Data.ProtoLens.Field.field @"maybe'textDelete"
maybe'textInsert ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'textInsert" a) =>
  Lens.Family2.LensLike' f s a
maybe'textInsert = Data.ProtoLens.Field.field @"maybe'textInsert"
maybe'textMark ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'textMark" a) =>
  Lens.Family2.LensLike' f s a
maybe'textMark = Data.ProtoLens.Field.field @"maybe'textMark"
maybe'textUnmark ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'textUnmark" a) =>
  Lens.Family2.LensLike' f s a
maybe'textUnmark = Data.ProtoLens.Field.field @"maybe'textUnmark"
maybe'tree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tree" a) =>
  Lens.Family2.LensLike' f s a
maybe'tree = Data.ProtoLens.Field.field @"maybe'tree"
maybe'treeCreateNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'treeCreateNode" a) =>
  Lens.Family2.LensLike' f s a
maybe'treeCreateNode
  = Data.ProtoLens.Field.field @"maybe'treeCreateNode"
maybe'treeDeleteNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'treeDeleteNode" a) =>
  Lens.Family2.LensLike' f s a
maybe'treeDeleteNode
  = Data.ProtoLens.Field.field @"maybe'treeDeleteNode"
maybe'treeMoveNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'treeMoveNode" a) =>
  Lens.Family2.LensLike' f s a
maybe'treeMoveNode
  = Data.ProtoLens.Field.field @"maybe'treeMoveNode"
maybe'treeNodeId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'treeNodeId" a) =>
  Lens.Family2.LensLike' f s a
maybe'treeNodeId = Data.ProtoLens.Field.field @"maybe'treeNodeId"
maybe'treeSetMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'treeSetMetadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'treeSetMetadata
  = Data.ProtoLens.Field.field @"maybe'treeSetMetadata"
maybe'unchangedSince ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unchangedSince" a) =>
  Lens.Family2.LensLike' f s a
maybe'unchangedSince
  = Data.ProtoLens.Field.field @"maybe'unchangedSince"
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
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
movable ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "movable" a) =>
  Lens.Family2.LensLike' f s a
movable = Data.ProtoLens.Field.field @"movable"
moveNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "moveNode" a) =>
  Lens.Family2.LensLike' f s a
moveNode = Data.ProtoLens.Field.field @"moveNode"
mustExist ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mustExist" a) =>
  Lens.Family2.LensLike' f s a
mustExist = Data.ProtoLens.Field.field @"mustExist"
mustNotExist ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mustNotExist" a) =>
  Lens.Family2.LensLike' f s a
mustNotExist = Data.ProtoLens.Field.field @"mustNotExist"
mutations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mutations" a) =>
  Lens.Family2.LensLike' f s a
mutations = Data.ProtoLens.Field.field @"mutations"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
nodeId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nodeId" a) =>
  Lens.Family2.LensLike' f s a
nodeId = Data.ProtoLens.Field.field @"nodeId"
nodes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nodes" a) =>
  Lens.Family2.LensLike' f s a
nodes = Data.ProtoLens.Field.field @"nodes"
nullValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nullValue" a) =>
  Lens.Family2.LensLike' f s a
nullValue = Data.ProtoLens.Field.field @"nullValue"
numberValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numberValue" a) =>
  Lens.Family2.LensLike' f s a
numberValue = Data.ProtoLens.Field.field @"numberValue"
object ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "object" a) =>
  Lens.Family2.LensLike' f s a
object = Data.ProtoLens.Field.field @"object"
operationId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operationId" a) =>
  Lens.Family2.LensLike' f s a
operationId = Data.ProtoLens.Field.field @"operationId"
operations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operations" a) =>
  Lens.Family2.LensLike' f s a
operations = Data.ProtoLens.Field.field @"operations"
parentId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentId" a) =>
  Lens.Family2.LensLike' f s a
parentId = Data.ProtoLens.Field.field @"parentId"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
preconditions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "preconditions" a) =>
  Lens.Family2.LensLike' f s a
preconditions = Data.ProtoLens.Field.field @"preconditions"
projection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "projection" a) =>
  Lens.Family2.LensLike' f s a
projection = Data.ProtoLens.Field.field @"projection"
recursive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "recursive" a) =>
  Lens.Family2.LensLike' f s a
recursive = Data.ProtoLens.Field.field @"recursive"
replaceDocument ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "replaceDocument" a) =>
  Lens.Family2.LensLike' f s a
replaceDocument = Data.ProtoLens.Field.field @"replaceDocument"
revision ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "revision" a) =>
  Lens.Family2.LensLike' f s a
revision = Data.ProtoLens.Field.field @"revision"
root ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "root" a) =>
  Lens.Family2.LensLike' f s a
root = Data.ProtoLens.Field.field @"root"
scalar ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "scalar" a) =>
  Lens.Family2.LensLike' f s a
scalar = Data.ProtoLens.Field.field @"scalar"
scalarCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scalarCount" a) =>
  Lens.Family2.LensLike' f s a
scalarCount = Data.ProtoLens.Field.field @"scalarCount"
scalarIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scalarIndex" a) =>
  Lens.Family2.LensLike' f s a
scalarIndex = Data.ProtoLens.Field.field @"scalarIndex"
segments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "segments" a) =>
  Lens.Family2.LensLike' f s a
segments = Data.ProtoLens.Field.field @"segments"
sizeBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sizeBytes" a) =>
  Lens.Family2.LensLike' f s a
sizeBytes = Data.ProtoLens.Field.field @"sizeBytes"
source ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "source" a) =>
  Lens.Family2.LensLike' f s a
source = Data.ProtoLens.Field.field @"source"
spliceDocumentText ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "spliceDocumentText" a) =>
  Lens.Family2.LensLike' f s a
spliceDocumentText
  = Data.ProtoLens.Field.field @"spliceDocumentText"
startScalar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startScalar" a) =>
  Lens.Family2.LensLike' f s a
startScalar = Data.ProtoLens.Field.field @"startScalar"
stringValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stringValue" a) =>
  Lens.Family2.LensLike' f s a
stringValue = Data.ProtoLens.Field.field @"stringValue"
target ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "target" a) =>
  Lens.Family2.LensLike' f s a
target = Data.ProtoLens.Field.field @"target"
text ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "text" a) =>
  Lens.Family2.LensLike' f s a
text = Data.ProtoLens.Field.field @"text"
textDelete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "textDelete" a) =>
  Lens.Family2.LensLike' f s a
textDelete = Data.ProtoLens.Field.field @"textDelete"
textInsert ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "textInsert" a) =>
  Lens.Family2.LensLike' f s a
textInsert = Data.ProtoLens.Field.field @"textInsert"
textMark ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "textMark" a) =>
  Lens.Family2.LensLike' f s a
textMark = Data.ProtoLens.Field.field @"textMark"
textUnmark ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "textUnmark" a) =>
  Lens.Family2.LensLike' f s a
textUnmark = Data.ProtoLens.Field.field @"textUnmark"
tree ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tree" a) =>
  Lens.Family2.LensLike' f s a
tree = Data.ProtoLens.Field.field @"tree"
treeCreateNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "treeCreateNode" a) =>
  Lens.Family2.LensLike' f s a
treeCreateNode = Data.ProtoLens.Field.field @"treeCreateNode"
treeDeleteNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "treeDeleteNode" a) =>
  Lens.Family2.LensLike' f s a
treeDeleteNode = Data.ProtoLens.Field.field @"treeDeleteNode"
treeMoveNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "treeMoveNode" a) =>
  Lens.Family2.LensLike' f s a
treeMoveNode = Data.ProtoLens.Field.field @"treeMoveNode"
treeNodeId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "treeNodeId" a) =>
  Lens.Family2.LensLike' f s a
treeNodeId = Data.ProtoLens.Field.field @"treeNodeId"
treeSetMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "treeSetMetadata" a) =>
  Lens.Family2.LensLike' f s a
treeSetMetadata = Data.ProtoLens.Field.field @"treeSetMetadata"
unchangedSince ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unchangedSince" a) =>
  Lens.Family2.LensLike' f s a
unchangedSince = Data.ProtoLens.Field.field @"unchangedSince"
updatedNodes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updatedNodes" a) =>
  Lens.Family2.LensLike' f s a
updatedNodes = Data.ProtoLens.Field.field @"updatedNodes"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
values ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "values" a) =>
  Lens.Family2.LensLike' f s a
values = Data.ProtoLens.Field.field @"values"
vec'children ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'children" a) =>
  Lens.Family2.LensLike' f s a
vec'children = Data.ProtoLens.Field.field @"vec'children"
vec'entries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'entries" a) =>
  Lens.Family2.LensLike' f s a
vec'entries = Data.ProtoLens.Field.field @"vec'entries"
vec'marks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'marks" a) =>
  Lens.Family2.LensLike' f s a
vec'marks = Data.ProtoLens.Field.field @"vec'marks"
vec'mutations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'mutations" a) =>
  Lens.Family2.LensLike' f s a
vec'mutations = Data.ProtoLens.Field.field @"vec'mutations"
vec'nodes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'nodes" a) =>
  Lens.Family2.LensLike' f s a
vec'nodes = Data.ProtoLens.Field.field @"vec'nodes"
vec'operations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'operations" a) =>
  Lens.Family2.LensLike' f s a
vec'operations = Data.ProtoLens.Field.field @"vec'operations"
vec'preconditions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'preconditions" a) =>
  Lens.Family2.LensLike' f s a
vec'preconditions = Data.ProtoLens.Field.field @"vec'preconditions"
vec'segments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'segments" a) =>
  Lens.Family2.LensLike' f s a
vec'segments = Data.ProtoLens.Field.field @"vec'segments"
vec'updatedNodes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'updatedNodes" a) =>
  Lens.Family2.LensLike' f s a
vec'updatedNodes = Data.ProtoLens.Field.field @"vec'updatedNodes"
vec'values ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'values" a) =>
  Lens.Family2.LensLike' f s a
vec'values = Data.ProtoLens.Field.field @"vec'values"