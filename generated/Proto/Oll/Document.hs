{- This file was auto-generated from oll/document.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Oll.Document (
        ApplyCrdtOperations(), CatalogRevisionConflict(),
        CatalogRevisionPrecondition(), CommitDocumentsRequest(),
        CommitDocumentsResponse(), CommitPrecondition(),
        CommitPrecondition'Condition(..),
        _CommitPrecondition'CatalogUnchanged,
        _CommitPrecondition'DocumentUnchanged,
        _CommitPrecondition'MustExist, _CommitPrecondition'MustNotExist,
        CounterIncrement(), CrdtCounter(), CrdtList(), CrdtMap(),
        CrdtMap'EntriesEntry(), CrdtObjectPath(), CrdtOperation(),
        CrdtOperation'Operation(..), _CrdtOperation'MapSet,
        _CrdtOperation'MapDelete, _CrdtOperation'ListInsert,
        _CrdtOperation'ListDelete, _CrdtOperation'ListMove,
        _CrdtOperation'TextInsert, _CrdtOperation'TextDelete,
        _CrdtOperation'TextMark, _CrdtOperation'TextUnmark,
        _CrdtOperation'CounterIncrement, _CrdtOperation'TreeCreateNode,
        _CrdtOperation'TreeDeleteNode, _CrdtOperation'TreeMoveNode,
        _CrdtOperation'TreeSetMetadata, CrdtPathSegment(),
        CrdtPathSegment'Kind(..), _CrdtPathSegment'MapKey,
        _CrdtPathSegment'ListIndex, _CrdtPathSegment'TreeNodeId,
        CrdtScalar(), CrdtScalar'Kind(..), _CrdtScalar'BoolValue,
        _CrdtScalar'IntegerValue, _CrdtScalar'NumberValue,
        _CrdtScalar'StringValue, _CrdtScalar'BytesValue,
        _CrdtScalar'NullValue, CrdtText(), CrdtTextMark(), CrdtTree(),
        CrdtTreeNode(), CrdtTreeNode'MetadataEntry(), CrdtValue(),
        CrdtValue'Kind(..), _CrdtValue'Scalar, _CrdtValue'Text,
        _CrdtValue'List, _CrdtValue'Map, _CrdtValue'Tree,
        _CrdtValue'Counter, CreateDirectory(), CreateDocument(),
        DeleteNode(), DirectoryTreeNode(), DocumentMutation(),
        DocumentMutation'Mutation(..), _DocumentMutation'CreateDirectory,
        _DocumentMutation'CreateDocument,
        _DocumentMutation'ReplaceDocument,
        _DocumentMutation'SpliceDocumentText, _DocumentMutation'DeleteNode,
        _DocumentMutation'MoveNode, _DocumentMutation'ApplyCrdtOperations,
        DocumentPath(), DocumentProjection(..), DocumentProjection(),
        DocumentProjection'UnrecognizedValue, DocumentRevisionConflict(),
        DocumentRevisionPrecondition(), DocumentSnapshot(),
        DocumentSnapshot'Representation(..), _DocumentSnapshot'Content,
        _DocumentSnapshot'Crdt, GetDirectoryTreeRequest(),
        GetDirectoryTreeResponse(), ListDelete(), ListDirectoryRequest(),
        ListDirectoryResponse(), ListInsert(), ListMove(), MapDelete(),
        MapSet(), MoveNode(), NodeKind(..), NodeKind(),
        NodeKind'UnrecognizedValue, NodeMetadata(), ReadCrdtRequest(),
        ReadCrdtResponse(), ReadDocumentRequest(), ReadDocumentResponse(),
        ReplaceDocument(), RevisionConflictDetail(),
        RevisionConflictDetail'Conflict(..),
        _RevisionConflictDetail'Catalog, _RevisionConflictDetail'Document,
        SpliceDocumentText(), TextDelete(), TextInsert(), TextMark(),
        TextUnmark(), TreeCreateNode(), TreeCreateNode'MetadataEntry(),
        TreeDeleteNode(), TreeMoveNode(), TreeSetMetadata(), UpdatedNode()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
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
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.document' @:: Lens' ApplyCrdtOperations DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'document' @:: Lens' ApplyCrdtOperations (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.operations' @:: Lens' ApplyCrdtOperations [CrdtOperation]@
         * 'Proto.Oll.Document_Fields.vec'operations' @:: Lens' ApplyCrdtOperations (Data.Vector.Vector CrdtOperation)@ -}
data ApplyCrdtOperations
  = ApplyCrdtOperations'_constructor {_ApplyCrdtOperations'document :: !(Prelude.Maybe DocumentPath),
                                      _ApplyCrdtOperations'operations :: !(Data.Vector.Vector CrdtOperation),
                                      _ApplyCrdtOperations'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ApplyCrdtOperations where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ApplyCrdtOperations "document" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApplyCrdtOperations'document
           (\ x__ y__ -> x__ {_ApplyCrdtOperations'document = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ApplyCrdtOperations "maybe'document" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApplyCrdtOperations'document
           (\ x__ y__ -> x__ {_ApplyCrdtOperations'document = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApplyCrdtOperations "operations" [CrdtOperation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApplyCrdtOperations'operations
           (\ x__ y__ -> x__ {_ApplyCrdtOperations'operations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ApplyCrdtOperations "vec'operations" (Data.Vector.Vector CrdtOperation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApplyCrdtOperations'operations
           (\ x__ y__ -> x__ {_ApplyCrdtOperations'operations = y__}))
        Prelude.id
instance Data.ProtoLens.Message ApplyCrdtOperations where
  messageName _ = Data.Text.pack "oll.protocol.ApplyCrdtOperations"
  packedMessageDescriptor _
    = "\n\
      \\DC3ApplyCrdtOperations\DC26\n\
      \\bdocument\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\bdocument\DC2;\n\
      \\n\
      \operations\CAN\STX \ETX(\v2\ESC.oll.protocol.CrdtOperationR\n\
      \operations"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        document__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "document"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'document")) ::
              Data.ProtoLens.FieldDescriptor ApplyCrdtOperations
        operations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtOperation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"operations")) ::
              Data.ProtoLens.FieldDescriptor ApplyCrdtOperations
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, document__field_descriptor),
           (Data.ProtoLens.Tag 2, operations__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ApplyCrdtOperations'_unknownFields
        (\ x__ y__ -> x__ {_ApplyCrdtOperations'_unknownFields = y__})
  defMessage
    = ApplyCrdtOperations'_constructor
        {_ApplyCrdtOperations'document = Prelude.Nothing,
         _ApplyCrdtOperations'operations = Data.Vector.Generic.empty,
         _ApplyCrdtOperations'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ApplyCrdtOperations
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CrdtOperation
             -> Data.ProtoLens.Encoding.Bytes.Parser ApplyCrdtOperations
        loop x mutable'operations
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'operations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'operations)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'operations") frozen'operations
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "document"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"document") y x)
                                  mutable'operations
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "operations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'operations y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'operations
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'operations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'operations)
          "ApplyCrdtOperations"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'document") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'operations") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ApplyCrdtOperations where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ApplyCrdtOperations'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ApplyCrdtOperations'document x__)
                (Control.DeepSeq.deepseq (_ApplyCrdtOperations'operations x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.catalogNodeId' @:: Lens' CatalogRevisionConflict Proto.Oll.Common.CatalogNodeId@
         * 'Proto.Oll.Document_Fields.maybe'catalogNodeId' @:: Lens' CatalogRevisionConflict (Prelude.Maybe Proto.Oll.Common.CatalogNodeId)@
         * 'Proto.Oll.Document_Fields.expected' @:: Lens' CatalogRevisionConflict Proto.Oll.Common.CatalogRevision@
         * 'Proto.Oll.Document_Fields.maybe'expected' @:: Lens' CatalogRevisionConflict (Prelude.Maybe Proto.Oll.Common.CatalogRevision)@
         * 'Proto.Oll.Document_Fields.actual' @:: Lens' CatalogRevisionConflict Proto.Oll.Common.CatalogRevision@
         * 'Proto.Oll.Document_Fields.maybe'actual' @:: Lens' CatalogRevisionConflict (Prelude.Maybe Proto.Oll.Common.CatalogRevision)@
         * 'Proto.Oll.Document_Fields.exists' @:: Lens' CatalogRevisionConflict Prelude.Bool@ -}
data CatalogRevisionConflict
  = CatalogRevisionConflict'_constructor {_CatalogRevisionConflict'catalogNodeId :: !(Prelude.Maybe Proto.Oll.Common.CatalogNodeId),
                                          _CatalogRevisionConflict'expected :: !(Prelude.Maybe Proto.Oll.Common.CatalogRevision),
                                          _CatalogRevisionConflict'actual :: !(Prelude.Maybe Proto.Oll.Common.CatalogRevision),
                                          _CatalogRevisionConflict'exists :: !Prelude.Bool,
                                          _CatalogRevisionConflict'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CatalogRevisionConflict where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CatalogRevisionConflict "catalogNodeId" Proto.Oll.Common.CatalogNodeId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevisionConflict'catalogNodeId
           (\ x__ y__ -> x__ {_CatalogRevisionConflict'catalogNodeId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CatalogRevisionConflict "maybe'catalogNodeId" (Prelude.Maybe Proto.Oll.Common.CatalogNodeId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevisionConflict'catalogNodeId
           (\ x__ y__ -> x__ {_CatalogRevisionConflict'catalogNodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CatalogRevisionConflict "expected" Proto.Oll.Common.CatalogRevision where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevisionConflict'expected
           (\ x__ y__ -> x__ {_CatalogRevisionConflict'expected = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CatalogRevisionConflict "maybe'expected" (Prelude.Maybe Proto.Oll.Common.CatalogRevision) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevisionConflict'expected
           (\ x__ y__ -> x__ {_CatalogRevisionConflict'expected = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CatalogRevisionConflict "actual" Proto.Oll.Common.CatalogRevision where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevisionConflict'actual
           (\ x__ y__ -> x__ {_CatalogRevisionConflict'actual = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CatalogRevisionConflict "maybe'actual" (Prelude.Maybe Proto.Oll.Common.CatalogRevision) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevisionConflict'actual
           (\ x__ y__ -> x__ {_CatalogRevisionConflict'actual = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CatalogRevisionConflict "exists" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevisionConflict'exists
           (\ x__ y__ -> x__ {_CatalogRevisionConflict'exists = y__}))
        Prelude.id
instance Data.ProtoLens.Message CatalogRevisionConflict where
  messageName _
    = Data.Text.pack "oll.protocol.CatalogRevisionConflict"
  packedMessageDescriptor _
    = "\n\
      \\ETBCatalogRevisionConflict\DC2C\n\
      \\SIcatalog_node_id\CAN\SOH \SOH(\v2\ESC.oll.protocol.CatalogNodeIdR\rcatalogNodeId\DC29\n\
      \\bexpected\CAN\STX \SOH(\v2\GS.oll.protocol.CatalogRevisionR\bexpected\DC2:\n\
      \\ACKactual\CAN\ETX \SOH(\v2\GS.oll.protocol.CatalogRevisionH\NULR\ACKactual\136\SOH\SOH\DC2\SYN\n\
      \\ACKexists\CAN\EOT \SOH(\bR\ACKexistsB\t\n\
      \\a_actual"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        catalogNodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "catalog_node_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.CatalogNodeId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'catalogNodeId")) ::
              Data.ProtoLens.FieldDescriptor CatalogRevisionConflict
        expected__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expected"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.CatalogRevision)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expected")) ::
              Data.ProtoLens.FieldDescriptor CatalogRevisionConflict
        actual__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "actual"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.CatalogRevision)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'actual")) ::
              Data.ProtoLens.FieldDescriptor CatalogRevisionConflict
        exists__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exists"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"exists")) ::
              Data.ProtoLens.FieldDescriptor CatalogRevisionConflict
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, catalogNodeId__field_descriptor),
           (Data.ProtoLens.Tag 2, expected__field_descriptor),
           (Data.ProtoLens.Tag 3, actual__field_descriptor),
           (Data.ProtoLens.Tag 4, exists__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CatalogRevisionConflict'_unknownFields
        (\ x__ y__ -> x__ {_CatalogRevisionConflict'_unknownFields = y__})
  defMessage
    = CatalogRevisionConflict'_constructor
        {_CatalogRevisionConflict'catalogNodeId = Prelude.Nothing,
         _CatalogRevisionConflict'expected = Prelude.Nothing,
         _CatalogRevisionConflict'actual = Prelude.Nothing,
         _CatalogRevisionConflict'exists = Data.ProtoLens.fieldDefault,
         _CatalogRevisionConflict'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CatalogRevisionConflict
          -> Data.ProtoLens.Encoding.Bytes.Parser CatalogRevisionConflict
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "catalog_node_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"catalogNodeId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expected"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"expected") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "actual"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"actual") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "exists"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"exists") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CatalogRevisionConflict"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'catalogNodeId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'expected") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'actual") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"exists") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CatalogRevisionConflict where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CatalogRevisionConflict'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CatalogRevisionConflict'catalogNodeId x__)
                (Control.DeepSeq.deepseq
                   (_CatalogRevisionConflict'expected x__)
                   (Control.DeepSeq.deepseq
                      (_CatalogRevisionConflict'actual x__)
                      (Control.DeepSeq.deepseq
                         (_CatalogRevisionConflict'exists x__) ()))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.catalogNodeId' @:: Lens' CatalogRevisionPrecondition Proto.Oll.Common.CatalogNodeId@
         * 'Proto.Oll.Document_Fields.maybe'catalogNodeId' @:: Lens' CatalogRevisionPrecondition (Prelude.Maybe Proto.Oll.Common.CatalogNodeId)@
         * 'Proto.Oll.Document_Fields.unchangedSince' @:: Lens' CatalogRevisionPrecondition Proto.Oll.Common.CatalogRevision@
         * 'Proto.Oll.Document_Fields.maybe'unchangedSince' @:: Lens' CatalogRevisionPrecondition (Prelude.Maybe Proto.Oll.Common.CatalogRevision)@ -}
data CatalogRevisionPrecondition
  = CatalogRevisionPrecondition'_constructor {_CatalogRevisionPrecondition'catalogNodeId :: !(Prelude.Maybe Proto.Oll.Common.CatalogNodeId),
                                              _CatalogRevisionPrecondition'unchangedSince :: !(Prelude.Maybe Proto.Oll.Common.CatalogRevision),
                                              _CatalogRevisionPrecondition'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CatalogRevisionPrecondition where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CatalogRevisionPrecondition "catalogNodeId" Proto.Oll.Common.CatalogNodeId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevisionPrecondition'catalogNodeId
           (\ x__ y__
              -> x__ {_CatalogRevisionPrecondition'catalogNodeId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CatalogRevisionPrecondition "maybe'catalogNodeId" (Prelude.Maybe Proto.Oll.Common.CatalogNodeId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevisionPrecondition'catalogNodeId
           (\ x__ y__
              -> x__ {_CatalogRevisionPrecondition'catalogNodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CatalogRevisionPrecondition "unchangedSince" Proto.Oll.Common.CatalogRevision where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevisionPrecondition'unchangedSince
           (\ x__ y__
              -> x__ {_CatalogRevisionPrecondition'unchangedSince = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CatalogRevisionPrecondition "maybe'unchangedSince" (Prelude.Maybe Proto.Oll.Common.CatalogRevision) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevisionPrecondition'unchangedSince
           (\ x__ y__
              -> x__ {_CatalogRevisionPrecondition'unchangedSince = y__}))
        Prelude.id
instance Data.ProtoLens.Message CatalogRevisionPrecondition where
  messageName _
    = Data.Text.pack "oll.protocol.CatalogRevisionPrecondition"
  packedMessageDescriptor _
    = "\n\
      \\ESCCatalogRevisionPrecondition\DC2C\n\
      \\SIcatalog_node_id\CAN\SOH \SOH(\v2\ESC.oll.protocol.CatalogNodeIdR\rcatalogNodeId\DC2F\n\
      \\SIunchanged_since\CAN\STX \SOH(\v2\GS.oll.protocol.CatalogRevisionR\SOunchangedSince"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        catalogNodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "catalog_node_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.CatalogNodeId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'catalogNodeId")) ::
              Data.ProtoLens.FieldDescriptor CatalogRevisionPrecondition
        unchangedSince__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unchanged_since"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.CatalogRevision)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unchangedSince")) ::
              Data.ProtoLens.FieldDescriptor CatalogRevisionPrecondition
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, catalogNodeId__field_descriptor),
           (Data.ProtoLens.Tag 2, unchangedSince__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CatalogRevisionPrecondition'_unknownFields
        (\ x__ y__
           -> x__ {_CatalogRevisionPrecondition'_unknownFields = y__})
  defMessage
    = CatalogRevisionPrecondition'_constructor
        {_CatalogRevisionPrecondition'catalogNodeId = Prelude.Nothing,
         _CatalogRevisionPrecondition'unchangedSince = Prelude.Nothing,
         _CatalogRevisionPrecondition'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CatalogRevisionPrecondition
          -> Data.ProtoLens.Encoding.Bytes.Parser CatalogRevisionPrecondition
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "catalog_node_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"catalogNodeId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "unchanged_since"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unchangedSince") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CatalogRevisionPrecondition"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'catalogNodeId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'unchangedSince") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CatalogRevisionPrecondition where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CatalogRevisionPrecondition'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CatalogRevisionPrecondition'catalogNodeId x__)
                (Control.DeepSeq.deepseq
                   (_CatalogRevisionPrecondition'unchangedSince x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.operationId' @:: Lens' CommitDocumentsRequest Data.Text.Text@
         * 'Proto.Oll.Document_Fields.preconditions' @:: Lens' CommitDocumentsRequest [CommitPrecondition]@
         * 'Proto.Oll.Document_Fields.vec'preconditions' @:: Lens' CommitDocumentsRequest (Data.Vector.Vector CommitPrecondition)@
         * 'Proto.Oll.Document_Fields.mutations' @:: Lens' CommitDocumentsRequest [DocumentMutation]@
         * 'Proto.Oll.Document_Fields.vec'mutations' @:: Lens' CommitDocumentsRequest (Data.Vector.Vector DocumentMutation)@ -}
data CommitDocumentsRequest
  = CommitDocumentsRequest'_constructor {_CommitDocumentsRequest'operationId :: !Data.Text.Text,
                                         _CommitDocumentsRequest'preconditions :: !(Data.Vector.Vector CommitPrecondition),
                                         _CommitDocumentsRequest'mutations :: !(Data.Vector.Vector DocumentMutation),
                                         _CommitDocumentsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommitDocumentsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommitDocumentsRequest "operationId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitDocumentsRequest'operationId
           (\ x__ y__ -> x__ {_CommitDocumentsRequest'operationId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommitDocumentsRequest "preconditions" [CommitPrecondition] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitDocumentsRequest'preconditions
           (\ x__ y__ -> x__ {_CommitDocumentsRequest'preconditions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CommitDocumentsRequest "vec'preconditions" (Data.Vector.Vector CommitPrecondition) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitDocumentsRequest'preconditions
           (\ x__ y__ -> x__ {_CommitDocumentsRequest'preconditions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommitDocumentsRequest "mutations" [DocumentMutation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitDocumentsRequest'mutations
           (\ x__ y__ -> x__ {_CommitDocumentsRequest'mutations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CommitDocumentsRequest "vec'mutations" (Data.Vector.Vector DocumentMutation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitDocumentsRequest'mutations
           (\ x__ y__ -> x__ {_CommitDocumentsRequest'mutations = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommitDocumentsRequest where
  messageName _
    = Data.Text.pack "oll.protocol.CommitDocumentsRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNCommitDocumentsRequest\DC2!\n\
      \\foperation_id\CAN\SOH \SOH(\tR\voperationId\DC2F\n\
      \\rpreconditions\CAN\STX \ETX(\v2 .oll.protocol.CommitPreconditionR\rpreconditions\DC2<\n\
      \\tmutations\CAN\ETX \ETX(\v2\RS.oll.protocol.DocumentMutationR\tmutations"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operationId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationId")) ::
              Data.ProtoLens.FieldDescriptor CommitDocumentsRequest
        preconditions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "preconditions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommitPrecondition)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"preconditions")) ::
              Data.ProtoLens.FieldDescriptor CommitDocumentsRequest
        mutations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mutations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentMutation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"mutations")) ::
              Data.ProtoLens.FieldDescriptor CommitDocumentsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operationId__field_descriptor),
           (Data.ProtoLens.Tag 2, preconditions__field_descriptor),
           (Data.ProtoLens.Tag 3, mutations__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommitDocumentsRequest'_unknownFields
        (\ x__ y__ -> x__ {_CommitDocumentsRequest'_unknownFields = y__})
  defMessage
    = CommitDocumentsRequest'_constructor
        {_CommitDocumentsRequest'operationId = Data.ProtoLens.fieldDefault,
         _CommitDocumentsRequest'preconditions = Data.Vector.Generic.empty,
         _CommitDocumentsRequest'mutations = Data.Vector.Generic.empty,
         _CommitDocumentsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommitDocumentsRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DocumentMutation
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CommitPrecondition
                -> Data.ProtoLens.Encoding.Bytes.Parser CommitDocumentsRequest
        loop x mutable'mutations mutable'preconditions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'mutations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'mutations)
                      frozen'preconditions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'preconditions)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'mutations") frozen'mutations
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'preconditions")
                                 frozen'preconditions x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operationId") y x)
                                  mutable'mutations mutable'preconditions
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "preconditions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'preconditions y)
                                loop x mutable'mutations v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "mutations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'mutations y)
                                loop x v mutable'preconditions
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'mutations mutable'preconditions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'mutations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'preconditions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'mutations mutable'preconditions)
          "CommitDocumentsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"operationId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'preconditions") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'mutations") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CommitDocumentsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommitDocumentsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommitDocumentsRequest'operationId x__)
                (Control.DeepSeq.deepseq
                   (_CommitDocumentsRequest'preconditions x__)
                   (Control.DeepSeq.deepseq
                      (_CommitDocumentsRequest'mutations x__) ())))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.operationId' @:: Lens' CommitDocumentsResponse Data.Text.Text@
         * 'Proto.Oll.Document_Fields.updatedNodes' @:: Lens' CommitDocumentsResponse [UpdatedNode]@
         * 'Proto.Oll.Document_Fields.vec'updatedNodes' @:: Lens' CommitDocumentsResponse (Data.Vector.Vector UpdatedNode)@ -}
data CommitDocumentsResponse
  = CommitDocumentsResponse'_constructor {_CommitDocumentsResponse'operationId :: !Data.Text.Text,
                                          _CommitDocumentsResponse'updatedNodes :: !(Data.Vector.Vector UpdatedNode),
                                          _CommitDocumentsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommitDocumentsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommitDocumentsResponse "operationId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitDocumentsResponse'operationId
           (\ x__ y__ -> x__ {_CommitDocumentsResponse'operationId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommitDocumentsResponse "updatedNodes" [UpdatedNode] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitDocumentsResponse'updatedNodes
           (\ x__ y__ -> x__ {_CommitDocumentsResponse'updatedNodes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CommitDocumentsResponse "vec'updatedNodes" (Data.Vector.Vector UpdatedNode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitDocumentsResponse'updatedNodes
           (\ x__ y__ -> x__ {_CommitDocumentsResponse'updatedNodes = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommitDocumentsResponse where
  messageName _
    = Data.Text.pack "oll.protocol.CommitDocumentsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBCommitDocumentsResponse\DC2!\n\
      \\foperation_id\CAN\SOH \SOH(\tR\voperationId\DC2>\n\
      \\rupdated_nodes\CAN\STX \ETX(\v2\EM.oll.protocol.UpdatedNodeR\fupdatedNodes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operationId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operation_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operationId")) ::
              Data.ProtoLens.FieldDescriptor CommitDocumentsResponse
        updatedNodes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "updated_nodes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpdatedNode)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"updatedNodes")) ::
              Data.ProtoLens.FieldDescriptor CommitDocumentsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operationId__field_descriptor),
           (Data.ProtoLens.Tag 2, updatedNodes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommitDocumentsResponse'_unknownFields
        (\ x__ y__ -> x__ {_CommitDocumentsResponse'_unknownFields = y__})
  defMessage
    = CommitDocumentsResponse'_constructor
        {_CommitDocumentsResponse'operationId = Data.ProtoLens.fieldDefault,
         _CommitDocumentsResponse'updatedNodes = Data.Vector.Generic.empty,
         _CommitDocumentsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommitDocumentsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld UpdatedNode
             -> Data.ProtoLens.Encoding.Bytes.Parser CommitDocumentsResponse
        loop x mutable'updatedNodes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'updatedNodes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'updatedNodes)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'updatedNodes")
                              frozen'updatedNodes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "operation_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"operationId") y x)
                                  mutable'updatedNodes
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "updated_nodes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'updatedNodes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'updatedNodes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'updatedNodes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'updatedNodes)
          "CommitDocumentsResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"operationId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'updatedNodes") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CommitDocumentsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommitDocumentsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommitDocumentsResponse'operationId x__)
                (Control.DeepSeq.deepseq
                   (_CommitDocumentsResponse'updatedNodes x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.maybe'condition' @:: Lens' CommitPrecondition (Prelude.Maybe CommitPrecondition'Condition)@
         * 'Proto.Oll.Document_Fields.maybe'catalogUnchanged' @:: Lens' CommitPrecondition (Prelude.Maybe CatalogRevisionPrecondition)@
         * 'Proto.Oll.Document_Fields.catalogUnchanged' @:: Lens' CommitPrecondition CatalogRevisionPrecondition@
         * 'Proto.Oll.Document_Fields.maybe'documentUnchanged' @:: Lens' CommitPrecondition (Prelude.Maybe DocumentRevisionPrecondition)@
         * 'Proto.Oll.Document_Fields.documentUnchanged' @:: Lens' CommitPrecondition DocumentRevisionPrecondition@
         * 'Proto.Oll.Document_Fields.maybe'mustExist' @:: Lens' CommitPrecondition (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.mustExist' @:: Lens' CommitPrecondition DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'mustNotExist' @:: Lens' CommitPrecondition (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.mustNotExist' @:: Lens' CommitPrecondition DocumentPath@ -}
data CommitPrecondition
  = CommitPrecondition'_constructor {_CommitPrecondition'condition :: !(Prelude.Maybe CommitPrecondition'Condition),
                                     _CommitPrecondition'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommitPrecondition where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CommitPrecondition'Condition
  = CommitPrecondition'CatalogUnchanged !CatalogRevisionPrecondition |
    CommitPrecondition'DocumentUnchanged !DocumentRevisionPrecondition |
    CommitPrecondition'MustExist !DocumentPath |
    CommitPrecondition'MustNotExist !DocumentPath
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CommitPrecondition "maybe'condition" (Prelude.Maybe CommitPrecondition'Condition) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitPrecondition'condition
           (\ x__ y__ -> x__ {_CommitPrecondition'condition = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommitPrecondition "maybe'catalogUnchanged" (Prelude.Maybe CatalogRevisionPrecondition) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitPrecondition'condition
           (\ x__ y__ -> x__ {_CommitPrecondition'condition = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommitPrecondition'CatalogUnchanged x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CommitPrecondition'CatalogUnchanged y__))
instance Data.ProtoLens.Field.HasField CommitPrecondition "catalogUnchanged" CatalogRevisionPrecondition where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitPrecondition'condition
           (\ x__ y__ -> x__ {_CommitPrecondition'condition = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommitPrecondition'CatalogUnchanged x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CommitPrecondition'CatalogUnchanged y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CommitPrecondition "maybe'documentUnchanged" (Prelude.Maybe DocumentRevisionPrecondition) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitPrecondition'condition
           (\ x__ y__ -> x__ {_CommitPrecondition'condition = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommitPrecondition'DocumentUnchanged x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CommitPrecondition'DocumentUnchanged y__))
instance Data.ProtoLens.Field.HasField CommitPrecondition "documentUnchanged" DocumentRevisionPrecondition where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitPrecondition'condition
           (\ x__ y__ -> x__ {_CommitPrecondition'condition = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommitPrecondition'DocumentUnchanged x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CommitPrecondition'DocumentUnchanged y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CommitPrecondition "maybe'mustExist" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitPrecondition'condition
           (\ x__ y__ -> x__ {_CommitPrecondition'condition = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommitPrecondition'MustExist x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CommitPrecondition'MustExist y__))
instance Data.ProtoLens.Field.HasField CommitPrecondition "mustExist" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitPrecondition'condition
           (\ x__ y__ -> x__ {_CommitPrecondition'condition = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommitPrecondition'MustExist x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CommitPrecondition'MustExist y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CommitPrecondition "maybe'mustNotExist" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitPrecondition'condition
           (\ x__ y__ -> x__ {_CommitPrecondition'condition = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CommitPrecondition'MustNotExist x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CommitPrecondition'MustNotExist y__))
instance Data.ProtoLens.Field.HasField CommitPrecondition "mustNotExist" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitPrecondition'condition
           (\ x__ y__ -> x__ {_CommitPrecondition'condition = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CommitPrecondition'MustNotExist x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CommitPrecondition'MustNotExist y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message CommitPrecondition where
  messageName _ = Data.Text.pack "oll.protocol.CommitPrecondition"
  packedMessageDescriptor _
    = "\n\
      \\DC2CommitPrecondition\DC2X\n\
      \\DC1catalog_unchanged\CAN\SOH \SOH(\v2).oll.protocol.CatalogRevisionPreconditionH\NULR\DLEcatalogUnchanged\DC2[\n\
      \\DC2document_unchanged\CAN\STX \SOH(\v2*.oll.protocol.DocumentRevisionPreconditionH\NULR\DC1documentUnchanged\DC2;\n\
      \\n\
      \must_exist\CAN\ETX \SOH(\v2\SUB.oll.protocol.DocumentPathH\NULR\tmustExist\DC2B\n\
      \\SOmust_not_exist\CAN\EOT \SOH(\v2\SUB.oll.protocol.DocumentPathH\NULR\fmustNotExistB\v\n\
      \\tcondition"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        catalogUnchanged__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "catalog_unchanged"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CatalogRevisionPrecondition)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'catalogUnchanged")) ::
              Data.ProtoLens.FieldDescriptor CommitPrecondition
        documentUnchanged__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "document_unchanged"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentRevisionPrecondition)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'documentUnchanged")) ::
              Data.ProtoLens.FieldDescriptor CommitPrecondition
        mustExist__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "must_exist"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mustExist")) ::
              Data.ProtoLens.FieldDescriptor CommitPrecondition
        mustNotExist__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "must_not_exist"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mustNotExist")) ::
              Data.ProtoLens.FieldDescriptor CommitPrecondition
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, catalogUnchanged__field_descriptor),
           (Data.ProtoLens.Tag 2, documentUnchanged__field_descriptor),
           (Data.ProtoLens.Tag 3, mustExist__field_descriptor),
           (Data.ProtoLens.Tag 4, mustNotExist__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommitPrecondition'_unknownFields
        (\ x__ y__ -> x__ {_CommitPrecondition'_unknownFields = y__})
  defMessage
    = CommitPrecondition'_constructor
        {_CommitPrecondition'condition = Prelude.Nothing,
         _CommitPrecondition'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommitPrecondition
          -> Data.ProtoLens.Encoding.Bytes.Parser CommitPrecondition
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "catalog_unchanged"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"catalogUnchanged") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "document_unchanged"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"documentUnchanged") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "must_exist"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mustExist") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "must_not_exist"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"mustNotExist") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CommitPrecondition"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'condition") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (CommitPrecondition'CatalogUnchanged v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CommitPrecondition'DocumentUnchanged v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CommitPrecondition'MustExist v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CommitPrecondition'MustNotExist v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CommitPrecondition where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommitPrecondition'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CommitPrecondition'condition x__) ())
instance Control.DeepSeq.NFData CommitPrecondition'Condition where
  rnf (CommitPrecondition'CatalogUnchanged x__)
    = Control.DeepSeq.rnf x__
  rnf (CommitPrecondition'DocumentUnchanged x__)
    = Control.DeepSeq.rnf x__
  rnf (CommitPrecondition'MustExist x__) = Control.DeepSeq.rnf x__
  rnf (CommitPrecondition'MustNotExist x__) = Control.DeepSeq.rnf x__
_CommitPrecondition'CatalogUnchanged ::
  Data.ProtoLens.Prism.Prism' CommitPrecondition'Condition CatalogRevisionPrecondition
_CommitPrecondition'CatalogUnchanged
  = Data.ProtoLens.Prism.prism'
      CommitPrecondition'CatalogUnchanged
      (\ p__
         -> case p__ of
              (CommitPrecondition'CatalogUnchanged p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CommitPrecondition'DocumentUnchanged ::
  Data.ProtoLens.Prism.Prism' CommitPrecondition'Condition DocumentRevisionPrecondition
_CommitPrecondition'DocumentUnchanged
  = Data.ProtoLens.Prism.prism'
      CommitPrecondition'DocumentUnchanged
      (\ p__
         -> case p__ of
              (CommitPrecondition'DocumentUnchanged p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CommitPrecondition'MustExist ::
  Data.ProtoLens.Prism.Prism' CommitPrecondition'Condition DocumentPath
_CommitPrecondition'MustExist
  = Data.ProtoLens.Prism.prism'
      CommitPrecondition'MustExist
      (\ p__
         -> case p__ of
              (CommitPrecondition'MustExist p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CommitPrecondition'MustNotExist ::
  Data.ProtoLens.Prism.Prism' CommitPrecondition'Condition DocumentPath
_CommitPrecondition'MustNotExist
  = Data.ProtoLens.Prism.prism'
      CommitPrecondition'MustNotExist
      (\ p__
         -> case p__ of
              (CommitPrecondition'MustNotExist p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' CounterIncrement CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' CounterIncrement (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.delta' @:: Lens' CounterIncrement Prelude.Double@ -}
data CounterIncrement
  = CounterIncrement'_constructor {_CounterIncrement'target :: !(Prelude.Maybe CrdtObjectPath),
                                   _CounterIncrement'delta :: !Prelude.Double,
                                   _CounterIncrement'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CounterIncrement where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CounterIncrement "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterIncrement'target
           (\ x__ y__ -> x__ {_CounterIncrement'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CounterIncrement "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterIncrement'target
           (\ x__ y__ -> x__ {_CounterIncrement'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CounterIncrement "delta" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterIncrement'delta
           (\ x__ y__ -> x__ {_CounterIncrement'delta = y__}))
        Prelude.id
instance Data.ProtoLens.Message CounterIncrement where
  messageName _ = Data.Text.pack "oll.protocol.CounterIncrement"
  packedMessageDescriptor _
    = "\n\
      \\DLECounterIncrement\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DC4\n\
      \\ENQdelta\CAN\STX \SOH(\SOHR\ENQdelta"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor CounterIncrement
        delta__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delta"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"delta")) ::
              Data.ProtoLens.FieldDescriptor CounterIncrement
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, delta__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CounterIncrement'_unknownFields
        (\ x__ y__ -> x__ {_CounterIncrement'_unknownFields = y__})
  defMessage
    = CounterIncrement'_constructor
        {_CounterIncrement'target = Prelude.Nothing,
         _CounterIncrement'delta = Data.ProtoLens.fieldDefault,
         _CounterIncrement'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CounterIncrement
          -> Data.ProtoLens.Encoding.Bytes.Parser CounterIncrement
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "delta"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"delta") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CounterIncrement"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"delta") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putFixed64
                            Data.ProtoLens.Encoding.Bytes.doubleToWord _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CounterIncrement where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CounterIncrement'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CounterIncrement'target x__)
                (Control.DeepSeq.deepseq (_CounterIncrement'delta x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.value' @:: Lens' CrdtCounter Prelude.Double@ -}
data CrdtCounter
  = CrdtCounter'_constructor {_CrdtCounter'value :: !Prelude.Double,
                              _CrdtCounter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtCounter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CrdtCounter "value" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtCounter'value (\ x__ y__ -> x__ {_CrdtCounter'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message CrdtCounter where
  messageName _ = Data.Text.pack "oll.protocol.CrdtCounter"
  packedMessageDescriptor _
    = "\n\
      \\vCrdtCounter\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor CrdtCounter
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtCounter'_unknownFields
        (\ x__ y__ -> x__ {_CrdtCounter'_unknownFields = y__})
  defMessage
    = CrdtCounter'_constructor
        {_CrdtCounter'value = Data.ProtoLens.fieldDefault,
         _CrdtCounter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtCounter -> Data.ProtoLens.Encoding.Bytes.Parser CrdtCounter
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CrdtCounter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putFixed64
                         Data.ProtoLens.Encoding.Bytes.doubleToWord _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CrdtCounter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtCounter'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CrdtCounter'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.values' @:: Lens' CrdtList [CrdtValue]@
         * 'Proto.Oll.Document_Fields.vec'values' @:: Lens' CrdtList (Data.Vector.Vector CrdtValue)@
         * 'Proto.Oll.Document_Fields.movable' @:: Lens' CrdtList Prelude.Bool@ -}
data CrdtList
  = CrdtList'_constructor {_CrdtList'values :: !(Data.Vector.Vector CrdtValue),
                           _CrdtList'movable :: !Prelude.Bool,
                           _CrdtList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CrdtList "values" [CrdtValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtList'values (\ x__ y__ -> x__ {_CrdtList'values = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CrdtList "vec'values" (Data.Vector.Vector CrdtValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtList'values (\ x__ y__ -> x__ {_CrdtList'values = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtList "movable" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtList'movable (\ x__ y__ -> x__ {_CrdtList'movable = y__}))
        Prelude.id
instance Data.ProtoLens.Message CrdtList where
  messageName _ = Data.Text.pack "oll.protocol.CrdtList"
  packedMessageDescriptor _
    = "\n\
      \\bCrdtList\DC2/\n\
      \\ACKvalues\CAN\SOH \ETX(\v2\ETB.oll.protocol.CrdtValueR\ACKvalues\DC2\CAN\n\
      \\amovable\CAN\STX \SOH(\bR\amovable"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        values__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "values"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"values")) ::
              Data.ProtoLens.FieldDescriptor CrdtList
        movable__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "movable"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"movable")) ::
              Data.ProtoLens.FieldDescriptor CrdtList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, values__field_descriptor),
           (Data.ProtoLens.Tag 2, movable__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtList'_unknownFields
        (\ x__ y__ -> x__ {_CrdtList'_unknownFields = y__})
  defMessage
    = CrdtList'_constructor
        {_CrdtList'values = Data.Vector.Generic.empty,
         _CrdtList'movable = Data.ProtoLens.fieldDefault,
         _CrdtList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CrdtValue
             -> Data.ProtoLens.Encoding.Bytes.Parser CrdtList
        loop x mutable'values
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'values <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'values)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'values") frozen'values x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "values"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'values y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "movable"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"movable") y x)
                                  mutable'values
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'values
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'values <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'values)
          "CrdtList"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'values") _x))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"movable") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CrdtList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtList'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CrdtList'values x__)
                (Control.DeepSeq.deepseq (_CrdtList'movable x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.entries' @:: Lens' CrdtMap (Data.Map.Map Data.Text.Text CrdtValue)@ -}
data CrdtMap
  = CrdtMap'_constructor {_CrdtMap'entries :: !(Data.Map.Map Data.Text.Text CrdtValue),
                          _CrdtMap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtMap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CrdtMap "entries" (Data.Map.Map Data.Text.Text CrdtValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtMap'entries (\ x__ y__ -> x__ {_CrdtMap'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message CrdtMap where
  messageName _ = Data.Text.pack "oll.protocol.CrdtMap"
  packedMessageDescriptor _
    = "\n\
      \\aCrdtMap\DC2<\n\
      \\aentries\CAN\SOH \ETX(\v2\".oll.protocol.CrdtMap.EntriesEntryR\aentries\SUBS\n\
      \\fEntriesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2-\n\
      \\ENQvalue\CAN\STX \SOH(\v2\ETB.oll.protocol.CrdtValueR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtMap'EntriesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor CrdtMap
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtMap'_unknownFields
        (\ x__ y__ -> x__ {_CrdtMap'_unknownFields = y__})
  defMessage
    = CrdtMap'_constructor
        {_CrdtMap'entries = Data.Map.empty, _CrdtMap'_unknownFields = []}
  parseMessage
    = let
        loop :: CrdtMap -> Data.ProtoLens.Encoding.Bytes.Parser CrdtMap
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !(entry :: CrdtMap'EntriesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                      (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                          Data.ProtoLens.Encoding.Bytes.isolate
                                                                            (Prelude.fromIntegral
                                                                               len)
                                                                            Data.ProtoLens.parseMessage)
                                                                      "entries"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"entries")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CrdtMap"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage :: CrdtMap'EntriesEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"entries") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CrdtMap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtMap'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CrdtMap'entries x__) ())
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.key' @:: Lens' CrdtMap'EntriesEntry Data.Text.Text@
         * 'Proto.Oll.Document_Fields.value' @:: Lens' CrdtMap'EntriesEntry CrdtValue@
         * 'Proto.Oll.Document_Fields.maybe'value' @:: Lens' CrdtMap'EntriesEntry (Prelude.Maybe CrdtValue)@ -}
data CrdtMap'EntriesEntry
  = CrdtMap'EntriesEntry'_constructor {_CrdtMap'EntriesEntry'key :: !Data.Text.Text,
                                       _CrdtMap'EntriesEntry'value :: !(Prelude.Maybe CrdtValue),
                                       _CrdtMap'EntriesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtMap'EntriesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CrdtMap'EntriesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtMap'EntriesEntry'key
           (\ x__ y__ -> x__ {_CrdtMap'EntriesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtMap'EntriesEntry "value" CrdtValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtMap'EntriesEntry'value
           (\ x__ y__ -> x__ {_CrdtMap'EntriesEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CrdtMap'EntriesEntry "maybe'value" (Prelude.Maybe CrdtValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtMap'EntriesEntry'value
           (\ x__ y__ -> x__ {_CrdtMap'EntriesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message CrdtMap'EntriesEntry where
  messageName _ = Data.Text.pack "oll.protocol.CrdtMap.EntriesEntry"
  packedMessageDescriptor _
    = "\n\
      \\fEntriesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2-\n\
      \\ENQvalue\CAN\STX \SOH(\v2\ETB.oll.protocol.CrdtValueR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor CrdtMap'EntriesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor CrdtMap'EntriesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtMap'EntriesEntry'_unknownFields
        (\ x__ y__ -> x__ {_CrdtMap'EntriesEntry'_unknownFields = y__})
  defMessage
    = CrdtMap'EntriesEntry'_constructor
        {_CrdtMap'EntriesEntry'key = Data.ProtoLens.fieldDefault,
         _CrdtMap'EntriesEntry'value = Prelude.Nothing,
         _CrdtMap'EntriesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtMap'EntriesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser CrdtMap'EntriesEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EntriesEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CrdtMap'EntriesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtMap'EntriesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CrdtMap'EntriesEntry'key x__)
                (Control.DeepSeq.deepseq (_CrdtMap'EntriesEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.segments' @:: Lens' CrdtObjectPath [CrdtPathSegment]@
         * 'Proto.Oll.Document_Fields.vec'segments' @:: Lens' CrdtObjectPath (Data.Vector.Vector CrdtPathSegment)@ -}
data CrdtObjectPath
  = CrdtObjectPath'_constructor {_CrdtObjectPath'segments :: !(Data.Vector.Vector CrdtPathSegment),
                                 _CrdtObjectPath'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtObjectPath where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CrdtObjectPath "segments" [CrdtPathSegment] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtObjectPath'segments
           (\ x__ y__ -> x__ {_CrdtObjectPath'segments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CrdtObjectPath "vec'segments" (Data.Vector.Vector CrdtPathSegment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtObjectPath'segments
           (\ x__ y__ -> x__ {_CrdtObjectPath'segments = y__}))
        Prelude.id
instance Data.ProtoLens.Message CrdtObjectPath where
  messageName _ = Data.Text.pack "oll.protocol.CrdtObjectPath"
  packedMessageDescriptor _
    = "\n\
      \\SOCrdtObjectPath\DC29\n\
      \\bsegments\CAN\SOH \ETX(\v2\GS.oll.protocol.CrdtPathSegmentR\bsegments"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        segments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "segments"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtPathSegment)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"segments")) ::
              Data.ProtoLens.FieldDescriptor CrdtObjectPath
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, segments__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtObjectPath'_unknownFields
        (\ x__ y__ -> x__ {_CrdtObjectPath'_unknownFields = y__})
  defMessage
    = CrdtObjectPath'_constructor
        {_CrdtObjectPath'segments = Data.Vector.Generic.empty,
         _CrdtObjectPath'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtObjectPath
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CrdtPathSegment
             -> Data.ProtoLens.Encoding.Bytes.Parser CrdtObjectPath
        loop x mutable'segments
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'segments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'segments)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'segments") frozen'segments x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "segments"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'segments y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'segments
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'segments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'segments)
          "CrdtObjectPath"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'segments") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CrdtObjectPath where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtObjectPath'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CrdtObjectPath'segments x__) ())
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.maybe'operation' @:: Lens' CrdtOperation (Prelude.Maybe CrdtOperation'Operation)@
         * 'Proto.Oll.Document_Fields.maybe'mapSet' @:: Lens' CrdtOperation (Prelude.Maybe MapSet)@
         * 'Proto.Oll.Document_Fields.mapSet' @:: Lens' CrdtOperation MapSet@
         * 'Proto.Oll.Document_Fields.maybe'mapDelete' @:: Lens' CrdtOperation (Prelude.Maybe MapDelete)@
         * 'Proto.Oll.Document_Fields.mapDelete' @:: Lens' CrdtOperation MapDelete@
         * 'Proto.Oll.Document_Fields.maybe'listInsert' @:: Lens' CrdtOperation (Prelude.Maybe ListInsert)@
         * 'Proto.Oll.Document_Fields.listInsert' @:: Lens' CrdtOperation ListInsert@
         * 'Proto.Oll.Document_Fields.maybe'listDelete' @:: Lens' CrdtOperation (Prelude.Maybe ListDelete)@
         * 'Proto.Oll.Document_Fields.listDelete' @:: Lens' CrdtOperation ListDelete@
         * 'Proto.Oll.Document_Fields.maybe'listMove' @:: Lens' CrdtOperation (Prelude.Maybe ListMove)@
         * 'Proto.Oll.Document_Fields.listMove' @:: Lens' CrdtOperation ListMove@
         * 'Proto.Oll.Document_Fields.maybe'textInsert' @:: Lens' CrdtOperation (Prelude.Maybe TextInsert)@
         * 'Proto.Oll.Document_Fields.textInsert' @:: Lens' CrdtOperation TextInsert@
         * 'Proto.Oll.Document_Fields.maybe'textDelete' @:: Lens' CrdtOperation (Prelude.Maybe TextDelete)@
         * 'Proto.Oll.Document_Fields.textDelete' @:: Lens' CrdtOperation TextDelete@
         * 'Proto.Oll.Document_Fields.maybe'textMark' @:: Lens' CrdtOperation (Prelude.Maybe TextMark)@
         * 'Proto.Oll.Document_Fields.textMark' @:: Lens' CrdtOperation TextMark@
         * 'Proto.Oll.Document_Fields.maybe'textUnmark' @:: Lens' CrdtOperation (Prelude.Maybe TextUnmark)@
         * 'Proto.Oll.Document_Fields.textUnmark' @:: Lens' CrdtOperation TextUnmark@
         * 'Proto.Oll.Document_Fields.maybe'counterIncrement' @:: Lens' CrdtOperation (Prelude.Maybe CounterIncrement)@
         * 'Proto.Oll.Document_Fields.counterIncrement' @:: Lens' CrdtOperation CounterIncrement@
         * 'Proto.Oll.Document_Fields.maybe'treeCreateNode' @:: Lens' CrdtOperation (Prelude.Maybe TreeCreateNode)@
         * 'Proto.Oll.Document_Fields.treeCreateNode' @:: Lens' CrdtOperation TreeCreateNode@
         * 'Proto.Oll.Document_Fields.maybe'treeDeleteNode' @:: Lens' CrdtOperation (Prelude.Maybe TreeDeleteNode)@
         * 'Proto.Oll.Document_Fields.treeDeleteNode' @:: Lens' CrdtOperation TreeDeleteNode@
         * 'Proto.Oll.Document_Fields.maybe'treeMoveNode' @:: Lens' CrdtOperation (Prelude.Maybe TreeMoveNode)@
         * 'Proto.Oll.Document_Fields.treeMoveNode' @:: Lens' CrdtOperation TreeMoveNode@
         * 'Proto.Oll.Document_Fields.maybe'treeSetMetadata' @:: Lens' CrdtOperation (Prelude.Maybe TreeSetMetadata)@
         * 'Proto.Oll.Document_Fields.treeSetMetadata' @:: Lens' CrdtOperation TreeSetMetadata@ -}
data CrdtOperation
  = CrdtOperation'_constructor {_CrdtOperation'operation :: !(Prelude.Maybe CrdtOperation'Operation),
                                _CrdtOperation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtOperation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CrdtOperation'Operation
  = CrdtOperation'MapSet !MapSet |
    CrdtOperation'MapDelete !MapDelete |
    CrdtOperation'ListInsert !ListInsert |
    CrdtOperation'ListDelete !ListDelete |
    CrdtOperation'ListMove !ListMove |
    CrdtOperation'TextInsert !TextInsert |
    CrdtOperation'TextDelete !TextDelete |
    CrdtOperation'TextMark !TextMark |
    CrdtOperation'TextUnmark !TextUnmark |
    CrdtOperation'CounterIncrement !CounterIncrement |
    CrdtOperation'TreeCreateNode !TreeCreateNode |
    CrdtOperation'TreeDeleteNode !TreeDeleteNode |
    CrdtOperation'TreeMoveNode !TreeMoveNode |
    CrdtOperation'TreeSetMetadata !TreeSetMetadata
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'operation" (Prelude.Maybe CrdtOperation'Operation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'mapSet" (Prelude.Maybe MapSet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'MapSet x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'MapSet y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "mapSet" MapSet where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'MapSet x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'MapSet y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'mapDelete" (Prelude.Maybe MapDelete) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'MapDelete x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'MapDelete y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "mapDelete" MapDelete where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'MapDelete x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'MapDelete y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'listInsert" (Prelude.Maybe ListInsert) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'ListInsert x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'ListInsert y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "listInsert" ListInsert where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'ListInsert x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'ListInsert y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'listDelete" (Prelude.Maybe ListDelete) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'ListDelete x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'ListDelete y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "listDelete" ListDelete where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'ListDelete x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'ListDelete y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'listMove" (Prelude.Maybe ListMove) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'ListMove x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'ListMove y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "listMove" ListMove where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'ListMove x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'ListMove y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'textInsert" (Prelude.Maybe TextInsert) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'TextInsert x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'TextInsert y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "textInsert" TextInsert where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'TextInsert x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'TextInsert y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'textDelete" (Prelude.Maybe TextDelete) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'TextDelete x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'TextDelete y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "textDelete" TextDelete where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'TextDelete x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'TextDelete y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'textMark" (Prelude.Maybe TextMark) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'TextMark x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'TextMark y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "textMark" TextMark where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'TextMark x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'TextMark y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'textUnmark" (Prelude.Maybe TextUnmark) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'TextUnmark x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'TextUnmark y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "textUnmark" TextUnmark where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'TextUnmark x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'TextUnmark y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'counterIncrement" (Prelude.Maybe CounterIncrement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'CounterIncrement x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'CounterIncrement y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "counterIncrement" CounterIncrement where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'CounterIncrement x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'CounterIncrement y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'treeCreateNode" (Prelude.Maybe TreeCreateNode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'TreeCreateNode x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'TreeCreateNode y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "treeCreateNode" TreeCreateNode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'TreeCreateNode x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'TreeCreateNode y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'treeDeleteNode" (Prelude.Maybe TreeDeleteNode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'TreeDeleteNode x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'TreeDeleteNode y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "treeDeleteNode" TreeDeleteNode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'TreeDeleteNode x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'TreeDeleteNode y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'treeMoveNode" (Prelude.Maybe TreeMoveNode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'TreeMoveNode x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'TreeMoveNode y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "treeMoveNode" TreeMoveNode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'TreeMoveNode x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'TreeMoveNode y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtOperation "maybe'treeSetMetadata" (Prelude.Maybe TreeSetMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtOperation'TreeSetMetadata x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtOperation'TreeSetMetadata y__))
instance Data.ProtoLens.Field.HasField CrdtOperation "treeSetMetadata" TreeSetMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtOperation'operation
           (\ x__ y__ -> x__ {_CrdtOperation'operation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtOperation'TreeSetMetadata x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtOperation'TreeSetMetadata y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message CrdtOperation where
  messageName _ = Data.Text.pack "oll.protocol.CrdtOperation"
  packedMessageDescriptor _
    = "\n\
      \\rCrdtOperation\DC2/\n\
      \\amap_set\CAN\SOH \SOH(\v2\DC4.oll.protocol.MapSetH\NULR\ACKmapSet\DC28\n\
      \\n\
      \map_delete\CAN\STX \SOH(\v2\ETB.oll.protocol.MapDeleteH\NULR\tmapDelete\DC2;\n\
      \\vlist_insert\CAN\ETX \SOH(\v2\CAN.oll.protocol.ListInsertH\NULR\n\
      \listInsert\DC2;\n\
      \\vlist_delete\CAN\EOT \SOH(\v2\CAN.oll.protocol.ListDeleteH\NULR\n\
      \listDelete\DC25\n\
      \\tlist_move\CAN\ENQ \SOH(\v2\SYN.oll.protocol.ListMoveH\NULR\blistMove\DC2;\n\
      \\vtext_insert\CAN\ACK \SOH(\v2\CAN.oll.protocol.TextInsertH\NULR\n\
      \textInsert\DC2;\n\
      \\vtext_delete\CAN\a \SOH(\v2\CAN.oll.protocol.TextDeleteH\NULR\n\
      \textDelete\DC25\n\
      \\ttext_mark\CAN\b \SOH(\v2\SYN.oll.protocol.TextMarkH\NULR\btextMark\DC2;\n\
      \\vtext_unmark\CAN\t \SOH(\v2\CAN.oll.protocol.TextUnmarkH\NULR\n\
      \textUnmark\DC2M\n\
      \\DC1counter_increment\CAN\n\
      \ \SOH(\v2\RS.oll.protocol.CounterIncrementH\NULR\DLEcounterIncrement\DC2H\n\
      \\DLEtree_create_node\CAN\v \SOH(\v2\FS.oll.protocol.TreeCreateNodeH\NULR\SOtreeCreateNode\DC2H\n\
      \\DLEtree_delete_node\CAN\f \SOH(\v2\FS.oll.protocol.TreeDeleteNodeH\NULR\SOtreeDeleteNode\DC2B\n\
      \\SOtree_move_node\CAN\r \SOH(\v2\SUB.oll.protocol.TreeMoveNodeH\NULR\ftreeMoveNode\DC2K\n\
      \\DC1tree_set_metadata\CAN\SO \SOH(\v2\GS.oll.protocol.TreeSetMetadataH\NULR\SItreeSetMetadataB\v\n\
      \\toperation"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mapSet__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map_set"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MapSet)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mapSet")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        mapDelete__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map_delete"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MapDelete)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mapDelete")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        listInsert__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_insert"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListInsert)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listInsert")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        listDelete__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_delete"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListDelete)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listDelete")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        listMove__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_move"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ListMove)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listMove")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        textInsert__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text_insert"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TextInsert)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'textInsert")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        textDelete__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text_delete"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TextDelete)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'textDelete")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        textMark__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text_mark"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TextMark)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'textMark")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        textUnmark__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text_unmark"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TextUnmark)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'textUnmark")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        counterIncrement__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "counter_increment"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CounterIncrement)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'counterIncrement")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        treeCreateNode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tree_create_node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TreeCreateNode)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'treeCreateNode")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        treeDeleteNode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tree_delete_node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TreeDeleteNode)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'treeDeleteNode")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        treeMoveNode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tree_move_node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TreeMoveNode)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'treeMoveNode")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
        treeSetMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tree_set_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TreeSetMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'treeSetMetadata")) ::
              Data.ProtoLens.FieldDescriptor CrdtOperation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, mapSet__field_descriptor),
           (Data.ProtoLens.Tag 2, mapDelete__field_descriptor),
           (Data.ProtoLens.Tag 3, listInsert__field_descriptor),
           (Data.ProtoLens.Tag 4, listDelete__field_descriptor),
           (Data.ProtoLens.Tag 5, listMove__field_descriptor),
           (Data.ProtoLens.Tag 6, textInsert__field_descriptor),
           (Data.ProtoLens.Tag 7, textDelete__field_descriptor),
           (Data.ProtoLens.Tag 8, textMark__field_descriptor),
           (Data.ProtoLens.Tag 9, textUnmark__field_descriptor),
           (Data.ProtoLens.Tag 10, counterIncrement__field_descriptor),
           (Data.ProtoLens.Tag 11, treeCreateNode__field_descriptor),
           (Data.ProtoLens.Tag 12, treeDeleteNode__field_descriptor),
           (Data.ProtoLens.Tag 13, treeMoveNode__field_descriptor),
           (Data.ProtoLens.Tag 14, treeSetMetadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtOperation'_unknownFields
        (\ x__ y__ -> x__ {_CrdtOperation'_unknownFields = y__})
  defMessage
    = CrdtOperation'_constructor
        {_CrdtOperation'operation = Prelude.Nothing,
         _CrdtOperation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtOperation -> Data.ProtoLens.Encoding.Bytes.Parser CrdtOperation
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "map_set"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mapSet") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "map_delete"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mapDelete") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list_insert"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listInsert") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list_delete"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listDelete") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list_move"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listMove") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "text_insert"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"textInsert") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "text_delete"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"textDelete") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "text_mark"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"textMark") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "text_unmark"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"textUnmark") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "counter_increment"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"counterIncrement") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tree_create_node"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"treeCreateNode") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tree_delete_node"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"treeDeleteNode") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tree_move_node"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"treeMoveNode") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tree_set_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"treeSetMetadata") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CrdtOperation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'operation") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (CrdtOperation'MapSet v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'MapDelete v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'ListInsert v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'ListDelete v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'ListMove v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'TextInsert v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'TextDelete v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'TextMark v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'TextUnmark v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'CounterIncrement v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'TreeCreateNode v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'TreeDeleteNode v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'TreeMoveNode v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtOperation'TreeSetMetadata v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CrdtOperation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtOperation'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CrdtOperation'operation x__) ())
instance Control.DeepSeq.NFData CrdtOperation'Operation where
  rnf (CrdtOperation'MapSet x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'MapDelete x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'ListInsert x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'ListDelete x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'ListMove x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'TextInsert x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'TextDelete x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'TextMark x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'TextUnmark x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'CounterIncrement x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'TreeCreateNode x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'TreeDeleteNode x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'TreeMoveNode x__) = Control.DeepSeq.rnf x__
  rnf (CrdtOperation'TreeSetMetadata x__) = Control.DeepSeq.rnf x__
_CrdtOperation'MapSet ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation MapSet
_CrdtOperation'MapSet
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'MapSet
      (\ p__
         -> case p__ of
              (CrdtOperation'MapSet p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'MapDelete ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation MapDelete
_CrdtOperation'MapDelete
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'MapDelete
      (\ p__
         -> case p__ of
              (CrdtOperation'MapDelete p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'ListInsert ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation ListInsert
_CrdtOperation'ListInsert
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'ListInsert
      (\ p__
         -> case p__ of
              (CrdtOperation'ListInsert p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'ListDelete ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation ListDelete
_CrdtOperation'ListDelete
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'ListDelete
      (\ p__
         -> case p__ of
              (CrdtOperation'ListDelete p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'ListMove ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation ListMove
_CrdtOperation'ListMove
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'ListMove
      (\ p__
         -> case p__ of
              (CrdtOperation'ListMove p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'TextInsert ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation TextInsert
_CrdtOperation'TextInsert
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'TextInsert
      (\ p__
         -> case p__ of
              (CrdtOperation'TextInsert p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'TextDelete ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation TextDelete
_CrdtOperation'TextDelete
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'TextDelete
      (\ p__
         -> case p__ of
              (CrdtOperation'TextDelete p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'TextMark ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation TextMark
_CrdtOperation'TextMark
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'TextMark
      (\ p__
         -> case p__ of
              (CrdtOperation'TextMark p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'TextUnmark ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation TextUnmark
_CrdtOperation'TextUnmark
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'TextUnmark
      (\ p__
         -> case p__ of
              (CrdtOperation'TextUnmark p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'CounterIncrement ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation CounterIncrement
_CrdtOperation'CounterIncrement
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'CounterIncrement
      (\ p__
         -> case p__ of
              (CrdtOperation'CounterIncrement p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'TreeCreateNode ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation TreeCreateNode
_CrdtOperation'TreeCreateNode
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'TreeCreateNode
      (\ p__
         -> case p__ of
              (CrdtOperation'TreeCreateNode p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'TreeDeleteNode ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation TreeDeleteNode
_CrdtOperation'TreeDeleteNode
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'TreeDeleteNode
      (\ p__
         -> case p__ of
              (CrdtOperation'TreeDeleteNode p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'TreeMoveNode ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation TreeMoveNode
_CrdtOperation'TreeMoveNode
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'TreeMoveNode
      (\ p__
         -> case p__ of
              (CrdtOperation'TreeMoveNode p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtOperation'TreeSetMetadata ::
  Data.ProtoLens.Prism.Prism' CrdtOperation'Operation TreeSetMetadata
_CrdtOperation'TreeSetMetadata
  = Data.ProtoLens.Prism.prism'
      CrdtOperation'TreeSetMetadata
      (\ p__
         -> case p__ of
              (CrdtOperation'TreeSetMetadata p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.maybe'kind' @:: Lens' CrdtPathSegment (Prelude.Maybe CrdtPathSegment'Kind)@
         * 'Proto.Oll.Document_Fields.maybe'mapKey' @:: Lens' CrdtPathSegment (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Document_Fields.mapKey' @:: Lens' CrdtPathSegment Data.Text.Text@
         * 'Proto.Oll.Document_Fields.maybe'listIndex' @:: Lens' CrdtPathSegment (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Oll.Document_Fields.listIndex' @:: Lens' CrdtPathSegment Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.maybe'treeNodeId' @:: Lens' CrdtPathSegment (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Document_Fields.treeNodeId' @:: Lens' CrdtPathSegment Data.Text.Text@ -}
data CrdtPathSegment
  = CrdtPathSegment'_constructor {_CrdtPathSegment'kind :: !(Prelude.Maybe CrdtPathSegment'Kind),
                                  _CrdtPathSegment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtPathSegment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CrdtPathSegment'Kind
  = CrdtPathSegment'MapKey !Data.Text.Text |
    CrdtPathSegment'ListIndex !Data.Word.Word64 |
    CrdtPathSegment'TreeNodeId !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CrdtPathSegment "maybe'kind" (Prelude.Maybe CrdtPathSegment'Kind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtPathSegment'kind
           (\ x__ y__ -> x__ {_CrdtPathSegment'kind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtPathSegment "maybe'mapKey" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtPathSegment'kind
           (\ x__ y__ -> x__ {_CrdtPathSegment'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtPathSegment'MapKey x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtPathSegment'MapKey y__))
instance Data.ProtoLens.Field.HasField CrdtPathSegment "mapKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtPathSegment'kind
           (\ x__ y__ -> x__ {_CrdtPathSegment'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtPathSegment'MapKey x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtPathSegment'MapKey y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField CrdtPathSegment "maybe'listIndex" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtPathSegment'kind
           (\ x__ y__ -> x__ {_CrdtPathSegment'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtPathSegment'ListIndex x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtPathSegment'ListIndex y__))
instance Data.ProtoLens.Field.HasField CrdtPathSegment "listIndex" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtPathSegment'kind
           (\ x__ y__ -> x__ {_CrdtPathSegment'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtPathSegment'ListIndex x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtPathSegment'ListIndex y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField CrdtPathSegment "maybe'treeNodeId" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtPathSegment'kind
           (\ x__ y__ -> x__ {_CrdtPathSegment'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtPathSegment'TreeNodeId x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtPathSegment'TreeNodeId y__))
instance Data.ProtoLens.Field.HasField CrdtPathSegment "treeNodeId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtPathSegment'kind
           (\ x__ y__ -> x__ {_CrdtPathSegment'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtPathSegment'TreeNodeId x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtPathSegment'TreeNodeId y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message CrdtPathSegment where
  messageName _ = Data.Text.pack "oll.protocol.CrdtPathSegment"
  packedMessageDescriptor _
    = "\n\
      \\SICrdtPathSegment\DC2\EM\n\
      \\amap_key\CAN\SOH \SOH(\tH\NULR\ACKmapKey\DC2\US\n\
      \\n\
      \list_index\CAN\STX \SOH(\EOTH\NULR\tlistIndex\DC2\"\n\
      \\ftree_node_id\CAN\ETX \SOH(\tH\NULR\n\
      \treeNodeIdB\ACK\n\
      \\EOTkind"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mapKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mapKey")) ::
              Data.ProtoLens.FieldDescriptor CrdtPathSegment
        listIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listIndex")) ::
              Data.ProtoLens.FieldDescriptor CrdtPathSegment
        treeNodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tree_node_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'treeNodeId")) ::
              Data.ProtoLens.FieldDescriptor CrdtPathSegment
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, mapKey__field_descriptor),
           (Data.ProtoLens.Tag 2, listIndex__field_descriptor),
           (Data.ProtoLens.Tag 3, treeNodeId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtPathSegment'_unknownFields
        (\ x__ y__ -> x__ {_CrdtPathSegment'_unknownFields = y__})
  defMessage
    = CrdtPathSegment'_constructor
        {_CrdtPathSegment'kind = Prelude.Nothing,
         _CrdtPathSegment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtPathSegment
          -> Data.ProtoLens.Encoding.Bytes.Parser CrdtPathSegment
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "map_key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mapKey") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "list_index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listIndex") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "tree_node_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"treeNodeId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CrdtPathSegment"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kind") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (CrdtPathSegment'MapKey v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8 v)
                (Prelude.Just (CrdtPathSegment'ListIndex v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt v)
                (Prelude.Just (CrdtPathSegment'TreeNodeId v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8 v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CrdtPathSegment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtPathSegment'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CrdtPathSegment'kind x__) ())
instance Control.DeepSeq.NFData CrdtPathSegment'Kind where
  rnf (CrdtPathSegment'MapKey x__) = Control.DeepSeq.rnf x__
  rnf (CrdtPathSegment'ListIndex x__) = Control.DeepSeq.rnf x__
  rnf (CrdtPathSegment'TreeNodeId x__) = Control.DeepSeq.rnf x__
_CrdtPathSegment'MapKey ::
  Data.ProtoLens.Prism.Prism' CrdtPathSegment'Kind Data.Text.Text
_CrdtPathSegment'MapKey
  = Data.ProtoLens.Prism.prism'
      CrdtPathSegment'MapKey
      (\ p__
         -> case p__ of
              (CrdtPathSegment'MapKey p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtPathSegment'ListIndex ::
  Data.ProtoLens.Prism.Prism' CrdtPathSegment'Kind Data.Word.Word64
_CrdtPathSegment'ListIndex
  = Data.ProtoLens.Prism.prism'
      CrdtPathSegment'ListIndex
      (\ p__
         -> case p__ of
              (CrdtPathSegment'ListIndex p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtPathSegment'TreeNodeId ::
  Data.ProtoLens.Prism.Prism' CrdtPathSegment'Kind Data.Text.Text
_CrdtPathSegment'TreeNodeId
  = Data.ProtoLens.Prism.prism'
      CrdtPathSegment'TreeNodeId
      (\ p__
         -> case p__ of
              (CrdtPathSegment'TreeNodeId p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.maybe'kind' @:: Lens' CrdtScalar (Prelude.Maybe CrdtScalar'Kind)@
         * 'Proto.Oll.Document_Fields.maybe'boolValue' @:: Lens' CrdtScalar (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Oll.Document_Fields.boolValue' @:: Lens' CrdtScalar Prelude.Bool@
         * 'Proto.Oll.Document_Fields.maybe'integerValue' @:: Lens' CrdtScalar (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Oll.Document_Fields.integerValue' @:: Lens' CrdtScalar Data.Int.Int64@
         * 'Proto.Oll.Document_Fields.maybe'numberValue' @:: Lens' CrdtScalar (Prelude.Maybe Prelude.Double)@
         * 'Proto.Oll.Document_Fields.numberValue' @:: Lens' CrdtScalar Prelude.Double@
         * 'Proto.Oll.Document_Fields.maybe'stringValue' @:: Lens' CrdtScalar (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Document_Fields.stringValue' @:: Lens' CrdtScalar Data.Text.Text@
         * 'Proto.Oll.Document_Fields.maybe'bytesValue' @:: Lens' CrdtScalar (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Oll.Document_Fields.bytesValue' @:: Lens' CrdtScalar Data.ByteString.ByteString@
         * 'Proto.Oll.Document_Fields.maybe'nullValue' @:: Lens' CrdtScalar (Prelude.Maybe Proto.Google.Protobuf.Struct.NullValue)@
         * 'Proto.Oll.Document_Fields.nullValue' @:: Lens' CrdtScalar Proto.Google.Protobuf.Struct.NullValue@ -}
data CrdtScalar
  = CrdtScalar'_constructor {_CrdtScalar'kind :: !(Prelude.Maybe CrdtScalar'Kind),
                             _CrdtScalar'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtScalar where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CrdtScalar'Kind
  = CrdtScalar'BoolValue !Prelude.Bool |
    CrdtScalar'IntegerValue !Data.Int.Int64 |
    CrdtScalar'NumberValue !Prelude.Double |
    CrdtScalar'StringValue !Data.Text.Text |
    CrdtScalar'BytesValue !Data.ByteString.ByteString |
    CrdtScalar'NullValue !Proto.Google.Protobuf.Struct.NullValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CrdtScalar "maybe'kind" (Prelude.Maybe CrdtScalar'Kind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtScalar "maybe'boolValue" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtScalar'BoolValue x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtScalar'BoolValue y__))
instance Data.ProtoLens.Field.HasField CrdtScalar "boolValue" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtScalar'BoolValue x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtScalar'BoolValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField CrdtScalar "maybe'integerValue" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtScalar'IntegerValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtScalar'IntegerValue y__))
instance Data.ProtoLens.Field.HasField CrdtScalar "integerValue" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtScalar'IntegerValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtScalar'IntegerValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField CrdtScalar "maybe'numberValue" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtScalar'NumberValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtScalar'NumberValue y__))
instance Data.ProtoLens.Field.HasField CrdtScalar "numberValue" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtScalar'NumberValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtScalar'NumberValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField CrdtScalar "maybe'stringValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtScalar'StringValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtScalar'StringValue y__))
instance Data.ProtoLens.Field.HasField CrdtScalar "stringValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtScalar'StringValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtScalar'StringValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField CrdtScalar "maybe'bytesValue" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtScalar'BytesValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtScalar'BytesValue y__))
instance Data.ProtoLens.Field.HasField CrdtScalar "bytesValue" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtScalar'BytesValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtScalar'BytesValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField CrdtScalar "maybe'nullValue" (Prelude.Maybe Proto.Google.Protobuf.Struct.NullValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtScalar'NullValue x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtScalar'NullValue y__))
instance Data.ProtoLens.Field.HasField CrdtScalar "nullValue" Proto.Google.Protobuf.Struct.NullValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtScalar'kind (\ x__ y__ -> x__ {_CrdtScalar'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtScalar'NullValue x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtScalar'NullValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message CrdtScalar where
  messageName _ = Data.Text.pack "oll.protocol.CrdtScalar"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \CrdtScalar\DC2\US\n\
      \\n\
      \bool_value\CAN\SOH \SOH(\bH\NULR\tboolValue\DC2%\n\
      \\rinteger_value\CAN\STX \SOH(\DC2H\NULR\fintegerValue\DC2#\n\
      \\fnumber_value\CAN\ETX \SOH(\SOHH\NULR\vnumberValue\DC2#\n\
      \\fstring_value\CAN\EOT \SOH(\tH\NULR\vstringValue\DC2!\n\
      \\vbytes_value\CAN\ENQ \SOH(\fH\NULR\n\
      \bytesValue\DC2;\n\
      \\n\
      \null_value\CAN\ACK \SOH(\SO2\SUB.google.protobuf.NullValueH\NULR\tnullValueB\ACK\n\
      \\EOTkind"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        boolValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'boolValue")) ::
              Data.ProtoLens.FieldDescriptor CrdtScalar
        integerValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "integer_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'integerValue")) ::
              Data.ProtoLens.FieldDescriptor CrdtScalar
        numberValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "number_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'numberValue")) ::
              Data.ProtoLens.FieldDescriptor CrdtScalar
        stringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringValue")) ::
              Data.ProtoLens.FieldDescriptor CrdtScalar
        bytesValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesValue")) ::
              Data.ProtoLens.FieldDescriptor CrdtScalar
        nullValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "null_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.NullValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nullValue")) ::
              Data.ProtoLens.FieldDescriptor CrdtScalar
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, boolValue__field_descriptor),
           (Data.ProtoLens.Tag 2, integerValue__field_descriptor),
           (Data.ProtoLens.Tag 3, numberValue__field_descriptor),
           (Data.ProtoLens.Tag 4, stringValue__field_descriptor),
           (Data.ProtoLens.Tag 5, bytesValue__field_descriptor),
           (Data.ProtoLens.Tag 6, nullValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtScalar'_unknownFields
        (\ x__ y__ -> x__ {_CrdtScalar'_unknownFields = y__})
  defMessage
    = CrdtScalar'_constructor
        {_CrdtScalar'kind = Prelude.Nothing,
         _CrdtScalar'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtScalar -> Data.ProtoLens.Encoding.Bytes.Parser CrdtScalar
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bool_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"boolValue") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToSignedInt64
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "integer_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"integerValue") y x)
                        25
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "number_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"numberValue") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "string_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringValue") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "bytes_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesValue") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "null_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nullValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CrdtScalar"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kind") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (CrdtScalar'BoolValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (CrdtScalar'IntegerValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Data.ProtoLens.Encoding.Bytes.signedInt64ToWord v)
                (Prelude.Just (CrdtScalar'NumberValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 25)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed64
                          Data.ProtoLens.Encoding.Bytes.doubleToWord v)
                (Prelude.Just (CrdtScalar'StringValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8 v)
                (Prelude.Just (CrdtScalar'BytesValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (CrdtScalar'NullValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CrdtScalar where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtScalar'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CrdtScalar'kind x__) ())
instance Control.DeepSeq.NFData CrdtScalar'Kind where
  rnf (CrdtScalar'BoolValue x__) = Control.DeepSeq.rnf x__
  rnf (CrdtScalar'IntegerValue x__) = Control.DeepSeq.rnf x__
  rnf (CrdtScalar'NumberValue x__) = Control.DeepSeq.rnf x__
  rnf (CrdtScalar'StringValue x__) = Control.DeepSeq.rnf x__
  rnf (CrdtScalar'BytesValue x__) = Control.DeepSeq.rnf x__
  rnf (CrdtScalar'NullValue x__) = Control.DeepSeq.rnf x__
_CrdtScalar'BoolValue ::
  Data.ProtoLens.Prism.Prism' CrdtScalar'Kind Prelude.Bool
_CrdtScalar'BoolValue
  = Data.ProtoLens.Prism.prism'
      CrdtScalar'BoolValue
      (\ p__
         -> case p__ of
              (CrdtScalar'BoolValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtScalar'IntegerValue ::
  Data.ProtoLens.Prism.Prism' CrdtScalar'Kind Data.Int.Int64
_CrdtScalar'IntegerValue
  = Data.ProtoLens.Prism.prism'
      CrdtScalar'IntegerValue
      (\ p__
         -> case p__ of
              (CrdtScalar'IntegerValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtScalar'NumberValue ::
  Data.ProtoLens.Prism.Prism' CrdtScalar'Kind Prelude.Double
_CrdtScalar'NumberValue
  = Data.ProtoLens.Prism.prism'
      CrdtScalar'NumberValue
      (\ p__
         -> case p__ of
              (CrdtScalar'NumberValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtScalar'StringValue ::
  Data.ProtoLens.Prism.Prism' CrdtScalar'Kind Data.Text.Text
_CrdtScalar'StringValue
  = Data.ProtoLens.Prism.prism'
      CrdtScalar'StringValue
      (\ p__
         -> case p__ of
              (CrdtScalar'StringValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtScalar'BytesValue ::
  Data.ProtoLens.Prism.Prism' CrdtScalar'Kind Data.ByteString.ByteString
_CrdtScalar'BytesValue
  = Data.ProtoLens.Prism.prism'
      CrdtScalar'BytesValue
      (\ p__
         -> case p__ of
              (CrdtScalar'BytesValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtScalar'NullValue ::
  Data.ProtoLens.Prism.Prism' CrdtScalar'Kind Proto.Google.Protobuf.Struct.NullValue
_CrdtScalar'NullValue
  = Data.ProtoLens.Prism.prism'
      CrdtScalar'NullValue
      (\ p__
         -> case p__ of
              (CrdtScalar'NullValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.text' @:: Lens' CrdtText Data.Text.Text@
         * 'Proto.Oll.Document_Fields.marks' @:: Lens' CrdtText [CrdtTextMark]@
         * 'Proto.Oll.Document_Fields.vec'marks' @:: Lens' CrdtText (Data.Vector.Vector CrdtTextMark)@ -}
data CrdtText
  = CrdtText'_constructor {_CrdtText'text :: !Data.Text.Text,
                           _CrdtText'marks :: !(Data.Vector.Vector CrdtTextMark),
                           _CrdtText'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtText where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CrdtText "text" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtText'text (\ x__ y__ -> x__ {_CrdtText'text = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtText "marks" [CrdtTextMark] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtText'marks (\ x__ y__ -> x__ {_CrdtText'marks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CrdtText "vec'marks" (Data.Vector.Vector CrdtTextMark) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtText'marks (\ x__ y__ -> x__ {_CrdtText'marks = y__}))
        Prelude.id
instance Data.ProtoLens.Message CrdtText where
  messageName _ = Data.Text.pack "oll.protocol.CrdtText"
  packedMessageDescriptor _
    = "\n\
      \\bCrdtText\DC2\DC2\n\
      \\EOTtext\CAN\SOH \SOH(\tR\EOTtext\DC20\n\
      \\ENQmarks\CAN\STX \ETX(\v2\SUB.oll.protocol.CrdtTextMarkR\ENQmarks"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        text__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"text")) ::
              Data.ProtoLens.FieldDescriptor CrdtText
        marks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "marks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtTextMark)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"marks")) ::
              Data.ProtoLens.FieldDescriptor CrdtText
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, text__field_descriptor),
           (Data.ProtoLens.Tag 2, marks__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtText'_unknownFields
        (\ x__ y__ -> x__ {_CrdtText'_unknownFields = y__})
  defMessage
    = CrdtText'_constructor
        {_CrdtText'text = Data.ProtoLens.fieldDefault,
         _CrdtText'marks = Data.Vector.Generic.empty,
         _CrdtText'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtText
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CrdtTextMark
             -> Data.ProtoLens.Encoding.Bytes.Parser CrdtText
        loop x mutable'marks
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'marks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'marks)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'marks") frozen'marks x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "text"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"text") y x)
                                  mutable'marks
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "marks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'marks y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'marks
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'marks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'marks)
          "CrdtText"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"text") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'marks") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CrdtText where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtText'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CrdtText'text x__)
                (Control.DeepSeq.deepseq (_CrdtText'marks x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.startScalar' @:: Lens' CrdtTextMark Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.endScalar' @:: Lens' CrdtTextMark Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.name' @:: Lens' CrdtTextMark Data.Text.Text@
         * 'Proto.Oll.Document_Fields.value' @:: Lens' CrdtTextMark CrdtScalar@
         * 'Proto.Oll.Document_Fields.maybe'value' @:: Lens' CrdtTextMark (Prelude.Maybe CrdtScalar)@ -}
data CrdtTextMark
  = CrdtTextMark'_constructor {_CrdtTextMark'startScalar :: !Data.Word.Word64,
                               _CrdtTextMark'endScalar :: !Data.Word.Word64,
                               _CrdtTextMark'name :: !Data.Text.Text,
                               _CrdtTextMark'value :: !(Prelude.Maybe CrdtScalar),
                               _CrdtTextMark'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtTextMark where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CrdtTextMark "startScalar" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTextMark'startScalar
           (\ x__ y__ -> x__ {_CrdtTextMark'startScalar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtTextMark "endScalar" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTextMark'endScalar
           (\ x__ y__ -> x__ {_CrdtTextMark'endScalar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtTextMark "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTextMark'name (\ x__ y__ -> x__ {_CrdtTextMark'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtTextMark "value" CrdtScalar where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTextMark'value (\ x__ y__ -> x__ {_CrdtTextMark'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CrdtTextMark "maybe'value" (Prelude.Maybe CrdtScalar) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTextMark'value (\ x__ y__ -> x__ {_CrdtTextMark'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message CrdtTextMark where
  messageName _ = Data.Text.pack "oll.protocol.CrdtTextMark"
  packedMessageDescriptor _
    = "\n\
      \\fCrdtTextMark\DC2!\n\
      \\fstart_scalar\CAN\SOH \SOH(\EOTR\vstartScalar\DC2\GS\n\
      \\n\
      \end_scalar\CAN\STX \SOH(\EOTR\tendScalar\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\tR\EOTname\DC2.\n\
      \\ENQvalue\CAN\EOT \SOH(\v2\CAN.oll.protocol.CrdtScalarR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        startScalar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_scalar"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startScalar")) ::
              Data.ProtoLens.FieldDescriptor CrdtTextMark
        endScalar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_scalar"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endScalar")) ::
              Data.ProtoLens.FieldDescriptor CrdtTextMark
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor CrdtTextMark
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtScalar)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor CrdtTextMark
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, startScalar__field_descriptor),
           (Data.ProtoLens.Tag 2, endScalar__field_descriptor),
           (Data.ProtoLens.Tag 3, name__field_descriptor),
           (Data.ProtoLens.Tag 4, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtTextMark'_unknownFields
        (\ x__ y__ -> x__ {_CrdtTextMark'_unknownFields = y__})
  defMessage
    = CrdtTextMark'_constructor
        {_CrdtTextMark'startScalar = Data.ProtoLens.fieldDefault,
         _CrdtTextMark'endScalar = Data.ProtoLens.fieldDefault,
         _CrdtTextMark'name = Data.ProtoLens.fieldDefault,
         _CrdtTextMark'value = Prelude.Nothing,
         _CrdtTextMark'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtTextMark -> Data.ProtoLens.Encoding.Bytes.Parser CrdtTextMark
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "start_scalar"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startScalar") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "end_scalar"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endScalar") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CrdtTextMark"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"startScalar") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endScalar") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CrdtTextMark where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtTextMark'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CrdtTextMark'startScalar x__)
                (Control.DeepSeq.deepseq
                   (_CrdtTextMark'endScalar x__)
                   (Control.DeepSeq.deepseq
                      (_CrdtTextMark'name x__)
                      (Control.DeepSeq.deepseq (_CrdtTextMark'value x__) ()))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.nodes' @:: Lens' CrdtTree [CrdtTreeNode]@
         * 'Proto.Oll.Document_Fields.vec'nodes' @:: Lens' CrdtTree (Data.Vector.Vector CrdtTreeNode)@ -}
data CrdtTree
  = CrdtTree'_constructor {_CrdtTree'nodes :: !(Data.Vector.Vector CrdtTreeNode),
                           _CrdtTree'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtTree where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CrdtTree "nodes" [CrdtTreeNode] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTree'nodes (\ x__ y__ -> x__ {_CrdtTree'nodes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CrdtTree "vec'nodes" (Data.Vector.Vector CrdtTreeNode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTree'nodes (\ x__ y__ -> x__ {_CrdtTree'nodes = y__}))
        Prelude.id
instance Data.ProtoLens.Message CrdtTree where
  messageName _ = Data.Text.pack "oll.protocol.CrdtTree"
  packedMessageDescriptor _
    = "\n\
      \\bCrdtTree\DC20\n\
      \\ENQnodes\CAN\SOH \ETX(\v2\SUB.oll.protocol.CrdtTreeNodeR\ENQnodes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nodes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nodes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtTreeNode)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"nodes")) ::
              Data.ProtoLens.FieldDescriptor CrdtTree
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, nodes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtTree'_unknownFields
        (\ x__ y__ -> x__ {_CrdtTree'_unknownFields = y__})
  defMessage
    = CrdtTree'_constructor
        {_CrdtTree'nodes = Data.Vector.Generic.empty,
         _CrdtTree'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtTree
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CrdtTreeNode
             -> Data.ProtoLens.Encoding.Bytes.Parser CrdtTree
        loop x mutable'nodes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'nodes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'nodes)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'nodes") frozen'nodes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "nodes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'nodes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'nodes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'nodes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'nodes)
          "CrdtTree"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'nodes") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CrdtTree where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtTree'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CrdtTree'nodes x__) ())
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.nodeId' @:: Lens' CrdtTreeNode Data.Text.Text@
         * 'Proto.Oll.Document_Fields.parentId' @:: Lens' CrdtTreeNode Data.Text.Text@
         * 'Proto.Oll.Document_Fields.maybe'parentId' @:: Lens' CrdtTreeNode (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Document_Fields.indexInParent' @:: Lens' CrdtTreeNode Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.maybe'indexInParent' @:: Lens' CrdtTreeNode (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Oll.Document_Fields.metadata' @:: Lens' CrdtTreeNode (Data.Map.Map Data.Text.Text CrdtScalar)@ -}
data CrdtTreeNode
  = CrdtTreeNode'_constructor {_CrdtTreeNode'nodeId :: !Data.Text.Text,
                               _CrdtTreeNode'parentId :: !(Prelude.Maybe Data.Text.Text),
                               _CrdtTreeNode'indexInParent :: !(Prelude.Maybe Data.Word.Word64),
                               _CrdtTreeNode'metadata :: !(Data.Map.Map Data.Text.Text CrdtScalar),
                               _CrdtTreeNode'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtTreeNode where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CrdtTreeNode "nodeId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTreeNode'nodeId
           (\ x__ y__ -> x__ {_CrdtTreeNode'nodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtTreeNode "parentId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTreeNode'parentId
           (\ x__ y__ -> x__ {_CrdtTreeNode'parentId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CrdtTreeNode "maybe'parentId" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTreeNode'parentId
           (\ x__ y__ -> x__ {_CrdtTreeNode'parentId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtTreeNode "indexInParent" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTreeNode'indexInParent
           (\ x__ y__ -> x__ {_CrdtTreeNode'indexInParent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CrdtTreeNode "maybe'indexInParent" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTreeNode'indexInParent
           (\ x__ y__ -> x__ {_CrdtTreeNode'indexInParent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtTreeNode "metadata" (Data.Map.Map Data.Text.Text CrdtScalar) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTreeNode'metadata
           (\ x__ y__ -> x__ {_CrdtTreeNode'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message CrdtTreeNode where
  messageName _ = Data.Text.pack "oll.protocol.CrdtTreeNode"
  packedMessageDescriptor _
    = "\n\
      \\fCrdtTreeNode\DC2\ETB\n\
      \\anode_id\CAN\SOH \SOH(\tR\ACKnodeId\DC2 \n\
      \\tparent_id\CAN\STX \SOH(\tH\NULR\bparentId\136\SOH\SOH\DC2+\n\
      \\SIindex_in_parent\CAN\ETX \SOH(\EOTH\SOHR\rindexInParent\136\SOH\SOH\DC2D\n\
      \\bmetadata\CAN\EOT \ETX(\v2(.oll.protocol.CrdtTreeNode.MetadataEntryR\bmetadata\SUBU\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2.\n\
      \\ENQvalue\CAN\STX \SOH(\v2\CAN.oll.protocol.CrdtScalarR\ENQvalue:\STX8\SOHB\f\n\
      \\n\
      \_parent_idB\DC2\n\
      \\DLE_index_in_parent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"nodeId")) ::
              Data.ProtoLens.FieldDescriptor CrdtTreeNode
        parentId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'parentId")) ::
              Data.ProtoLens.FieldDescriptor CrdtTreeNode
        indexInParent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index_in_parent"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'indexInParent")) ::
              Data.ProtoLens.FieldDescriptor CrdtTreeNode
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtTreeNode'MetadataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor CrdtTreeNode
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nodeId__field_descriptor),
           (Data.ProtoLens.Tag 2, parentId__field_descriptor),
           (Data.ProtoLens.Tag 3, indexInParent__field_descriptor),
           (Data.ProtoLens.Tag 4, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtTreeNode'_unknownFields
        (\ x__ y__ -> x__ {_CrdtTreeNode'_unknownFields = y__})
  defMessage
    = CrdtTreeNode'_constructor
        {_CrdtTreeNode'nodeId = Data.ProtoLens.fieldDefault,
         _CrdtTreeNode'parentId = Prelude.Nothing,
         _CrdtTreeNode'indexInParent = Prelude.Nothing,
         _CrdtTreeNode'metadata = Data.Map.empty,
         _CrdtTreeNode'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtTreeNode -> Data.ProtoLens.Encoding.Bytes.Parser CrdtTreeNode
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "node_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nodeId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "parent_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"parentId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index_in_parent"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"indexInParent") y x)
                        34
                          -> do !(entry :: CrdtTreeNode'MetadataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                            (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                Data.ProtoLens.Encoding.Bytes.isolate
                                                                                  (Prelude.fromIntegral
                                                                                     len)
                                                                                  Data.ProtoLens.parseMessage)
                                                                            "metadata"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"metadata")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CrdtTreeNode"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"nodeId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'parentId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'indexInParent") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (Data.Monoid.mconcat
                         (Prelude.map
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                             (Data.ProtoLens.defMessage ::
                                                CrdtTreeNode'MetadataEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x))))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CrdtTreeNode where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtTreeNode'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CrdtTreeNode'nodeId x__)
                (Control.DeepSeq.deepseq
                   (_CrdtTreeNode'parentId x__)
                   (Control.DeepSeq.deepseq
                      (_CrdtTreeNode'indexInParent x__)
                      (Control.DeepSeq.deepseq (_CrdtTreeNode'metadata x__) ()))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.key' @:: Lens' CrdtTreeNode'MetadataEntry Data.Text.Text@
         * 'Proto.Oll.Document_Fields.value' @:: Lens' CrdtTreeNode'MetadataEntry CrdtScalar@
         * 'Proto.Oll.Document_Fields.maybe'value' @:: Lens' CrdtTreeNode'MetadataEntry (Prelude.Maybe CrdtScalar)@ -}
data CrdtTreeNode'MetadataEntry
  = CrdtTreeNode'MetadataEntry'_constructor {_CrdtTreeNode'MetadataEntry'key :: !Data.Text.Text,
                                             _CrdtTreeNode'MetadataEntry'value :: !(Prelude.Maybe CrdtScalar),
                                             _CrdtTreeNode'MetadataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtTreeNode'MetadataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CrdtTreeNode'MetadataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTreeNode'MetadataEntry'key
           (\ x__ y__ -> x__ {_CrdtTreeNode'MetadataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtTreeNode'MetadataEntry "value" CrdtScalar where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTreeNode'MetadataEntry'value
           (\ x__ y__ -> x__ {_CrdtTreeNode'MetadataEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CrdtTreeNode'MetadataEntry "maybe'value" (Prelude.Maybe CrdtScalar) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtTreeNode'MetadataEntry'value
           (\ x__ y__ -> x__ {_CrdtTreeNode'MetadataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message CrdtTreeNode'MetadataEntry where
  messageName _
    = Data.Text.pack "oll.protocol.CrdtTreeNode.MetadataEntry"
  packedMessageDescriptor _
    = "\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2.\n\
      \\ENQvalue\CAN\STX \SOH(\v2\CAN.oll.protocol.CrdtScalarR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor CrdtTreeNode'MetadataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtScalar)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor CrdtTreeNode'MetadataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtTreeNode'MetadataEntry'_unknownFields
        (\ x__ y__
           -> x__ {_CrdtTreeNode'MetadataEntry'_unknownFields = y__})
  defMessage
    = CrdtTreeNode'MetadataEntry'_constructor
        {_CrdtTreeNode'MetadataEntry'key = Data.ProtoLens.fieldDefault,
         _CrdtTreeNode'MetadataEntry'value = Prelude.Nothing,
         _CrdtTreeNode'MetadataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrdtTreeNode'MetadataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser CrdtTreeNode'MetadataEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MetadataEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CrdtTreeNode'MetadataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtTreeNode'MetadataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CrdtTreeNode'MetadataEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_CrdtTreeNode'MetadataEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.maybe'kind' @:: Lens' CrdtValue (Prelude.Maybe CrdtValue'Kind)@
         * 'Proto.Oll.Document_Fields.maybe'scalar' @:: Lens' CrdtValue (Prelude.Maybe CrdtScalar)@
         * 'Proto.Oll.Document_Fields.scalar' @:: Lens' CrdtValue CrdtScalar@
         * 'Proto.Oll.Document_Fields.maybe'text' @:: Lens' CrdtValue (Prelude.Maybe CrdtText)@
         * 'Proto.Oll.Document_Fields.text' @:: Lens' CrdtValue CrdtText@
         * 'Proto.Oll.Document_Fields.maybe'list' @:: Lens' CrdtValue (Prelude.Maybe CrdtList)@
         * 'Proto.Oll.Document_Fields.list' @:: Lens' CrdtValue CrdtList@
         * 'Proto.Oll.Document_Fields.maybe'map' @:: Lens' CrdtValue (Prelude.Maybe CrdtMap)@
         * 'Proto.Oll.Document_Fields.map' @:: Lens' CrdtValue CrdtMap@
         * 'Proto.Oll.Document_Fields.maybe'tree' @:: Lens' CrdtValue (Prelude.Maybe CrdtTree)@
         * 'Proto.Oll.Document_Fields.tree' @:: Lens' CrdtValue CrdtTree@
         * 'Proto.Oll.Document_Fields.maybe'counter' @:: Lens' CrdtValue (Prelude.Maybe CrdtCounter)@
         * 'Proto.Oll.Document_Fields.counter' @:: Lens' CrdtValue CrdtCounter@ -}
data CrdtValue
  = CrdtValue'_constructor {_CrdtValue'kind :: !(Prelude.Maybe CrdtValue'Kind),
                            _CrdtValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrdtValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CrdtValue'Kind
  = CrdtValue'Scalar !CrdtScalar |
    CrdtValue'Text !CrdtText |
    CrdtValue'List !CrdtList |
    CrdtValue'Map !CrdtMap |
    CrdtValue'Tree !CrdtTree |
    CrdtValue'Counter !CrdtCounter
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CrdtValue "maybe'kind" (Prelude.Maybe CrdtValue'Kind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrdtValue "maybe'scalar" (Prelude.Maybe CrdtScalar) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtValue'Scalar x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtValue'Scalar y__))
instance Data.ProtoLens.Field.HasField CrdtValue "scalar" CrdtScalar where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtValue'Scalar x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtValue'Scalar y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtValue "maybe'text" (Prelude.Maybe CrdtText) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtValue'Text x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtValue'Text y__))
instance Data.ProtoLens.Field.HasField CrdtValue "text" CrdtText where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtValue'Text x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtValue'Text y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtValue "maybe'list" (Prelude.Maybe CrdtList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtValue'List x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtValue'List y__))
instance Data.ProtoLens.Field.HasField CrdtValue "list" CrdtList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtValue'List x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtValue'List y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtValue "maybe'map" (Prelude.Maybe CrdtMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtValue'Map x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtValue'Map y__))
instance Data.ProtoLens.Field.HasField CrdtValue "map" CrdtMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtValue'Map x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtValue'Map y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtValue "maybe'tree" (Prelude.Maybe CrdtTree) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtValue'Tree x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtValue'Tree y__))
instance Data.ProtoLens.Field.HasField CrdtValue "tree" CrdtTree where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtValue'Tree x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtValue'Tree y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CrdtValue "maybe'counter" (Prelude.Maybe CrdtCounter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CrdtValue'Counter x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CrdtValue'Counter y__))
instance Data.ProtoLens.Field.HasField CrdtValue "counter" CrdtCounter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrdtValue'kind (\ x__ y__ -> x__ {_CrdtValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CrdtValue'Counter x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CrdtValue'Counter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message CrdtValue where
  messageName _ = Data.Text.pack "oll.protocol.CrdtValue"
  packedMessageDescriptor _
    = "\n\
      \\tCrdtValue\DC22\n\
      \\ACKscalar\CAN\SOH \SOH(\v2\CAN.oll.protocol.CrdtScalarH\NULR\ACKscalar\DC2,\n\
      \\EOTtext\CAN\STX \SOH(\v2\SYN.oll.protocol.CrdtTextH\NULR\EOTtext\DC2,\n\
      \\EOTlist\CAN\ETX \SOH(\v2\SYN.oll.protocol.CrdtListH\NULR\EOTlist\DC2)\n\
      \\ETXmap\CAN\EOT \SOH(\v2\NAK.oll.protocol.CrdtMapH\NULR\ETXmap\DC2,\n\
      \\EOTtree\CAN\ENQ \SOH(\v2\SYN.oll.protocol.CrdtTreeH\NULR\EOTtree\DC25\n\
      \\acounter\CAN\ACK \SOH(\v2\EM.oll.protocol.CrdtCounterH\NULR\acounterB\ACK\n\
      \\EOTkind"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        scalar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scalar"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtScalar)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'scalar")) ::
              Data.ProtoLens.FieldDescriptor CrdtValue
        text__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtText)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'text")) ::
              Data.ProtoLens.FieldDescriptor CrdtValue
        list__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'list")) ::
              Data.ProtoLens.FieldDescriptor CrdtValue
        map__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'map")) ::
              Data.ProtoLens.FieldDescriptor CrdtValue
        tree__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tree"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtTree)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tree")) ::
              Data.ProtoLens.FieldDescriptor CrdtValue
        counter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "counter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtCounter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'counter")) ::
              Data.ProtoLens.FieldDescriptor CrdtValue
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, scalar__field_descriptor),
           (Data.ProtoLens.Tag 2, text__field_descriptor),
           (Data.ProtoLens.Tag 3, list__field_descriptor),
           (Data.ProtoLens.Tag 4, map__field_descriptor),
           (Data.ProtoLens.Tag 5, tree__field_descriptor),
           (Data.ProtoLens.Tag 6, counter__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrdtValue'_unknownFields
        (\ x__ y__ -> x__ {_CrdtValue'_unknownFields = y__})
  defMessage
    = CrdtValue'_constructor
        {_CrdtValue'kind = Prelude.Nothing, _CrdtValue'_unknownFields = []}
  parseMessage
    = let
        loop :: CrdtValue -> Data.ProtoLens.Encoding.Bytes.Parser CrdtValue
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "scalar"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"scalar") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "text"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"text") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"list") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "map"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"map") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tree"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tree") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "counter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"counter") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CrdtValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kind") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (CrdtValue'Scalar v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtValue'Text v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtValue'List v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtValue'Map v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtValue'Tree v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (CrdtValue'Counter v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CrdtValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrdtValue'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CrdtValue'kind x__) ())
instance Control.DeepSeq.NFData CrdtValue'Kind where
  rnf (CrdtValue'Scalar x__) = Control.DeepSeq.rnf x__
  rnf (CrdtValue'Text x__) = Control.DeepSeq.rnf x__
  rnf (CrdtValue'List x__) = Control.DeepSeq.rnf x__
  rnf (CrdtValue'Map x__) = Control.DeepSeq.rnf x__
  rnf (CrdtValue'Tree x__) = Control.DeepSeq.rnf x__
  rnf (CrdtValue'Counter x__) = Control.DeepSeq.rnf x__
_CrdtValue'Scalar ::
  Data.ProtoLens.Prism.Prism' CrdtValue'Kind CrdtScalar
_CrdtValue'Scalar
  = Data.ProtoLens.Prism.prism'
      CrdtValue'Scalar
      (\ p__
         -> case p__ of
              (CrdtValue'Scalar p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtValue'Text ::
  Data.ProtoLens.Prism.Prism' CrdtValue'Kind CrdtText
_CrdtValue'Text
  = Data.ProtoLens.Prism.prism'
      CrdtValue'Text
      (\ p__
         -> case p__ of
              (CrdtValue'Text p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtValue'List ::
  Data.ProtoLens.Prism.Prism' CrdtValue'Kind CrdtList
_CrdtValue'List
  = Data.ProtoLens.Prism.prism'
      CrdtValue'List
      (\ p__
         -> case p__ of
              (CrdtValue'List p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtValue'Map ::
  Data.ProtoLens.Prism.Prism' CrdtValue'Kind CrdtMap
_CrdtValue'Map
  = Data.ProtoLens.Prism.prism'
      CrdtValue'Map
      (\ p__
         -> case p__ of
              (CrdtValue'Map p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtValue'Tree ::
  Data.ProtoLens.Prism.Prism' CrdtValue'Kind CrdtTree
_CrdtValue'Tree
  = Data.ProtoLens.Prism.prism'
      CrdtValue'Tree
      (\ p__
         -> case p__ of
              (CrdtValue'Tree p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CrdtValue'Counter ::
  Data.ProtoLens.Prism.Prism' CrdtValue'Kind CrdtCounter
_CrdtValue'Counter
  = Data.ProtoLens.Prism.prism'
      CrdtValue'Counter
      (\ p__
         -> case p__ of
              (CrdtValue'Counter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.path' @:: Lens' CreateDirectory DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'path' @:: Lens' CreateDirectory (Prelude.Maybe DocumentPath)@ -}
data CreateDirectory
  = CreateDirectory'_constructor {_CreateDirectory'path :: !(Prelude.Maybe DocumentPath),
                                  _CreateDirectory'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CreateDirectory where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CreateDirectory "path" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateDirectory'path
           (\ x__ y__ -> x__ {_CreateDirectory'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CreateDirectory "maybe'path" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateDirectory'path
           (\ x__ y__ -> x__ {_CreateDirectory'path = y__}))
        Prelude.id
instance Data.ProtoLens.Message CreateDirectory where
  messageName _ = Data.Text.pack "oll.protocol.CreateDirectory"
  packedMessageDescriptor _
    = "\n\
      \\SICreateDirectory\DC2.\n\
      \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor CreateDirectory
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CreateDirectory'_unknownFields
        (\ x__ y__ -> x__ {_CreateDirectory'_unknownFields = y__})
  defMessage
    = CreateDirectory'_constructor
        {_CreateDirectory'path = Prelude.Nothing,
         _CreateDirectory'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CreateDirectory
          -> Data.ProtoLens.Encoding.Bytes.Parser CreateDirectory
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CreateDirectory"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CreateDirectory where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CreateDirectory'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CreateDirectory'path x__) ())
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.path' @:: Lens' CreateDocument DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'path' @:: Lens' CreateDocument (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.mediaType' @:: Lens' CreateDocument Data.Text.Text@
         * 'Proto.Oll.Document_Fields.content' @:: Lens' CreateDocument Data.Text.Text@ -}
data CreateDocument
  = CreateDocument'_constructor {_CreateDocument'path :: !(Prelude.Maybe DocumentPath),
                                 _CreateDocument'mediaType :: !Data.Text.Text,
                                 _CreateDocument'content :: !Data.Text.Text,
                                 _CreateDocument'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CreateDocument where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CreateDocument "path" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateDocument'path
           (\ x__ y__ -> x__ {_CreateDocument'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CreateDocument "maybe'path" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateDocument'path
           (\ x__ y__ -> x__ {_CreateDocument'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateDocument "mediaType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateDocument'mediaType
           (\ x__ y__ -> x__ {_CreateDocument'mediaType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CreateDocument "content" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CreateDocument'content
           (\ x__ y__ -> x__ {_CreateDocument'content = y__}))
        Prelude.id
instance Data.ProtoLens.Message CreateDocument where
  messageName _ = Data.Text.pack "oll.protocol.CreateDocument"
  packedMessageDescriptor _
    = "\n\
      \\SOCreateDocument\DC2.\n\
      \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2\GS\n\
      \\n\
      \media_type\CAN\STX \SOH(\tR\tmediaType\DC2\CAN\n\
      \\acontent\CAN\ETX \SOH(\tR\acontent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor CreateDocument
        mediaType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "media_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mediaType")) ::
              Data.ProtoLens.FieldDescriptor CreateDocument
        content__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"content")) ::
              Data.ProtoLens.FieldDescriptor CreateDocument
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, mediaType__field_descriptor),
           (Data.ProtoLens.Tag 3, content__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CreateDocument'_unknownFields
        (\ x__ y__ -> x__ {_CreateDocument'_unknownFields = y__})
  defMessage
    = CreateDocument'_constructor
        {_CreateDocument'path = Prelude.Nothing,
         _CreateDocument'mediaType = Data.ProtoLens.fieldDefault,
         _CreateDocument'content = Data.ProtoLens.fieldDefault,
         _CreateDocument'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CreateDocument
          -> Data.ProtoLens.Encoding.Bytes.Parser CreateDocument
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "media_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mediaType") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "content"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"content") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CreateDocument"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"mediaType") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"content") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CreateDocument where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CreateDocument'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CreateDocument'path x__)
                (Control.DeepSeq.deepseq
                   (_CreateDocument'mediaType x__)
                   (Control.DeepSeq.deepseq (_CreateDocument'content x__) ())))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.path' @:: Lens' DeleteNode DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'path' @:: Lens' DeleteNode (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.recursive' @:: Lens' DeleteNode Prelude.Bool@ -}
data DeleteNode
  = DeleteNode'_constructor {_DeleteNode'path :: !(Prelude.Maybe DocumentPath),
                             _DeleteNode'recursive :: !Prelude.Bool,
                             _DeleteNode'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeleteNode where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DeleteNode "path" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteNode'path (\ x__ y__ -> x__ {_DeleteNode'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DeleteNode "maybe'path" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteNode'path (\ x__ y__ -> x__ {_DeleteNode'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DeleteNode "recursive" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DeleteNode'recursive
           (\ x__ y__ -> x__ {_DeleteNode'recursive = y__}))
        Prelude.id
instance Data.ProtoLens.Message DeleteNode where
  messageName _ = Data.Text.pack "oll.protocol.DeleteNode"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \DeleteNode\DC2.\n\
      \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2\FS\n\
      \\trecursive\CAN\STX \SOH(\bR\trecursive"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor DeleteNode
        recursive__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "recursive"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"recursive")) ::
              Data.ProtoLens.FieldDescriptor DeleteNode
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, recursive__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DeleteNode'_unknownFields
        (\ x__ y__ -> x__ {_DeleteNode'_unknownFields = y__})
  defMessage
    = DeleteNode'_constructor
        {_DeleteNode'path = Prelude.Nothing,
         _DeleteNode'recursive = Data.ProtoLens.fieldDefault,
         _DeleteNode'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DeleteNode -> Data.ProtoLens.Encoding.Bytes.Parser DeleteNode
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "recursive"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"recursive") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DeleteNode"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"recursive") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DeleteNode where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DeleteNode'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DeleteNode'path x__)
                (Control.DeepSeq.deepseq (_DeleteNode'recursive x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.metadata' @:: Lens' DirectoryTreeNode NodeMetadata@
         * 'Proto.Oll.Document_Fields.maybe'metadata' @:: Lens' DirectoryTreeNode (Prelude.Maybe NodeMetadata)@
         * 'Proto.Oll.Document_Fields.children' @:: Lens' DirectoryTreeNode [DirectoryTreeNode]@
         * 'Proto.Oll.Document_Fields.vec'children' @:: Lens' DirectoryTreeNode (Data.Vector.Vector DirectoryTreeNode)@ -}
data DirectoryTreeNode
  = DirectoryTreeNode'_constructor {_DirectoryTreeNode'metadata :: !(Prelude.Maybe NodeMetadata),
                                    _DirectoryTreeNode'children :: !(Data.Vector.Vector DirectoryTreeNode),
                                    _DirectoryTreeNode'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DirectoryTreeNode where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DirectoryTreeNode "metadata" NodeMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DirectoryTreeNode'metadata
           (\ x__ y__ -> x__ {_DirectoryTreeNode'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DirectoryTreeNode "maybe'metadata" (Prelude.Maybe NodeMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DirectoryTreeNode'metadata
           (\ x__ y__ -> x__ {_DirectoryTreeNode'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DirectoryTreeNode "children" [DirectoryTreeNode] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DirectoryTreeNode'children
           (\ x__ y__ -> x__ {_DirectoryTreeNode'children = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DirectoryTreeNode "vec'children" (Data.Vector.Vector DirectoryTreeNode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DirectoryTreeNode'children
           (\ x__ y__ -> x__ {_DirectoryTreeNode'children = y__}))
        Prelude.id
instance Data.ProtoLens.Message DirectoryTreeNode where
  messageName _ = Data.Text.pack "oll.protocol.DirectoryTreeNode"
  packedMessageDescriptor _
    = "\n\
      \\DC1DirectoryTreeNode\DC26\n\
      \\bmetadata\CAN\SOH \SOH(\v2\SUB.oll.protocol.NodeMetadataR\bmetadata\DC2;\n\
      \\bchildren\CAN\STX \ETX(\v2\US.oll.protocol.DirectoryTreeNodeR\bchildren"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NodeMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor DirectoryTreeNode
        children__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "children"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DirectoryTreeNode)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"children")) ::
              Data.ProtoLens.FieldDescriptor DirectoryTreeNode
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metadata__field_descriptor),
           (Data.ProtoLens.Tag 2, children__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DirectoryTreeNode'_unknownFields
        (\ x__ y__ -> x__ {_DirectoryTreeNode'_unknownFields = y__})
  defMessage
    = DirectoryTreeNode'_constructor
        {_DirectoryTreeNode'metadata = Prelude.Nothing,
         _DirectoryTreeNode'children = Data.Vector.Generic.empty,
         _DirectoryTreeNode'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DirectoryTreeNode
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DirectoryTreeNode
             -> Data.ProtoLens.Encoding.Bytes.Parser DirectoryTreeNode
        loop x mutable'children
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'children <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'children)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'children") frozen'children x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                                  mutable'children
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "children"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'children y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'children
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'children <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'children)
          "DirectoryTreeNode"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metadata") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'children") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DirectoryTreeNode where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DirectoryTreeNode'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DirectoryTreeNode'metadata x__)
                (Control.DeepSeq.deepseq (_DirectoryTreeNode'children x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.maybe'mutation' @:: Lens' DocumentMutation (Prelude.Maybe DocumentMutation'Mutation)@
         * 'Proto.Oll.Document_Fields.maybe'createDirectory' @:: Lens' DocumentMutation (Prelude.Maybe CreateDirectory)@
         * 'Proto.Oll.Document_Fields.createDirectory' @:: Lens' DocumentMutation CreateDirectory@
         * 'Proto.Oll.Document_Fields.maybe'createDocument' @:: Lens' DocumentMutation (Prelude.Maybe CreateDocument)@
         * 'Proto.Oll.Document_Fields.createDocument' @:: Lens' DocumentMutation CreateDocument@
         * 'Proto.Oll.Document_Fields.maybe'replaceDocument' @:: Lens' DocumentMutation (Prelude.Maybe ReplaceDocument)@
         * 'Proto.Oll.Document_Fields.replaceDocument' @:: Lens' DocumentMutation ReplaceDocument@
         * 'Proto.Oll.Document_Fields.maybe'spliceDocumentText' @:: Lens' DocumentMutation (Prelude.Maybe SpliceDocumentText)@
         * 'Proto.Oll.Document_Fields.spliceDocumentText' @:: Lens' DocumentMutation SpliceDocumentText@
         * 'Proto.Oll.Document_Fields.maybe'deleteNode' @:: Lens' DocumentMutation (Prelude.Maybe DeleteNode)@
         * 'Proto.Oll.Document_Fields.deleteNode' @:: Lens' DocumentMutation DeleteNode@
         * 'Proto.Oll.Document_Fields.maybe'moveNode' @:: Lens' DocumentMutation (Prelude.Maybe MoveNode)@
         * 'Proto.Oll.Document_Fields.moveNode' @:: Lens' DocumentMutation MoveNode@
         * 'Proto.Oll.Document_Fields.maybe'applyCrdtOperations' @:: Lens' DocumentMutation (Prelude.Maybe ApplyCrdtOperations)@
         * 'Proto.Oll.Document_Fields.applyCrdtOperations' @:: Lens' DocumentMutation ApplyCrdtOperations@ -}
data DocumentMutation
  = DocumentMutation'_constructor {_DocumentMutation'mutation :: !(Prelude.Maybe DocumentMutation'Mutation),
                                   _DocumentMutation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DocumentMutation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data DocumentMutation'Mutation
  = DocumentMutation'CreateDirectory !CreateDirectory |
    DocumentMutation'CreateDocument !CreateDocument |
    DocumentMutation'ReplaceDocument !ReplaceDocument |
    DocumentMutation'SpliceDocumentText !SpliceDocumentText |
    DocumentMutation'DeleteNode !DeleteNode |
    DocumentMutation'MoveNode !MoveNode |
    DocumentMutation'ApplyCrdtOperations !ApplyCrdtOperations
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField DocumentMutation "maybe'mutation" (Prelude.Maybe DocumentMutation'Mutation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DocumentMutation "maybe'createDirectory" (Prelude.Maybe CreateDirectory) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DocumentMutation'CreateDirectory x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DocumentMutation'CreateDirectory y__))
instance Data.ProtoLens.Field.HasField DocumentMutation "createDirectory" CreateDirectory where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DocumentMutation'CreateDirectory x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DocumentMutation'CreateDirectory y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DocumentMutation "maybe'createDocument" (Prelude.Maybe CreateDocument) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DocumentMutation'CreateDocument x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DocumentMutation'CreateDocument y__))
instance Data.ProtoLens.Field.HasField DocumentMutation "createDocument" CreateDocument where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DocumentMutation'CreateDocument x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DocumentMutation'CreateDocument y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DocumentMutation "maybe'replaceDocument" (Prelude.Maybe ReplaceDocument) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DocumentMutation'ReplaceDocument x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DocumentMutation'ReplaceDocument y__))
instance Data.ProtoLens.Field.HasField DocumentMutation "replaceDocument" ReplaceDocument where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DocumentMutation'ReplaceDocument x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DocumentMutation'ReplaceDocument y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DocumentMutation "maybe'spliceDocumentText" (Prelude.Maybe SpliceDocumentText) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DocumentMutation'SpliceDocumentText x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DocumentMutation'SpliceDocumentText y__))
instance Data.ProtoLens.Field.HasField DocumentMutation "spliceDocumentText" SpliceDocumentText where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DocumentMutation'SpliceDocumentText x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DocumentMutation'SpliceDocumentText y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DocumentMutation "maybe'deleteNode" (Prelude.Maybe DeleteNode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DocumentMutation'DeleteNode x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DocumentMutation'DeleteNode y__))
instance Data.ProtoLens.Field.HasField DocumentMutation "deleteNode" DeleteNode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DocumentMutation'DeleteNode x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DocumentMutation'DeleteNode y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DocumentMutation "maybe'moveNode" (Prelude.Maybe MoveNode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DocumentMutation'MoveNode x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DocumentMutation'MoveNode y__))
instance Data.ProtoLens.Field.HasField DocumentMutation "moveNode" MoveNode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DocumentMutation'MoveNode x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DocumentMutation'MoveNode y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField DocumentMutation "maybe'applyCrdtOperations" (Prelude.Maybe ApplyCrdtOperations) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DocumentMutation'ApplyCrdtOperations x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DocumentMutation'ApplyCrdtOperations y__))
instance Data.ProtoLens.Field.HasField DocumentMutation "applyCrdtOperations" ApplyCrdtOperations where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentMutation'mutation
           (\ x__ y__ -> x__ {_DocumentMutation'mutation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DocumentMutation'ApplyCrdtOperations x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DocumentMutation'ApplyCrdtOperations y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message DocumentMutation where
  messageName _ = Data.Text.pack "oll.protocol.DocumentMutation"
  packedMessageDescriptor _
    = "\n\
      \\DLEDocumentMutation\DC2J\n\
      \\DLEcreate_directory\CAN\SOH \SOH(\v2\GS.oll.protocol.CreateDirectoryH\NULR\SIcreateDirectory\DC2G\n\
      \\SIcreate_document\CAN\STX \SOH(\v2\FS.oll.protocol.CreateDocumentH\NULR\SOcreateDocument\DC2J\n\
      \\DLEreplace_document\CAN\ETX \SOH(\v2\GS.oll.protocol.ReplaceDocumentH\NULR\SIreplaceDocument\DC2T\n\
      \\DC4splice_document_text\CAN\EOT \SOH(\v2 .oll.protocol.SpliceDocumentTextH\NULR\DC2spliceDocumentText\DC2;\n\
      \\vdelete_node\CAN\ENQ \SOH(\v2\CAN.oll.protocol.DeleteNodeH\NULR\n\
      \deleteNode\DC25\n\
      \\tmove_node\CAN\ACK \SOH(\v2\SYN.oll.protocol.MoveNodeH\NULR\bmoveNode\DC2W\n\
      \\NAKapply_crdt_operations\CAN\a \SOH(\v2!.oll.protocol.ApplyCrdtOperationsH\NULR\DC3applyCrdtOperationsB\n\
      \\n\
      \\bmutation"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        createDirectory__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_directory"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CreateDirectory)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createDirectory")) ::
              Data.ProtoLens.FieldDescriptor DocumentMutation
        createDocument__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "create_document"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CreateDocument)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createDocument")) ::
              Data.ProtoLens.FieldDescriptor DocumentMutation
        replaceDocument__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "replace_document"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ReplaceDocument)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'replaceDocument")) ::
              Data.ProtoLens.FieldDescriptor DocumentMutation
        spliceDocumentText__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "splice_document_text"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SpliceDocumentText)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'spliceDocumentText")) ::
              Data.ProtoLens.FieldDescriptor DocumentMutation
        deleteNode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delete_node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DeleteNode)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deleteNode")) ::
              Data.ProtoLens.FieldDescriptor DocumentMutation
        moveNode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "move_node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MoveNode)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'moveNode")) ::
              Data.ProtoLens.FieldDescriptor DocumentMutation
        applyCrdtOperations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "apply_crdt_operations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ApplyCrdtOperations)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'applyCrdtOperations")) ::
              Data.ProtoLens.FieldDescriptor DocumentMutation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, createDirectory__field_descriptor),
           (Data.ProtoLens.Tag 2, createDocument__field_descriptor),
           (Data.ProtoLens.Tag 3, replaceDocument__field_descriptor),
           (Data.ProtoLens.Tag 4, spliceDocumentText__field_descriptor),
           (Data.ProtoLens.Tag 5, deleteNode__field_descriptor),
           (Data.ProtoLens.Tag 6, moveNode__field_descriptor),
           (Data.ProtoLens.Tag 7, applyCrdtOperations__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DocumentMutation'_unknownFields
        (\ x__ y__ -> x__ {_DocumentMutation'_unknownFields = y__})
  defMessage
    = DocumentMutation'_constructor
        {_DocumentMutation'mutation = Prelude.Nothing,
         _DocumentMutation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DocumentMutation
          -> Data.ProtoLens.Encoding.Bytes.Parser DocumentMutation
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "create_directory"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"createDirectory") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "create_document"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"createDocument") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "replace_document"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"replaceDocument") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "splice_document_text"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"spliceDocumentText") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "delete_node"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deleteNode") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "move_node"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"moveNode") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "apply_crdt_operations"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"applyCrdtOperations") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DocumentMutation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mutation") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (DocumentMutation'CreateDirectory v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (DocumentMutation'CreateDocument v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (DocumentMutation'ReplaceDocument v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (DocumentMutation'SpliceDocumentText v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (DocumentMutation'DeleteNode v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (DocumentMutation'MoveNode v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (DocumentMutation'ApplyCrdtOperations v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DocumentMutation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DocumentMutation'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DocumentMutation'mutation x__) ())
instance Control.DeepSeq.NFData DocumentMutation'Mutation where
  rnf (DocumentMutation'CreateDirectory x__)
    = Control.DeepSeq.rnf x__
  rnf (DocumentMutation'CreateDocument x__) = Control.DeepSeq.rnf x__
  rnf (DocumentMutation'ReplaceDocument x__)
    = Control.DeepSeq.rnf x__
  rnf (DocumentMutation'SpliceDocumentText x__)
    = Control.DeepSeq.rnf x__
  rnf (DocumentMutation'DeleteNode x__) = Control.DeepSeq.rnf x__
  rnf (DocumentMutation'MoveNode x__) = Control.DeepSeq.rnf x__
  rnf (DocumentMutation'ApplyCrdtOperations x__)
    = Control.DeepSeq.rnf x__
_DocumentMutation'CreateDirectory ::
  Data.ProtoLens.Prism.Prism' DocumentMutation'Mutation CreateDirectory
_DocumentMutation'CreateDirectory
  = Data.ProtoLens.Prism.prism'
      DocumentMutation'CreateDirectory
      (\ p__
         -> case p__ of
              (DocumentMutation'CreateDirectory p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DocumentMutation'CreateDocument ::
  Data.ProtoLens.Prism.Prism' DocumentMutation'Mutation CreateDocument
_DocumentMutation'CreateDocument
  = Data.ProtoLens.Prism.prism'
      DocumentMutation'CreateDocument
      (\ p__
         -> case p__ of
              (DocumentMutation'CreateDocument p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DocumentMutation'ReplaceDocument ::
  Data.ProtoLens.Prism.Prism' DocumentMutation'Mutation ReplaceDocument
_DocumentMutation'ReplaceDocument
  = Data.ProtoLens.Prism.prism'
      DocumentMutation'ReplaceDocument
      (\ p__
         -> case p__ of
              (DocumentMutation'ReplaceDocument p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DocumentMutation'SpliceDocumentText ::
  Data.ProtoLens.Prism.Prism' DocumentMutation'Mutation SpliceDocumentText
_DocumentMutation'SpliceDocumentText
  = Data.ProtoLens.Prism.prism'
      DocumentMutation'SpliceDocumentText
      (\ p__
         -> case p__ of
              (DocumentMutation'SpliceDocumentText p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DocumentMutation'DeleteNode ::
  Data.ProtoLens.Prism.Prism' DocumentMutation'Mutation DeleteNode
_DocumentMutation'DeleteNode
  = Data.ProtoLens.Prism.prism'
      DocumentMutation'DeleteNode
      (\ p__
         -> case p__ of
              (DocumentMutation'DeleteNode p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DocumentMutation'MoveNode ::
  Data.ProtoLens.Prism.Prism' DocumentMutation'Mutation MoveNode
_DocumentMutation'MoveNode
  = Data.ProtoLens.Prism.prism'
      DocumentMutation'MoveNode
      (\ p__
         -> case p__ of
              (DocumentMutation'MoveNode p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DocumentMutation'ApplyCrdtOperations ::
  Data.ProtoLens.Prism.Prism' DocumentMutation'Mutation ApplyCrdtOperations
_DocumentMutation'ApplyCrdtOperations
  = Data.ProtoLens.Prism.prism'
      DocumentMutation'ApplyCrdtOperations
      (\ p__
         -> case p__ of
              (DocumentMutation'ApplyCrdtOperations p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.value' @:: Lens' DocumentPath Data.Text.Text@ -}
data DocumentPath
  = DocumentPath'_constructor {_DocumentPath'value :: !Data.Text.Text,
                               _DocumentPath'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DocumentPath where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DocumentPath "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentPath'value (\ x__ y__ -> x__ {_DocumentPath'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message DocumentPath where
  messageName _ = Data.Text.pack "oll.protocol.DocumentPath"
  packedMessageDescriptor _
    = "\n\
      \\fDocumentPath\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor DocumentPath
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DocumentPath'_unknownFields
        (\ x__ y__ -> x__ {_DocumentPath'_unknownFields = y__})
  defMessage
    = DocumentPath'_constructor
        {_DocumentPath'value = Data.ProtoLens.fieldDefault,
         _DocumentPath'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DocumentPath -> Data.ProtoLens.Encoding.Bytes.Parser DocumentPath
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DocumentPath"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DocumentPath where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DocumentPath'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DocumentPath'value x__) ())
newtype DocumentProjection'UnrecognizedValue
  = DocumentProjection'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data DocumentProjection
  = DOCUMENT_PROJECTION_UNSPECIFIED |
    DOCUMENT_PROJECTION_CONTENT |
    DOCUMENT_PROJECTION_CRDT |
    DocumentProjection'Unrecognized !DocumentProjection'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum DocumentProjection where
  maybeToEnum 0 = Prelude.Just DOCUMENT_PROJECTION_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just DOCUMENT_PROJECTION_CONTENT
  maybeToEnum 2 = Prelude.Just DOCUMENT_PROJECTION_CRDT
  maybeToEnum k
    = Prelude.Just
        (DocumentProjection'Unrecognized
           (DocumentProjection'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum DOCUMENT_PROJECTION_UNSPECIFIED
    = "DOCUMENT_PROJECTION_UNSPECIFIED"
  showEnum DOCUMENT_PROJECTION_CONTENT
    = "DOCUMENT_PROJECTION_CONTENT"
  showEnum DOCUMENT_PROJECTION_CRDT = "DOCUMENT_PROJECTION_CRDT"
  showEnum
    (DocumentProjection'Unrecognized (DocumentProjection'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DOCUMENT_PROJECTION_UNSPECIFIED"
    = Prelude.Just DOCUMENT_PROJECTION_UNSPECIFIED
    | (Prelude.==) k "DOCUMENT_PROJECTION_CONTENT"
    = Prelude.Just DOCUMENT_PROJECTION_CONTENT
    | (Prelude.==) k "DOCUMENT_PROJECTION_CRDT"
    = Prelude.Just DOCUMENT_PROJECTION_CRDT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded DocumentProjection where
  minBound = DOCUMENT_PROJECTION_UNSPECIFIED
  maxBound = DOCUMENT_PROJECTION_CRDT
instance Prelude.Enum DocumentProjection where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum DocumentProjection: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum DOCUMENT_PROJECTION_UNSPECIFIED = 0
  fromEnum DOCUMENT_PROJECTION_CONTENT = 1
  fromEnum DOCUMENT_PROJECTION_CRDT = 2
  fromEnum
    (DocumentProjection'Unrecognized (DocumentProjection'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ DOCUMENT_PROJECTION_CRDT
    = Prelude.error
        "DocumentProjection.succ: bad argument DOCUMENT_PROJECTION_CRDT. This value would be out of bounds."
  succ DOCUMENT_PROJECTION_UNSPECIFIED = DOCUMENT_PROJECTION_CONTENT
  succ DOCUMENT_PROJECTION_CONTENT = DOCUMENT_PROJECTION_CRDT
  succ (DocumentProjection'Unrecognized _)
    = Prelude.error
        "DocumentProjection.succ: bad argument: unrecognized value"
  pred DOCUMENT_PROJECTION_UNSPECIFIED
    = Prelude.error
        "DocumentProjection.pred: bad argument DOCUMENT_PROJECTION_UNSPECIFIED. This value would be out of bounds."
  pred DOCUMENT_PROJECTION_CONTENT = DOCUMENT_PROJECTION_UNSPECIFIED
  pred DOCUMENT_PROJECTION_CRDT = DOCUMENT_PROJECTION_CONTENT
  pred (DocumentProjection'Unrecognized _)
    = Prelude.error
        "DocumentProjection.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault DocumentProjection where
  fieldDefault = DOCUMENT_PROJECTION_UNSPECIFIED
instance Control.DeepSeq.NFData DocumentProjection where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.documentId' @:: Lens' DocumentRevisionConflict Proto.Oll.Common.DocumentId@
         * 'Proto.Oll.Document_Fields.maybe'documentId' @:: Lens' DocumentRevisionConflict (Prelude.Maybe Proto.Oll.Common.DocumentId)@
         * 'Proto.Oll.Document_Fields.expected' @:: Lens' DocumentRevisionConflict Proto.Oll.Common.DocumentRevision@
         * 'Proto.Oll.Document_Fields.maybe'expected' @:: Lens' DocumentRevisionConflict (Prelude.Maybe Proto.Oll.Common.DocumentRevision)@
         * 'Proto.Oll.Document_Fields.actual' @:: Lens' DocumentRevisionConflict Proto.Oll.Common.DocumentRevision@
         * 'Proto.Oll.Document_Fields.maybe'actual' @:: Lens' DocumentRevisionConflict (Prelude.Maybe Proto.Oll.Common.DocumentRevision)@
         * 'Proto.Oll.Document_Fields.exists' @:: Lens' DocumentRevisionConflict Prelude.Bool@ -}
data DocumentRevisionConflict
  = DocumentRevisionConflict'_constructor {_DocumentRevisionConflict'documentId :: !(Prelude.Maybe Proto.Oll.Common.DocumentId),
                                           _DocumentRevisionConflict'expected :: !(Prelude.Maybe Proto.Oll.Common.DocumentRevision),
                                           _DocumentRevisionConflict'actual :: !(Prelude.Maybe Proto.Oll.Common.DocumentRevision),
                                           _DocumentRevisionConflict'exists :: !Prelude.Bool,
                                           _DocumentRevisionConflict'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DocumentRevisionConflict where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DocumentRevisionConflict "documentId" Proto.Oll.Common.DocumentId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevisionConflict'documentId
           (\ x__ y__ -> x__ {_DocumentRevisionConflict'documentId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DocumentRevisionConflict "maybe'documentId" (Prelude.Maybe Proto.Oll.Common.DocumentId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevisionConflict'documentId
           (\ x__ y__ -> x__ {_DocumentRevisionConflict'documentId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DocumentRevisionConflict "expected" Proto.Oll.Common.DocumentRevision where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevisionConflict'expected
           (\ x__ y__ -> x__ {_DocumentRevisionConflict'expected = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DocumentRevisionConflict "maybe'expected" (Prelude.Maybe Proto.Oll.Common.DocumentRevision) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevisionConflict'expected
           (\ x__ y__ -> x__ {_DocumentRevisionConflict'expected = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DocumentRevisionConflict "actual" Proto.Oll.Common.DocumentRevision where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevisionConflict'actual
           (\ x__ y__ -> x__ {_DocumentRevisionConflict'actual = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DocumentRevisionConflict "maybe'actual" (Prelude.Maybe Proto.Oll.Common.DocumentRevision) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevisionConflict'actual
           (\ x__ y__ -> x__ {_DocumentRevisionConflict'actual = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DocumentRevisionConflict "exists" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevisionConflict'exists
           (\ x__ y__ -> x__ {_DocumentRevisionConflict'exists = y__}))
        Prelude.id
instance Data.ProtoLens.Message DocumentRevisionConflict where
  messageName _
    = Data.Text.pack "oll.protocol.DocumentRevisionConflict"
  packedMessageDescriptor _
    = "\n\
      \\CANDocumentRevisionConflict\DC29\n\
      \\vdocument_id\CAN\SOH \SOH(\v2\CAN.oll.protocol.DocumentIdR\n\
      \documentId\DC2:\n\
      \\bexpected\CAN\STX \SOH(\v2\RS.oll.protocol.DocumentRevisionR\bexpected\DC2;\n\
      \\ACKactual\CAN\ETX \SOH(\v2\RS.oll.protocol.DocumentRevisionH\NULR\ACKactual\136\SOH\SOH\DC2\SYN\n\
      \\ACKexists\CAN\EOT \SOH(\bR\ACKexistsB\t\n\
      \\a_actual"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        documentId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "document_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.DocumentId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'documentId")) ::
              Data.ProtoLens.FieldDescriptor DocumentRevisionConflict
        expected__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expected"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.DocumentRevision)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expected")) ::
              Data.ProtoLens.FieldDescriptor DocumentRevisionConflict
        actual__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "actual"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.DocumentRevision)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'actual")) ::
              Data.ProtoLens.FieldDescriptor DocumentRevisionConflict
        exists__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exists"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"exists")) ::
              Data.ProtoLens.FieldDescriptor DocumentRevisionConflict
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, documentId__field_descriptor),
           (Data.ProtoLens.Tag 2, expected__field_descriptor),
           (Data.ProtoLens.Tag 3, actual__field_descriptor),
           (Data.ProtoLens.Tag 4, exists__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DocumentRevisionConflict'_unknownFields
        (\ x__ y__ -> x__ {_DocumentRevisionConflict'_unknownFields = y__})
  defMessage
    = DocumentRevisionConflict'_constructor
        {_DocumentRevisionConflict'documentId = Prelude.Nothing,
         _DocumentRevisionConflict'expected = Prelude.Nothing,
         _DocumentRevisionConflict'actual = Prelude.Nothing,
         _DocumentRevisionConflict'exists = Data.ProtoLens.fieldDefault,
         _DocumentRevisionConflict'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DocumentRevisionConflict
          -> Data.ProtoLens.Encoding.Bytes.Parser DocumentRevisionConflict
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "document_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"documentId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expected"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"expected") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "actual"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"actual") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "exists"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"exists") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DocumentRevisionConflict"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'documentId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'expected") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'actual") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"exists") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData DocumentRevisionConflict where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DocumentRevisionConflict'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DocumentRevisionConflict'documentId x__)
                (Control.DeepSeq.deepseq
                   (_DocumentRevisionConflict'expected x__)
                   (Control.DeepSeq.deepseq
                      (_DocumentRevisionConflict'actual x__)
                      (Control.DeepSeq.deepseq
                         (_DocumentRevisionConflict'exists x__) ()))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.documentId' @:: Lens' DocumentRevisionPrecondition Proto.Oll.Common.DocumentId@
         * 'Proto.Oll.Document_Fields.maybe'documentId' @:: Lens' DocumentRevisionPrecondition (Prelude.Maybe Proto.Oll.Common.DocumentId)@
         * 'Proto.Oll.Document_Fields.unchangedSince' @:: Lens' DocumentRevisionPrecondition Proto.Oll.Common.DocumentRevision@
         * 'Proto.Oll.Document_Fields.maybe'unchangedSince' @:: Lens' DocumentRevisionPrecondition (Prelude.Maybe Proto.Oll.Common.DocumentRevision)@ -}
data DocumentRevisionPrecondition
  = DocumentRevisionPrecondition'_constructor {_DocumentRevisionPrecondition'documentId :: !(Prelude.Maybe Proto.Oll.Common.DocumentId),
                                               _DocumentRevisionPrecondition'unchangedSince :: !(Prelude.Maybe Proto.Oll.Common.DocumentRevision),
                                               _DocumentRevisionPrecondition'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DocumentRevisionPrecondition where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DocumentRevisionPrecondition "documentId" Proto.Oll.Common.DocumentId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevisionPrecondition'documentId
           (\ x__ y__
              -> x__ {_DocumentRevisionPrecondition'documentId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DocumentRevisionPrecondition "maybe'documentId" (Prelude.Maybe Proto.Oll.Common.DocumentId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevisionPrecondition'documentId
           (\ x__ y__
              -> x__ {_DocumentRevisionPrecondition'documentId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DocumentRevisionPrecondition "unchangedSince" Proto.Oll.Common.DocumentRevision where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevisionPrecondition'unchangedSince
           (\ x__ y__
              -> x__ {_DocumentRevisionPrecondition'unchangedSince = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DocumentRevisionPrecondition "maybe'unchangedSince" (Prelude.Maybe Proto.Oll.Common.DocumentRevision) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevisionPrecondition'unchangedSince
           (\ x__ y__
              -> x__ {_DocumentRevisionPrecondition'unchangedSince = y__}))
        Prelude.id
instance Data.ProtoLens.Message DocumentRevisionPrecondition where
  messageName _
    = Data.Text.pack "oll.protocol.DocumentRevisionPrecondition"
  packedMessageDescriptor _
    = "\n\
      \\FSDocumentRevisionPrecondition\DC29\n\
      \\vdocument_id\CAN\SOH \SOH(\v2\CAN.oll.protocol.DocumentIdR\n\
      \documentId\DC2G\n\
      \\SIunchanged_since\CAN\STX \SOH(\v2\RS.oll.protocol.DocumentRevisionR\SOunchangedSince"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        documentId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "document_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.DocumentId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'documentId")) ::
              Data.ProtoLens.FieldDescriptor DocumentRevisionPrecondition
        unchangedSince__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unchanged_since"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.DocumentRevision)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unchangedSince")) ::
              Data.ProtoLens.FieldDescriptor DocumentRevisionPrecondition
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, documentId__field_descriptor),
           (Data.ProtoLens.Tag 2, unchangedSince__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DocumentRevisionPrecondition'_unknownFields
        (\ x__ y__
           -> x__ {_DocumentRevisionPrecondition'_unknownFields = y__})
  defMessage
    = DocumentRevisionPrecondition'_constructor
        {_DocumentRevisionPrecondition'documentId = Prelude.Nothing,
         _DocumentRevisionPrecondition'unchangedSince = Prelude.Nothing,
         _DocumentRevisionPrecondition'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DocumentRevisionPrecondition
          -> Data.ProtoLens.Encoding.Bytes.Parser DocumentRevisionPrecondition
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "document_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"documentId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "unchanged_since"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unchangedSince") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DocumentRevisionPrecondition"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'documentId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'unchangedSince") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DocumentRevisionPrecondition where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DocumentRevisionPrecondition'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DocumentRevisionPrecondition'documentId x__)
                (Control.DeepSeq.deepseq
                   (_DocumentRevisionPrecondition'unchangedSince x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.metadata' @:: Lens' DocumentSnapshot NodeMetadata@
         * 'Proto.Oll.Document_Fields.maybe'metadata' @:: Lens' DocumentSnapshot (Prelude.Maybe NodeMetadata)@
         * 'Proto.Oll.Document_Fields.maybe'representation' @:: Lens' DocumentSnapshot (Prelude.Maybe DocumentSnapshot'Representation)@
         * 'Proto.Oll.Document_Fields.maybe'content' @:: Lens' DocumentSnapshot (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Document_Fields.content' @:: Lens' DocumentSnapshot Data.Text.Text@
         * 'Proto.Oll.Document_Fields.maybe'crdt' @:: Lens' DocumentSnapshot (Prelude.Maybe CrdtValue)@
         * 'Proto.Oll.Document_Fields.crdt' @:: Lens' DocumentSnapshot CrdtValue@ -}
data DocumentSnapshot
  = DocumentSnapshot'_constructor {_DocumentSnapshot'metadata :: !(Prelude.Maybe NodeMetadata),
                                   _DocumentSnapshot'representation :: !(Prelude.Maybe DocumentSnapshot'Representation),
                                   _DocumentSnapshot'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DocumentSnapshot where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data DocumentSnapshot'Representation
  = DocumentSnapshot'Content !Data.Text.Text |
    DocumentSnapshot'Crdt !CrdtValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField DocumentSnapshot "metadata" NodeMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentSnapshot'metadata
           (\ x__ y__ -> x__ {_DocumentSnapshot'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DocumentSnapshot "maybe'metadata" (Prelude.Maybe NodeMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentSnapshot'metadata
           (\ x__ y__ -> x__ {_DocumentSnapshot'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DocumentSnapshot "maybe'representation" (Prelude.Maybe DocumentSnapshot'Representation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentSnapshot'representation
           (\ x__ y__ -> x__ {_DocumentSnapshot'representation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DocumentSnapshot "maybe'content" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentSnapshot'representation
           (\ x__ y__ -> x__ {_DocumentSnapshot'representation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DocumentSnapshot'Content x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DocumentSnapshot'Content y__))
instance Data.ProtoLens.Field.HasField DocumentSnapshot "content" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentSnapshot'representation
           (\ x__ y__ -> x__ {_DocumentSnapshot'representation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DocumentSnapshot'Content x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DocumentSnapshot'Content y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField DocumentSnapshot "maybe'crdt" (Prelude.Maybe CrdtValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentSnapshot'representation
           (\ x__ y__ -> x__ {_DocumentSnapshot'representation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (DocumentSnapshot'Crdt x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap DocumentSnapshot'Crdt y__))
instance Data.ProtoLens.Field.HasField DocumentSnapshot "crdt" CrdtValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentSnapshot'representation
           (\ x__ y__ -> x__ {_DocumentSnapshot'representation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (DocumentSnapshot'Crdt x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap DocumentSnapshot'Crdt y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message DocumentSnapshot where
  messageName _ = Data.Text.pack "oll.protocol.DocumentSnapshot"
  packedMessageDescriptor _
    = "\n\
      \\DLEDocumentSnapshot\DC26\n\
      \\bmetadata\CAN\SOH \SOH(\v2\SUB.oll.protocol.NodeMetadataR\bmetadata\DC2\SUB\n\
      \\acontent\CAN\STX \SOH(\tH\NULR\acontent\DC2-\n\
      \\EOTcrdt\CAN\ETX \SOH(\v2\ETB.oll.protocol.CrdtValueH\NULR\EOTcrdtB\DLE\n\
      \\SOrepresentation"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NodeMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor DocumentSnapshot
        content__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'content")) ::
              Data.ProtoLens.FieldDescriptor DocumentSnapshot
        crdt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crdt"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'crdt")) ::
              Data.ProtoLens.FieldDescriptor DocumentSnapshot
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metadata__field_descriptor),
           (Data.ProtoLens.Tag 2, content__field_descriptor),
           (Data.ProtoLens.Tag 3, crdt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DocumentSnapshot'_unknownFields
        (\ x__ y__ -> x__ {_DocumentSnapshot'_unknownFields = y__})
  defMessage
    = DocumentSnapshot'_constructor
        {_DocumentSnapshot'metadata = Prelude.Nothing,
         _DocumentSnapshot'representation = Prelude.Nothing,
         _DocumentSnapshot'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DocumentSnapshot
          -> Data.ProtoLens.Encoding.Bytes.Parser DocumentSnapshot
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "content"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"content") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "crdt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"crdt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DocumentSnapshot"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'metadata") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'representation") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (DocumentSnapshot'Content v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8 v)
                   (Prelude.Just (DocumentSnapshot'Crdt v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DocumentSnapshot where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DocumentSnapshot'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DocumentSnapshot'metadata x__)
                (Control.DeepSeq.deepseq
                   (_DocumentSnapshot'representation x__) ()))
instance Control.DeepSeq.NFData DocumentSnapshot'Representation where
  rnf (DocumentSnapshot'Content x__) = Control.DeepSeq.rnf x__
  rnf (DocumentSnapshot'Crdt x__) = Control.DeepSeq.rnf x__
_DocumentSnapshot'Content ::
  Data.ProtoLens.Prism.Prism' DocumentSnapshot'Representation Data.Text.Text
_DocumentSnapshot'Content
  = Data.ProtoLens.Prism.prism'
      DocumentSnapshot'Content
      (\ p__
         -> case p__ of
              (DocumentSnapshot'Content p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_DocumentSnapshot'Crdt ::
  Data.ProtoLens.Prism.Prism' DocumentSnapshot'Representation CrdtValue
_DocumentSnapshot'Crdt
  = Data.ProtoLens.Prism.prism'
      DocumentSnapshot'Crdt
      (\ p__
         -> case p__ of
              (DocumentSnapshot'Crdt p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.root' @:: Lens' GetDirectoryTreeRequest DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'root' @:: Lens' GetDirectoryTreeRequest (Prelude.Maybe DocumentPath)@ -}
data GetDirectoryTreeRequest
  = GetDirectoryTreeRequest'_constructor {_GetDirectoryTreeRequest'root :: !(Prelude.Maybe DocumentPath),
                                          _GetDirectoryTreeRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetDirectoryTreeRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetDirectoryTreeRequest "root" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetDirectoryTreeRequest'root
           (\ x__ y__ -> x__ {_GetDirectoryTreeRequest'root = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetDirectoryTreeRequest "maybe'root" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetDirectoryTreeRequest'root
           (\ x__ y__ -> x__ {_GetDirectoryTreeRequest'root = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetDirectoryTreeRequest where
  messageName _
    = Data.Text.pack "oll.protocol.GetDirectoryTreeRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBGetDirectoryTreeRequest\DC2.\n\
      \\EOTroot\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTroot"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        root__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'root")) ::
              Data.ProtoLens.FieldDescriptor GetDirectoryTreeRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, root__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetDirectoryTreeRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetDirectoryTreeRequest'_unknownFields = y__})
  defMessage
    = GetDirectoryTreeRequest'_constructor
        {_GetDirectoryTreeRequest'root = Prelude.Nothing,
         _GetDirectoryTreeRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetDirectoryTreeRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetDirectoryTreeRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "root"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"root") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetDirectoryTreeRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'root") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetDirectoryTreeRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetDirectoryTreeRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetDirectoryTreeRequest'root x__) ())
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.root' @:: Lens' GetDirectoryTreeResponse DirectoryTreeNode@
         * 'Proto.Oll.Document_Fields.maybe'root' @:: Lens' GetDirectoryTreeResponse (Prelude.Maybe DirectoryTreeNode)@ -}
data GetDirectoryTreeResponse
  = GetDirectoryTreeResponse'_constructor {_GetDirectoryTreeResponse'root :: !(Prelude.Maybe DirectoryTreeNode),
                                           _GetDirectoryTreeResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetDirectoryTreeResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetDirectoryTreeResponse "root" DirectoryTreeNode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetDirectoryTreeResponse'root
           (\ x__ y__ -> x__ {_GetDirectoryTreeResponse'root = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetDirectoryTreeResponse "maybe'root" (Prelude.Maybe DirectoryTreeNode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetDirectoryTreeResponse'root
           (\ x__ y__ -> x__ {_GetDirectoryTreeResponse'root = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetDirectoryTreeResponse where
  messageName _
    = Data.Text.pack "oll.protocol.GetDirectoryTreeResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANGetDirectoryTreeResponse\DC23\n\
      \\EOTroot\CAN\SOH \SOH(\v2\US.oll.protocol.DirectoryTreeNodeR\EOTroot"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        root__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DirectoryTreeNode)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'root")) ::
              Data.ProtoLens.FieldDescriptor GetDirectoryTreeResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, root__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetDirectoryTreeResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetDirectoryTreeResponse'_unknownFields = y__})
  defMessage
    = GetDirectoryTreeResponse'_constructor
        {_GetDirectoryTreeResponse'root = Prelude.Nothing,
         _GetDirectoryTreeResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetDirectoryTreeResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetDirectoryTreeResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "root"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"root") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetDirectoryTreeResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'root") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetDirectoryTreeResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetDirectoryTreeResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetDirectoryTreeResponse'root x__) ())
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' ListDelete CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' ListDelete (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.index' @:: Lens' ListDelete Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.count' @:: Lens' ListDelete Data.Word.Word64@ -}
data ListDelete
  = ListDelete'_constructor {_ListDelete'target :: !(Prelude.Maybe CrdtObjectPath),
                             _ListDelete'index :: !Data.Word.Word64,
                             _ListDelete'count :: !Data.Word.Word64,
                             _ListDelete'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListDelete where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListDelete "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListDelete'target (\ x__ y__ -> x__ {_ListDelete'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListDelete "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListDelete'target (\ x__ y__ -> x__ {_ListDelete'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListDelete "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListDelete'index (\ x__ y__ -> x__ {_ListDelete'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListDelete "count" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListDelete'count (\ x__ y__ -> x__ {_ListDelete'count = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListDelete where
  messageName _ = Data.Text.pack "oll.protocol.ListDelete"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ListDelete\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DC4\n\
      \\ENQindex\CAN\STX \SOH(\EOTR\ENQindex\DC2\DC4\n\
      \\ENQcount\CAN\ETX \SOH(\EOTR\ENQcount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor ListDelete
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor ListDelete
        count__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"count")) ::
              Data.ProtoLens.FieldDescriptor ListDelete
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, index__field_descriptor),
           (Data.ProtoLens.Tag 3, count__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListDelete'_unknownFields
        (\ x__ y__ -> x__ {_ListDelete'_unknownFields = y__})
  defMessage
    = ListDelete'_constructor
        {_ListDelete'target = Prelude.Nothing,
         _ListDelete'index = Data.ProtoLens.fieldDefault,
         _ListDelete'count = Data.ProtoLens.fieldDefault,
         _ListDelete'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListDelete -> Data.ProtoLens.Encoding.Bytes.Parser ListDelete
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "count"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"count") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ListDelete"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"count") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ListDelete where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListDelete'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListDelete'target x__)
                (Control.DeepSeq.deepseq
                   (_ListDelete'index x__)
                   (Control.DeepSeq.deepseq (_ListDelete'count x__) ())))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.path' @:: Lens' ListDirectoryRequest DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'path' @:: Lens' ListDirectoryRequest (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.recursive' @:: Lens' ListDirectoryRequest Prelude.Bool@ -}
data ListDirectoryRequest
  = ListDirectoryRequest'_constructor {_ListDirectoryRequest'path :: !(Prelude.Maybe DocumentPath),
                                       _ListDirectoryRequest'recursive :: !Prelude.Bool,
                                       _ListDirectoryRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListDirectoryRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListDirectoryRequest "path" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListDirectoryRequest'path
           (\ x__ y__ -> x__ {_ListDirectoryRequest'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListDirectoryRequest "maybe'path" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListDirectoryRequest'path
           (\ x__ y__ -> x__ {_ListDirectoryRequest'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListDirectoryRequest "recursive" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListDirectoryRequest'recursive
           (\ x__ y__ -> x__ {_ListDirectoryRequest'recursive = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListDirectoryRequest where
  messageName _ = Data.Text.pack "oll.protocol.ListDirectoryRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4ListDirectoryRequest\DC2.\n\
      \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2\FS\n\
      \\trecursive\CAN\STX \SOH(\bR\trecursive"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor ListDirectoryRequest
        recursive__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "recursive"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"recursive")) ::
              Data.ProtoLens.FieldDescriptor ListDirectoryRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, recursive__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListDirectoryRequest'_unknownFields
        (\ x__ y__ -> x__ {_ListDirectoryRequest'_unknownFields = y__})
  defMessage
    = ListDirectoryRequest'_constructor
        {_ListDirectoryRequest'path = Prelude.Nothing,
         _ListDirectoryRequest'recursive = Data.ProtoLens.fieldDefault,
         _ListDirectoryRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListDirectoryRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser ListDirectoryRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "recursive"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"recursive") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ListDirectoryRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"recursive") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ListDirectoryRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListDirectoryRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListDirectoryRequest'path x__)
                (Control.DeepSeq.deepseq (_ListDirectoryRequest'recursive x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.directory' @:: Lens' ListDirectoryResponse NodeMetadata@
         * 'Proto.Oll.Document_Fields.maybe'directory' @:: Lens' ListDirectoryResponse (Prelude.Maybe NodeMetadata)@
         * 'Proto.Oll.Document_Fields.entries' @:: Lens' ListDirectoryResponse [NodeMetadata]@
         * 'Proto.Oll.Document_Fields.vec'entries' @:: Lens' ListDirectoryResponse (Data.Vector.Vector NodeMetadata)@ -}
data ListDirectoryResponse
  = ListDirectoryResponse'_constructor {_ListDirectoryResponse'directory :: !(Prelude.Maybe NodeMetadata),
                                        _ListDirectoryResponse'entries :: !(Data.Vector.Vector NodeMetadata),
                                        _ListDirectoryResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListDirectoryResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListDirectoryResponse "directory" NodeMetadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListDirectoryResponse'directory
           (\ x__ y__ -> x__ {_ListDirectoryResponse'directory = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListDirectoryResponse "maybe'directory" (Prelude.Maybe NodeMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListDirectoryResponse'directory
           (\ x__ y__ -> x__ {_ListDirectoryResponse'directory = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListDirectoryResponse "entries" [NodeMetadata] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListDirectoryResponse'entries
           (\ x__ y__ -> x__ {_ListDirectoryResponse'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListDirectoryResponse "vec'entries" (Data.Vector.Vector NodeMetadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListDirectoryResponse'entries
           (\ x__ y__ -> x__ {_ListDirectoryResponse'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListDirectoryResponse where
  messageName _ = Data.Text.pack "oll.protocol.ListDirectoryResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKListDirectoryResponse\DC28\n\
      \\tdirectory\CAN\SOH \SOH(\v2\SUB.oll.protocol.NodeMetadataR\tdirectory\DC24\n\
      \\aentries\CAN\STX \ETX(\v2\SUB.oll.protocol.NodeMetadataR\aentries"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        directory__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "directory"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NodeMetadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'directory")) ::
              Data.ProtoLens.FieldDescriptor ListDirectoryResponse
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NodeMetadata)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor ListDirectoryResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, directory__field_descriptor),
           (Data.ProtoLens.Tag 2, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListDirectoryResponse'_unknownFields
        (\ x__ y__ -> x__ {_ListDirectoryResponse'_unknownFields = y__})
  defMessage
    = ListDirectoryResponse'_constructor
        {_ListDirectoryResponse'directory = Prelude.Nothing,
         _ListDirectoryResponse'entries = Data.Vector.Generic.empty,
         _ListDirectoryResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListDirectoryResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld NodeMetadata
             -> Data.ProtoLens.Encoding.Bytes.Parser ListDirectoryResponse
        loop x mutable'entries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'entries)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'entries") frozen'entries x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "directory"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"directory") y x)
                                  mutable'entries
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'entries y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'entries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'entries)
          "ListDirectoryResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'directory") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ListDirectoryResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListDirectoryResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListDirectoryResponse'directory x__)
                (Control.DeepSeq.deepseq (_ListDirectoryResponse'entries x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' ListInsert CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' ListInsert (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.index' @:: Lens' ListInsert Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.values' @:: Lens' ListInsert [CrdtValue]@
         * 'Proto.Oll.Document_Fields.vec'values' @:: Lens' ListInsert (Data.Vector.Vector CrdtValue)@ -}
data ListInsert
  = ListInsert'_constructor {_ListInsert'target :: !(Prelude.Maybe CrdtObjectPath),
                             _ListInsert'index :: !Data.Word.Word64,
                             _ListInsert'values :: !(Data.Vector.Vector CrdtValue),
                             _ListInsert'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListInsert where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListInsert "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListInsert'target (\ x__ y__ -> x__ {_ListInsert'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListInsert "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListInsert'target (\ x__ y__ -> x__ {_ListInsert'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListInsert "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListInsert'index (\ x__ y__ -> x__ {_ListInsert'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListInsert "values" [CrdtValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListInsert'values (\ x__ y__ -> x__ {_ListInsert'values = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListInsert "vec'values" (Data.Vector.Vector CrdtValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListInsert'values (\ x__ y__ -> x__ {_ListInsert'values = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListInsert where
  messageName _ = Data.Text.pack "oll.protocol.ListInsert"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ListInsert\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DC4\n\
      \\ENQindex\CAN\STX \SOH(\EOTR\ENQindex\DC2/\n\
      \\ACKvalues\CAN\ETX \ETX(\v2\ETB.oll.protocol.CrdtValueR\ACKvalues"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor ListInsert
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor ListInsert
        values__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "values"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"values")) ::
              Data.ProtoLens.FieldDescriptor ListInsert
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, index__field_descriptor),
           (Data.ProtoLens.Tag 3, values__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListInsert'_unknownFields
        (\ x__ y__ -> x__ {_ListInsert'_unknownFields = y__})
  defMessage
    = ListInsert'_constructor
        {_ListInsert'target = Prelude.Nothing,
         _ListInsert'index = Data.ProtoLens.fieldDefault,
         _ListInsert'values = Data.Vector.Generic.empty,
         _ListInsert'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListInsert
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld CrdtValue
             -> Data.ProtoLens.Encoding.Bytes.Parser ListInsert
        loop x mutable'values
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'values <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'values)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'values") frozen'values x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                                  mutable'values
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                                  mutable'values
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "values"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'values y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'values
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'values <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'values)
          "ListInsert"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'values") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ListInsert where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListInsert'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListInsert'target x__)
                (Control.DeepSeq.deepseq
                   (_ListInsert'index x__)
                   (Control.DeepSeq.deepseq (_ListInsert'values x__) ())))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' ListMove CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' ListMove (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.index' @:: Lens' ListMove Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.count' @:: Lens' ListMove Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.destination' @:: Lens' ListMove Data.Word.Word64@ -}
data ListMove
  = ListMove'_constructor {_ListMove'target :: !(Prelude.Maybe CrdtObjectPath),
                           _ListMove'index :: !Data.Word.Word64,
                           _ListMove'count :: !Data.Word.Word64,
                           _ListMove'destination :: !Data.Word.Word64,
                           _ListMove'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListMove where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListMove "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListMove'target (\ x__ y__ -> x__ {_ListMove'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ListMove "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListMove'target (\ x__ y__ -> x__ {_ListMove'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListMove "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListMove'index (\ x__ y__ -> x__ {_ListMove'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListMove "count" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListMove'count (\ x__ y__ -> x__ {_ListMove'count = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ListMove "destination" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListMove'destination
           (\ x__ y__ -> x__ {_ListMove'destination = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListMove where
  messageName _ = Data.Text.pack "oll.protocol.ListMove"
  packedMessageDescriptor _
    = "\n\
      \\bListMove\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DC4\n\
      \\ENQindex\CAN\STX \SOH(\EOTR\ENQindex\DC2\DC4\n\
      \\ENQcount\CAN\ETX \SOH(\EOTR\ENQcount\DC2 \n\
      \\vdestination\CAN\EOT \SOH(\EOTR\vdestination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor ListMove
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor ListMove
        count__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"count")) ::
              Data.ProtoLens.FieldDescriptor ListMove
        destination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "destination"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"destination")) ::
              Data.ProtoLens.FieldDescriptor ListMove
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, index__field_descriptor),
           (Data.ProtoLens.Tag 3, count__field_descriptor),
           (Data.ProtoLens.Tag 4, destination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListMove'_unknownFields
        (\ x__ y__ -> x__ {_ListMove'_unknownFields = y__})
  defMessage
    = ListMove'_constructor
        {_ListMove'target = Prelude.Nothing,
         _ListMove'index = Data.ProtoLens.fieldDefault,
         _ListMove'count = Data.ProtoLens.fieldDefault,
         _ListMove'destination = Data.ProtoLens.fieldDefault,
         _ListMove'_unknownFields = []}
  parseMessage
    = let
        loop :: ListMove -> Data.ProtoLens.Encoding.Bytes.Parser ListMove
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "count"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"count") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "destination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"destination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ListMove"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"count") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"destination") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ListMove where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListMove'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListMove'target x__)
                (Control.DeepSeq.deepseq
                   (_ListMove'index x__)
                   (Control.DeepSeq.deepseq
                      (_ListMove'count x__)
                      (Control.DeepSeq.deepseq (_ListMove'destination x__) ()))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' MapDelete CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' MapDelete (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.key' @:: Lens' MapDelete Data.Text.Text@ -}
data MapDelete
  = MapDelete'_constructor {_MapDelete'target :: !(Prelude.Maybe CrdtObjectPath),
                            _MapDelete'key :: !Data.Text.Text,
                            _MapDelete'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MapDelete where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MapDelete "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapDelete'target (\ x__ y__ -> x__ {_MapDelete'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MapDelete "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapDelete'target (\ x__ y__ -> x__ {_MapDelete'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MapDelete "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapDelete'key (\ x__ y__ -> x__ {_MapDelete'key = y__}))
        Prelude.id
instance Data.ProtoLens.Message MapDelete where
  messageName _ = Data.Text.pack "oll.protocol.MapDelete"
  packedMessageDescriptor _
    = "\n\
      \\tMapDelete\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DLE\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkey"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor MapDelete
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor MapDelete
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, key__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MapDelete'_unknownFields
        (\ x__ y__ -> x__ {_MapDelete'_unknownFields = y__})
  defMessage
    = MapDelete'_constructor
        {_MapDelete'target = Prelude.Nothing,
         _MapDelete'key = Data.ProtoLens.fieldDefault,
         _MapDelete'_unknownFields = []}
  parseMessage
    = let
        loop :: MapDelete -> Data.ProtoLens.Encoding.Bytes.Parser MapDelete
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MapDelete"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MapDelete where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MapDelete'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MapDelete'target x__)
                (Control.DeepSeq.deepseq (_MapDelete'key x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' MapSet CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' MapSet (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.key' @:: Lens' MapSet Data.Text.Text@
         * 'Proto.Oll.Document_Fields.value' @:: Lens' MapSet CrdtValue@
         * 'Proto.Oll.Document_Fields.maybe'value' @:: Lens' MapSet (Prelude.Maybe CrdtValue)@ -}
data MapSet
  = MapSet'_constructor {_MapSet'target :: !(Prelude.Maybe CrdtObjectPath),
                         _MapSet'key :: !Data.Text.Text,
                         _MapSet'value :: !(Prelude.Maybe CrdtValue),
                         _MapSet'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MapSet where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MapSet "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapSet'target (\ x__ y__ -> x__ {_MapSet'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MapSet "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapSet'target (\ x__ y__ -> x__ {_MapSet'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MapSet "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapSet'key (\ x__ y__ -> x__ {_MapSet'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MapSet "value" CrdtValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapSet'value (\ x__ y__ -> x__ {_MapSet'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MapSet "maybe'value" (Prelude.Maybe CrdtValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MapSet'value (\ x__ y__ -> x__ {_MapSet'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message MapSet where
  messageName _ = Data.Text.pack "oll.protocol.MapSet"
  packedMessageDescriptor _
    = "\n\
      \\ACKMapSet\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DLE\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkey\DC2-\n\
      \\ENQvalue\CAN\ETX \SOH(\v2\ETB.oll.protocol.CrdtValueR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor MapSet
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor MapSet
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor MapSet
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, key__field_descriptor),
           (Data.ProtoLens.Tag 3, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MapSet'_unknownFields
        (\ x__ y__ -> x__ {_MapSet'_unknownFields = y__})
  defMessage
    = MapSet'_constructor
        {_MapSet'target = Prelude.Nothing,
         _MapSet'key = Data.ProtoLens.fieldDefault,
         _MapSet'value = Prelude.Nothing, _MapSet'_unknownFields = []}
  parseMessage
    = let
        loop :: MapSet -> Data.ProtoLens.Encoding.Bytes.Parser MapSet
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MapSet"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MapSet where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MapSet'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MapSet'target x__)
                (Control.DeepSeq.deepseq
                   (_MapSet'key x__)
                   (Control.DeepSeq.deepseq (_MapSet'value x__) ())))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.source' @:: Lens' MoveNode DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'source' @:: Lens' MoveNode (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.destination' @:: Lens' MoveNode DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'destination' @:: Lens' MoveNode (Prelude.Maybe DocumentPath)@ -}
data MoveNode
  = MoveNode'_constructor {_MoveNode'source :: !(Prelude.Maybe DocumentPath),
                           _MoveNode'destination :: !(Prelude.Maybe DocumentPath),
                           _MoveNode'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MoveNode where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MoveNode "source" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MoveNode'source (\ x__ y__ -> x__ {_MoveNode'source = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MoveNode "maybe'source" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MoveNode'source (\ x__ y__ -> x__ {_MoveNode'source = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MoveNode "destination" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MoveNode'destination
           (\ x__ y__ -> x__ {_MoveNode'destination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MoveNode "maybe'destination" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MoveNode'destination
           (\ x__ y__ -> x__ {_MoveNode'destination = y__}))
        Prelude.id
instance Data.ProtoLens.Message MoveNode where
  messageName _ = Data.Text.pack "oll.protocol.MoveNode"
  packedMessageDescriptor _
    = "\n\
      \\bMoveNode\DC22\n\
      \\ACKsource\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\ACKsource\DC2<\n\
      \\vdestination\CAN\STX \SOH(\v2\SUB.oll.protocol.DocumentPathR\vdestination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        source__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'source")) ::
              Data.ProtoLens.FieldDescriptor MoveNode
        destination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "destination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'destination")) ::
              Data.ProtoLens.FieldDescriptor MoveNode
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, source__field_descriptor),
           (Data.ProtoLens.Tag 2, destination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MoveNode'_unknownFields
        (\ x__ y__ -> x__ {_MoveNode'_unknownFields = y__})
  defMessage
    = MoveNode'_constructor
        {_MoveNode'source = Prelude.Nothing,
         _MoveNode'destination = Prelude.Nothing,
         _MoveNode'_unknownFields = []}
  parseMessage
    = let
        loop :: MoveNode -> Data.ProtoLens.Encoding.Bytes.Parser MoveNode
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "source"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"source") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "destination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"destination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MoveNode"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'source") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'destination") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MoveNode where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MoveNode'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MoveNode'source x__)
                (Control.DeepSeq.deepseq (_MoveNode'destination x__) ()))
newtype NodeKind'UnrecognizedValue
  = NodeKind'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data NodeKind
  = NODE_KIND_UNSPECIFIED |
    NODE_KIND_DOCUMENT |
    NODE_KIND_DIRECTORY |
    NODE_KIND_BINARY |
    NodeKind'Unrecognized !NodeKind'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum NodeKind where
  maybeToEnum 0 = Prelude.Just NODE_KIND_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just NODE_KIND_DOCUMENT
  maybeToEnum 2 = Prelude.Just NODE_KIND_DIRECTORY
  maybeToEnum 3 = Prelude.Just NODE_KIND_BINARY
  maybeToEnum k
    = Prelude.Just
        (NodeKind'Unrecognized
           (NodeKind'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum NODE_KIND_UNSPECIFIED = "NODE_KIND_UNSPECIFIED"
  showEnum NODE_KIND_DOCUMENT = "NODE_KIND_DOCUMENT"
  showEnum NODE_KIND_DIRECTORY = "NODE_KIND_DIRECTORY"
  showEnum NODE_KIND_BINARY = "NODE_KIND_BINARY"
  showEnum (NodeKind'Unrecognized (NodeKind'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NODE_KIND_UNSPECIFIED"
    = Prelude.Just NODE_KIND_UNSPECIFIED
    | (Prelude.==) k "NODE_KIND_DOCUMENT"
    = Prelude.Just NODE_KIND_DOCUMENT
    | (Prelude.==) k "NODE_KIND_DIRECTORY"
    = Prelude.Just NODE_KIND_DIRECTORY
    | (Prelude.==) k "NODE_KIND_BINARY" = Prelude.Just NODE_KIND_BINARY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded NodeKind where
  minBound = NODE_KIND_UNSPECIFIED
  maxBound = NODE_KIND_BINARY
instance Prelude.Enum NodeKind where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum NodeKind: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum NODE_KIND_UNSPECIFIED = 0
  fromEnum NODE_KIND_DOCUMENT = 1
  fromEnum NODE_KIND_DIRECTORY = 2
  fromEnum NODE_KIND_BINARY = 3
  fromEnum (NodeKind'Unrecognized (NodeKind'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ NODE_KIND_BINARY
    = Prelude.error
        "NodeKind.succ: bad argument NODE_KIND_BINARY. This value would be out of bounds."
  succ NODE_KIND_UNSPECIFIED = NODE_KIND_DOCUMENT
  succ NODE_KIND_DOCUMENT = NODE_KIND_DIRECTORY
  succ NODE_KIND_DIRECTORY = NODE_KIND_BINARY
  succ (NodeKind'Unrecognized _)
    = Prelude.error "NodeKind.succ: bad argument: unrecognized value"
  pred NODE_KIND_UNSPECIFIED
    = Prelude.error
        "NodeKind.pred: bad argument NODE_KIND_UNSPECIFIED. This value would be out of bounds."
  pred NODE_KIND_DOCUMENT = NODE_KIND_UNSPECIFIED
  pred NODE_KIND_DIRECTORY = NODE_KIND_DOCUMENT
  pred NODE_KIND_BINARY = NODE_KIND_DIRECTORY
  pred (NodeKind'Unrecognized _)
    = Prelude.error "NodeKind.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault NodeKind where
  fieldDefault = NODE_KIND_UNSPECIFIED
instance Control.DeepSeq.NFData NodeKind where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.path' @:: Lens' NodeMetadata DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'path' @:: Lens' NodeMetadata (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.kind' @:: Lens' NodeMetadata NodeKind@
         * 'Proto.Oll.Document_Fields.catalogRevision' @:: Lens' NodeMetadata Proto.Oll.Common.CatalogRevision@
         * 'Proto.Oll.Document_Fields.maybe'catalogRevision' @:: Lens' NodeMetadata (Prelude.Maybe Proto.Oll.Common.CatalogRevision)@
         * 'Proto.Oll.Document_Fields.mediaType' @:: Lens' NodeMetadata Data.Text.Text@
         * 'Proto.Oll.Document_Fields.maybe'mediaType' @:: Lens' NodeMetadata (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Document_Fields.sizeBytes' @:: Lens' NodeMetadata Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.nodeId' @:: Lens' NodeMetadata Proto.Oll.Common.CatalogNodeId@
         * 'Proto.Oll.Document_Fields.maybe'nodeId' @:: Lens' NodeMetadata (Prelude.Maybe Proto.Oll.Common.CatalogNodeId)@
         * 'Proto.Oll.Document_Fields.documentId' @:: Lens' NodeMetadata Proto.Oll.Common.DocumentId@
         * 'Proto.Oll.Document_Fields.maybe'documentId' @:: Lens' NodeMetadata (Prelude.Maybe Proto.Oll.Common.DocumentId)@
         * 'Proto.Oll.Document_Fields.binaryId' @:: Lens' NodeMetadata Proto.Oll.Common.BinaryId@
         * 'Proto.Oll.Document_Fields.maybe'binaryId' @:: Lens' NodeMetadata (Prelude.Maybe Proto.Oll.Common.BinaryId)@
         * 'Proto.Oll.Document_Fields.documentRevision' @:: Lens' NodeMetadata Proto.Oll.Common.DocumentRevision@
         * 'Proto.Oll.Document_Fields.maybe'documentRevision' @:: Lens' NodeMetadata (Prelude.Maybe Proto.Oll.Common.DocumentRevision)@
         * 'Proto.Oll.Document_Fields.encoding' @:: Lens' NodeMetadata Data.Text.Text@
         * 'Proto.Oll.Document_Fields.maybe'encoding' @:: Lens' NodeMetadata (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Document_Fields.hasByteOrderMark' @:: Lens' NodeMetadata Prelude.Bool@ -}
data NodeMetadata
  = NodeMetadata'_constructor {_NodeMetadata'path :: !(Prelude.Maybe DocumentPath),
                               _NodeMetadata'kind :: !NodeKind,
                               _NodeMetadata'catalogRevision :: !(Prelude.Maybe Proto.Oll.Common.CatalogRevision),
                               _NodeMetadata'mediaType :: !(Prelude.Maybe Data.Text.Text),
                               _NodeMetadata'sizeBytes :: !Data.Word.Word64,
                               _NodeMetadata'nodeId :: !(Prelude.Maybe Proto.Oll.Common.CatalogNodeId),
                               _NodeMetadata'documentId :: !(Prelude.Maybe Proto.Oll.Common.DocumentId),
                               _NodeMetadata'binaryId :: !(Prelude.Maybe Proto.Oll.Common.BinaryId),
                               _NodeMetadata'documentRevision :: !(Prelude.Maybe Proto.Oll.Common.DocumentRevision),
                               _NodeMetadata'encoding :: !(Prelude.Maybe Data.Text.Text),
                               _NodeMetadata'hasByteOrderMark :: !Prelude.Bool,
                               _NodeMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NodeMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NodeMetadata "path" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'path (\ x__ y__ -> x__ {_NodeMetadata'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NodeMetadata "maybe'path" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'path (\ x__ y__ -> x__ {_NodeMetadata'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeMetadata "kind" NodeKind where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'kind (\ x__ y__ -> x__ {_NodeMetadata'kind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeMetadata "catalogRevision" Proto.Oll.Common.CatalogRevision where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'catalogRevision
           (\ x__ y__ -> x__ {_NodeMetadata'catalogRevision = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NodeMetadata "maybe'catalogRevision" (Prelude.Maybe Proto.Oll.Common.CatalogRevision) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'catalogRevision
           (\ x__ y__ -> x__ {_NodeMetadata'catalogRevision = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeMetadata "mediaType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'mediaType
           (\ x__ y__ -> x__ {_NodeMetadata'mediaType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NodeMetadata "maybe'mediaType" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'mediaType
           (\ x__ y__ -> x__ {_NodeMetadata'mediaType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeMetadata "sizeBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'sizeBytes
           (\ x__ y__ -> x__ {_NodeMetadata'sizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeMetadata "nodeId" Proto.Oll.Common.CatalogNodeId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'nodeId
           (\ x__ y__ -> x__ {_NodeMetadata'nodeId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NodeMetadata "maybe'nodeId" (Prelude.Maybe Proto.Oll.Common.CatalogNodeId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'nodeId
           (\ x__ y__ -> x__ {_NodeMetadata'nodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeMetadata "documentId" Proto.Oll.Common.DocumentId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'documentId
           (\ x__ y__ -> x__ {_NodeMetadata'documentId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NodeMetadata "maybe'documentId" (Prelude.Maybe Proto.Oll.Common.DocumentId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'documentId
           (\ x__ y__ -> x__ {_NodeMetadata'documentId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeMetadata "binaryId" Proto.Oll.Common.BinaryId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'binaryId
           (\ x__ y__ -> x__ {_NodeMetadata'binaryId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NodeMetadata "maybe'binaryId" (Prelude.Maybe Proto.Oll.Common.BinaryId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'binaryId
           (\ x__ y__ -> x__ {_NodeMetadata'binaryId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeMetadata "documentRevision" Proto.Oll.Common.DocumentRevision where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'documentRevision
           (\ x__ y__ -> x__ {_NodeMetadata'documentRevision = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NodeMetadata "maybe'documentRevision" (Prelude.Maybe Proto.Oll.Common.DocumentRevision) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'documentRevision
           (\ x__ y__ -> x__ {_NodeMetadata'documentRevision = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeMetadata "encoding" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'encoding
           (\ x__ y__ -> x__ {_NodeMetadata'encoding = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NodeMetadata "maybe'encoding" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'encoding
           (\ x__ y__ -> x__ {_NodeMetadata'encoding = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeMetadata "hasByteOrderMark" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeMetadata'hasByteOrderMark
           (\ x__ y__ -> x__ {_NodeMetadata'hasByteOrderMark = y__}))
        Prelude.id
instance Data.ProtoLens.Message NodeMetadata where
  messageName _ = Data.Text.pack "oll.protocol.NodeMetadata"
  packedMessageDescriptor _
    = "\n\
      \\fNodeMetadata\DC2.\n\
      \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2*\n\
      \\EOTkind\CAN\STX \SOH(\SO2\SYN.oll.protocol.NodeKindR\EOTkind\DC2H\n\
      \\DLEcatalog_revision\CAN\ETX \SOH(\v2\GS.oll.protocol.CatalogRevisionR\SIcatalogRevision\DC2\"\n\
      \\n\
      \media_type\CAN\EOT \SOH(\tH\NULR\tmediaType\136\SOH\SOH\DC2\GS\n\
      \\n\
      \size_bytes\CAN\ENQ \SOH(\EOTR\tsizeBytes\DC24\n\
      \\anode_id\CAN\ACK \SOH(\v2\ESC.oll.protocol.CatalogNodeIdR\ACKnodeId\DC2>\n\
      \\vdocument_id\CAN\a \SOH(\v2\CAN.oll.protocol.DocumentIdH\SOHR\n\
      \documentId\136\SOH\SOH\DC28\n\
      \\tbinary_id\CAN\b \SOH(\v2\SYN.oll.protocol.BinaryIdH\STXR\bbinaryId\136\SOH\SOH\DC2P\n\
      \\DC1document_revision\CAN\t \SOH(\v2\RS.oll.protocol.DocumentRevisionH\ETXR\DLEdocumentRevision\136\SOH\SOH\DC2\US\n\
      \\bencoding\CAN\n\
      \ \SOH(\tH\EOTR\bencoding\136\SOH\SOH\DC2-\n\
      \\DC3has_byte_order_mark\CAN\v \SOH(\bR\DLEhasByteOrderMarkB\r\n\
      \\v_media_typeB\SO\n\
      \\f_document_idB\f\n\
      \\n\
      \_binary_idB\DC4\n\
      \\DC2_document_revisionB\v\n\
      \\t_encoding"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor NodeMetadata
        kind__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kind"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor NodeKind)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"kind")) ::
              Data.ProtoLens.FieldDescriptor NodeMetadata
        catalogRevision__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "catalog_revision"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.CatalogRevision)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'catalogRevision")) ::
              Data.ProtoLens.FieldDescriptor NodeMetadata
        mediaType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "media_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mediaType")) ::
              Data.ProtoLens.FieldDescriptor NodeMetadata
        sizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sizeBytes")) ::
              Data.ProtoLens.FieldDescriptor NodeMetadata
        nodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.CatalogNodeId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nodeId")) ::
              Data.ProtoLens.FieldDescriptor NodeMetadata
        documentId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "document_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.DocumentId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'documentId")) ::
              Data.ProtoLens.FieldDescriptor NodeMetadata
        binaryId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "binary_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.BinaryId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'binaryId")) ::
              Data.ProtoLens.FieldDescriptor NodeMetadata
        documentRevision__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "document_revision"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.DocumentRevision)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'documentRevision")) ::
              Data.ProtoLens.FieldDescriptor NodeMetadata
        encoding__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "encoding"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'encoding")) ::
              Data.ProtoLens.FieldDescriptor NodeMetadata
        hasByteOrderMark__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "has_byte_order_mark"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hasByteOrderMark")) ::
              Data.ProtoLens.FieldDescriptor NodeMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, kind__field_descriptor),
           (Data.ProtoLens.Tag 3, catalogRevision__field_descriptor),
           (Data.ProtoLens.Tag 4, mediaType__field_descriptor),
           (Data.ProtoLens.Tag 5, sizeBytes__field_descriptor),
           (Data.ProtoLens.Tag 6, nodeId__field_descriptor),
           (Data.ProtoLens.Tag 7, documentId__field_descriptor),
           (Data.ProtoLens.Tag 8, binaryId__field_descriptor),
           (Data.ProtoLens.Tag 9, documentRevision__field_descriptor),
           (Data.ProtoLens.Tag 10, encoding__field_descriptor),
           (Data.ProtoLens.Tag 11, hasByteOrderMark__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NodeMetadata'_unknownFields
        (\ x__ y__ -> x__ {_NodeMetadata'_unknownFields = y__})
  defMessage
    = NodeMetadata'_constructor
        {_NodeMetadata'path = Prelude.Nothing,
         _NodeMetadata'kind = Data.ProtoLens.fieldDefault,
         _NodeMetadata'catalogRevision = Prelude.Nothing,
         _NodeMetadata'mediaType = Prelude.Nothing,
         _NodeMetadata'sizeBytes = Data.ProtoLens.fieldDefault,
         _NodeMetadata'nodeId = Prelude.Nothing,
         _NodeMetadata'documentId = Prelude.Nothing,
         _NodeMetadata'binaryId = Prelude.Nothing,
         _NodeMetadata'documentRevision = Prelude.Nothing,
         _NodeMetadata'encoding = Prelude.Nothing,
         _NodeMetadata'hasByteOrderMark = Data.ProtoLens.fieldDefault,
         _NodeMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NodeMetadata -> Data.ProtoLens.Encoding.Bytes.Parser NodeMetadata
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "kind"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kind") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "catalog_revision"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"catalogRevision") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "media_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mediaType") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "size_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sizeBytes") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "node_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nodeId") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "document_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"documentId") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "binary_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"binaryId") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "document_revision"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"documentRevision") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "encoding"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"encoding") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "has_byte_order_mark"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hasByteOrderMark") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NodeMetadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"kind") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'catalogRevision") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'mediaType") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sizeBytes") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nodeId") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'documentId") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'binaryId") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'documentRevision")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'encoding") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.Text.Encoding.encodeUtf8 _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"hasByteOrderMark")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (\ b -> if b then 1 else 0) _v))
                                           (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                              (Lens.Family2.view
                                                 Data.ProtoLens.unknownFields _x))))))))))))
instance Control.DeepSeq.NFData NodeMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NodeMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NodeMetadata'path x__)
                (Control.DeepSeq.deepseq
                   (_NodeMetadata'kind x__)
                   (Control.DeepSeq.deepseq
                      (_NodeMetadata'catalogRevision x__)
                      (Control.DeepSeq.deepseq
                         (_NodeMetadata'mediaType x__)
                         (Control.DeepSeq.deepseq
                            (_NodeMetadata'sizeBytes x__)
                            (Control.DeepSeq.deepseq
                               (_NodeMetadata'nodeId x__)
                               (Control.DeepSeq.deepseq
                                  (_NodeMetadata'documentId x__)
                                  (Control.DeepSeq.deepseq
                                     (_NodeMetadata'binaryId x__)
                                     (Control.DeepSeq.deepseq
                                        (_NodeMetadata'documentRevision x__)
                                        (Control.DeepSeq.deepseq
                                           (_NodeMetadata'encoding x__)
                                           (Control.DeepSeq.deepseq
                                              (_NodeMetadata'hasByteOrderMark x__) ())))))))))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.document' @:: Lens' ReadCrdtRequest DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'document' @:: Lens' ReadCrdtRequest (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.object' @:: Lens' ReadCrdtRequest CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'object' @:: Lens' ReadCrdtRequest (Prelude.Maybe CrdtObjectPath)@ -}
data ReadCrdtRequest
  = ReadCrdtRequest'_constructor {_ReadCrdtRequest'document :: !(Prelude.Maybe DocumentPath),
                                  _ReadCrdtRequest'object :: !(Prelude.Maybe CrdtObjectPath),
                                  _ReadCrdtRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadCrdtRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadCrdtRequest "document" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadCrdtRequest'document
           (\ x__ y__ -> x__ {_ReadCrdtRequest'document = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadCrdtRequest "maybe'document" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadCrdtRequest'document
           (\ x__ y__ -> x__ {_ReadCrdtRequest'document = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadCrdtRequest "object" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadCrdtRequest'object
           (\ x__ y__ -> x__ {_ReadCrdtRequest'object = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadCrdtRequest "maybe'object" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadCrdtRequest'object
           (\ x__ y__ -> x__ {_ReadCrdtRequest'object = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadCrdtRequest where
  messageName _ = Data.Text.pack "oll.protocol.ReadCrdtRequest"
  packedMessageDescriptor _
    = "\n\
      \\SIReadCrdtRequest\DC26\n\
      \\bdocument\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\bdocument\DC24\n\
      \\ACKobject\CAN\STX \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKobject"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        document__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "document"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'document")) ::
              Data.ProtoLens.FieldDescriptor ReadCrdtRequest
        object__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'object")) ::
              Data.ProtoLens.FieldDescriptor ReadCrdtRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, document__field_descriptor),
           (Data.ProtoLens.Tag 2, object__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadCrdtRequest'_unknownFields
        (\ x__ y__ -> x__ {_ReadCrdtRequest'_unknownFields = y__})
  defMessage
    = ReadCrdtRequest'_constructor
        {_ReadCrdtRequest'document = Prelude.Nothing,
         _ReadCrdtRequest'object = Prelude.Nothing,
         _ReadCrdtRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadCrdtRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser ReadCrdtRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "document"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"document") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "object"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"object") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ReadCrdtRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'document") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'object") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ReadCrdtRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadCrdtRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ReadCrdtRequest'document x__)
                (Control.DeepSeq.deepseq (_ReadCrdtRequest'object x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.revision' @:: Lens' ReadCrdtResponse Proto.Oll.Common.DocumentRevision@
         * 'Proto.Oll.Document_Fields.maybe'revision' @:: Lens' ReadCrdtResponse (Prelude.Maybe Proto.Oll.Common.DocumentRevision)@
         * 'Proto.Oll.Document_Fields.value' @:: Lens' ReadCrdtResponse CrdtValue@
         * 'Proto.Oll.Document_Fields.maybe'value' @:: Lens' ReadCrdtResponse (Prelude.Maybe CrdtValue)@ -}
data ReadCrdtResponse
  = ReadCrdtResponse'_constructor {_ReadCrdtResponse'revision :: !(Prelude.Maybe Proto.Oll.Common.DocumentRevision),
                                   _ReadCrdtResponse'value :: !(Prelude.Maybe CrdtValue),
                                   _ReadCrdtResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadCrdtResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadCrdtResponse "revision" Proto.Oll.Common.DocumentRevision where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadCrdtResponse'revision
           (\ x__ y__ -> x__ {_ReadCrdtResponse'revision = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadCrdtResponse "maybe'revision" (Prelude.Maybe Proto.Oll.Common.DocumentRevision) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadCrdtResponse'revision
           (\ x__ y__ -> x__ {_ReadCrdtResponse'revision = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadCrdtResponse "value" CrdtValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadCrdtResponse'value
           (\ x__ y__ -> x__ {_ReadCrdtResponse'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadCrdtResponse "maybe'value" (Prelude.Maybe CrdtValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadCrdtResponse'value
           (\ x__ y__ -> x__ {_ReadCrdtResponse'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadCrdtResponse where
  messageName _ = Data.Text.pack "oll.protocol.ReadCrdtResponse"
  packedMessageDescriptor _
    = "\n\
      \\DLEReadCrdtResponse\DC2:\n\
      \\brevision\CAN\SOH \SOH(\v2\RS.oll.protocol.DocumentRevisionR\brevision\DC2-\n\
      \\ENQvalue\CAN\STX \SOH(\v2\ETB.oll.protocol.CrdtValueR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        revision__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "revision"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.DocumentRevision)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'revision")) ::
              Data.ProtoLens.FieldDescriptor ReadCrdtResponse
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor ReadCrdtResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, revision__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadCrdtResponse'_unknownFields
        (\ x__ y__ -> x__ {_ReadCrdtResponse'_unknownFields = y__})
  defMessage
    = ReadCrdtResponse'_constructor
        {_ReadCrdtResponse'revision = Prelude.Nothing,
         _ReadCrdtResponse'value = Prelude.Nothing,
         _ReadCrdtResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadCrdtResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser ReadCrdtResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "revision"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"revision") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ReadCrdtResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'revision") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ReadCrdtResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadCrdtResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ReadCrdtResponse'revision x__)
                (Control.DeepSeq.deepseq (_ReadCrdtResponse'value x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.path' @:: Lens' ReadDocumentRequest DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'path' @:: Lens' ReadDocumentRequest (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.projection' @:: Lens' ReadDocumentRequest DocumentProjection@ -}
data ReadDocumentRequest
  = ReadDocumentRequest'_constructor {_ReadDocumentRequest'path :: !(Prelude.Maybe DocumentPath),
                                      _ReadDocumentRequest'projection :: !DocumentProjection,
                                      _ReadDocumentRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadDocumentRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadDocumentRequest "path" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadDocumentRequest'path
           (\ x__ y__ -> x__ {_ReadDocumentRequest'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadDocumentRequest "maybe'path" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadDocumentRequest'path
           (\ x__ y__ -> x__ {_ReadDocumentRequest'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReadDocumentRequest "projection" DocumentProjection where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadDocumentRequest'projection
           (\ x__ y__ -> x__ {_ReadDocumentRequest'projection = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadDocumentRequest where
  messageName _ = Data.Text.pack "oll.protocol.ReadDocumentRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3ReadDocumentRequest\DC2.\n\
      \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2@\n\
      \\n\
      \projection\CAN\STX \SOH(\SO2 .oll.protocol.DocumentProjectionR\n\
      \projection"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor ReadDocumentRequest
        projection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "projection"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentProjection)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"projection")) ::
              Data.ProtoLens.FieldDescriptor ReadDocumentRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, projection__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadDocumentRequest'_unknownFields
        (\ x__ y__ -> x__ {_ReadDocumentRequest'_unknownFields = y__})
  defMessage
    = ReadDocumentRequest'_constructor
        {_ReadDocumentRequest'path = Prelude.Nothing,
         _ReadDocumentRequest'projection = Data.ProtoLens.fieldDefault,
         _ReadDocumentRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadDocumentRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser ReadDocumentRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "projection"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"projection") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ReadDocumentRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"projection") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ReadDocumentRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadDocumentRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ReadDocumentRequest'path x__)
                (Control.DeepSeq.deepseq (_ReadDocumentRequest'projection x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.document' @:: Lens' ReadDocumentResponse DocumentSnapshot@
         * 'Proto.Oll.Document_Fields.maybe'document' @:: Lens' ReadDocumentResponse (Prelude.Maybe DocumentSnapshot)@ -}
data ReadDocumentResponse
  = ReadDocumentResponse'_constructor {_ReadDocumentResponse'document :: !(Prelude.Maybe DocumentSnapshot),
                                       _ReadDocumentResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReadDocumentResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReadDocumentResponse "document" DocumentSnapshot where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadDocumentResponse'document
           (\ x__ y__ -> x__ {_ReadDocumentResponse'document = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReadDocumentResponse "maybe'document" (Prelude.Maybe DocumentSnapshot) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReadDocumentResponse'document
           (\ x__ y__ -> x__ {_ReadDocumentResponse'document = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReadDocumentResponse where
  messageName _ = Data.Text.pack "oll.protocol.ReadDocumentResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4ReadDocumentResponse\DC2:\n\
      \\bdocument\CAN\SOH \SOH(\v2\RS.oll.protocol.DocumentSnapshotR\bdocument"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        document__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "document"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentSnapshot)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'document")) ::
              Data.ProtoLens.FieldDescriptor ReadDocumentResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, document__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReadDocumentResponse'_unknownFields
        (\ x__ y__ -> x__ {_ReadDocumentResponse'_unknownFields = y__})
  defMessage
    = ReadDocumentResponse'_constructor
        {_ReadDocumentResponse'document = Prelude.Nothing,
         _ReadDocumentResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReadDocumentResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser ReadDocumentResponse
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "document"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"document") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ReadDocumentResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'document") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ReadDocumentResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReadDocumentResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ReadDocumentResponse'document x__) ())
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.path' @:: Lens' ReplaceDocument DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'path' @:: Lens' ReplaceDocument (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.content' @:: Lens' ReplaceDocument Data.Text.Text@
         * 'Proto.Oll.Document_Fields.mediaType' @:: Lens' ReplaceDocument Data.Text.Text@
         * 'Proto.Oll.Document_Fields.maybe'mediaType' @:: Lens' ReplaceDocument (Prelude.Maybe Data.Text.Text)@ -}
data ReplaceDocument
  = ReplaceDocument'_constructor {_ReplaceDocument'path :: !(Prelude.Maybe DocumentPath),
                                  _ReplaceDocument'content :: !Data.Text.Text,
                                  _ReplaceDocument'mediaType :: !(Prelude.Maybe Data.Text.Text),
                                  _ReplaceDocument'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReplaceDocument where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReplaceDocument "path" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReplaceDocument'path
           (\ x__ y__ -> x__ {_ReplaceDocument'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ReplaceDocument "maybe'path" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReplaceDocument'path
           (\ x__ y__ -> x__ {_ReplaceDocument'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReplaceDocument "content" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReplaceDocument'content
           (\ x__ y__ -> x__ {_ReplaceDocument'content = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ReplaceDocument "mediaType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReplaceDocument'mediaType
           (\ x__ y__ -> x__ {_ReplaceDocument'mediaType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ReplaceDocument "maybe'mediaType" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReplaceDocument'mediaType
           (\ x__ y__ -> x__ {_ReplaceDocument'mediaType = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReplaceDocument where
  messageName _ = Data.Text.pack "oll.protocol.ReplaceDocument"
  packedMessageDescriptor _
    = "\n\
      \\SIReplaceDocument\DC2.\n\
      \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2\CAN\n\
      \\acontent\CAN\STX \SOH(\tR\acontent\DC2\"\n\
      \\n\
      \media_type\CAN\ETX \SOH(\tH\NULR\tmediaType\136\SOH\SOHB\r\n\
      \\v_media_type"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor ReplaceDocument
        content__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"content")) ::
              Data.ProtoLens.FieldDescriptor ReplaceDocument
        mediaType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "media_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mediaType")) ::
              Data.ProtoLens.FieldDescriptor ReplaceDocument
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, content__field_descriptor),
           (Data.ProtoLens.Tag 3, mediaType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReplaceDocument'_unknownFields
        (\ x__ y__ -> x__ {_ReplaceDocument'_unknownFields = y__})
  defMessage
    = ReplaceDocument'_constructor
        {_ReplaceDocument'path = Prelude.Nothing,
         _ReplaceDocument'content = Data.ProtoLens.fieldDefault,
         _ReplaceDocument'mediaType = Prelude.Nothing,
         _ReplaceDocument'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ReplaceDocument
          -> Data.ProtoLens.Encoding.Bytes.Parser ReplaceDocument
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "content"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"content") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "media_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mediaType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ReplaceDocument"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"content") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'mediaType") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ReplaceDocument where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReplaceDocument'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ReplaceDocument'path x__)
                (Control.DeepSeq.deepseq
                   (_ReplaceDocument'content x__)
                   (Control.DeepSeq.deepseq (_ReplaceDocument'mediaType x__) ())))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.maybe'conflict' @:: Lens' RevisionConflictDetail (Prelude.Maybe RevisionConflictDetail'Conflict)@
         * 'Proto.Oll.Document_Fields.maybe'catalog' @:: Lens' RevisionConflictDetail (Prelude.Maybe CatalogRevisionConflict)@
         * 'Proto.Oll.Document_Fields.catalog' @:: Lens' RevisionConflictDetail CatalogRevisionConflict@
         * 'Proto.Oll.Document_Fields.maybe'document' @:: Lens' RevisionConflictDetail (Prelude.Maybe DocumentRevisionConflict)@
         * 'Proto.Oll.Document_Fields.document' @:: Lens' RevisionConflictDetail DocumentRevisionConflict@ -}
data RevisionConflictDetail
  = RevisionConflictDetail'_constructor {_RevisionConflictDetail'conflict :: !(Prelude.Maybe RevisionConflictDetail'Conflict),
                                         _RevisionConflictDetail'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RevisionConflictDetail where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data RevisionConflictDetail'Conflict
  = RevisionConflictDetail'Catalog !CatalogRevisionConflict |
    RevisionConflictDetail'Document !DocumentRevisionConflict
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField RevisionConflictDetail "maybe'conflict" (Prelude.Maybe RevisionConflictDetail'Conflict) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RevisionConflictDetail'conflict
           (\ x__ y__ -> x__ {_RevisionConflictDetail'conflict = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RevisionConflictDetail "maybe'catalog" (Prelude.Maybe CatalogRevisionConflict) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RevisionConflictDetail'conflict
           (\ x__ y__ -> x__ {_RevisionConflictDetail'conflict = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RevisionConflictDetail'Catalog x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RevisionConflictDetail'Catalog y__))
instance Data.ProtoLens.Field.HasField RevisionConflictDetail "catalog" CatalogRevisionConflict where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RevisionConflictDetail'conflict
           (\ x__ y__ -> x__ {_RevisionConflictDetail'conflict = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RevisionConflictDetail'Catalog x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RevisionConflictDetail'Catalog y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField RevisionConflictDetail "maybe'document" (Prelude.Maybe DocumentRevisionConflict) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RevisionConflictDetail'conflict
           (\ x__ y__ -> x__ {_RevisionConflictDetail'conflict = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (RevisionConflictDetail'Document x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap RevisionConflictDetail'Document y__))
instance Data.ProtoLens.Field.HasField RevisionConflictDetail "document" DocumentRevisionConflict where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RevisionConflictDetail'conflict
           (\ x__ y__ -> x__ {_RevisionConflictDetail'conflict = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (RevisionConflictDetail'Document x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap RevisionConflictDetail'Document y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message RevisionConflictDetail where
  messageName _
    = Data.Text.pack "oll.protocol.RevisionConflictDetail"
  packedMessageDescriptor _
    = "\n\
      \\SYNRevisionConflictDetail\DC2A\n\
      \\acatalog\CAN\SOH \SOH(\v2%.oll.protocol.CatalogRevisionConflictH\NULR\acatalog\DC2D\n\
      \\bdocument\CAN\STX \SOH(\v2&.oll.protocol.DocumentRevisionConflictH\NULR\bdocumentB\n\
      \\n\
      \\bconflict"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        catalog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "catalog"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CatalogRevisionConflict)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'catalog")) ::
              Data.ProtoLens.FieldDescriptor RevisionConflictDetail
        document__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "document"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentRevisionConflict)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'document")) ::
              Data.ProtoLens.FieldDescriptor RevisionConflictDetail
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, catalog__field_descriptor),
           (Data.ProtoLens.Tag 2, document__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RevisionConflictDetail'_unknownFields
        (\ x__ y__ -> x__ {_RevisionConflictDetail'_unknownFields = y__})
  defMessage
    = RevisionConflictDetail'_constructor
        {_RevisionConflictDetail'conflict = Prelude.Nothing,
         _RevisionConflictDetail'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RevisionConflictDetail
          -> Data.ProtoLens.Encoding.Bytes.Parser RevisionConflictDetail
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "catalog"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"catalog") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "document"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"document") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RevisionConflictDetail"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'conflict") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (RevisionConflictDetail'Catalog v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (RevisionConflictDetail'Document v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RevisionConflictDetail where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RevisionConflictDetail'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RevisionConflictDetail'conflict x__) ())
instance Control.DeepSeq.NFData RevisionConflictDetail'Conflict where
  rnf (RevisionConflictDetail'Catalog x__) = Control.DeepSeq.rnf x__
  rnf (RevisionConflictDetail'Document x__) = Control.DeepSeq.rnf x__
_RevisionConflictDetail'Catalog ::
  Data.ProtoLens.Prism.Prism' RevisionConflictDetail'Conflict CatalogRevisionConflict
_RevisionConflictDetail'Catalog
  = Data.ProtoLens.Prism.prism'
      RevisionConflictDetail'Catalog
      (\ p__
         -> case p__ of
              (RevisionConflictDetail'Catalog p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_RevisionConflictDetail'Document ::
  Data.ProtoLens.Prism.Prism' RevisionConflictDetail'Conflict DocumentRevisionConflict
_RevisionConflictDetail'Document
  = Data.ProtoLens.Prism.prism'
      RevisionConflictDetail'Document
      (\ p__
         -> case p__ of
              (RevisionConflictDetail'Document p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.path' @:: Lens' SpliceDocumentText DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'path' @:: Lens' SpliceDocumentText (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.scalarIndex' @:: Lens' SpliceDocumentText Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.deleteScalarCount' @:: Lens' SpliceDocumentText Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.insertText' @:: Lens' SpliceDocumentText Data.Text.Text@ -}
data SpliceDocumentText
  = SpliceDocumentText'_constructor {_SpliceDocumentText'path :: !(Prelude.Maybe DocumentPath),
                                     _SpliceDocumentText'scalarIndex :: !Data.Word.Word64,
                                     _SpliceDocumentText'deleteScalarCount :: !Data.Word.Word64,
                                     _SpliceDocumentText'insertText :: !Data.Text.Text,
                                     _SpliceDocumentText'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SpliceDocumentText where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SpliceDocumentText "path" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpliceDocumentText'path
           (\ x__ y__ -> x__ {_SpliceDocumentText'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SpliceDocumentText "maybe'path" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpliceDocumentText'path
           (\ x__ y__ -> x__ {_SpliceDocumentText'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SpliceDocumentText "scalarIndex" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpliceDocumentText'scalarIndex
           (\ x__ y__ -> x__ {_SpliceDocumentText'scalarIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SpliceDocumentText "deleteScalarCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpliceDocumentText'deleteScalarCount
           (\ x__ y__ -> x__ {_SpliceDocumentText'deleteScalarCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SpliceDocumentText "insertText" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpliceDocumentText'insertText
           (\ x__ y__ -> x__ {_SpliceDocumentText'insertText = y__}))
        Prelude.id
instance Data.ProtoLens.Message SpliceDocumentText where
  messageName _ = Data.Text.pack "oll.protocol.SpliceDocumentText"
  packedMessageDescriptor _
    = "\n\
      \\DC2SpliceDocumentText\DC2.\n\
      \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2!\n\
      \\fscalar_index\CAN\STX \SOH(\EOTR\vscalarIndex\DC2.\n\
      \\DC3delete_scalar_count\CAN\ETX \SOH(\EOTR\DC1deleteScalarCount\DC2\US\n\
      \\vinsert_text\CAN\EOT \SOH(\tR\n\
      \insertText"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor SpliceDocumentText
        scalarIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scalar_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"scalarIndex")) ::
              Data.ProtoLens.FieldDescriptor SpliceDocumentText
        deleteScalarCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delete_scalar_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deleteScalarCount")) ::
              Data.ProtoLens.FieldDescriptor SpliceDocumentText
        insertText__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "insert_text"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"insertText")) ::
              Data.ProtoLens.FieldDescriptor SpliceDocumentText
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, scalarIndex__field_descriptor),
           (Data.ProtoLens.Tag 3, deleteScalarCount__field_descriptor),
           (Data.ProtoLens.Tag 4, insertText__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SpliceDocumentText'_unknownFields
        (\ x__ y__ -> x__ {_SpliceDocumentText'_unknownFields = y__})
  defMessage
    = SpliceDocumentText'_constructor
        {_SpliceDocumentText'path = Prelude.Nothing,
         _SpliceDocumentText'scalarIndex = Data.ProtoLens.fieldDefault,
         _SpliceDocumentText'deleteScalarCount = Data.ProtoLens.fieldDefault,
         _SpliceDocumentText'insertText = Data.ProtoLens.fieldDefault,
         _SpliceDocumentText'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SpliceDocumentText
          -> Data.ProtoLens.Encoding.Bytes.Parser SpliceDocumentText
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "scalar_index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scalarIndex") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "delete_scalar_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deleteScalarCount") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "insert_text"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"insertText") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SpliceDocumentText"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"scalarIndex") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"deleteScalarCount") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"insertText") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData SpliceDocumentText where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SpliceDocumentText'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SpliceDocumentText'path x__)
                (Control.DeepSeq.deepseq
                   (_SpliceDocumentText'scalarIndex x__)
                   (Control.DeepSeq.deepseq
                      (_SpliceDocumentText'deleteScalarCount x__)
                      (Control.DeepSeq.deepseq
                         (_SpliceDocumentText'insertText x__) ()))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' TextDelete CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' TextDelete (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.scalarIndex' @:: Lens' TextDelete Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.scalarCount' @:: Lens' TextDelete Data.Word.Word64@ -}
data TextDelete
  = TextDelete'_constructor {_TextDelete'target :: !(Prelude.Maybe CrdtObjectPath),
                             _TextDelete'scalarIndex :: !Data.Word.Word64,
                             _TextDelete'scalarCount :: !Data.Word.Word64,
                             _TextDelete'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TextDelete where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TextDelete "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextDelete'target (\ x__ y__ -> x__ {_TextDelete'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TextDelete "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextDelete'target (\ x__ y__ -> x__ {_TextDelete'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextDelete "scalarIndex" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextDelete'scalarIndex
           (\ x__ y__ -> x__ {_TextDelete'scalarIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextDelete "scalarCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextDelete'scalarCount
           (\ x__ y__ -> x__ {_TextDelete'scalarCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message TextDelete where
  messageName _ = Data.Text.pack "oll.protocol.TextDelete"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \TextDelete\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2!\n\
      \\fscalar_index\CAN\STX \SOH(\EOTR\vscalarIndex\DC2!\n\
      \\fscalar_count\CAN\ETX \SOH(\EOTR\vscalarCount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor TextDelete
        scalarIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scalar_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"scalarIndex")) ::
              Data.ProtoLens.FieldDescriptor TextDelete
        scalarCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scalar_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"scalarCount")) ::
              Data.ProtoLens.FieldDescriptor TextDelete
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, scalarIndex__field_descriptor),
           (Data.ProtoLens.Tag 3, scalarCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TextDelete'_unknownFields
        (\ x__ y__ -> x__ {_TextDelete'_unknownFields = y__})
  defMessage
    = TextDelete'_constructor
        {_TextDelete'target = Prelude.Nothing,
         _TextDelete'scalarIndex = Data.ProtoLens.fieldDefault,
         _TextDelete'scalarCount = Data.ProtoLens.fieldDefault,
         _TextDelete'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TextDelete -> Data.ProtoLens.Encoding.Bytes.Parser TextDelete
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "scalar_index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scalarIndex") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "scalar_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scalarCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TextDelete"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"scalarIndex") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"scalarCount") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TextDelete where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TextDelete'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TextDelete'target x__)
                (Control.DeepSeq.deepseq
                   (_TextDelete'scalarIndex x__)
                   (Control.DeepSeq.deepseq (_TextDelete'scalarCount x__) ())))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' TextInsert CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' TextInsert (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.scalarIndex' @:: Lens' TextInsert Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.text' @:: Lens' TextInsert Data.Text.Text@ -}
data TextInsert
  = TextInsert'_constructor {_TextInsert'target :: !(Prelude.Maybe CrdtObjectPath),
                             _TextInsert'scalarIndex :: !Data.Word.Word64,
                             _TextInsert'text :: !Data.Text.Text,
                             _TextInsert'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TextInsert where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TextInsert "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextInsert'target (\ x__ y__ -> x__ {_TextInsert'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TextInsert "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextInsert'target (\ x__ y__ -> x__ {_TextInsert'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextInsert "scalarIndex" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextInsert'scalarIndex
           (\ x__ y__ -> x__ {_TextInsert'scalarIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextInsert "text" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextInsert'text (\ x__ y__ -> x__ {_TextInsert'text = y__}))
        Prelude.id
instance Data.ProtoLens.Message TextInsert where
  messageName _ = Data.Text.pack "oll.protocol.TextInsert"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \TextInsert\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2!\n\
      \\fscalar_index\CAN\STX \SOH(\EOTR\vscalarIndex\DC2\DC2\n\
      \\EOTtext\CAN\ETX \SOH(\tR\EOTtext"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor TextInsert
        scalarIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scalar_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"scalarIndex")) ::
              Data.ProtoLens.FieldDescriptor TextInsert
        text__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"text")) ::
              Data.ProtoLens.FieldDescriptor TextInsert
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, scalarIndex__field_descriptor),
           (Data.ProtoLens.Tag 3, text__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TextInsert'_unknownFields
        (\ x__ y__ -> x__ {_TextInsert'_unknownFields = y__})
  defMessage
    = TextInsert'_constructor
        {_TextInsert'target = Prelude.Nothing,
         _TextInsert'scalarIndex = Data.ProtoLens.fieldDefault,
         _TextInsert'text = Data.ProtoLens.fieldDefault,
         _TextInsert'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TextInsert -> Data.ProtoLens.Encoding.Bytes.Parser TextInsert
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "scalar_index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"scalarIndex") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "text"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"text") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TextInsert"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"scalarIndex") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"text") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TextInsert where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TextInsert'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TextInsert'target x__)
                (Control.DeepSeq.deepseq
                   (_TextInsert'scalarIndex x__)
                   (Control.DeepSeq.deepseq (_TextInsert'text x__) ())))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' TextMark CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' TextMark (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.startScalar' @:: Lens' TextMark Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.endScalar' @:: Lens' TextMark Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.name' @:: Lens' TextMark Data.Text.Text@
         * 'Proto.Oll.Document_Fields.value' @:: Lens' TextMark CrdtScalar@
         * 'Proto.Oll.Document_Fields.maybe'value' @:: Lens' TextMark (Prelude.Maybe CrdtScalar)@ -}
data TextMark
  = TextMark'_constructor {_TextMark'target :: !(Prelude.Maybe CrdtObjectPath),
                           _TextMark'startScalar :: !Data.Word.Word64,
                           _TextMark'endScalar :: !Data.Word.Word64,
                           _TextMark'name :: !Data.Text.Text,
                           _TextMark'value :: !(Prelude.Maybe CrdtScalar),
                           _TextMark'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TextMark where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TextMark "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextMark'target (\ x__ y__ -> x__ {_TextMark'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TextMark "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextMark'target (\ x__ y__ -> x__ {_TextMark'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextMark "startScalar" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextMark'startScalar
           (\ x__ y__ -> x__ {_TextMark'startScalar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextMark "endScalar" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextMark'endScalar (\ x__ y__ -> x__ {_TextMark'endScalar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextMark "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextMark'name (\ x__ y__ -> x__ {_TextMark'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextMark "value" CrdtScalar where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextMark'value (\ x__ y__ -> x__ {_TextMark'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TextMark "maybe'value" (Prelude.Maybe CrdtScalar) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextMark'value (\ x__ y__ -> x__ {_TextMark'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TextMark where
  messageName _ = Data.Text.pack "oll.protocol.TextMark"
  packedMessageDescriptor _
    = "\n\
      \\bTextMark\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2!\n\
      \\fstart_scalar\CAN\STX \SOH(\EOTR\vstartScalar\DC2\GS\n\
      \\n\
      \end_scalar\CAN\ETX \SOH(\EOTR\tendScalar\DC2\DC2\n\
      \\EOTname\CAN\EOT \SOH(\tR\EOTname\DC2.\n\
      \\ENQvalue\CAN\ENQ \SOH(\v2\CAN.oll.protocol.CrdtScalarR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor TextMark
        startScalar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_scalar"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startScalar")) ::
              Data.ProtoLens.FieldDescriptor TextMark
        endScalar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_scalar"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endScalar")) ::
              Data.ProtoLens.FieldDescriptor TextMark
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor TextMark
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtScalar)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor TextMark
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, startScalar__field_descriptor),
           (Data.ProtoLens.Tag 3, endScalar__field_descriptor),
           (Data.ProtoLens.Tag 4, name__field_descriptor),
           (Data.ProtoLens.Tag 5, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TextMark'_unknownFields
        (\ x__ y__ -> x__ {_TextMark'_unknownFields = y__})
  defMessage
    = TextMark'_constructor
        {_TextMark'target = Prelude.Nothing,
         _TextMark'startScalar = Data.ProtoLens.fieldDefault,
         _TextMark'endScalar = Data.ProtoLens.fieldDefault,
         _TextMark'name = Data.ProtoLens.fieldDefault,
         _TextMark'value = Prelude.Nothing, _TextMark'_unknownFields = []}
  parseMessage
    = let
        loop :: TextMark -> Data.ProtoLens.Encoding.Bytes.Parser TextMark
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "start_scalar"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startScalar") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "end_scalar"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endScalar") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TextMark"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"startScalar") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endScalar") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData TextMark where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TextMark'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TextMark'target x__)
                (Control.DeepSeq.deepseq
                   (_TextMark'startScalar x__)
                   (Control.DeepSeq.deepseq
                      (_TextMark'endScalar x__)
                      (Control.DeepSeq.deepseq
                         (_TextMark'name x__)
                         (Control.DeepSeq.deepseq (_TextMark'value x__) ())))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' TextUnmark CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' TextUnmark (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.startScalar' @:: Lens' TextUnmark Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.endScalar' @:: Lens' TextUnmark Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.name' @:: Lens' TextUnmark Data.Text.Text@ -}
data TextUnmark
  = TextUnmark'_constructor {_TextUnmark'target :: !(Prelude.Maybe CrdtObjectPath),
                             _TextUnmark'startScalar :: !Data.Word.Word64,
                             _TextUnmark'endScalar :: !Data.Word.Word64,
                             _TextUnmark'name :: !Data.Text.Text,
                             _TextUnmark'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TextUnmark where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TextUnmark "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextUnmark'target (\ x__ y__ -> x__ {_TextUnmark'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TextUnmark "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextUnmark'target (\ x__ y__ -> x__ {_TextUnmark'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextUnmark "startScalar" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextUnmark'startScalar
           (\ x__ y__ -> x__ {_TextUnmark'startScalar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextUnmark "endScalar" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextUnmark'endScalar
           (\ x__ y__ -> x__ {_TextUnmark'endScalar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextUnmark "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextUnmark'name (\ x__ y__ -> x__ {_TextUnmark'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message TextUnmark where
  messageName _ = Data.Text.pack "oll.protocol.TextUnmark"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \TextUnmark\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2!\n\
      \\fstart_scalar\CAN\STX \SOH(\EOTR\vstartScalar\DC2\GS\n\
      \\n\
      \end_scalar\CAN\ETX \SOH(\EOTR\tendScalar\DC2\DC2\n\
      \\EOTname\CAN\EOT \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor TextUnmark
        startScalar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_scalar"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startScalar")) ::
              Data.ProtoLens.FieldDescriptor TextUnmark
        endScalar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_scalar"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endScalar")) ::
              Data.ProtoLens.FieldDescriptor TextUnmark
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor TextUnmark
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, startScalar__field_descriptor),
           (Data.ProtoLens.Tag 3, endScalar__field_descriptor),
           (Data.ProtoLens.Tag 4, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TextUnmark'_unknownFields
        (\ x__ y__ -> x__ {_TextUnmark'_unknownFields = y__})
  defMessage
    = TextUnmark'_constructor
        {_TextUnmark'target = Prelude.Nothing,
         _TextUnmark'startScalar = Data.ProtoLens.fieldDefault,
         _TextUnmark'endScalar = Data.ProtoLens.fieldDefault,
         _TextUnmark'name = Data.ProtoLens.fieldDefault,
         _TextUnmark'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TextUnmark -> Data.ProtoLens.Encoding.Bytes.Parser TextUnmark
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "start_scalar"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startScalar") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "end_scalar"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endScalar") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TextUnmark"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"startScalar") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endScalar") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TextUnmark where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TextUnmark'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TextUnmark'target x__)
                (Control.DeepSeq.deepseq
                   (_TextUnmark'startScalar x__)
                   (Control.DeepSeq.deepseq
                      (_TextUnmark'endScalar x__)
                      (Control.DeepSeq.deepseq (_TextUnmark'name x__) ()))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' TreeCreateNode CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' TreeCreateNode (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.nodeId' @:: Lens' TreeCreateNode Data.Text.Text@
         * 'Proto.Oll.Document_Fields.parentId' @:: Lens' TreeCreateNode Data.Text.Text@
         * 'Proto.Oll.Document_Fields.maybe'parentId' @:: Lens' TreeCreateNode (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Document_Fields.index' @:: Lens' TreeCreateNode Data.Word.Word64@
         * 'Proto.Oll.Document_Fields.metadata' @:: Lens' TreeCreateNode (Data.Map.Map Data.Text.Text CrdtScalar)@ -}
data TreeCreateNode
  = TreeCreateNode'_constructor {_TreeCreateNode'target :: !(Prelude.Maybe CrdtObjectPath),
                                 _TreeCreateNode'nodeId :: !Data.Text.Text,
                                 _TreeCreateNode'parentId :: !(Prelude.Maybe Data.Text.Text),
                                 _TreeCreateNode'index :: !Data.Word.Word64,
                                 _TreeCreateNode'metadata :: !(Data.Map.Map Data.Text.Text CrdtScalar),
                                 _TreeCreateNode'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TreeCreateNode where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TreeCreateNode "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeCreateNode'target
           (\ x__ y__ -> x__ {_TreeCreateNode'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TreeCreateNode "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeCreateNode'target
           (\ x__ y__ -> x__ {_TreeCreateNode'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeCreateNode "nodeId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeCreateNode'nodeId
           (\ x__ y__ -> x__ {_TreeCreateNode'nodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeCreateNode "parentId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeCreateNode'parentId
           (\ x__ y__ -> x__ {_TreeCreateNode'parentId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TreeCreateNode "maybe'parentId" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeCreateNode'parentId
           (\ x__ y__ -> x__ {_TreeCreateNode'parentId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeCreateNode "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeCreateNode'index
           (\ x__ y__ -> x__ {_TreeCreateNode'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeCreateNode "metadata" (Data.Map.Map Data.Text.Text CrdtScalar) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeCreateNode'metadata
           (\ x__ y__ -> x__ {_TreeCreateNode'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message TreeCreateNode where
  messageName _ = Data.Text.pack "oll.protocol.TreeCreateNode"
  packedMessageDescriptor _
    = "\n\
      \\SOTreeCreateNode\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\ETB\n\
      \\anode_id\CAN\STX \SOH(\tR\ACKnodeId\DC2 \n\
      \\tparent_id\CAN\ETX \SOH(\tH\NULR\bparentId\136\SOH\SOH\DC2\DC4\n\
      \\ENQindex\CAN\EOT \SOH(\EOTR\ENQindex\DC2F\n\
      \\bmetadata\CAN\ENQ \ETX(\v2*.oll.protocol.TreeCreateNode.MetadataEntryR\bmetadata\SUBU\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2.\n\
      \\ENQvalue\CAN\STX \SOH(\v2\CAN.oll.protocol.CrdtScalarR\ENQvalue:\STX8\SOHB\f\n\
      \\n\
      \_parent_id"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor TreeCreateNode
        nodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"nodeId")) ::
              Data.ProtoLens.FieldDescriptor TreeCreateNode
        parentId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'parentId")) ::
              Data.ProtoLens.FieldDescriptor TreeCreateNode
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor TreeCreateNode
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TreeCreateNode'MetadataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor TreeCreateNode
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, nodeId__field_descriptor),
           (Data.ProtoLens.Tag 3, parentId__field_descriptor),
           (Data.ProtoLens.Tag 4, index__field_descriptor),
           (Data.ProtoLens.Tag 5, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TreeCreateNode'_unknownFields
        (\ x__ y__ -> x__ {_TreeCreateNode'_unknownFields = y__})
  defMessage
    = TreeCreateNode'_constructor
        {_TreeCreateNode'target = Prelude.Nothing,
         _TreeCreateNode'nodeId = Data.ProtoLens.fieldDefault,
         _TreeCreateNode'parentId = Prelude.Nothing,
         _TreeCreateNode'index = Data.ProtoLens.fieldDefault,
         _TreeCreateNode'metadata = Data.Map.empty,
         _TreeCreateNode'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TreeCreateNode
          -> Data.ProtoLens.Encoding.Bytes.Parser TreeCreateNode
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "node_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nodeId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "parent_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"parentId") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        42
                          -> do !(entry :: TreeCreateNode'MetadataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                    (Prelude.fromIntegral
                                                                                       len)
                                                                                    Data.ProtoLens.parseMessage)
                                                                              "metadata"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"metadata")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TreeCreateNode"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"nodeId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'parentId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (Data.Monoid.mconcat
                            (Prelude.map
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"value")
                                                (Prelude.snd _v)
                                                (Data.ProtoLens.defMessage ::
                                                   TreeCreateNode'MetadataEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x))))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData TreeCreateNode where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TreeCreateNode'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TreeCreateNode'target x__)
                (Control.DeepSeq.deepseq
                   (_TreeCreateNode'nodeId x__)
                   (Control.DeepSeq.deepseq
                      (_TreeCreateNode'parentId x__)
                      (Control.DeepSeq.deepseq
                         (_TreeCreateNode'index x__)
                         (Control.DeepSeq.deepseq (_TreeCreateNode'metadata x__) ())))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.key' @:: Lens' TreeCreateNode'MetadataEntry Data.Text.Text@
         * 'Proto.Oll.Document_Fields.value' @:: Lens' TreeCreateNode'MetadataEntry CrdtScalar@
         * 'Proto.Oll.Document_Fields.maybe'value' @:: Lens' TreeCreateNode'MetadataEntry (Prelude.Maybe CrdtScalar)@ -}
data TreeCreateNode'MetadataEntry
  = TreeCreateNode'MetadataEntry'_constructor {_TreeCreateNode'MetadataEntry'key :: !Data.Text.Text,
                                               _TreeCreateNode'MetadataEntry'value :: !(Prelude.Maybe CrdtScalar),
                                               _TreeCreateNode'MetadataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TreeCreateNode'MetadataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TreeCreateNode'MetadataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeCreateNode'MetadataEntry'key
           (\ x__ y__ -> x__ {_TreeCreateNode'MetadataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeCreateNode'MetadataEntry "value" CrdtScalar where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeCreateNode'MetadataEntry'value
           (\ x__ y__ -> x__ {_TreeCreateNode'MetadataEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TreeCreateNode'MetadataEntry "maybe'value" (Prelude.Maybe CrdtScalar) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeCreateNode'MetadataEntry'value
           (\ x__ y__ -> x__ {_TreeCreateNode'MetadataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TreeCreateNode'MetadataEntry where
  messageName _
    = Data.Text.pack "oll.protocol.TreeCreateNode.MetadataEntry"
  packedMessageDescriptor _
    = "\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2.\n\
      \\ENQvalue\CAN\STX \SOH(\v2\CAN.oll.protocol.CrdtScalarR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TreeCreateNode'MetadataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtScalar)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor TreeCreateNode'MetadataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TreeCreateNode'MetadataEntry'_unknownFields
        (\ x__ y__
           -> x__ {_TreeCreateNode'MetadataEntry'_unknownFields = y__})
  defMessage
    = TreeCreateNode'MetadataEntry'_constructor
        {_TreeCreateNode'MetadataEntry'key = Data.ProtoLens.fieldDefault,
         _TreeCreateNode'MetadataEntry'value = Prelude.Nothing,
         _TreeCreateNode'MetadataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TreeCreateNode'MetadataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser TreeCreateNode'MetadataEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MetadataEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TreeCreateNode'MetadataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TreeCreateNode'MetadataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TreeCreateNode'MetadataEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_TreeCreateNode'MetadataEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' TreeDeleteNode CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' TreeDeleteNode (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.nodeId' @:: Lens' TreeDeleteNode Data.Text.Text@ -}
data TreeDeleteNode
  = TreeDeleteNode'_constructor {_TreeDeleteNode'target :: !(Prelude.Maybe CrdtObjectPath),
                                 _TreeDeleteNode'nodeId :: !Data.Text.Text,
                                 _TreeDeleteNode'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TreeDeleteNode where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TreeDeleteNode "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeDeleteNode'target
           (\ x__ y__ -> x__ {_TreeDeleteNode'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TreeDeleteNode "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeDeleteNode'target
           (\ x__ y__ -> x__ {_TreeDeleteNode'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeDeleteNode "nodeId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeDeleteNode'nodeId
           (\ x__ y__ -> x__ {_TreeDeleteNode'nodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Message TreeDeleteNode where
  messageName _ = Data.Text.pack "oll.protocol.TreeDeleteNode"
  packedMessageDescriptor _
    = "\n\
      \\SOTreeDeleteNode\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\ETB\n\
      \\anode_id\CAN\STX \SOH(\tR\ACKnodeId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor TreeDeleteNode
        nodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"nodeId")) ::
              Data.ProtoLens.FieldDescriptor TreeDeleteNode
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, nodeId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TreeDeleteNode'_unknownFields
        (\ x__ y__ -> x__ {_TreeDeleteNode'_unknownFields = y__})
  defMessage
    = TreeDeleteNode'_constructor
        {_TreeDeleteNode'target = Prelude.Nothing,
         _TreeDeleteNode'nodeId = Data.ProtoLens.fieldDefault,
         _TreeDeleteNode'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TreeDeleteNode
          -> Data.ProtoLens.Encoding.Bytes.Parser TreeDeleteNode
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "node_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nodeId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TreeDeleteNode"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"nodeId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TreeDeleteNode where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TreeDeleteNode'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TreeDeleteNode'target x__)
                (Control.DeepSeq.deepseq (_TreeDeleteNode'nodeId x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' TreeMoveNode CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' TreeMoveNode (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.nodeId' @:: Lens' TreeMoveNode Data.Text.Text@
         * 'Proto.Oll.Document_Fields.parentId' @:: Lens' TreeMoveNode Data.Text.Text@
         * 'Proto.Oll.Document_Fields.maybe'parentId' @:: Lens' TreeMoveNode (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Document_Fields.index' @:: Lens' TreeMoveNode Data.Word.Word64@ -}
data TreeMoveNode
  = TreeMoveNode'_constructor {_TreeMoveNode'target :: !(Prelude.Maybe CrdtObjectPath),
                               _TreeMoveNode'nodeId :: !Data.Text.Text,
                               _TreeMoveNode'parentId :: !(Prelude.Maybe Data.Text.Text),
                               _TreeMoveNode'index :: !Data.Word.Word64,
                               _TreeMoveNode'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TreeMoveNode where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TreeMoveNode "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeMoveNode'target
           (\ x__ y__ -> x__ {_TreeMoveNode'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TreeMoveNode "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeMoveNode'target
           (\ x__ y__ -> x__ {_TreeMoveNode'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeMoveNode "nodeId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeMoveNode'nodeId
           (\ x__ y__ -> x__ {_TreeMoveNode'nodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeMoveNode "parentId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeMoveNode'parentId
           (\ x__ y__ -> x__ {_TreeMoveNode'parentId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TreeMoveNode "maybe'parentId" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeMoveNode'parentId
           (\ x__ y__ -> x__ {_TreeMoveNode'parentId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeMoveNode "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeMoveNode'index (\ x__ y__ -> x__ {_TreeMoveNode'index = y__}))
        Prelude.id
instance Data.ProtoLens.Message TreeMoveNode where
  messageName _ = Data.Text.pack "oll.protocol.TreeMoveNode"
  packedMessageDescriptor _
    = "\n\
      \\fTreeMoveNode\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\ETB\n\
      \\anode_id\CAN\STX \SOH(\tR\ACKnodeId\DC2 \n\
      \\tparent_id\CAN\ETX \SOH(\tH\NULR\bparentId\136\SOH\SOH\DC2\DC4\n\
      \\ENQindex\CAN\EOT \SOH(\EOTR\ENQindexB\f\n\
      \\n\
      \_parent_id"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor TreeMoveNode
        nodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"nodeId")) ::
              Data.ProtoLens.FieldDescriptor TreeMoveNode
        parentId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'parentId")) ::
              Data.ProtoLens.FieldDescriptor TreeMoveNode
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor TreeMoveNode
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, nodeId__field_descriptor),
           (Data.ProtoLens.Tag 3, parentId__field_descriptor),
           (Data.ProtoLens.Tag 4, index__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TreeMoveNode'_unknownFields
        (\ x__ y__ -> x__ {_TreeMoveNode'_unknownFields = y__})
  defMessage
    = TreeMoveNode'_constructor
        {_TreeMoveNode'target = Prelude.Nothing,
         _TreeMoveNode'nodeId = Data.ProtoLens.fieldDefault,
         _TreeMoveNode'parentId = Prelude.Nothing,
         _TreeMoveNode'index = Data.ProtoLens.fieldDefault,
         _TreeMoveNode'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TreeMoveNode -> Data.ProtoLens.Encoding.Bytes.Parser TreeMoveNode
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "node_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nodeId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "parent_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"parentId") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TreeMoveNode"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"nodeId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'parentId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TreeMoveNode where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TreeMoveNode'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TreeMoveNode'target x__)
                (Control.DeepSeq.deepseq
                   (_TreeMoveNode'nodeId x__)
                   (Control.DeepSeq.deepseq
                      (_TreeMoveNode'parentId x__)
                      (Control.DeepSeq.deepseq (_TreeMoveNode'index x__) ()))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.target' @:: Lens' TreeSetMetadata CrdtObjectPath@
         * 'Proto.Oll.Document_Fields.maybe'target' @:: Lens' TreeSetMetadata (Prelude.Maybe CrdtObjectPath)@
         * 'Proto.Oll.Document_Fields.nodeId' @:: Lens' TreeSetMetadata Data.Text.Text@
         * 'Proto.Oll.Document_Fields.key' @:: Lens' TreeSetMetadata Data.Text.Text@
         * 'Proto.Oll.Document_Fields.value' @:: Lens' TreeSetMetadata CrdtScalar@
         * 'Proto.Oll.Document_Fields.maybe'value' @:: Lens' TreeSetMetadata (Prelude.Maybe CrdtScalar)@ -}
data TreeSetMetadata
  = TreeSetMetadata'_constructor {_TreeSetMetadata'target :: !(Prelude.Maybe CrdtObjectPath),
                                  _TreeSetMetadata'nodeId :: !Data.Text.Text,
                                  _TreeSetMetadata'key :: !Data.Text.Text,
                                  _TreeSetMetadata'value :: !(Prelude.Maybe CrdtScalar),
                                  _TreeSetMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TreeSetMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TreeSetMetadata "target" CrdtObjectPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeSetMetadata'target
           (\ x__ y__ -> x__ {_TreeSetMetadata'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TreeSetMetadata "maybe'target" (Prelude.Maybe CrdtObjectPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeSetMetadata'target
           (\ x__ y__ -> x__ {_TreeSetMetadata'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeSetMetadata "nodeId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeSetMetadata'nodeId
           (\ x__ y__ -> x__ {_TreeSetMetadata'nodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeSetMetadata "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeSetMetadata'key
           (\ x__ y__ -> x__ {_TreeSetMetadata'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TreeSetMetadata "value" CrdtScalar where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeSetMetadata'value
           (\ x__ y__ -> x__ {_TreeSetMetadata'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TreeSetMetadata "maybe'value" (Prelude.Maybe CrdtScalar) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TreeSetMetadata'value
           (\ x__ y__ -> x__ {_TreeSetMetadata'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message TreeSetMetadata where
  messageName _ = Data.Text.pack "oll.protocol.TreeSetMetadata"
  packedMessageDescriptor _
    = "\n\
      \\SITreeSetMetadata\DC24\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\ETB\n\
      \\anode_id\CAN\STX \SOH(\tR\ACKnodeId\DC2\DLE\n\
      \\ETXkey\CAN\ETX \SOH(\tR\ETXkey\DC23\n\
      \\ENQvalue\CAN\EOT \SOH(\v2\CAN.oll.protocol.CrdtScalarH\NULR\ENQvalue\136\SOH\SOHB\b\n\
      \\ACK_value"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtObjectPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor TreeSetMetadata
        nodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"nodeId")) ::
              Data.ProtoLens.FieldDescriptor TreeSetMetadata
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor TreeSetMetadata
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CrdtScalar)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor TreeSetMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, nodeId__field_descriptor),
           (Data.ProtoLens.Tag 3, key__field_descriptor),
           (Data.ProtoLens.Tag 4, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TreeSetMetadata'_unknownFields
        (\ x__ y__ -> x__ {_TreeSetMetadata'_unknownFields = y__})
  defMessage
    = TreeSetMetadata'_constructor
        {_TreeSetMetadata'target = Prelude.Nothing,
         _TreeSetMetadata'nodeId = Data.ProtoLens.fieldDefault,
         _TreeSetMetadata'key = Data.ProtoLens.fieldDefault,
         _TreeSetMetadata'value = Prelude.Nothing,
         _TreeSetMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TreeSetMetadata
          -> Data.ProtoLens.Encoding.Bytes.Parser TreeSetMetadata
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "node_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nodeId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TreeSetMetadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"nodeId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TreeSetMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TreeSetMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TreeSetMetadata'target x__)
                (Control.DeepSeq.deepseq
                   (_TreeSetMetadata'nodeId x__)
                   (Control.DeepSeq.deepseq
                      (_TreeSetMetadata'key x__)
                      (Control.DeepSeq.deepseq (_TreeSetMetadata'value x__) ()))))
{- | Fields :
     
         * 'Proto.Oll.Document_Fields.path' @:: Lens' UpdatedNode DocumentPath@
         * 'Proto.Oll.Document_Fields.maybe'path' @:: Lens' UpdatedNode (Prelude.Maybe DocumentPath)@
         * 'Proto.Oll.Document_Fields.catalogNodeId' @:: Lens' UpdatedNode Proto.Oll.Common.CatalogNodeId@
         * 'Proto.Oll.Document_Fields.maybe'catalogNodeId' @:: Lens' UpdatedNode (Prelude.Maybe Proto.Oll.Common.CatalogNodeId)@
         * 'Proto.Oll.Document_Fields.catalogRevision' @:: Lens' UpdatedNode Proto.Oll.Common.CatalogRevision@
         * 'Proto.Oll.Document_Fields.maybe'catalogRevision' @:: Lens' UpdatedNode (Prelude.Maybe Proto.Oll.Common.CatalogRevision)@
         * 'Proto.Oll.Document_Fields.documentId' @:: Lens' UpdatedNode Proto.Oll.Common.DocumentId@
         * 'Proto.Oll.Document_Fields.maybe'documentId' @:: Lens' UpdatedNode (Prelude.Maybe Proto.Oll.Common.DocumentId)@
         * 'Proto.Oll.Document_Fields.documentRevision' @:: Lens' UpdatedNode Proto.Oll.Common.DocumentRevision@
         * 'Proto.Oll.Document_Fields.maybe'documentRevision' @:: Lens' UpdatedNode (Prelude.Maybe Proto.Oll.Common.DocumentRevision)@
         * 'Proto.Oll.Document_Fields.binaryId' @:: Lens' UpdatedNode Proto.Oll.Common.BinaryId@
         * 'Proto.Oll.Document_Fields.maybe'binaryId' @:: Lens' UpdatedNode (Prelude.Maybe Proto.Oll.Common.BinaryId)@
         * 'Proto.Oll.Document_Fields.deleted' @:: Lens' UpdatedNode Prelude.Bool@ -}
data UpdatedNode
  = UpdatedNode'_constructor {_UpdatedNode'path :: !(Prelude.Maybe DocumentPath),
                              _UpdatedNode'catalogNodeId :: !(Prelude.Maybe Proto.Oll.Common.CatalogNodeId),
                              _UpdatedNode'catalogRevision :: !(Prelude.Maybe Proto.Oll.Common.CatalogRevision),
                              _UpdatedNode'documentId :: !(Prelude.Maybe Proto.Oll.Common.DocumentId),
                              _UpdatedNode'documentRevision :: !(Prelude.Maybe Proto.Oll.Common.DocumentRevision),
                              _UpdatedNode'binaryId :: !(Prelude.Maybe Proto.Oll.Common.BinaryId),
                              _UpdatedNode'deleted :: !Prelude.Bool,
                              _UpdatedNode'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdatedNode where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpdatedNode "path" DocumentPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'path (\ x__ y__ -> x__ {_UpdatedNode'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdatedNode "maybe'path" (Prelude.Maybe DocumentPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'path (\ x__ y__ -> x__ {_UpdatedNode'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdatedNode "catalogNodeId" Proto.Oll.Common.CatalogNodeId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'catalogNodeId
           (\ x__ y__ -> x__ {_UpdatedNode'catalogNodeId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdatedNode "maybe'catalogNodeId" (Prelude.Maybe Proto.Oll.Common.CatalogNodeId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'catalogNodeId
           (\ x__ y__ -> x__ {_UpdatedNode'catalogNodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdatedNode "catalogRevision" Proto.Oll.Common.CatalogRevision where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'catalogRevision
           (\ x__ y__ -> x__ {_UpdatedNode'catalogRevision = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdatedNode "maybe'catalogRevision" (Prelude.Maybe Proto.Oll.Common.CatalogRevision) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'catalogRevision
           (\ x__ y__ -> x__ {_UpdatedNode'catalogRevision = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdatedNode "documentId" Proto.Oll.Common.DocumentId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'documentId
           (\ x__ y__ -> x__ {_UpdatedNode'documentId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdatedNode "maybe'documentId" (Prelude.Maybe Proto.Oll.Common.DocumentId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'documentId
           (\ x__ y__ -> x__ {_UpdatedNode'documentId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdatedNode "documentRevision" Proto.Oll.Common.DocumentRevision where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'documentRevision
           (\ x__ y__ -> x__ {_UpdatedNode'documentRevision = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdatedNode "maybe'documentRevision" (Prelude.Maybe Proto.Oll.Common.DocumentRevision) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'documentRevision
           (\ x__ y__ -> x__ {_UpdatedNode'documentRevision = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdatedNode "binaryId" Proto.Oll.Common.BinaryId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'binaryId
           (\ x__ y__ -> x__ {_UpdatedNode'binaryId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpdatedNode "maybe'binaryId" (Prelude.Maybe Proto.Oll.Common.BinaryId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'binaryId
           (\ x__ y__ -> x__ {_UpdatedNode'binaryId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpdatedNode "deleted" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpdatedNode'deleted
           (\ x__ y__ -> x__ {_UpdatedNode'deleted = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpdatedNode where
  messageName _ = Data.Text.pack "oll.protocol.UpdatedNode"
  packedMessageDescriptor _
    = "\n\
      \\vUpdatedNode\DC2.\n\
      \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2C\n\
      \\SIcatalog_node_id\CAN\STX \SOH(\v2\ESC.oll.protocol.CatalogNodeIdR\rcatalogNodeId\DC2M\n\
      \\DLEcatalog_revision\CAN\ETX \SOH(\v2\GS.oll.protocol.CatalogRevisionH\NULR\SIcatalogRevision\136\SOH\SOH\DC2>\n\
      \\vdocument_id\CAN\EOT \SOH(\v2\CAN.oll.protocol.DocumentIdH\SOHR\n\
      \documentId\136\SOH\SOH\DC2P\n\
      \\DC1document_revision\CAN\ENQ \SOH(\v2\RS.oll.protocol.DocumentRevisionH\STXR\DLEdocumentRevision\136\SOH\SOH\DC28\n\
      \\tbinary_id\CAN\ACK \SOH(\v2\SYN.oll.protocol.BinaryIdH\ETXR\bbinaryId\136\SOH\SOH\DC2\CAN\n\
      \\adeleted\CAN\a \SOH(\bR\adeletedB\DC3\n\
      \\DC1_catalog_revisionB\SO\n\
      \\f_document_idB\DC4\n\
      \\DC2_document_revisionB\f\n\
      \\n\
      \_binary_id"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DocumentPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor UpdatedNode
        catalogNodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "catalog_node_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.CatalogNodeId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'catalogNodeId")) ::
              Data.ProtoLens.FieldDescriptor UpdatedNode
        catalogRevision__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "catalog_revision"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.CatalogRevision)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'catalogRevision")) ::
              Data.ProtoLens.FieldDescriptor UpdatedNode
        documentId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "document_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.DocumentId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'documentId")) ::
              Data.ProtoLens.FieldDescriptor UpdatedNode
        documentRevision__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "document_revision"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.DocumentRevision)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'documentRevision")) ::
              Data.ProtoLens.FieldDescriptor UpdatedNode
        binaryId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "binary_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.BinaryId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'binaryId")) ::
              Data.ProtoLens.FieldDescriptor UpdatedNode
        deleted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deleted"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"deleted")) ::
              Data.ProtoLens.FieldDescriptor UpdatedNode
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, catalogNodeId__field_descriptor),
           (Data.ProtoLens.Tag 3, catalogRevision__field_descriptor),
           (Data.ProtoLens.Tag 4, documentId__field_descriptor),
           (Data.ProtoLens.Tag 5, documentRevision__field_descriptor),
           (Data.ProtoLens.Tag 6, binaryId__field_descriptor),
           (Data.ProtoLens.Tag 7, deleted__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpdatedNode'_unknownFields
        (\ x__ y__ -> x__ {_UpdatedNode'_unknownFields = y__})
  defMessage
    = UpdatedNode'_constructor
        {_UpdatedNode'path = Prelude.Nothing,
         _UpdatedNode'catalogNodeId = Prelude.Nothing,
         _UpdatedNode'catalogRevision = Prelude.Nothing,
         _UpdatedNode'documentId = Prelude.Nothing,
         _UpdatedNode'documentRevision = Prelude.Nothing,
         _UpdatedNode'binaryId = Prelude.Nothing,
         _UpdatedNode'deleted = Data.ProtoLens.fieldDefault,
         _UpdatedNode'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpdatedNode -> Data.ProtoLens.Encoding.Bytes.Parser UpdatedNode
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "catalog_node_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"catalogNodeId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "catalog_revision"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"catalogRevision") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "document_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"documentId") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "document_revision"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"documentRevision") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "binary_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"binaryId") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "deleted"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"deleted") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpdatedNode"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'catalogNodeId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'catalogRevision") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'documentId") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'documentRevision") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'binaryId") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"deleted") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0) _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData UpdatedNode where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpdatedNode'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpdatedNode'path x__)
                (Control.DeepSeq.deepseq
                   (_UpdatedNode'catalogNodeId x__)
                   (Control.DeepSeq.deepseq
                      (_UpdatedNode'catalogRevision x__)
                      (Control.DeepSeq.deepseq
                         (_UpdatedNode'documentId x__)
                         (Control.DeepSeq.deepseq
                            (_UpdatedNode'documentRevision x__)
                            (Control.DeepSeq.deepseq
                               (_UpdatedNode'binaryId x__)
                               (Control.DeepSeq.deepseq (_UpdatedNode'deleted x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\DC2oll/document.proto\DC2\foll.protocol\SUB\FSgoogle/protobuf/struct.proto\SUB\DLEoll/common.proto\"$\n\
    \\fDocumentPath\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\"\153\ENQ\n\
    \\fNodeMetadata\DC2.\n\
    \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2*\n\
    \\EOTkind\CAN\STX \SOH(\SO2\SYN.oll.protocol.NodeKindR\EOTkind\DC2H\n\
    \\DLEcatalog_revision\CAN\ETX \SOH(\v2\GS.oll.protocol.CatalogRevisionR\SIcatalogRevision\DC2\"\n\
    \\n\
    \media_type\CAN\EOT \SOH(\tH\NULR\tmediaType\136\SOH\SOH\DC2\GS\n\
    \\n\
    \size_bytes\CAN\ENQ \SOH(\EOTR\tsizeBytes\DC24\n\
    \\anode_id\CAN\ACK \SOH(\v2\ESC.oll.protocol.CatalogNodeIdR\ACKnodeId\DC2>\n\
    \\vdocument_id\CAN\a \SOH(\v2\CAN.oll.protocol.DocumentIdH\SOHR\n\
    \documentId\136\SOH\SOH\DC28\n\
    \\tbinary_id\CAN\b \SOH(\v2\SYN.oll.protocol.BinaryIdH\STXR\bbinaryId\136\SOH\SOH\DC2P\n\
    \\DC1document_revision\CAN\t \SOH(\v2\RS.oll.protocol.DocumentRevisionH\ETXR\DLEdocumentRevision\136\SOH\SOH\DC2\US\n\
    \\bencoding\CAN\n\
    \ \SOH(\tH\EOTR\bencoding\136\SOH\SOH\DC2-\n\
    \\DC3has_byte_order_mark\CAN\v \SOH(\bR\DLEhasByteOrderMarkB\r\n\
    \\v_media_typeB\SO\n\
    \\f_document_idB\f\n\
    \\n\
    \_binary_idB\DC4\n\
    \\DC2_document_revisionB\v\n\
    \\t_encoding\"\134\STX\n\
    \\n\
    \CrdtScalar\DC2\US\n\
    \\n\
    \bool_value\CAN\SOH \SOH(\bH\NULR\tboolValue\DC2%\n\
    \\rinteger_value\CAN\STX \SOH(\DC2H\NULR\fintegerValue\DC2#\n\
    \\fnumber_value\CAN\ETX \SOH(\SOHH\NULR\vnumberValue\DC2#\n\
    \\fstring_value\CAN\EOT \SOH(\tH\NULR\vstringValue\DC2!\n\
    \\vbytes_value\CAN\ENQ \SOH(\fH\NULR\n\
    \bytesValue\DC2;\n\
    \\n\
    \null_value\CAN\ACK \SOH(\SO2\SUB.google.protobuf.NullValueH\NULR\tnullValueB\ACK\n\
    \\EOTkind\"\148\SOH\n\
    \\fCrdtTextMark\DC2!\n\
    \\fstart_scalar\CAN\SOH \SOH(\EOTR\vstartScalar\DC2\GS\n\
    \\n\
    \end_scalar\CAN\STX \SOH(\EOTR\tendScalar\DC2\DC2\n\
    \\EOTname\CAN\ETX \SOH(\tR\EOTname\DC2.\n\
    \\ENQvalue\CAN\EOT \SOH(\v2\CAN.oll.protocol.CrdtScalarR\ENQvalue\"P\n\
    \\bCrdtText\DC2\DC2\n\
    \\EOTtext\CAN\SOH \SOH(\tR\EOTtext\DC20\n\
    \\ENQmarks\CAN\STX \ETX(\v2\SUB.oll.protocol.CrdtTextMarkR\ENQmarks\"U\n\
    \\bCrdtList\DC2/\n\
    \\ACKvalues\CAN\SOH \ETX(\v2\ETB.oll.protocol.CrdtValueR\ACKvalues\DC2\CAN\n\
    \\amovable\CAN\STX \SOH(\bR\amovable\"\156\SOH\n\
    \\aCrdtMap\DC2<\n\
    \\aentries\CAN\SOH \ETX(\v2\".oll.protocol.CrdtMap.EntriesEntryR\aentries\SUBS\n\
    \\fEntriesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2-\n\
    \\ENQvalue\CAN\STX \SOH(\v2\ETB.oll.protocol.CrdtValueR\ENQvalue:\STX8\SOH\"\181\STX\n\
    \\fCrdtTreeNode\DC2\ETB\n\
    \\anode_id\CAN\SOH \SOH(\tR\ACKnodeId\DC2 \n\
    \\tparent_id\CAN\STX \SOH(\tH\NULR\bparentId\136\SOH\SOH\DC2+\n\
    \\SIindex_in_parent\CAN\ETX \SOH(\EOTH\SOHR\rindexInParent\136\SOH\SOH\DC2D\n\
    \\bmetadata\CAN\EOT \ETX(\v2(.oll.protocol.CrdtTreeNode.MetadataEntryR\bmetadata\SUBU\n\
    \\rMetadataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2.\n\
    \\ENQvalue\CAN\STX \SOH(\v2\CAN.oll.protocol.CrdtScalarR\ENQvalue:\STX8\SOHB\f\n\
    \\n\
    \_parent_idB\DC2\n\
    \\DLE_index_in_parent\"<\n\
    \\bCrdtTree\DC20\n\
    \\ENQnodes\CAN\SOH \ETX(\v2\SUB.oll.protocol.CrdtTreeNodeR\ENQnodes\"#\n\
    \\vCrdtCounter\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalue\"\179\STX\n\
    \\tCrdtValue\DC22\n\
    \\ACKscalar\CAN\SOH \SOH(\v2\CAN.oll.protocol.CrdtScalarH\NULR\ACKscalar\DC2,\n\
    \\EOTtext\CAN\STX \SOH(\v2\SYN.oll.protocol.CrdtTextH\NULR\EOTtext\DC2,\n\
    \\EOTlist\CAN\ETX \SOH(\v2\SYN.oll.protocol.CrdtListH\NULR\EOTlist\DC2)\n\
    \\ETXmap\CAN\EOT \SOH(\v2\NAK.oll.protocol.CrdtMapH\NULR\ETXmap\DC2,\n\
    \\EOTtree\CAN\ENQ \SOH(\v2\SYN.oll.protocol.CrdtTreeH\NULR\EOTtree\DC25\n\
    \\acounter\CAN\ACK \SOH(\v2\EM.oll.protocol.CrdtCounterH\NULR\acounterB\ACK\n\
    \\EOTkind\"\135\SOH\n\
    \\DC3ReadDocumentRequest\DC2.\n\
    \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2@\n\
    \\n\
    \projection\CAN\STX \SOH(\SO2 .oll.protocol.DocumentProjectionR\n\
    \projection\"\167\SOH\n\
    \\DLEDocumentSnapshot\DC26\n\
    \\bmetadata\CAN\SOH \SOH(\v2\SUB.oll.protocol.NodeMetadataR\bmetadata\DC2\SUB\n\
    \\acontent\CAN\STX \SOH(\tH\NULR\acontent\DC2-\n\
    \\EOTcrdt\CAN\ETX \SOH(\v2\ETB.oll.protocol.CrdtValueH\NULR\EOTcrdtB\DLE\n\
    \\SOrepresentation\"R\n\
    \\DC4ReadDocumentResponse\DC2:\n\
    \\bdocument\CAN\SOH \SOH(\v2\RS.oll.protocol.DocumentSnapshotR\bdocument\"d\n\
    \\DC4ListDirectoryRequest\DC2.\n\
    \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2\FS\n\
    \\trecursive\CAN\STX \SOH(\bR\trecursive\"\135\SOH\n\
    \\NAKListDirectoryResponse\DC28\n\
    \\tdirectory\CAN\SOH \SOH(\v2\SUB.oll.protocol.NodeMetadataR\tdirectory\DC24\n\
    \\aentries\CAN\STX \ETX(\v2\SUB.oll.protocol.NodeMetadataR\aentries\"I\n\
    \\ETBGetDirectoryTreeRequest\DC2.\n\
    \\EOTroot\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTroot\"\136\SOH\n\
    \\DC1DirectoryTreeNode\DC26\n\
    \\bmetadata\CAN\SOH \SOH(\v2\SUB.oll.protocol.NodeMetadataR\bmetadata\DC2;\n\
    \\bchildren\CAN\STX \ETX(\v2\US.oll.protocol.DirectoryTreeNodeR\bchildren\"O\n\
    \\CANGetDirectoryTreeResponse\DC23\n\
    \\EOTroot\CAN\SOH \SOH(\v2\US.oll.protocol.DirectoryTreeNodeR\EOTroot\"y\n\
    \\SICrdtPathSegment\DC2\EM\n\
    \\amap_key\CAN\SOH \SOH(\tH\NULR\ACKmapKey\DC2\US\n\
    \\n\
    \list_index\CAN\STX \SOH(\EOTH\NULR\tlistIndex\DC2\"\n\
    \\ftree_node_id\CAN\ETX \SOH(\tH\NULR\n\
    \treeNodeIdB\ACK\n\
    \\EOTkind\"K\n\
    \\SOCrdtObjectPath\DC29\n\
    \\bsegments\CAN\SOH \ETX(\v2\GS.oll.protocol.CrdtPathSegmentR\bsegments\"\DEL\n\
    \\SIReadCrdtRequest\DC26\n\
    \\bdocument\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\bdocument\DC24\n\
    \\ACKobject\CAN\STX \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKobject\"}\n\
    \\DLEReadCrdtResponse\DC2:\n\
    \\brevision\CAN\SOH \SOH(\v2\RS.oll.protocol.DocumentRevisionR\brevision\DC2-\n\
    \\ENQvalue\CAN\STX \SOH(\v2\ETB.oll.protocol.CrdtValueR\ENQvalue\"\DEL\n\
    \\ACKMapSet\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DLE\n\
    \\ETXkey\CAN\STX \SOH(\tR\ETXkey\DC2-\n\
    \\ENQvalue\CAN\ETX \SOH(\v2\ETB.oll.protocol.CrdtValueR\ENQvalue\"S\n\
    \\tMapDelete\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DLE\n\
    \\ETXkey\CAN\STX \SOH(\tR\ETXkey\"\137\SOH\n\
    \\n\
    \ListInsert\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DC4\n\
    \\ENQindex\CAN\STX \SOH(\EOTR\ENQindex\DC2/\n\
    \\ACKvalues\CAN\ETX \ETX(\v2\ETB.oll.protocol.CrdtValueR\ACKvalues\"n\n\
    \\n\
    \ListDelete\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DC4\n\
    \\ENQindex\CAN\STX \SOH(\EOTR\ENQindex\DC2\DC4\n\
    \\ENQcount\CAN\ETX \SOH(\EOTR\ENQcount\"\142\SOH\n\
    \\bListMove\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DC4\n\
    \\ENQindex\CAN\STX \SOH(\EOTR\ENQindex\DC2\DC4\n\
    \\ENQcount\CAN\ETX \SOH(\EOTR\ENQcount\DC2 \n\
    \\vdestination\CAN\EOT \SOH(\EOTR\vdestination\"y\n\
    \\n\
    \TextInsert\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2!\n\
    \\fscalar_index\CAN\STX \SOH(\EOTR\vscalarIndex\DC2\DC2\n\
    \\EOTtext\CAN\ETX \SOH(\tR\EOTtext\"\136\SOH\n\
    \\n\
    \TextDelete\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2!\n\
    \\fscalar_index\CAN\STX \SOH(\EOTR\vscalarIndex\DC2!\n\
    \\fscalar_count\CAN\ETX \SOH(\EOTR\vscalarCount\"\198\SOH\n\
    \\bTextMark\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2!\n\
    \\fstart_scalar\CAN\STX \SOH(\EOTR\vstartScalar\DC2\GS\n\
    \\n\
    \end_scalar\CAN\ETX \SOH(\EOTR\tendScalar\DC2\DC2\n\
    \\EOTname\CAN\EOT \SOH(\tR\EOTname\DC2.\n\
    \\ENQvalue\CAN\ENQ \SOH(\v2\CAN.oll.protocol.CrdtScalarR\ENQvalue\"\152\SOH\n\
    \\n\
    \TextUnmark\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2!\n\
    \\fstart_scalar\CAN\STX \SOH(\EOTR\vstartScalar\DC2\GS\n\
    \\n\
    \end_scalar\CAN\ETX \SOH(\EOTR\tendScalar\DC2\DC2\n\
    \\EOTname\CAN\EOT \SOH(\tR\EOTname\"^\n\
    \\DLECounterIncrement\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\DC4\n\
    \\ENQdelta\CAN\STX \SOH(\SOHR\ENQdelta\"\196\STX\n\
    \\SOTreeCreateNode\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\ETB\n\
    \\anode_id\CAN\STX \SOH(\tR\ACKnodeId\DC2 \n\
    \\tparent_id\CAN\ETX \SOH(\tH\NULR\bparentId\136\SOH\SOH\DC2\DC4\n\
    \\ENQindex\CAN\EOT \SOH(\EOTR\ENQindex\DC2F\n\
    \\bmetadata\CAN\ENQ \ETX(\v2*.oll.protocol.TreeCreateNode.MetadataEntryR\bmetadata\SUBU\n\
    \\rMetadataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2.\n\
    \\ENQvalue\CAN\STX \SOH(\v2\CAN.oll.protocol.CrdtScalarR\ENQvalue:\STX8\SOHB\f\n\
    \\n\
    \_parent_id\"_\n\
    \\SOTreeDeleteNode\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\ETB\n\
    \\anode_id\CAN\STX \SOH(\tR\ACKnodeId\"\163\SOH\n\
    \\fTreeMoveNode\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\ETB\n\
    \\anode_id\CAN\STX \SOH(\tR\ACKnodeId\DC2 \n\
    \\tparent_id\CAN\ETX \SOH(\tH\NULR\bparentId\136\SOH\SOH\DC2\DC4\n\
    \\ENQindex\CAN\EOT \SOH(\EOTR\ENQindexB\f\n\
    \\n\
    \_parent_id\"\177\SOH\n\
    \\SITreeSetMetadata\DC24\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\FS.oll.protocol.CrdtObjectPathR\ACKtarget\DC2\ETB\n\
    \\anode_id\CAN\STX \SOH(\tR\ACKnodeId\DC2\DLE\n\
    \\ETXkey\CAN\ETX \SOH(\tR\ETXkey\DC23\n\
    \\ENQvalue\CAN\EOT \SOH(\v2\CAN.oll.protocol.CrdtScalarH\NULR\ENQvalue\136\SOH\SOHB\b\n\
    \\ACK_value\"\154\a\n\
    \\rCrdtOperation\DC2/\n\
    \\amap_set\CAN\SOH \SOH(\v2\DC4.oll.protocol.MapSetH\NULR\ACKmapSet\DC28\n\
    \\n\
    \map_delete\CAN\STX \SOH(\v2\ETB.oll.protocol.MapDeleteH\NULR\tmapDelete\DC2;\n\
    \\vlist_insert\CAN\ETX \SOH(\v2\CAN.oll.protocol.ListInsertH\NULR\n\
    \listInsert\DC2;\n\
    \\vlist_delete\CAN\EOT \SOH(\v2\CAN.oll.protocol.ListDeleteH\NULR\n\
    \listDelete\DC25\n\
    \\tlist_move\CAN\ENQ \SOH(\v2\SYN.oll.protocol.ListMoveH\NULR\blistMove\DC2;\n\
    \\vtext_insert\CAN\ACK \SOH(\v2\CAN.oll.protocol.TextInsertH\NULR\n\
    \textInsert\DC2;\n\
    \\vtext_delete\CAN\a \SOH(\v2\CAN.oll.protocol.TextDeleteH\NULR\n\
    \textDelete\DC25\n\
    \\ttext_mark\CAN\b \SOH(\v2\SYN.oll.protocol.TextMarkH\NULR\btextMark\DC2;\n\
    \\vtext_unmark\CAN\t \SOH(\v2\CAN.oll.protocol.TextUnmarkH\NULR\n\
    \textUnmark\DC2M\n\
    \\DC1counter_increment\CAN\n\
    \ \SOH(\v2\RS.oll.protocol.CounterIncrementH\NULR\DLEcounterIncrement\DC2H\n\
    \\DLEtree_create_node\CAN\v \SOH(\v2\FS.oll.protocol.TreeCreateNodeH\NULR\SOtreeCreateNode\DC2H\n\
    \\DLEtree_delete_node\CAN\f \SOH(\v2\FS.oll.protocol.TreeDeleteNodeH\NULR\SOtreeDeleteNode\DC2B\n\
    \\SOtree_move_node\CAN\r \SOH(\v2\SUB.oll.protocol.TreeMoveNodeH\NULR\ftreeMoveNode\DC2K\n\
    \\DC1tree_set_metadata\CAN\SO \SOH(\v2\GS.oll.protocol.TreeSetMetadataH\NULR\SItreeSetMetadataB\v\n\
    \\toperation\"\170\SOH\n\
    \\ESCCatalogRevisionPrecondition\DC2C\n\
    \\SIcatalog_node_id\CAN\SOH \SOH(\v2\ESC.oll.protocol.CatalogNodeIdR\rcatalogNodeId\DC2F\n\
    \\SIunchanged_since\CAN\STX \SOH(\v2\GS.oll.protocol.CatalogRevisionR\SOunchangedSince\"\162\SOH\n\
    \\FSDocumentRevisionPrecondition\DC29\n\
    \\vdocument_id\CAN\SOH \SOH(\v2\CAN.oll.protocol.DocumentIdR\n\
    \documentId\DC2G\n\
    \\SIunchanged_since\CAN\STX \SOH(\v2\RS.oll.protocol.DocumentRevisionR\SOunchangedSince\"\217\STX\n\
    \\DC2CommitPrecondition\DC2X\n\
    \\DC1catalog_unchanged\CAN\SOH \SOH(\v2).oll.protocol.CatalogRevisionPreconditionH\NULR\DLEcatalogUnchanged\DC2[\n\
    \\DC2document_unchanged\CAN\STX \SOH(\v2*.oll.protocol.DocumentRevisionPreconditionH\NULR\DC1documentUnchanged\DC2;\n\
    \\n\
    \must_exist\CAN\ETX \SOH(\v2\SUB.oll.protocol.DocumentPathH\NULR\tmustExist\DC2B\n\
    \\SOmust_not_exist\CAN\EOT \SOH(\v2\SUB.oll.protocol.DocumentPathH\NULR\fmustNotExistB\v\n\
    \\tcondition\"A\n\
    \\SICreateDirectory\DC2.\n\
    \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\"y\n\
    \\SOCreateDocument\DC2.\n\
    \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2\GS\n\
    \\n\
    \media_type\CAN\STX \SOH(\tR\tmediaType\DC2\CAN\n\
    \\acontent\CAN\ETX \SOH(\tR\acontent\"\142\SOH\n\
    \\SIReplaceDocument\DC2.\n\
    \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2\CAN\n\
    \\acontent\CAN\STX \SOH(\tR\acontent\DC2\"\n\
    \\n\
    \media_type\CAN\ETX \SOH(\tH\NULR\tmediaType\136\SOH\SOHB\r\n\
    \\v_media_type\"\184\SOH\n\
    \\DC2SpliceDocumentText\DC2.\n\
    \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2!\n\
    \\fscalar_index\CAN\STX \SOH(\EOTR\vscalarIndex\DC2.\n\
    \\DC3delete_scalar_count\CAN\ETX \SOH(\EOTR\DC1deleteScalarCount\DC2\US\n\
    \\vinsert_text\CAN\EOT \SOH(\tR\n\
    \insertText\"Z\n\
    \\n\
    \DeleteNode\DC2.\n\
    \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2\FS\n\
    \\trecursive\CAN\STX \SOH(\bR\trecursive\"|\n\
    \\bMoveNode\DC22\n\
    \\ACKsource\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\ACKsource\DC2<\n\
    \\vdestination\CAN\STX \SOH(\v2\SUB.oll.protocol.DocumentPathR\vdestination\"\138\SOH\n\
    \\DC3ApplyCrdtOperations\DC26\n\
    \\bdocument\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\bdocument\DC2;\n\
    \\n\
    \operations\CAN\STX \ETX(\v2\ESC.oll.protocol.CrdtOperationR\n\
    \operations\"\162\EOT\n\
    \\DLEDocumentMutation\DC2J\n\
    \\DLEcreate_directory\CAN\SOH \SOH(\v2\GS.oll.protocol.CreateDirectoryH\NULR\SIcreateDirectory\DC2G\n\
    \\SIcreate_document\CAN\STX \SOH(\v2\FS.oll.protocol.CreateDocumentH\NULR\SOcreateDocument\DC2J\n\
    \\DLEreplace_document\CAN\ETX \SOH(\v2\GS.oll.protocol.ReplaceDocumentH\NULR\SIreplaceDocument\DC2T\n\
    \\DC4splice_document_text\CAN\EOT \SOH(\v2 .oll.protocol.SpliceDocumentTextH\NULR\DC2spliceDocumentText\DC2;\n\
    \\vdelete_node\CAN\ENQ \SOH(\v2\CAN.oll.protocol.DeleteNodeH\NULR\n\
    \deleteNode\DC25\n\
    \\tmove_node\CAN\ACK \SOH(\v2\SYN.oll.protocol.MoveNodeH\NULR\bmoveNode\DC2W\n\
    \\NAKapply_crdt_operations\CAN\a \SOH(\v2!.oll.protocol.ApplyCrdtOperationsH\NULR\DC3applyCrdtOperationsB\n\
    \\n\
    \\bmutation\"\193\SOH\n\
    \\SYNCommitDocumentsRequest\DC2!\n\
    \\foperation_id\CAN\SOH \SOH(\tR\voperationId\DC2F\n\
    \\rpreconditions\CAN\STX \ETX(\v2 .oll.protocol.CommitPreconditionR\rpreconditions\DC2<\n\
    \\tmutations\CAN\ETX \ETX(\v2\RS.oll.protocol.DocumentMutationR\tmutations\"\128\EOT\n\
    \\vUpdatedNode\DC2.\n\
    \\EOTpath\CAN\SOH \SOH(\v2\SUB.oll.protocol.DocumentPathR\EOTpath\DC2C\n\
    \\SIcatalog_node_id\CAN\STX \SOH(\v2\ESC.oll.protocol.CatalogNodeIdR\rcatalogNodeId\DC2M\n\
    \\DLEcatalog_revision\CAN\ETX \SOH(\v2\GS.oll.protocol.CatalogRevisionH\NULR\SIcatalogRevision\136\SOH\SOH\DC2>\n\
    \\vdocument_id\CAN\EOT \SOH(\v2\CAN.oll.protocol.DocumentIdH\SOHR\n\
    \documentId\136\SOH\SOH\DC2P\n\
    \\DC1document_revision\CAN\ENQ \SOH(\v2\RS.oll.protocol.DocumentRevisionH\STXR\DLEdocumentRevision\136\SOH\SOH\DC28\n\
    \\tbinary_id\CAN\ACK \SOH(\v2\SYN.oll.protocol.BinaryIdH\ETXR\bbinaryId\136\SOH\SOH\DC2\CAN\n\
    \\adeleted\CAN\a \SOH(\bR\adeletedB\DC3\n\
    \\DC1_catalog_revisionB\SO\n\
    \\f_document_idB\DC4\n\
    \\DC2_document_revisionB\f\n\
    \\n\
    \_binary_id\"|\n\
    \\ETBCommitDocumentsResponse\DC2!\n\
    \\foperation_id\CAN\SOH \SOH(\tR\voperationId\DC2>\n\
    \\rupdated_nodes\CAN\STX \ETX(\v2\EM.oll.protocol.UpdatedNodeR\fupdatedNodes\"\248\SOH\n\
    \\ETBCatalogRevisionConflict\DC2C\n\
    \\SIcatalog_node_id\CAN\SOH \SOH(\v2\ESC.oll.protocol.CatalogNodeIdR\rcatalogNodeId\DC29\n\
    \\bexpected\CAN\STX \SOH(\v2\GS.oll.protocol.CatalogRevisionR\bexpected\DC2:\n\
    \\ACKactual\CAN\ETX \SOH(\v2\GS.oll.protocol.CatalogRevisionH\NULR\ACKactual\136\SOH\SOH\DC2\SYN\n\
    \\ACKexists\CAN\EOT \SOH(\bR\ACKexistsB\t\n\
    \\a_actual\"\241\SOH\n\
    \\CANDocumentRevisionConflict\DC29\n\
    \\vdocument_id\CAN\SOH \SOH(\v2\CAN.oll.protocol.DocumentIdR\n\
    \documentId\DC2:\n\
    \\bexpected\CAN\STX \SOH(\v2\RS.oll.protocol.DocumentRevisionR\bexpected\DC2;\n\
    \\ACKactual\CAN\ETX \SOH(\v2\RS.oll.protocol.DocumentRevisionH\NULR\ACKactual\136\SOH\SOH\DC2\SYN\n\
    \\ACKexists\CAN\EOT \SOH(\bR\ACKexistsB\t\n\
    \\a_actual\"\173\SOH\n\
    \\SYNRevisionConflictDetail\DC2A\n\
    \\acatalog\CAN\SOH \SOH(\v2%.oll.protocol.CatalogRevisionConflictH\NULR\acatalog\DC2D\n\
    \\bdocument\CAN\STX \SOH(\v2&.oll.protocol.DocumentRevisionConflictH\NULR\bdocumentB\n\
    \\n\
    \\bconflict*l\n\
    \\bNodeKind\DC2\EM\n\
    \\NAKNODE_KIND_UNSPECIFIED\DLE\NUL\DC2\SYN\n\
    \\DC2NODE_KIND_DOCUMENT\DLE\SOH\DC2\ETB\n\
    \\DC3NODE_KIND_DIRECTORY\DLE\STX\DC2\DC4\n\
    \\DLENODE_KIND_BINARY\DLE\ETX*x\n\
    \\DC2DocumentProjection\DC2#\n\
    \\USDOCUMENT_PROJECTION_UNSPECIFIED\DLE\NUL\DC2\US\n\
    \\ESCDOCUMENT_PROJECTION_CONTENT\DLE\SOH\DC2\FS\n\
    \\CANDOCUMENT_PROJECTION_CRDT\DLE\STXJ\225k\n\
    \\a\DC2\ENQ\NUL\NUL\248\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\NAK\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL&\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL\SUB\n\
    \\190\SOH\n\
    \\STX\EOT\NUL\DC2\ETX\n\
    \\NUL*\SUB\178\SOH Paths are absolute, slash-separated, UTF-8 paths in the replica namespace.\n\
    \ They never contain '.', '..', an empty segment, or a trailing slash (except\n\
    \ for the root path \"/\").\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\DC4\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\n\
    \\ETB(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\n\
    \\ETB\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\n\
    \\RS#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\n\
    \&'\n\
    \\n\
    \\n\
    \\STX\ENQ\NUL\DC2\EOT\f\NUL\DC1\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\f\ENQ\r\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\r\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\r\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\r\SUB\ESC\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\SO\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\SO\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\SO\ETB\CAN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\SI\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\SI\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\SI\CAN\EM\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\DLE\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\DLE\STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\DLE\NAK\SYN\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\DC3\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC3\b\DC4\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC4\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\DC4\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC4\SI\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC4\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\NAK\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\NAK\v\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\NAK\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\SYN\STX'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX\SYN\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\SYN\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\SYN%&\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\ETB\STX!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\ETB\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\ETB\US \n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\CAN\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\CAN\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\CAN\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX\EM\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETX\EM\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX\EM\DLE\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX\EM\SUB\ESC\n\
    \<\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX\ESC\STX&\SUB/ Present only when kind is NODE_KIND_DOCUMENT.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETX\ESC\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX\ESC\SYN!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX\ESC$%\n\
    \:\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX\GS\STX\"\SUB- Present only when kind is NODE_KIND_BINARY.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\ETX\GS\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX\GS\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX\GS !\n\
    \<\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETX\US\STX2\SUB/ Present only when kind is NODE_KIND_DOCUMENT.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\ETX\US\v\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETX\US\FS-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETX\US01\n\
    \<\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETX!\STX \SUB/ Present only when kind is NODE_KIND_DOCUMENT.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETX!\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETX!\GS\US\n\
    \?\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\ETX#\STX \SUB2 Meaningful only when kind is NODE_KIND_DOCUMENT.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ENQ\DC2\ETX#\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\ETX#\a\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\ETX#\GS\US\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT&\NUL/\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX&\b\DC2\n\
    \\f\n\
    \\EOT\EOT\STX\b\NUL\DC2\EOT'\STX.\ETX\n\
    \\f\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\ETX'\b\f\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX(\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX(\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX(\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX(\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX)\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX)\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX)\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX)\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX*\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX*\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX*\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX*\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX+\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX+\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX+\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX+\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX,\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX,\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX,\n\
    \\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX,\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETX-\EOT-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ACK\DC2\ETX-\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETX-\RS(\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETX-+,\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT1\NUL6\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX1\b\DC4\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX2\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX2\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX2\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX3\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX3\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX3\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX4\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX4\t\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX4\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX5\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\ETX5\STX\f\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX5\r\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX5\NAK\SYN\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT8\NUL;\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX8\b\DLE\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX9\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX9\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX9\t\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX9\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX:\STX\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETX:\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX:\CAN\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX: !\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT=\NULA\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX=\b\DLE\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX>\STX \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX>\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX>\NAK\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX>\RS\US\n\
    \X\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX@\STX\DC3\SUBK Move is valid only for a movable list. Plain lists support insert/delete.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX@\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX@\a\SO\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX@\DC1\DC2\n\
    \\t\n\
    \\STX\EOT\ACK\DC2\ETXC\NUL7\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXC\b\SI\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXC\DC25\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETXC\DC2(\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXC)0\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXC34\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOTE\NULJ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXE\b\DC4\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXF\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETXF\STX\b\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXF\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXF\DC3\DC4\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXG\STX \n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETXG\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXG\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXG\RS\US\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETXH\STX&\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETXH\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXH\DC2!\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXH$%\n\
    \\v\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETXI\STX'\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ACK\DC2\ETXI\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETXI\SUB\"\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETXI%&\n\
    \\t\n\
    \\STX\EOT\b\DC2\ETXL\NUL5\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXL\b\DLE\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXL\DC33\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETXL\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\ETXL\FS(\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXL).\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXL12\n\
    \\t\n\
    \\STX\EOT\t\DC2\ETXN\NUL)\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXN\b\DC3\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXN\SYN'\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETXN\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXN\GS\"\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXN%&\n\
    \\152\SOH\n\
    \\STX\EOT\n\
    \\DC2\EOTR\NUL[\SOH\SUB\139\SOH This is oll's stable CRDT data model. It is deliberately not a serialized\n\
    \ Loro object and does not expose Loro container IDs or methods.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXR\b\DC1\n\
    \\f\n\
    \\EOT\EOT\n\
    \\b\NUL\DC2\EOTS\STXZ\ETX\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\b\NUL\SOH\DC2\ETXS\b\f\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXT\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\ETXT\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXT\SI\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXT\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETXU\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\ETXU\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETXU\r\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETXU\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ETXV\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\ETXV\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\ETXV\r\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\ETXV\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\ETXW\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ACK\DC2\ETXW\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\ETXW\f\SI\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\ETXW\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\ETXX\EOT\SYN\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ACK\DC2\ETXX\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\ETXX\r\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\ETXX\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\ENQ\DC2\ETXY\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ACK\DC2\ETXY\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\SOH\DC2\ETXY\DLE\ETB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\ENQ\ETX\DC2\ETXY\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\ENQ\SOH\DC2\EOT]\NULa\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETX]\ENQ\ETB\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETX^\STX&\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETX^\STX!\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETX^$%\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETX_\STX\"\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETX_\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETX_ !\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\ETX`\STX\US\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\ETX`\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\ETX`\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOTc\NULf\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETXc\b\ESC\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETXd\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\ETXd\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETXd\SI\DC3\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETXd\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETXe\STX$\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ACK\DC2\ETXe\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETXe\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETXe\"#\n\
    \\n\
    \\n\
    \\STX\EOT\f\DC2\EOTh\NULn\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETXh\b\CAN\n\
    \\v\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETXi\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\ETXi\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETXi\SI\ETB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETXi\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\f\b\NUL\DC2\EOTj\STXm\ETX\n\
    \\f\n\
    \\ENQ\EOT\f\b\NUL\SOH\DC2\ETXj\b\SYN\n\
    \\v\n\
    \\EOT\EOT\f\STX\SOH\DC2\ETXk\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\ETXk\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\ETXk\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\ETXk\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\f\STX\STX\DC2\ETXl\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ACK\DC2\ETXl\EOT\r\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\ETXl\SO\DC2\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\ETXl\NAK\SYN\n\
    \\t\n\
    \\STX\EOT\r\DC2\ETXp\NUL?\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXp\b\FS\n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXp\US=\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\ETXp\US/\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXp08\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXp;<\n\
    \\n\
    \\n\
    \\STX\EOT\SO\DC2\EOTr\NULu\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SO\SOH\DC2\ETXr\b\FS\n\
    \\v\n\
    \\EOT\EOT\SO\STX\NUL\DC2\ETXs\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ACK\DC2\ETXs\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\ETXs\SI\DC3\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\ETXs\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\SO\STX\SOH\DC2\ETXt\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\ETXt\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\ETXt\a\DLE\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\ETXt\DC3\DC4\n\
    \\n\
    \\n\
    \\STX\EOT\SI\DC2\EOTw\NULz\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SI\SOH\DC2\ETXw\b\GS\n\
    \\v\n\
    \\EOT\EOT\SI\STX\NUL\DC2\ETXx\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ACK\DC2\ETXx\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\ETXx\SI\CAN\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\ETXx\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SI\STX\SOH\DC2\ETXy\STX$\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\EOT\DC2\ETXy\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ACK\DC2\ETXy\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\ETXy\CAN\US\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\ETXy\"#\n\
    \\t\n\
    \\STX\EOT\DLE\DC2\ETX|\NUL:\n\
    \\n\
    \\n\
    \\ETX\EOT\DLE\SOH\DC2\ETX|\b\US\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\ETX|\"8\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ACK\DC2\ETX|\".\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\ETX|/3\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\ETX|67\n\
    \\v\n\
    \\STX\EOT\DC1\DC2\ENQ~\NUL\129\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DC1\SOH\DC2\ETX~\b\EM\n\
    \\v\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\ETX\DEL\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\ACK\DC2\ETX\DEL\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\ETX\DEL\SI\ETB\n\
    \\f\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\ETX\DEL\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\128\SOH\STX*\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\EOT\DC2\EOT\128\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ACK\DC2\EOT\128\SOH\v\FS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\128\SOH\GS%\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\128\SOH()\n\
    \\n\
    \\n\
    \\STX\EOT\DC2\DC2\EOT\131\SOH\NUL@\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\131\SOH\b \n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\131\SOH#>\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ACK\DC2\EOT\131\SOH#4\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\131\SOH59\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\131\SOH<=\n\
    \\f\n\
    \\STX\EOT\DC3\DC2\ACK\133\SOH\NUL\139\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\133\SOH\b\ETB\n\
    \\SO\n\
    \\EOT\EOT\DC3\b\NUL\DC2\ACK\134\SOH\STX\138\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\DC3\b\NUL\SOH\DC2\EOT\134\SOH\b\f\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\135\SOH\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\135\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\135\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\135\SOH\NAK\SYN\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\136\SOH\EOT\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ENQ\DC2\EOT\136\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\136\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\136\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\STX\DC2\EOT\137\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ENQ\DC2\EOT\137\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\SOH\DC2\EOT\137\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ETX\DC2\EOT\137\SOH\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\DC4\DC2\EOT\141\SOH\NULA\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\141\SOH\b\SYN\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\141\SOH\EM?\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\EOT\DC2\EOT\141\SOH\EM!\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ACK\DC2\EOT\141\SOH\"1\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\141\SOH2:\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\141\SOH=>\n\
    \\f\n\
    \\STX\EOT\NAK\DC2\ACK\143\SOH\NUL\146\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\143\SOH\b\ETB\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\144\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ACK\DC2\EOT\144\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\144\SOH\SI\ETB\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\144\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\145\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ACK\DC2\EOT\145\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\145\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\145\SOH\SUB\ESC\n\
    \\f\n\
    \\STX\EOT\SYN\DC2\ACK\148\SOH\NUL\151\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\148\SOH\b\CAN\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\149\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ACK\DC2\EOT\149\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\149\SOH\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\149\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\150\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ACK\DC2\EOT\150\SOH\STX\v\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\150\SOH\f\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\150\SOH\DC4\NAK\n\
    \\f\n\
    \\STX\EOT\ETB\DC2\ACK\153\SOH\NUL\157\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\153\SOH\b\SO\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\154\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ACK\DC2\EOT\154\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\154\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\154\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\SOH\DC2\EOT\155\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ENQ\DC2\EOT\155\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\SOH\DC2\EOT\155\SOH\t\f\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ETX\DC2\EOT\155\SOH\SI\DLE\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\STX\DC2\EOT\156\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\STX\ACK\DC2\EOT\156\SOH\STX\v\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\STX\SOH\DC2\EOT\156\SOH\f\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\STX\ETX\DC2\EOT\156\SOH\DC4\NAK\n\
    \\f\n\
    \\STX\EOT\CAN\DC2\ACK\159\SOH\NUL\162\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\159\SOH\b\DC1\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\160\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ACK\DC2\EOT\160\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\160\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\160\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\SOH\DC2\EOT\161\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ENQ\DC2\EOT\161\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\SOH\DC2\EOT\161\SOH\t\f\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ETX\DC2\EOT\161\SOH\SI\DLE\n\
    \\f\n\
    \\STX\EOT\EM\DC2\ACK\164\SOH\NUL\168\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\164\SOH\b\DC2\n\
    \\f\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\165\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ACK\DC2\EOT\165\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\165\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\165\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\EM\STX\SOH\DC2\EOT\166\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ENQ\DC2\EOT\166\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\SOH\DC2\EOT\166\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\SOH\ETX\DC2\EOT\166\SOH\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT\EM\STX\STX\DC2\EOT\167\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\EOT\DC2\EOT\167\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ACK\DC2\EOT\167\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\SOH\DC2\EOT\167\SOH\NAK\ESC\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\STX\ETX\DC2\EOT\167\SOH\RS\US\n\
    \\f\n\
    \\STX\EOT\SUB\DC2\ACK\170\SOH\NUL\174\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\170\SOH\b\DC2\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\EOT\171\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ACK\DC2\EOT\171\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\EOT\171\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\EOT\171\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\SOH\DC2\EOT\172\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ENQ\DC2\EOT\172\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\SOH\DC2\EOT\172\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ETX\DC2\EOT\172\SOH\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\STX\DC2\EOT\173\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ENQ\DC2\EOT\173\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\SOH\DC2\EOT\173\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\STX\ETX\DC2\EOT\173\SOH\DC1\DC2\n\
    \\f\n\
    \\STX\EOT\ESC\DC2\ACK\176\SOH\NUL\182\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\176\SOH\b\DLE\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\NUL\DC2\EOT\177\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ACK\DC2\EOT\177\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\SOH\DC2\EOT\177\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ETX\DC2\EOT\177\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\SOH\DC2\EOT\178\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ENQ\DC2\EOT\178\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\SOH\DC2\EOT\178\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ETX\DC2\EOT\178\SOH\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\STX\DC2\EOT\179\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\ENQ\DC2\EOT\179\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\SOH\DC2\EOT\179\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\STX\ETX\DC2\EOT\179\SOH\DC1\DC2\n\
    \:\n\
    \\EOT\EOT\ESC\STX\ETX\DC2\EOT\181\SOH\STX\EM\SUB, Evaluated after removing the source range.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ETX\ENQ\DC2\EOT\181\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ETX\SOH\DC2\EOT\181\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\ETX\ETX\DC2\EOT\181\SOH\ETB\CAN\n\
    \\f\n\
    \\STX\EOT\FS\DC2\ACK\184\SOH\NUL\188\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\FS\SOH\DC2\EOT\184\SOH\b\DC2\n\
    \\f\n\
    \\EOT\EOT\FS\STX\NUL\DC2\EOT\185\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ACK\DC2\EOT\185\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\SOH\DC2\EOT\185\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ETX\DC2\EOT\185\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\FS\STX\SOH\DC2\EOT\186\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ENQ\DC2\EOT\186\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\SOH\DC2\EOT\186\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\SOH\ETX\DC2\EOT\186\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\FS\STX\STX\DC2\EOT\187\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\ENQ\DC2\EOT\187\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\SOH\DC2\EOT\187\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\STX\ETX\DC2\EOT\187\SOH\DLE\DC1\n\
    \\f\n\
    \\STX\EOT\GS\DC2\ACK\190\SOH\NUL\194\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\GS\SOH\DC2\EOT\190\SOH\b\DC2\n\
    \\f\n\
    \\EOT\EOT\GS\STX\NUL\DC2\EOT\191\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ACK\DC2\EOT\191\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\SOH\DC2\EOT\191\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ETX\DC2\EOT\191\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\GS\STX\SOH\DC2\EOT\192\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ENQ\DC2\EOT\192\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\SOH\DC2\EOT\192\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ETX\DC2\EOT\192\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\GS\STX\STX\DC2\EOT\193\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\ENQ\DC2\EOT\193\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\SOH\DC2\EOT\193\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\ETX\DC2\EOT\193\SOH\CAN\EM\n\
    \\f\n\
    \\STX\EOT\RS\DC2\ACK\196\SOH\NUL\202\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\RS\SOH\DC2\EOT\196\SOH\b\DLE\n\
    \\f\n\
    \\EOT\EOT\RS\STX\NUL\DC2\EOT\197\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ACK\DC2\EOT\197\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\SOH\DC2\EOT\197\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ETX\DC2\EOT\197\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\RS\STX\SOH\DC2\EOT\198\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\ENQ\DC2\EOT\198\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\SOH\DC2\EOT\198\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\SOH\ETX\DC2\EOT\198\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\RS\STX\STX\DC2\EOT\199\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\STX\ENQ\DC2\EOT\199\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\STX\SOH\DC2\EOT\199\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\STX\ETX\DC2\EOT\199\SOH\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\RS\STX\ETX\DC2\EOT\200\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\ETX\ENQ\DC2\EOT\200\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\ETX\SOH\DC2\EOT\200\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\ETX\ETX\DC2\EOT\200\SOH\DLE\DC1\n\
    \\f\n\
    \\EOT\EOT\RS\STX\EOT\DC2\EOT\201\SOH\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\EOT\ACK\DC2\EOT\201\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\EOT\SOH\DC2\EOT\201\SOH\r\DC2\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\EOT\ETX\DC2\EOT\201\SOH\NAK\SYN\n\
    \\f\n\
    \\STX\EOT\US\DC2\ACK\204\SOH\NUL\209\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\US\SOH\DC2\EOT\204\SOH\b\DC2\n\
    \\f\n\
    \\EOT\EOT\US\STX\NUL\DC2\EOT\205\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ACK\DC2\EOT\205\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\SOH\DC2\EOT\205\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ETX\DC2\EOT\205\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\US\STX\SOH\DC2\EOT\206\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SOH\ENQ\DC2\EOT\206\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SOH\SOH\DC2\EOT\206\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\US\STX\SOH\ETX\DC2\EOT\206\SOH\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\US\STX\STX\DC2\EOT\207\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\US\STX\STX\ENQ\DC2\EOT\207\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\US\STX\STX\SOH\DC2\EOT\207\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\US\STX\STX\ETX\DC2\EOT\207\SOH\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\US\STX\ETX\DC2\EOT\208\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ETX\ENQ\DC2\EOT\208\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ETX\SOH\DC2\EOT\208\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\US\STX\ETX\ETX\DC2\EOT\208\SOH\DLE\DC1\n\
    \\f\n\
    \\STX\EOT \DC2\ACK\211\SOH\NUL\214\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT \SOH\DC2\EOT\211\SOH\b\CAN\n\
    \\f\n\
    \\EOT\EOT \STX\NUL\DC2\EOT\212\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ACK\DC2\EOT\212\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\SOH\DC2\EOT\212\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ETX\DC2\EOT\212\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT \STX\SOH\DC2\EOT\213\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\ENQ\DC2\EOT\213\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\SOH\DC2\EOT\213\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT \STX\SOH\ETX\DC2\EOT\213\SOH\DC1\DC2\n\
    \\f\n\
    \\STX\EOT!\DC2\ACK\216\SOH\NUL\222\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT!\SOH\DC2\EOT\216\SOH\b\SYN\n\
    \\f\n\
    \\EOT\EOT!\STX\NUL\DC2\EOT\217\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ACK\DC2\EOT\217\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\SOH\DC2\EOT\217\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ETX\DC2\EOT\217\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT!\STX\SOH\DC2\EOT\218\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\ENQ\DC2\EOT\218\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\SOH\DC2\EOT\218\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT!\STX\SOH\ETX\DC2\EOT\218\SOH\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT!\STX\STX\DC2\EOT\219\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT!\STX\STX\EOT\DC2\EOT\219\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT!\STX\STX\ENQ\DC2\EOT\219\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT!\STX\STX\SOH\DC2\EOT\219\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT!\STX\STX\ETX\DC2\EOT\219\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT!\STX\ETX\DC2\EOT\220\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT!\STX\ETX\ENQ\DC2\EOT\220\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT!\STX\ETX\SOH\DC2\EOT\220\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT!\STX\ETX\ETX\DC2\EOT\220\SOH\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT!\STX\EOT\DC2\EOT\221\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT!\STX\EOT\ACK\DC2\EOT\221\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT!\STX\EOT\SOH\DC2\EOT\221\SOH\SUB\"\n\
    \\r\n\
    \\ENQ\EOT!\STX\EOT\ETX\DC2\EOT\221\SOH%&\n\
    \\f\n\
    \\STX\EOT\"\DC2\ACK\224\SOH\NUL\227\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\"\SOH\DC2\EOT\224\SOH\b\SYN\n\
    \\f\n\
    \\EOT\EOT\"\STX\NUL\DC2\EOT\225\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ACK\DC2\EOT\225\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\SOH\DC2\EOT\225\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ETX\DC2\EOT\225\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\"\STX\SOH\DC2\EOT\226\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ENQ\DC2\EOT\226\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\SOH\DC2\EOT\226\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ETX\DC2\EOT\226\SOH\DC3\DC4\n\
    \\f\n\
    \\STX\EOT#\DC2\ACK\229\SOH\NUL\234\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT#\SOH\DC2\EOT\229\SOH\b\DC4\n\
    \\f\n\
    \\EOT\EOT#\STX\NUL\DC2\EOT\230\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\ACK\DC2\EOT\230\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\SOH\DC2\EOT\230\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\ETX\DC2\EOT\230\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT#\STX\SOH\DC2\EOT\231\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\ENQ\DC2\EOT\231\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\SOH\DC2\EOT\231\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\ETX\DC2\EOT\231\SOH\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT#\STX\STX\DC2\EOT\232\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\EOT\DC2\EOT\232\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\ENQ\DC2\EOT\232\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\SOH\DC2\EOT\232\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT#\STX\STX\ETX\DC2\EOT\232\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT#\STX\ETX\DC2\EOT\233\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT#\STX\ETX\ENQ\DC2\EOT\233\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT#\STX\ETX\SOH\DC2\EOT\233\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT#\STX\ETX\ETX\DC2\EOT\233\SOH\DC1\DC2\n\
    \\f\n\
    \\STX\EOT$\DC2\ACK\236\SOH\NUL\241\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT$\SOH\DC2\EOT\236\SOH\b\ETB\n\
    \\f\n\
    \\EOT\EOT$\STX\NUL\DC2\EOT\237\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\ACK\DC2\EOT\237\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\SOH\DC2\EOT\237\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\ETX\DC2\EOT\237\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT$\STX\SOH\DC2\EOT\238\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\ENQ\DC2\EOT\238\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\SOH\DC2\EOT\238\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\ETX\DC2\EOT\238\SOH\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT$\STX\STX\DC2\EOT\239\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT$\STX\STX\ENQ\DC2\EOT\239\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT$\STX\STX\SOH\DC2\EOT\239\SOH\t\f\n\
    \\r\n\
    \\ENQ\EOT$\STX\STX\ETX\DC2\EOT\239\SOH\SI\DLE\n\
    \\f\n\
    \\EOT\EOT$\STX\ETX\DC2\EOT\240\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT$\STX\ETX\EOT\DC2\EOT\240\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\ETX\ACK\DC2\EOT\240\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT$\STX\ETX\SOH\DC2\EOT\240\SOH\SYN\ESC\n\
    \\r\n\
    \\ENQ\EOT$\STX\ETX\ETX\DC2\EOT\240\SOH\RS\US\n\
    \\f\n\
    \\STX\EOT%\DC2\ACK\243\SOH\NUL\132\STX\SOH\n\
    \\v\n\
    \\ETX\EOT%\SOH\DC2\EOT\243\SOH\b\NAK\n\
    \\SO\n\
    \\EOT\EOT%\b\NUL\DC2\ACK\244\SOH\STX\131\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT%\b\NUL\SOH\DC2\EOT\244\SOH\b\DC1\n\
    \\f\n\
    \\EOT\EOT%\STX\NUL\DC2\EOT\245\SOH\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\ACK\DC2\EOT\245\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\SOH\DC2\EOT\245\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\ETX\DC2\EOT\245\SOH\NAK\SYN\n\
    \\f\n\
    \\EOT\EOT%\STX\SOH\DC2\EOT\246\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\ACK\DC2\EOT\246\SOH\EOT\r\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\SOH\DC2\EOT\246\SOH\SO\CAN\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\ETX\DC2\EOT\246\SOH\ESC\FS\n\
    \\f\n\
    \\EOT\EOT%\STX\STX\DC2\EOT\247\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT%\STX\STX\ACK\DC2\EOT\247\SOH\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT%\STX\STX\SOH\DC2\EOT\247\SOH\SI\SUB\n\
    \\r\n\
    \\ENQ\EOT%\STX\STX\ETX\DC2\EOT\247\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT%\STX\ETX\DC2\EOT\248\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT%\STX\ETX\ACK\DC2\EOT\248\SOH\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT%\STX\ETX\SOH\DC2\EOT\248\SOH\SI\SUB\n\
    \\r\n\
    \\ENQ\EOT%\STX\ETX\ETX\DC2\EOT\248\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT%\STX\EOT\DC2\EOT\249\SOH\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT%\STX\EOT\ACK\DC2\EOT\249\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT%\STX\EOT\SOH\DC2\EOT\249\SOH\r\SYN\n\
    \\r\n\
    \\ENQ\EOT%\STX\EOT\ETX\DC2\EOT\249\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT%\STX\ENQ\DC2\EOT\250\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT%\STX\ENQ\ACK\DC2\EOT\250\SOH\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT%\STX\ENQ\SOH\DC2\EOT\250\SOH\SI\SUB\n\
    \\r\n\
    \\ENQ\EOT%\STX\ENQ\ETX\DC2\EOT\250\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT%\STX\ACK\DC2\EOT\251\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT%\STX\ACK\ACK\DC2\EOT\251\SOH\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT%\STX\ACK\SOH\DC2\EOT\251\SOH\SI\SUB\n\
    \\r\n\
    \\ENQ\EOT%\STX\ACK\ETX\DC2\EOT\251\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT%\STX\a\DC2\EOT\252\SOH\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT%\STX\a\ACK\DC2\EOT\252\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT%\STX\a\SOH\DC2\EOT\252\SOH\r\SYN\n\
    \\r\n\
    \\ENQ\EOT%\STX\a\ETX\DC2\EOT\252\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT%\STX\b\DC2\EOT\253\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT%\STX\b\ACK\DC2\EOT\253\SOH\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT%\STX\b\SOH\DC2\EOT\253\SOH\SI\SUB\n\
    \\r\n\
    \\ENQ\EOT%\STX\b\ETX\DC2\EOT\253\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT%\STX\t\DC2\EOT\254\SOH\EOT,\n\
    \\r\n\
    \\ENQ\EOT%\STX\t\ACK\DC2\EOT\254\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT%\STX\t\SOH\DC2\EOT\254\SOH\NAK&\n\
    \\r\n\
    \\ENQ\EOT%\STX\t\ETX\DC2\EOT\254\SOH)+\n\
    \\f\n\
    \\EOT\EOT%\STX\n\
    \\DC2\EOT\255\SOH\EOT)\n\
    \\r\n\
    \\ENQ\EOT%\STX\n\
    \\ACK\DC2\EOT\255\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT%\STX\n\
    \\SOH\DC2\EOT\255\SOH\DC3#\n\
    \\r\n\
    \\ENQ\EOT%\STX\n\
    \\ETX\DC2\EOT\255\SOH&(\n\
    \\f\n\
    \\EOT\EOT%\STX\v\DC2\EOT\128\STX\EOT)\n\
    \\r\n\
    \\ENQ\EOT%\STX\v\ACK\DC2\EOT\128\STX\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT%\STX\v\SOH\DC2\EOT\128\STX\DC3#\n\
    \\r\n\
    \\ENQ\EOT%\STX\v\ETX\DC2\EOT\128\STX&(\n\
    \\f\n\
    \\EOT\EOT%\STX\f\DC2\EOT\129\STX\EOT%\n\
    \\r\n\
    \\ENQ\EOT%\STX\f\ACK\DC2\EOT\129\STX\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT%\STX\f\SOH\DC2\EOT\129\STX\DC1\US\n\
    \\r\n\
    \\ENQ\EOT%\STX\f\ETX\DC2\EOT\129\STX\"$\n\
    \\f\n\
    \\EOT\EOT%\STX\r\DC2\EOT\130\STX\EOT+\n\
    \\r\n\
    \\ENQ\EOT%\STX\r\ACK\DC2\EOT\130\STX\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT%\STX\r\SOH\DC2\EOT\130\STX\DC4%\n\
    \\r\n\
    \\ENQ\EOT%\STX\r\ETX\DC2\EOT\130\STX(*\n\
    \\f\n\
    \\STX\EOT&\DC2\ACK\134\STX\NUL\137\STX\SOH\n\
    \\v\n\
    \\ETX\EOT&\SOH\DC2\EOT\134\STX\b#\n\
    \\f\n\
    \\EOT\EOT&\STX\NUL\DC2\EOT\135\STX\STX$\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\ACK\DC2\EOT\135\STX\STX\SI\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\SOH\DC2\EOT\135\STX\DLE\US\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\ETX\DC2\EOT\135\STX\"#\n\
    \\f\n\
    \\EOT\EOT&\STX\SOH\DC2\EOT\136\STX\STX&\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\ACK\DC2\EOT\136\STX\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\SOH\DC2\EOT\136\STX\DC2!\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\ETX\DC2\EOT\136\STX$%\n\
    \\f\n\
    \\STX\EOT'\DC2\ACK\139\STX\NUL\142\STX\SOH\n\
    \\v\n\
    \\ETX\EOT'\SOH\DC2\EOT\139\STX\b$\n\
    \\f\n\
    \\EOT\EOT'\STX\NUL\DC2\EOT\140\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\ACK\DC2\EOT\140\STX\STX\f\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\SOH\DC2\EOT\140\STX\r\CAN\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\ETX\DC2\EOT\140\STX\ESC\FS\n\
    \\f\n\
    \\EOT\EOT'\STX\SOH\DC2\EOT\141\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\ACK\DC2\EOT\141\STX\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\SOH\DC2\EOT\141\STX\DC3\"\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\ETX\DC2\EOT\141\STX%&\n\
    \\f\n\
    \\STX\EOT(\DC2\ACK\144\STX\NUL\153\STX\SOH\n\
    \\v\n\
    \\ETX\EOT(\SOH\DC2\EOT\144\STX\b\SUB\n\
    \\163\SOH\n\
    \\EOT\EOT(\b\NUL\DC2\ACK\147\STX\STX\152\STX\ETX\SUB\146\SOH Revision checks name their stable target IDs explicitly. Existence checks\n\
    \ remain path-based because the entry being checked may not have an ID.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT(\b\NUL\SOH\DC2\EOT\147\STX\b\DC1\n\
    \\f\n\
    \\EOT\EOT(\STX\NUL\DC2\EOT\148\STX\EOT6\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\ACK\DC2\EOT\148\STX\EOT\US\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\SOH\DC2\EOT\148\STX 1\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\ETX\DC2\EOT\148\STX45\n\
    \\f\n\
    \\EOT\EOT(\STX\SOH\DC2\EOT\149\STX\EOT8\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\ACK\DC2\EOT\149\STX\EOT \n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\SOH\DC2\EOT\149\STX!3\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\ETX\DC2\EOT\149\STX67\n\
    \\f\n\
    \\EOT\EOT(\STX\STX\DC2\EOT\150\STX\EOT \n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\ACK\DC2\EOT\150\STX\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\SOH\DC2\EOT\150\STX\DC1\ESC\n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\ETX\DC2\EOT\150\STX\RS\US\n\
    \\f\n\
    \\EOT\EOT(\STX\ETX\DC2\EOT\151\STX\EOT$\n\
    \\r\n\
    \\ENQ\EOT(\STX\ETX\ACK\DC2\EOT\151\STX\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT(\STX\ETX\SOH\DC2\EOT\151\STX\DC1\US\n\
    \\r\n\
    \\ENQ\EOT(\STX\ETX\ETX\DC2\EOT\151\STX\"#\n\
    \\n\
    \\n\
    \\STX\EOT)\DC2\EOT\155\STX\NUL2\n\
    \\v\n\
    \\ETX\EOT)\SOH\DC2\EOT\155\STX\b\ETB\n\
    \\f\n\
    \\EOT\EOT)\STX\NUL\DC2\EOT\155\STX\SUB0\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\ACK\DC2\EOT\155\STX\SUB&\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\SOH\DC2\EOT\155\STX'+\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\ETX\DC2\EOT\155\STX./\n\
    \\f\n\
    \\STX\EOT*\DC2\ACK\157\STX\NUL\161\STX\SOH\n\
    \\v\n\
    \\ETX\EOT*\SOH\DC2\EOT\157\STX\b\SYN\n\
    \\f\n\
    \\EOT\EOT*\STX\NUL\DC2\EOT\158\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\ACK\DC2\EOT\158\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\SOH\DC2\EOT\158\STX\SI\DC3\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\ETX\DC2\EOT\158\STX\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT*\STX\SOH\DC2\EOT\159\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\ENQ\DC2\EOT\159\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\SOH\DC2\EOT\159\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\ETX\DC2\EOT\159\STX\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT*\STX\STX\DC2\EOT\160\STX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT*\STX\STX\ENQ\DC2\EOT\160\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT*\STX\STX\SOH\DC2\EOT\160\STX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT*\STX\STX\ETX\DC2\EOT\160\STX\DC3\DC4\n\
    \\f\n\
    \\STX\EOT+\DC2\ACK\163\STX\NUL\167\STX\SOH\n\
    \\v\n\
    \\ETX\EOT+\SOH\DC2\EOT\163\STX\b\ETB\n\
    \\f\n\
    \\EOT\EOT+\STX\NUL\DC2\EOT\164\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT+\STX\NUL\ACK\DC2\EOT\164\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT+\STX\NUL\SOH\DC2\EOT\164\STX\SI\DC3\n\
    \\r\n\
    \\ENQ\EOT+\STX\NUL\ETX\DC2\EOT\164\STX\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT+\STX\SOH\DC2\EOT\165\STX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT+\STX\SOH\ENQ\DC2\EOT\165\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT+\STX\SOH\SOH\DC2\EOT\165\STX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT+\STX\SOH\ETX\DC2\EOT\165\STX\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT+\STX\STX\DC2\EOT\166\STX\STX!\n\
    \\r\n\
    \\ENQ\EOT+\STX\STX\EOT\DC2\EOT\166\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT+\STX\STX\ENQ\DC2\EOT\166\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT+\STX\STX\SOH\DC2\EOT\166\STX\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT+\STX\STX\ETX\DC2\EOT\166\STX\US \n\
    \\f\n\
    \\STX\EOT,\DC2\ACK\169\STX\NUL\174\STX\SOH\n\
    \\v\n\
    \\ETX\EOT,\SOH\DC2\EOT\169\STX\b\SUB\n\
    \\f\n\
    \\EOT\EOT,\STX\NUL\DC2\EOT\170\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT,\STX\NUL\ACK\DC2\EOT\170\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT,\STX\NUL\SOH\DC2\EOT\170\STX\SI\DC3\n\
    \\r\n\
    \\ENQ\EOT,\STX\NUL\ETX\DC2\EOT\170\STX\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT,\STX\SOH\DC2\EOT\171\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT,\STX\SOH\ENQ\DC2\EOT\171\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT,\STX\SOH\SOH\DC2\EOT\171\STX\t\NAK\n\
    \\r\n\
    \\ENQ\EOT,\STX\SOH\ETX\DC2\EOT\171\STX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT,\STX\STX\DC2\EOT\172\STX\STX!\n\
    \\r\n\
    \\ENQ\EOT,\STX\STX\ENQ\DC2\EOT\172\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT,\STX\STX\SOH\DC2\EOT\172\STX\t\FS\n\
    \\r\n\
    \\ENQ\EOT,\STX\STX\ETX\DC2\EOT\172\STX\US \n\
    \\f\n\
    \\EOT\EOT,\STX\ETX\DC2\EOT\173\STX\STX\EM\n\
    \\r\n\
    \\ENQ\EOT,\STX\ETX\ENQ\DC2\EOT\173\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT,\STX\ETX\SOH\DC2\EOT\173\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT,\STX\ETX\ETX\DC2\EOT\173\STX\ETB\CAN\n\
    \\f\n\
    \\STX\EOT-\DC2\ACK\176\STX\NUL\179\STX\SOH\n\
    \\v\n\
    \\ETX\EOT-\SOH\DC2\EOT\176\STX\b\DC2\n\
    \\f\n\
    \\EOT\EOT-\STX\NUL\DC2\EOT\177\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT-\STX\NUL\ACK\DC2\EOT\177\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT-\STX\NUL\SOH\DC2\EOT\177\STX\SI\DC3\n\
    \\r\n\
    \\ENQ\EOT-\STX\NUL\ETX\DC2\EOT\177\STX\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT-\STX\SOH\DC2\EOT\178\STX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT-\STX\SOH\ENQ\DC2\EOT\178\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT-\STX\SOH\SOH\DC2\EOT\178\STX\a\DLE\n\
    \\r\n\
    \\ENQ\EOT-\STX\SOH\ETX\DC2\EOT\178\STX\DC3\DC4\n\
    \\f\n\
    \\STX\EOT.\DC2\ACK\181\STX\NUL\184\STX\SOH\n\
    \\v\n\
    \\ETX\EOT.\SOH\DC2\EOT\181\STX\b\DLE\n\
    \\f\n\
    \\EOT\EOT.\STX\NUL\DC2\EOT\182\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT.\STX\NUL\ACK\DC2\EOT\182\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT.\STX\NUL\SOH\DC2\EOT\182\STX\SI\NAK\n\
    \\r\n\
    \\ENQ\EOT.\STX\NUL\ETX\DC2\EOT\182\STX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT.\STX\SOH\DC2\EOT\183\STX\STX\US\n\
    \\r\n\
    \\ENQ\EOT.\STX\SOH\ACK\DC2\EOT\183\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT.\STX\SOH\SOH\DC2\EOT\183\STX\SI\SUB\n\
    \\r\n\
    \\ENQ\EOT.\STX\SOH\ETX\DC2\EOT\183\STX\GS\RS\n\
    \\f\n\
    \\STX\EOT/\DC2\ACK\186\STX\NUL\189\STX\SOH\n\
    \\v\n\
    \\ETX\EOT/\SOH\DC2\EOT\186\STX\b\ESC\n\
    \\f\n\
    \\EOT\EOT/\STX\NUL\DC2\EOT\187\STX\STX\FS\n\
    \\r\n\
    \\ENQ\EOT/\STX\NUL\ACK\DC2\EOT\187\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT/\STX\NUL\SOH\DC2\EOT\187\STX\SI\ETB\n\
    \\r\n\
    \\ENQ\EOT/\STX\NUL\ETX\DC2\EOT\187\STX\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT/\STX\SOH\DC2\EOT\188\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT/\STX\SOH\EOT\DC2\EOT\188\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT/\STX\SOH\ACK\DC2\EOT\188\STX\v\CAN\n\
    \\r\n\
    \\ENQ\EOT/\STX\SOH\SOH\DC2\EOT\188\STX\EM#\n\
    \\r\n\
    \\ENQ\EOT/\STX\SOH\ETX\DC2\EOT\188\STX&'\n\
    \\f\n\
    \\STX\EOT0\DC2\ACK\191\STX\NUL\201\STX\SOH\n\
    \\v\n\
    \\ETX\EOT0\SOH\DC2\EOT\191\STX\b\CAN\n\
    \\SO\n\
    \\EOT\EOT0\b\NUL\DC2\ACK\192\STX\STX\200\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT0\b\NUL\SOH\DC2\EOT\192\STX\b\DLE\n\
    \\f\n\
    \\EOT\EOT0\STX\NUL\DC2\EOT\193\STX\EOT)\n\
    \\r\n\
    \\ENQ\EOT0\STX\NUL\ACK\DC2\EOT\193\STX\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT0\STX\NUL\SOH\DC2\EOT\193\STX\DC4$\n\
    \\r\n\
    \\ENQ\EOT0\STX\NUL\ETX\DC2\EOT\193\STX'(\n\
    \\f\n\
    \\EOT\EOT0\STX\SOH\DC2\EOT\194\STX\EOT'\n\
    \\r\n\
    \\ENQ\EOT0\STX\SOH\ACK\DC2\EOT\194\STX\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT0\STX\SOH\SOH\DC2\EOT\194\STX\DC3\"\n\
    \\r\n\
    \\ENQ\EOT0\STX\SOH\ETX\DC2\EOT\194\STX%&\n\
    \\f\n\
    \\EOT\EOT0\STX\STX\DC2\EOT\195\STX\EOT)\n\
    \\r\n\
    \\ENQ\EOT0\STX\STX\ACK\DC2\EOT\195\STX\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT0\STX\STX\SOH\DC2\EOT\195\STX\DC4$\n\
    \\r\n\
    \\ENQ\EOT0\STX\STX\ETX\DC2\EOT\195\STX'(\n\
    \\f\n\
    \\EOT\EOT0\STX\ETX\DC2\EOT\196\STX\EOT0\n\
    \\r\n\
    \\ENQ\EOT0\STX\ETX\ACK\DC2\EOT\196\STX\EOT\SYN\n\
    \\r\n\
    \\ENQ\EOT0\STX\ETX\SOH\DC2\EOT\196\STX\ETB+\n\
    \\r\n\
    \\ENQ\EOT0\STX\ETX\ETX\DC2\EOT\196\STX./\n\
    \\f\n\
    \\EOT\EOT0\STX\EOT\DC2\EOT\197\STX\EOT\US\n\
    \\r\n\
    \\ENQ\EOT0\STX\EOT\ACK\DC2\EOT\197\STX\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT0\STX\EOT\SOH\DC2\EOT\197\STX\SI\SUB\n\
    \\r\n\
    \\ENQ\EOT0\STX\EOT\ETX\DC2\EOT\197\STX\GS\RS\n\
    \\f\n\
    \\EOT\EOT0\STX\ENQ\DC2\EOT\198\STX\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT0\STX\ENQ\ACK\DC2\EOT\198\STX\EOT\f\n\
    \\r\n\
    \\ENQ\EOT0\STX\ENQ\SOH\DC2\EOT\198\STX\r\SYN\n\
    \\r\n\
    \\ENQ\EOT0\STX\ENQ\ETX\DC2\EOT\198\STX\EM\SUB\n\
    \\f\n\
    \\EOT\EOT0\STX\ACK\DC2\EOT\199\STX\EOT2\n\
    \\r\n\
    \\ENQ\EOT0\STX\ACK\ACK\DC2\EOT\199\STX\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT0\STX\ACK\SOH\DC2\EOT\199\STX\CAN-\n\
    \\r\n\
    \\ENQ\EOT0\STX\ACK\ETX\DC2\EOT\199\STX01\n\
    \\198\STX\n\
    \\STX\EOT1\DC2\ACK\208\STX\NUL\212\STX\SOH\SUB\183\STX All preconditions are checked immediately before one host-level commit. A\n\
    \ mismatch returns REVISION_CONFLICT and applies none of the mutations. Because\n\
    \ the catalog and documents are separate LoroDocs, the host uses its replica\n\
    \ write coordinator and crash-recovery journal rather than one Loro\n\
    \ transaction.\n\
    \\n\
    \\v\n\
    \\ETX\EOT1\SOH\DC2\EOT\208\STX\b\RS\n\
    \\f\n\
    \\EOT\EOT1\STX\NUL\DC2\EOT\209\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT1\STX\NUL\ENQ\DC2\EOT\209\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT1\STX\NUL\SOH\DC2\EOT\209\STX\t\NAK\n\
    \\r\n\
    \\ENQ\EOT1\STX\NUL\ETX\DC2\EOT\209\STX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT1\STX\SOH\DC2\EOT\210\STX\STX0\n\
    \\r\n\
    \\ENQ\EOT1\STX\SOH\EOT\DC2\EOT\210\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT1\STX\SOH\ACK\DC2\EOT\210\STX\v\GS\n\
    \\r\n\
    \\ENQ\EOT1\STX\SOH\SOH\DC2\EOT\210\STX\RS+\n\
    \\r\n\
    \\ENQ\EOT1\STX\SOH\ETX\DC2\EOT\210\STX./\n\
    \\f\n\
    \\EOT\EOT1\STX\STX\DC2\EOT\211\STX\STX*\n\
    \\r\n\
    \\ENQ\EOT1\STX\STX\EOT\DC2\EOT\211\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT1\STX\STX\ACK\DC2\EOT\211\STX\v\ESC\n\
    \\r\n\
    \\ENQ\EOT1\STX\STX\SOH\DC2\EOT\211\STX\FS%\n\
    \\r\n\
    \\ENQ\EOT1\STX\STX\ETX\DC2\EOT\211\STX()\n\
    \\f\n\
    \\STX\EOT2\DC2\ACK\214\STX\NUL\222\STX\SOH\n\
    \\v\n\
    \\ETX\EOT2\SOH\DC2\EOT\214\STX\b\DC3\n\
    \\f\n\
    \\EOT\EOT2\STX\NUL\DC2\EOT\215\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT2\STX\NUL\ACK\DC2\EOT\215\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT2\STX\NUL\SOH\DC2\EOT\215\STX\SI\DC3\n\
    \\r\n\
    \\ENQ\EOT2\STX\NUL\ETX\DC2\EOT\215\STX\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT2\STX\SOH\DC2\EOT\216\STX\STX$\n\
    \\r\n\
    \\ENQ\EOT2\STX\SOH\ACK\DC2\EOT\216\STX\STX\SI\n\
    \\r\n\
    \\ENQ\EOT2\STX\SOH\SOH\DC2\EOT\216\STX\DLE\US\n\
    \\r\n\
    \\ENQ\EOT2\STX\SOH\ETX\DC2\EOT\216\STX\"#\n\
    \\f\n\
    \\EOT\EOT2\STX\STX\DC2\EOT\217\STX\STX0\n\
    \\r\n\
    \\ENQ\EOT2\STX\STX\EOT\DC2\EOT\217\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT2\STX\STX\ACK\DC2\EOT\217\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT2\STX\STX\SOH\DC2\EOT\217\STX\ESC+\n\
    \\r\n\
    \\ENQ\EOT2\STX\STX\ETX\DC2\EOT\217\STX./\n\
    \\f\n\
    \\EOT\EOT2\STX\ETX\DC2\EOT\218\STX\STX&\n\
    \\r\n\
    \\ENQ\EOT2\STX\ETX\EOT\DC2\EOT\218\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT2\STX\ETX\ACK\DC2\EOT\218\STX\v\NAK\n\
    \\r\n\
    \\ENQ\EOT2\STX\ETX\SOH\DC2\EOT\218\STX\SYN!\n\
    \\r\n\
    \\ENQ\EOT2\STX\ETX\ETX\DC2\EOT\218\STX$%\n\
    \\f\n\
    \\EOT\EOT2\STX\EOT\DC2\EOT\219\STX\STX2\n\
    \\r\n\
    \\ENQ\EOT2\STX\EOT\EOT\DC2\EOT\219\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT2\STX\EOT\ACK\DC2\EOT\219\STX\v\ESC\n\
    \\r\n\
    \\ENQ\EOT2\STX\EOT\SOH\DC2\EOT\219\STX\FS-\n\
    \\r\n\
    \\ENQ\EOT2\STX\EOT\ETX\DC2\EOT\219\STX01\n\
    \\f\n\
    \\EOT\EOT2\STX\ENQ\DC2\EOT\220\STX\STX\"\n\
    \\r\n\
    \\ENQ\EOT2\STX\ENQ\EOT\DC2\EOT\220\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT2\STX\ENQ\ACK\DC2\EOT\220\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT2\STX\ENQ\SOH\DC2\EOT\220\STX\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT2\STX\ENQ\ETX\DC2\EOT\220\STX !\n\
    \\f\n\
    \\EOT\EOT2\STX\ACK\DC2\EOT\221\STX\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT2\STX\ACK\ENQ\DC2\EOT\221\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT2\STX\ACK\SOH\DC2\EOT\221\STX\a\SO\n\
    \\r\n\
    \\ENQ\EOT2\STX\ACK\ETX\DC2\EOT\221\STX\DC1\DC2\n\
    \\f\n\
    \\STX\EOT3\DC2\ACK\224\STX\NUL\227\STX\SOH\n\
    \\v\n\
    \\ETX\EOT3\SOH\DC2\EOT\224\STX\b\US\n\
    \\f\n\
    \\EOT\EOT3\STX\NUL\DC2\EOT\225\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT3\STX\NUL\ENQ\DC2\EOT\225\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT3\STX\NUL\SOH\DC2\EOT\225\STX\t\NAK\n\
    \\r\n\
    \\ENQ\EOT3\STX\NUL\ETX\DC2\EOT\225\STX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT3\STX\SOH\DC2\EOT\226\STX\STX)\n\
    \\r\n\
    \\ENQ\EOT3\STX\SOH\EOT\DC2\EOT\226\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT3\STX\SOH\ACK\DC2\EOT\226\STX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT3\STX\SOH\SOH\DC2\EOT\226\STX\ETB$\n\
    \\r\n\
    \\ENQ\EOT3\STX\SOH\ETX\DC2\EOT\226\STX'(\n\
    \\f\n\
    \\STX\EOT4\DC2\ACK\229\STX\NUL\234\STX\SOH\n\
    \\v\n\
    \\ETX\EOT4\SOH\DC2\EOT\229\STX\b\US\n\
    \\f\n\
    \\EOT\EOT4\STX\NUL\DC2\EOT\230\STX\STX$\n\
    \\r\n\
    \\ENQ\EOT4\STX\NUL\ACK\DC2\EOT\230\STX\STX\SI\n\
    \\r\n\
    \\ENQ\EOT4\STX\NUL\SOH\DC2\EOT\230\STX\DLE\US\n\
    \\r\n\
    \\ENQ\EOT4\STX\NUL\ETX\DC2\EOT\230\STX\"#\n\
    \\f\n\
    \\EOT\EOT4\STX\SOH\DC2\EOT\231\STX\STX\US\n\
    \\r\n\
    \\ENQ\EOT4\STX\SOH\ACK\DC2\EOT\231\STX\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT4\STX\SOH\SOH\DC2\EOT\231\STX\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT4\STX\SOH\ETX\DC2\EOT\231\STX\GS\RS\n\
    \\f\n\
    \\EOT\EOT4\STX\STX\DC2\EOT\232\STX\STX&\n\
    \\r\n\
    \\ENQ\EOT4\STX\STX\EOT\DC2\EOT\232\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT4\STX\STX\ACK\DC2\EOT\232\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT4\STX\STX\SOH\DC2\EOT\232\STX\ESC!\n\
    \\r\n\
    \\ENQ\EOT4\STX\STX\ETX\DC2\EOT\232\STX$%\n\
    \\f\n\
    \\EOT\EOT4\STX\ETX\DC2\EOT\233\STX\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT4\STX\ETX\ENQ\DC2\EOT\233\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT4\STX\ETX\SOH\DC2\EOT\233\STX\a\r\n\
    \\r\n\
    \\ENQ\EOT4\STX\ETX\ETX\DC2\EOT\233\STX\DLE\DC1\n\
    \\f\n\
    \\STX\EOT5\DC2\ACK\236\STX\NUL\241\STX\SOH\n\
    \\v\n\
    \\ETX\EOT5\SOH\DC2\EOT\236\STX\b \n\
    \\f\n\
    \\EOT\EOT5\STX\NUL\DC2\EOT\237\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT5\STX\NUL\ACK\DC2\EOT\237\STX\STX\f\n\
    \\r\n\
    \\ENQ\EOT5\STX\NUL\SOH\DC2\EOT\237\STX\r\CAN\n\
    \\r\n\
    \\ENQ\EOT5\STX\NUL\ETX\DC2\EOT\237\STX\ESC\FS\n\
    \\f\n\
    \\EOT\EOT5\STX\SOH\DC2\EOT\238\STX\STX \n\
    \\r\n\
    \\ENQ\EOT5\STX\SOH\ACK\DC2\EOT\238\STX\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT5\STX\SOH\SOH\DC2\EOT\238\STX\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT5\STX\SOH\ETX\DC2\EOT\238\STX\RS\US\n\
    \\f\n\
    \\EOT\EOT5\STX\STX\DC2\EOT\239\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT5\STX\STX\EOT\DC2\EOT\239\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT5\STX\STX\ACK\DC2\EOT\239\STX\v\ESC\n\
    \\r\n\
    \\ENQ\EOT5\STX\STX\SOH\DC2\EOT\239\STX\FS\"\n\
    \\r\n\
    \\ENQ\EOT5\STX\STX\ETX\DC2\EOT\239\STX%&\n\
    \\f\n\
    \\EOT\EOT5\STX\ETX\DC2\EOT\240\STX\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT5\STX\ETX\ENQ\DC2\EOT\240\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT5\STX\ETX\SOH\DC2\EOT\240\STX\a\r\n\
    \\r\n\
    \\ENQ\EOT5\STX\ETX\ETX\DC2\EOT\240\STX\DLE\DC1\n\
    \\f\n\
    \\STX\EOT6\DC2\ACK\243\STX\NUL\248\STX\SOH\n\
    \\v\n\
    \\ETX\EOT6\SOH\DC2\EOT\243\STX\b\RS\n\
    \\SO\n\
    \\EOT\EOT6\b\NUL\DC2\ACK\244\STX\STX\247\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT6\b\NUL\SOH\DC2\EOT\244\STX\b\DLE\n\
    \\f\n\
    \\EOT\EOT6\STX\NUL\DC2\EOT\245\STX\EOT(\n\
    \\r\n\
    \\ENQ\EOT6\STX\NUL\ACK\DC2\EOT\245\STX\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT6\STX\NUL\SOH\DC2\EOT\245\STX\FS#\n\
    \\r\n\
    \\ENQ\EOT6\STX\NUL\ETX\DC2\EOT\245\STX&'\n\
    \\f\n\
    \\EOT\EOT6\STX\SOH\DC2\EOT\246\STX\EOT*\n\
    \\r\n\
    \\ENQ\EOT6\STX\SOH\ACK\DC2\EOT\246\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT6\STX\SOH\SOH\DC2\EOT\246\STX\GS%\n\
    \\r\n\
    \\ENQ\EOT6\STX\SOH\ETX\DC2\EOT\246\STX()b\ACKproto3"