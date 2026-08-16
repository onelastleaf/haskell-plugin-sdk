{- This file was auto-generated from oll/common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Oll.Common (
        BinaryId(), CatalogNodeId(), CatalogRevision(), DocumentId(),
        DocumentRevision(), ErrorCode(..), ErrorCode(),
        ErrorCode'UnrecognizedValue, LogLevel(..), LogLevel(),
        LogLevel'UnrecognizedValue, NodeId(), NodeIdentity(), NodeName(),
        PluginArtifactId(), PluginId(), PluginJobId(), PluginName(),
        ProtocolError(), ProtocolError'MetadataEntry(), ReplicaId(),
        TraceContext()
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
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.value' @:: Lens' BinaryId Data.Text.Text@ -}
data BinaryId
  = BinaryId'_constructor {_BinaryId'value :: !Data.Text.Text,
                           _BinaryId'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BinaryId where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BinaryId "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinaryId'value (\ x__ y__ -> x__ {_BinaryId'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message BinaryId where
  messageName _ = Data.Text.pack "oll.protocol.BinaryId"
  packedMessageDescriptor _
    = "\n\
      \\bBinaryId\DC2\DC4\n\
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
              Data.ProtoLens.FieldDescriptor BinaryId
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BinaryId'_unknownFields
        (\ x__ y__ -> x__ {_BinaryId'_unknownFields = y__})
  defMessage
    = BinaryId'_constructor
        {_BinaryId'value = Data.ProtoLens.fieldDefault,
         _BinaryId'_unknownFields = []}
  parseMessage
    = let
        loop :: BinaryId -> Data.ProtoLens.Encoding.Bytes.Parser BinaryId
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
          (do loop Data.ProtoLens.defMessage) "BinaryId"
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
instance Control.DeepSeq.NFData BinaryId where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BinaryId'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BinaryId'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.value' @:: Lens' CatalogNodeId Data.Text.Text@ -}
data CatalogNodeId
  = CatalogNodeId'_constructor {_CatalogNodeId'value :: !Data.Text.Text,
                                _CatalogNodeId'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CatalogNodeId where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CatalogNodeId "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogNodeId'value
           (\ x__ y__ -> x__ {_CatalogNodeId'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message CatalogNodeId where
  messageName _ = Data.Text.pack "oll.protocol.CatalogNodeId"
  packedMessageDescriptor _
    = "\n\
      \\rCatalogNodeId\DC2\DC4\n\
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
              Data.ProtoLens.FieldDescriptor CatalogNodeId
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CatalogNodeId'_unknownFields
        (\ x__ y__ -> x__ {_CatalogNodeId'_unknownFields = y__})
  defMessage
    = CatalogNodeId'_constructor
        {_CatalogNodeId'value = Data.ProtoLens.fieldDefault,
         _CatalogNodeId'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CatalogNodeId -> Data.ProtoLens.Encoding.Bytes.Parser CatalogNodeId
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
          (do loop Data.ProtoLens.defMessage) "CatalogNodeId"
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
instance Control.DeepSeq.NFData CatalogNodeId where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CatalogNodeId'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CatalogNodeId'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.token' @:: Lens' CatalogRevision Data.ByteString.ByteString@ -}
data CatalogRevision
  = CatalogRevision'_constructor {_CatalogRevision'token :: !Data.ByteString.ByteString,
                                  _CatalogRevision'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CatalogRevision where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CatalogRevision "token" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CatalogRevision'token
           (\ x__ y__ -> x__ {_CatalogRevision'token = y__}))
        Prelude.id
instance Data.ProtoLens.Message CatalogRevision where
  messageName _ = Data.Text.pack "oll.protocol.CatalogRevision"
  packedMessageDescriptor _
    = "\n\
      \\SICatalogRevision\DC2\DC4\n\
      \\ENQtoken\CAN\SOH \SOH(\fR\ENQtoken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        token__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"token")) ::
              Data.ProtoLens.FieldDescriptor CatalogRevision
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, token__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CatalogRevision'_unknownFields
        (\ x__ y__ -> x__ {_CatalogRevision'_unknownFields = y__})
  defMessage
    = CatalogRevision'_constructor
        {_CatalogRevision'token = Data.ProtoLens.fieldDefault,
         _CatalogRevision'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CatalogRevision
          -> Data.ProtoLens.Encoding.Bytes.Parser CatalogRevision
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "token"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"token") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CatalogRevision"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"token") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CatalogRevision where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CatalogRevision'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CatalogRevision'token x__) ())
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.value' @:: Lens' DocumentId Data.Text.Text@ -}
data DocumentId
  = DocumentId'_constructor {_DocumentId'value :: !Data.Text.Text,
                             _DocumentId'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DocumentId where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DocumentId "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentId'value (\ x__ y__ -> x__ {_DocumentId'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message DocumentId where
  messageName _ = Data.Text.pack "oll.protocol.DocumentId"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \DocumentId\DC2\DC4\n\
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
              Data.ProtoLens.FieldDescriptor DocumentId
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DocumentId'_unknownFields
        (\ x__ y__ -> x__ {_DocumentId'_unknownFields = y__})
  defMessage
    = DocumentId'_constructor
        {_DocumentId'value = Data.ProtoLens.fieldDefault,
         _DocumentId'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DocumentId -> Data.ProtoLens.Encoding.Bytes.Parser DocumentId
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
          (do loop Data.ProtoLens.defMessage) "DocumentId"
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
instance Control.DeepSeq.NFData DocumentId where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DocumentId'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DocumentId'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.token' @:: Lens' DocumentRevision Data.ByteString.ByteString@ -}
data DocumentRevision
  = DocumentRevision'_constructor {_DocumentRevision'token :: !Data.ByteString.ByteString,
                                   _DocumentRevision'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DocumentRevision where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DocumentRevision "token" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DocumentRevision'token
           (\ x__ y__ -> x__ {_DocumentRevision'token = y__}))
        Prelude.id
instance Data.ProtoLens.Message DocumentRevision where
  messageName _ = Data.Text.pack "oll.protocol.DocumentRevision"
  packedMessageDescriptor _
    = "\n\
      \\DLEDocumentRevision\DC2\DC4\n\
      \\ENQtoken\CAN\SOH \SOH(\fR\ENQtoken"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        token__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"token")) ::
              Data.ProtoLens.FieldDescriptor DocumentRevision
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, token__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DocumentRevision'_unknownFields
        (\ x__ y__ -> x__ {_DocumentRevision'_unknownFields = y__})
  defMessage
    = DocumentRevision'_constructor
        {_DocumentRevision'token = Data.ProtoLens.fieldDefault,
         _DocumentRevision'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DocumentRevision
          -> Data.ProtoLens.Encoding.Bytes.Parser DocumentRevision
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "token"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"token") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DocumentRevision"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"token") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DocumentRevision where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DocumentRevision'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DocumentRevision'token x__) ())
newtype ErrorCode'UnrecognizedValue
  = ErrorCode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ErrorCode
  = ERROR_CODE_UNSPECIFIED |
    ERROR_CODE_INVALID_ARGUMENT |
    ERROR_CODE_NOT_FOUND |
    ERROR_CODE_ALREADY_EXISTS |
    ERROR_CODE_REVISION_CONFLICT |
    ERROR_CODE_CALL_DEPTH_EXCEEDED |
    ERROR_CODE_CAUSAL_DEPTH_EXCEEDED |
    ERROR_CODE_DEADLINE_EXCEEDED |
    ERROR_CODE_CANCELLED |
    ERROR_CODE_UNAVAILABLE |
    ERROR_CODE_PROTOCOL_MISMATCH |
    ERROR_CODE_FAILED_PRECONDITION |
    ERROR_CODE_INTERNAL |
    ERROR_CODE_PAYLOAD_TOO_LARGE |
    ERROR_CODE_UNSUPPORTED |
    ErrorCode'Unrecognized !ErrorCode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ErrorCode where
  maybeToEnum 0 = Prelude.Just ERROR_CODE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just ERROR_CODE_INVALID_ARGUMENT
  maybeToEnum 2 = Prelude.Just ERROR_CODE_NOT_FOUND
  maybeToEnum 3 = Prelude.Just ERROR_CODE_ALREADY_EXISTS
  maybeToEnum 4 = Prelude.Just ERROR_CODE_REVISION_CONFLICT
  maybeToEnum 5 = Prelude.Just ERROR_CODE_CALL_DEPTH_EXCEEDED
  maybeToEnum 6 = Prelude.Just ERROR_CODE_CAUSAL_DEPTH_EXCEEDED
  maybeToEnum 7 = Prelude.Just ERROR_CODE_DEADLINE_EXCEEDED
  maybeToEnum 8 = Prelude.Just ERROR_CODE_CANCELLED
  maybeToEnum 9 = Prelude.Just ERROR_CODE_UNAVAILABLE
  maybeToEnum 10 = Prelude.Just ERROR_CODE_PROTOCOL_MISMATCH
  maybeToEnum 11 = Prelude.Just ERROR_CODE_FAILED_PRECONDITION
  maybeToEnum 12 = Prelude.Just ERROR_CODE_INTERNAL
  maybeToEnum 13 = Prelude.Just ERROR_CODE_PAYLOAD_TOO_LARGE
  maybeToEnum 14 = Prelude.Just ERROR_CODE_UNSUPPORTED
  maybeToEnum k
    = Prelude.Just
        (ErrorCode'Unrecognized
           (ErrorCode'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum ERROR_CODE_UNSPECIFIED = "ERROR_CODE_UNSPECIFIED"
  showEnum ERROR_CODE_INVALID_ARGUMENT
    = "ERROR_CODE_INVALID_ARGUMENT"
  showEnum ERROR_CODE_NOT_FOUND = "ERROR_CODE_NOT_FOUND"
  showEnum ERROR_CODE_ALREADY_EXISTS = "ERROR_CODE_ALREADY_EXISTS"
  showEnum ERROR_CODE_REVISION_CONFLICT
    = "ERROR_CODE_REVISION_CONFLICT"
  showEnum ERROR_CODE_CALL_DEPTH_EXCEEDED
    = "ERROR_CODE_CALL_DEPTH_EXCEEDED"
  showEnum ERROR_CODE_CAUSAL_DEPTH_EXCEEDED
    = "ERROR_CODE_CAUSAL_DEPTH_EXCEEDED"
  showEnum ERROR_CODE_DEADLINE_EXCEEDED
    = "ERROR_CODE_DEADLINE_EXCEEDED"
  showEnum ERROR_CODE_CANCELLED = "ERROR_CODE_CANCELLED"
  showEnum ERROR_CODE_UNAVAILABLE = "ERROR_CODE_UNAVAILABLE"
  showEnum ERROR_CODE_PROTOCOL_MISMATCH
    = "ERROR_CODE_PROTOCOL_MISMATCH"
  showEnum ERROR_CODE_FAILED_PRECONDITION
    = "ERROR_CODE_FAILED_PRECONDITION"
  showEnum ERROR_CODE_INTERNAL = "ERROR_CODE_INTERNAL"
  showEnum ERROR_CODE_PAYLOAD_TOO_LARGE
    = "ERROR_CODE_PAYLOAD_TOO_LARGE"
  showEnum ERROR_CODE_UNSUPPORTED = "ERROR_CODE_UNSUPPORTED"
  showEnum (ErrorCode'Unrecognized (ErrorCode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ERROR_CODE_UNSPECIFIED"
    = Prelude.Just ERROR_CODE_UNSPECIFIED
    | (Prelude.==) k "ERROR_CODE_INVALID_ARGUMENT"
    = Prelude.Just ERROR_CODE_INVALID_ARGUMENT
    | (Prelude.==) k "ERROR_CODE_NOT_FOUND"
    = Prelude.Just ERROR_CODE_NOT_FOUND
    | (Prelude.==) k "ERROR_CODE_ALREADY_EXISTS"
    = Prelude.Just ERROR_CODE_ALREADY_EXISTS
    | (Prelude.==) k "ERROR_CODE_REVISION_CONFLICT"
    = Prelude.Just ERROR_CODE_REVISION_CONFLICT
    | (Prelude.==) k "ERROR_CODE_CALL_DEPTH_EXCEEDED"
    = Prelude.Just ERROR_CODE_CALL_DEPTH_EXCEEDED
    | (Prelude.==) k "ERROR_CODE_CAUSAL_DEPTH_EXCEEDED"
    = Prelude.Just ERROR_CODE_CAUSAL_DEPTH_EXCEEDED
    | (Prelude.==) k "ERROR_CODE_DEADLINE_EXCEEDED"
    = Prelude.Just ERROR_CODE_DEADLINE_EXCEEDED
    | (Prelude.==) k "ERROR_CODE_CANCELLED"
    = Prelude.Just ERROR_CODE_CANCELLED
    | (Prelude.==) k "ERROR_CODE_UNAVAILABLE"
    = Prelude.Just ERROR_CODE_UNAVAILABLE
    | (Prelude.==) k "ERROR_CODE_PROTOCOL_MISMATCH"
    = Prelude.Just ERROR_CODE_PROTOCOL_MISMATCH
    | (Prelude.==) k "ERROR_CODE_FAILED_PRECONDITION"
    = Prelude.Just ERROR_CODE_FAILED_PRECONDITION
    | (Prelude.==) k "ERROR_CODE_INTERNAL"
    = Prelude.Just ERROR_CODE_INTERNAL
    | (Prelude.==) k "ERROR_CODE_PAYLOAD_TOO_LARGE"
    = Prelude.Just ERROR_CODE_PAYLOAD_TOO_LARGE
    | (Prelude.==) k "ERROR_CODE_UNSUPPORTED"
    = Prelude.Just ERROR_CODE_UNSUPPORTED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ErrorCode where
  minBound = ERROR_CODE_UNSPECIFIED
  maxBound = ERROR_CODE_UNSUPPORTED
instance Prelude.Enum ErrorCode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ErrorCode: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ERROR_CODE_UNSPECIFIED = 0
  fromEnum ERROR_CODE_INVALID_ARGUMENT = 1
  fromEnum ERROR_CODE_NOT_FOUND = 2
  fromEnum ERROR_CODE_ALREADY_EXISTS = 3
  fromEnum ERROR_CODE_REVISION_CONFLICT = 4
  fromEnum ERROR_CODE_CALL_DEPTH_EXCEEDED = 5
  fromEnum ERROR_CODE_CAUSAL_DEPTH_EXCEEDED = 6
  fromEnum ERROR_CODE_DEADLINE_EXCEEDED = 7
  fromEnum ERROR_CODE_CANCELLED = 8
  fromEnum ERROR_CODE_UNAVAILABLE = 9
  fromEnum ERROR_CODE_PROTOCOL_MISMATCH = 10
  fromEnum ERROR_CODE_FAILED_PRECONDITION = 11
  fromEnum ERROR_CODE_INTERNAL = 12
  fromEnum ERROR_CODE_PAYLOAD_TOO_LARGE = 13
  fromEnum ERROR_CODE_UNSUPPORTED = 14
  fromEnum (ErrorCode'Unrecognized (ErrorCode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ERROR_CODE_UNSUPPORTED
    = Prelude.error
        "ErrorCode.succ: bad argument ERROR_CODE_UNSUPPORTED. This value would be out of bounds."
  succ ERROR_CODE_UNSPECIFIED = ERROR_CODE_INVALID_ARGUMENT
  succ ERROR_CODE_INVALID_ARGUMENT = ERROR_CODE_NOT_FOUND
  succ ERROR_CODE_NOT_FOUND = ERROR_CODE_ALREADY_EXISTS
  succ ERROR_CODE_ALREADY_EXISTS = ERROR_CODE_REVISION_CONFLICT
  succ ERROR_CODE_REVISION_CONFLICT = ERROR_CODE_CALL_DEPTH_EXCEEDED
  succ ERROR_CODE_CALL_DEPTH_EXCEEDED
    = ERROR_CODE_CAUSAL_DEPTH_EXCEEDED
  succ ERROR_CODE_CAUSAL_DEPTH_EXCEEDED
    = ERROR_CODE_DEADLINE_EXCEEDED
  succ ERROR_CODE_DEADLINE_EXCEEDED = ERROR_CODE_CANCELLED
  succ ERROR_CODE_CANCELLED = ERROR_CODE_UNAVAILABLE
  succ ERROR_CODE_UNAVAILABLE = ERROR_CODE_PROTOCOL_MISMATCH
  succ ERROR_CODE_PROTOCOL_MISMATCH = ERROR_CODE_FAILED_PRECONDITION
  succ ERROR_CODE_FAILED_PRECONDITION = ERROR_CODE_INTERNAL
  succ ERROR_CODE_INTERNAL = ERROR_CODE_PAYLOAD_TOO_LARGE
  succ ERROR_CODE_PAYLOAD_TOO_LARGE = ERROR_CODE_UNSUPPORTED
  succ (ErrorCode'Unrecognized _)
    = Prelude.error "ErrorCode.succ: bad argument: unrecognized value"
  pred ERROR_CODE_UNSPECIFIED
    = Prelude.error
        "ErrorCode.pred: bad argument ERROR_CODE_UNSPECIFIED. This value would be out of bounds."
  pred ERROR_CODE_INVALID_ARGUMENT = ERROR_CODE_UNSPECIFIED
  pred ERROR_CODE_NOT_FOUND = ERROR_CODE_INVALID_ARGUMENT
  pred ERROR_CODE_ALREADY_EXISTS = ERROR_CODE_NOT_FOUND
  pred ERROR_CODE_REVISION_CONFLICT = ERROR_CODE_ALREADY_EXISTS
  pred ERROR_CODE_CALL_DEPTH_EXCEEDED = ERROR_CODE_REVISION_CONFLICT
  pred ERROR_CODE_CAUSAL_DEPTH_EXCEEDED
    = ERROR_CODE_CALL_DEPTH_EXCEEDED
  pred ERROR_CODE_DEADLINE_EXCEEDED
    = ERROR_CODE_CAUSAL_DEPTH_EXCEEDED
  pred ERROR_CODE_CANCELLED = ERROR_CODE_DEADLINE_EXCEEDED
  pred ERROR_CODE_UNAVAILABLE = ERROR_CODE_CANCELLED
  pred ERROR_CODE_PROTOCOL_MISMATCH = ERROR_CODE_UNAVAILABLE
  pred ERROR_CODE_FAILED_PRECONDITION = ERROR_CODE_PROTOCOL_MISMATCH
  pred ERROR_CODE_INTERNAL = ERROR_CODE_FAILED_PRECONDITION
  pred ERROR_CODE_PAYLOAD_TOO_LARGE = ERROR_CODE_INTERNAL
  pred ERROR_CODE_UNSUPPORTED = ERROR_CODE_PAYLOAD_TOO_LARGE
  pred (ErrorCode'Unrecognized _)
    = Prelude.error "ErrorCode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ErrorCode where
  fieldDefault = ERROR_CODE_UNSPECIFIED
instance Control.DeepSeq.NFData ErrorCode where
  rnf x__ = Prelude.seq x__ ()
newtype LogLevel'UnrecognizedValue
  = LogLevel'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data LogLevel
  = LOG_LEVEL_UNSPECIFIED |
    LOG_LEVEL_TRACE |
    LOG_LEVEL_DEBUG |
    LOG_LEVEL_INFO |
    LOG_LEVEL_WARN |
    LOG_LEVEL_ERROR |
    LogLevel'Unrecognized !LogLevel'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum LogLevel where
  maybeToEnum 0 = Prelude.Just LOG_LEVEL_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just LOG_LEVEL_TRACE
  maybeToEnum 2 = Prelude.Just LOG_LEVEL_DEBUG
  maybeToEnum 3 = Prelude.Just LOG_LEVEL_INFO
  maybeToEnum 4 = Prelude.Just LOG_LEVEL_WARN
  maybeToEnum 5 = Prelude.Just LOG_LEVEL_ERROR
  maybeToEnum k
    = Prelude.Just
        (LogLevel'Unrecognized
           (LogLevel'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum LOG_LEVEL_UNSPECIFIED = "LOG_LEVEL_UNSPECIFIED"
  showEnum LOG_LEVEL_TRACE = "LOG_LEVEL_TRACE"
  showEnum LOG_LEVEL_DEBUG = "LOG_LEVEL_DEBUG"
  showEnum LOG_LEVEL_INFO = "LOG_LEVEL_INFO"
  showEnum LOG_LEVEL_WARN = "LOG_LEVEL_WARN"
  showEnum LOG_LEVEL_ERROR = "LOG_LEVEL_ERROR"
  showEnum (LogLevel'Unrecognized (LogLevel'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "LOG_LEVEL_UNSPECIFIED"
    = Prelude.Just LOG_LEVEL_UNSPECIFIED
    | (Prelude.==) k "LOG_LEVEL_TRACE" = Prelude.Just LOG_LEVEL_TRACE
    | (Prelude.==) k "LOG_LEVEL_DEBUG" = Prelude.Just LOG_LEVEL_DEBUG
    | (Prelude.==) k "LOG_LEVEL_INFO" = Prelude.Just LOG_LEVEL_INFO
    | (Prelude.==) k "LOG_LEVEL_WARN" = Prelude.Just LOG_LEVEL_WARN
    | (Prelude.==) k "LOG_LEVEL_ERROR" = Prelude.Just LOG_LEVEL_ERROR
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded LogLevel where
  minBound = LOG_LEVEL_UNSPECIFIED
  maxBound = LOG_LEVEL_ERROR
instance Prelude.Enum LogLevel where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum LogLevel: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum LOG_LEVEL_UNSPECIFIED = 0
  fromEnum LOG_LEVEL_TRACE = 1
  fromEnum LOG_LEVEL_DEBUG = 2
  fromEnum LOG_LEVEL_INFO = 3
  fromEnum LOG_LEVEL_WARN = 4
  fromEnum LOG_LEVEL_ERROR = 5
  fromEnum (LogLevel'Unrecognized (LogLevel'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ LOG_LEVEL_ERROR
    = Prelude.error
        "LogLevel.succ: bad argument LOG_LEVEL_ERROR. This value would be out of bounds."
  succ LOG_LEVEL_UNSPECIFIED = LOG_LEVEL_TRACE
  succ LOG_LEVEL_TRACE = LOG_LEVEL_DEBUG
  succ LOG_LEVEL_DEBUG = LOG_LEVEL_INFO
  succ LOG_LEVEL_INFO = LOG_LEVEL_WARN
  succ LOG_LEVEL_WARN = LOG_LEVEL_ERROR
  succ (LogLevel'Unrecognized _)
    = Prelude.error "LogLevel.succ: bad argument: unrecognized value"
  pred LOG_LEVEL_UNSPECIFIED
    = Prelude.error
        "LogLevel.pred: bad argument LOG_LEVEL_UNSPECIFIED. This value would be out of bounds."
  pred LOG_LEVEL_TRACE = LOG_LEVEL_UNSPECIFIED
  pred LOG_LEVEL_DEBUG = LOG_LEVEL_TRACE
  pred LOG_LEVEL_INFO = LOG_LEVEL_DEBUG
  pred LOG_LEVEL_WARN = LOG_LEVEL_INFO
  pred LOG_LEVEL_ERROR = LOG_LEVEL_WARN
  pred (LogLevel'Unrecognized _)
    = Prelude.error "LogLevel.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault LogLevel where
  fieldDefault = LOG_LEVEL_UNSPECIFIED
instance Control.DeepSeq.NFData LogLevel where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.value' @:: Lens' NodeId Data.Text.Text@ -}
data NodeId
  = NodeId'_constructor {_NodeId'value :: !Data.Text.Text,
                         _NodeId'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NodeId where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NodeId "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeId'value (\ x__ y__ -> x__ {_NodeId'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message NodeId where
  messageName _ = Data.Text.pack "oll.protocol.NodeId"
  packedMessageDescriptor _
    = "\n\
      \\ACKNodeId\DC2\DC4\n\
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
              Data.ProtoLens.FieldDescriptor NodeId
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NodeId'_unknownFields
        (\ x__ y__ -> x__ {_NodeId'_unknownFields = y__})
  defMessage
    = NodeId'_constructor
        {_NodeId'value = Data.ProtoLens.fieldDefault,
         _NodeId'_unknownFields = []}
  parseMessage
    = let
        loop :: NodeId -> Data.ProtoLens.Encoding.Bytes.Parser NodeId
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
          (do loop Data.ProtoLens.defMessage) "NodeId"
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
instance Control.DeepSeq.NFData NodeId where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NodeId'_unknownFields x__)
             (Control.DeepSeq.deepseq (_NodeId'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.nodeId' @:: Lens' NodeIdentity NodeId@
         * 'Proto.Oll.Common_Fields.maybe'nodeId' @:: Lens' NodeIdentity (Prelude.Maybe NodeId)@
         * 'Proto.Oll.Common_Fields.nodeName' @:: Lens' NodeIdentity NodeName@
         * 'Proto.Oll.Common_Fields.maybe'nodeName' @:: Lens' NodeIdentity (Prelude.Maybe NodeName)@ -}
data NodeIdentity
  = NodeIdentity'_constructor {_NodeIdentity'nodeId :: !(Prelude.Maybe NodeId),
                               _NodeIdentity'nodeName :: !(Prelude.Maybe NodeName),
                               _NodeIdentity'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NodeIdentity where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NodeIdentity "nodeId" NodeId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeIdentity'nodeId
           (\ x__ y__ -> x__ {_NodeIdentity'nodeId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NodeIdentity "maybe'nodeId" (Prelude.Maybe NodeId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeIdentity'nodeId
           (\ x__ y__ -> x__ {_NodeIdentity'nodeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NodeIdentity "nodeName" NodeName where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeIdentity'nodeName
           (\ x__ y__ -> x__ {_NodeIdentity'nodeName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NodeIdentity "maybe'nodeName" (Prelude.Maybe NodeName) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeIdentity'nodeName
           (\ x__ y__ -> x__ {_NodeIdentity'nodeName = y__}))
        Prelude.id
instance Data.ProtoLens.Message NodeIdentity where
  messageName _ = Data.Text.pack "oll.protocol.NodeIdentity"
  packedMessageDescriptor _
    = "\n\
      \\fNodeIdentity\DC2-\n\
      \\anode_id\CAN\SOH \SOH(\v2\DC4.oll.protocol.NodeIdR\ACKnodeId\DC23\n\
      \\tnode_name\CAN\STX \SOH(\v2\SYN.oll.protocol.NodeNameR\bnodeName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nodeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NodeId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nodeId")) ::
              Data.ProtoLens.FieldDescriptor NodeIdentity
        nodeName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node_name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor NodeName)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nodeName")) ::
              Data.ProtoLens.FieldDescriptor NodeIdentity
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nodeId__field_descriptor),
           (Data.ProtoLens.Tag 2, nodeName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NodeIdentity'_unknownFields
        (\ x__ y__ -> x__ {_NodeIdentity'_unknownFields = y__})
  defMessage
    = NodeIdentity'_constructor
        {_NodeIdentity'nodeId = Prelude.Nothing,
         _NodeIdentity'nodeName = Prelude.Nothing,
         _NodeIdentity'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NodeIdentity -> Data.ProtoLens.Encoding.Bytes.Parser NodeIdentity
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
                                       "node_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nodeId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "node_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nodeName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NodeIdentity"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nodeId") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nodeName") _x
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
instance Control.DeepSeq.NFData NodeIdentity where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NodeIdentity'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NodeIdentity'nodeId x__)
                (Control.DeepSeq.deepseq (_NodeIdentity'nodeName x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.value' @:: Lens' NodeName Data.Text.Text@ -}
data NodeName
  = NodeName'_constructor {_NodeName'value :: !Data.Text.Text,
                           _NodeName'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NodeName where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NodeName "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NodeName'value (\ x__ y__ -> x__ {_NodeName'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message NodeName where
  messageName _ = Data.Text.pack "oll.protocol.NodeName"
  packedMessageDescriptor _
    = "\n\
      \\bNodeName\DC2\DC4\n\
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
              Data.ProtoLens.FieldDescriptor NodeName
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NodeName'_unknownFields
        (\ x__ y__ -> x__ {_NodeName'_unknownFields = y__})
  defMessage
    = NodeName'_constructor
        {_NodeName'value = Data.ProtoLens.fieldDefault,
         _NodeName'_unknownFields = []}
  parseMessage
    = let
        loop :: NodeName -> Data.ProtoLens.Encoding.Bytes.Parser NodeName
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
          (do loop Data.ProtoLens.defMessage) "NodeName"
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
instance Control.DeepSeq.NFData NodeName where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NodeName'_unknownFields x__)
             (Control.DeepSeq.deepseq (_NodeName'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.value' @:: Lens' PluginArtifactId Data.Text.Text@ -}
data PluginArtifactId
  = PluginArtifactId'_constructor {_PluginArtifactId'value :: !Data.Text.Text,
                                   _PluginArtifactId'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PluginArtifactId where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PluginArtifactId "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginArtifactId'value
           (\ x__ y__ -> x__ {_PluginArtifactId'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message PluginArtifactId where
  messageName _ = Data.Text.pack "oll.protocol.PluginArtifactId"
  packedMessageDescriptor _
    = "\n\
      \\DLEPluginArtifactId\DC2\DC4\n\
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
              Data.ProtoLens.FieldDescriptor PluginArtifactId
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PluginArtifactId'_unknownFields
        (\ x__ y__ -> x__ {_PluginArtifactId'_unknownFields = y__})
  defMessage
    = PluginArtifactId'_constructor
        {_PluginArtifactId'value = Data.ProtoLens.fieldDefault,
         _PluginArtifactId'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PluginArtifactId
          -> Data.ProtoLens.Encoding.Bytes.Parser PluginArtifactId
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
          (do loop Data.ProtoLens.defMessage) "PluginArtifactId"
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
instance Control.DeepSeq.NFData PluginArtifactId where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PluginArtifactId'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PluginArtifactId'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.value' @:: Lens' PluginId Data.Text.Text@ -}
data PluginId
  = PluginId'_constructor {_PluginId'value :: !Data.Text.Text,
                           _PluginId'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PluginId where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PluginId "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginId'value (\ x__ y__ -> x__ {_PluginId'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message PluginId where
  messageName _ = Data.Text.pack "oll.protocol.PluginId"
  packedMessageDescriptor _
    = "\n\
      \\bPluginId\DC2\DC4\n\
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
              Data.ProtoLens.FieldDescriptor PluginId
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PluginId'_unknownFields
        (\ x__ y__ -> x__ {_PluginId'_unknownFields = y__})
  defMessage
    = PluginId'_constructor
        {_PluginId'value = Data.ProtoLens.fieldDefault,
         _PluginId'_unknownFields = []}
  parseMessage
    = let
        loop :: PluginId -> Data.ProtoLens.Encoding.Bytes.Parser PluginId
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
          (do loop Data.ProtoLens.defMessage) "PluginId"
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
instance Control.DeepSeq.NFData PluginId where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PluginId'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PluginId'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.value' @:: Lens' PluginJobId Data.Text.Text@ -}
data PluginJobId
  = PluginJobId'_constructor {_PluginJobId'value :: !Data.Text.Text,
                              _PluginJobId'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PluginJobId where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PluginJobId "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginJobId'value (\ x__ y__ -> x__ {_PluginJobId'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message PluginJobId where
  messageName _ = Data.Text.pack "oll.protocol.PluginJobId"
  packedMessageDescriptor _
    = "\n\
      \\vPluginJobId\DC2\DC4\n\
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
              Data.ProtoLens.FieldDescriptor PluginJobId
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PluginJobId'_unknownFields
        (\ x__ y__ -> x__ {_PluginJobId'_unknownFields = y__})
  defMessage
    = PluginJobId'_constructor
        {_PluginJobId'value = Data.ProtoLens.fieldDefault,
         _PluginJobId'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PluginJobId -> Data.ProtoLens.Encoding.Bytes.Parser PluginJobId
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
          (do loop Data.ProtoLens.defMessage) "PluginJobId"
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
instance Control.DeepSeq.NFData PluginJobId where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PluginJobId'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PluginJobId'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.value' @:: Lens' PluginName Data.Text.Text@ -}
data PluginName
  = PluginName'_constructor {_PluginName'value :: !Data.Text.Text,
                             _PluginName'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PluginName where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PluginName "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginName'value (\ x__ y__ -> x__ {_PluginName'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message PluginName where
  messageName _ = Data.Text.pack "oll.protocol.PluginName"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \PluginName\DC2\DC4\n\
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
              Data.ProtoLens.FieldDescriptor PluginName
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PluginName'_unknownFields
        (\ x__ y__ -> x__ {_PluginName'_unknownFields = y__})
  defMessage
    = PluginName'_constructor
        {_PluginName'value = Data.ProtoLens.fieldDefault,
         _PluginName'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PluginName -> Data.ProtoLens.Encoding.Bytes.Parser PluginName
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
          (do loop Data.ProtoLens.defMessage) "PluginName"
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
instance Control.DeepSeq.NFData PluginName where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PluginName'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PluginName'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.code' @:: Lens' ProtocolError ErrorCode@
         * 'Proto.Oll.Common_Fields.message' @:: Lens' ProtocolError Data.Text.Text@
         * 'Proto.Oll.Common_Fields.retryable' @:: Lens' ProtocolError Prelude.Bool@
         * 'Proto.Oll.Common_Fields.metadata' @:: Lens' ProtocolError (Data.Map.Map Data.Text.Text Data.Text.Text)@
         * 'Proto.Oll.Common_Fields.details' @:: Lens' ProtocolError [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Oll.Common_Fields.vec'details' @:: Lens' ProtocolError (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@ -}
data ProtocolError
  = ProtocolError'_constructor {_ProtocolError'code :: !ErrorCode,
                                _ProtocolError'message :: !Data.Text.Text,
                                _ProtocolError'retryable :: !Prelude.Bool,
                                _ProtocolError'metadata :: !(Data.Map.Map Data.Text.Text Data.Text.Text),
                                _ProtocolError'details :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                                _ProtocolError'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProtocolError where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProtocolError "code" ErrorCode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolError'code (\ x__ y__ -> x__ {_ProtocolError'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProtocolError "message" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolError'message
           (\ x__ y__ -> x__ {_ProtocolError'message = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProtocolError "retryable" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolError'retryable
           (\ x__ y__ -> x__ {_ProtocolError'retryable = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProtocolError "metadata" (Data.Map.Map Data.Text.Text Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolError'metadata
           (\ x__ y__ -> x__ {_ProtocolError'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProtocolError "details" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolError'details
           (\ x__ y__ -> x__ {_ProtocolError'details = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProtocolError "vec'details" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolError'details
           (\ x__ y__ -> x__ {_ProtocolError'details = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProtocolError where
  messageName _ = Data.Text.pack "oll.protocol.ProtocolError"
  packedMessageDescriptor _
    = "\n\
      \\rProtocolError\DC2+\n\
      \\EOTcode\CAN\SOH \SOH(\SO2\ETB.oll.protocol.ErrorCodeR\EOTcode\DC2\CAN\n\
      \\amessage\CAN\STX \SOH(\tR\amessage\DC2\FS\n\
      \\tretryable\CAN\ETX \SOH(\bR\tretryable\DC2E\n\
      \\bmetadata\CAN\EOT \ETX(\v2).oll.protocol.ProtocolError.MetadataEntryR\bmetadata\DC2.\n\
      \\adetails\CAN\ENQ \ETX(\v2\DC4.google.protobuf.AnyR\adetails\SUB;\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ErrorCode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"code")) ::
              Data.ProtoLens.FieldDescriptor ProtocolError
        message__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"message")) ::
              Data.ProtoLens.FieldDescriptor ProtocolError
        retryable__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retryable"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"retryable")) ::
              Data.ProtoLens.FieldDescriptor ProtocolError
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProtocolError'MetadataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor ProtocolError
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"details")) ::
              Data.ProtoLens.FieldDescriptor ProtocolError
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, code__field_descriptor),
           (Data.ProtoLens.Tag 2, message__field_descriptor),
           (Data.ProtoLens.Tag 3, retryable__field_descriptor),
           (Data.ProtoLens.Tag 4, metadata__field_descriptor),
           (Data.ProtoLens.Tag 5, details__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProtocolError'_unknownFields
        (\ x__ y__ -> x__ {_ProtocolError'_unknownFields = y__})
  defMessage
    = ProtocolError'_constructor
        {_ProtocolError'code = Data.ProtoLens.fieldDefault,
         _ProtocolError'message = Data.ProtoLens.fieldDefault,
         _ProtocolError'retryable = Data.ProtoLens.fieldDefault,
         _ProtocolError'metadata = Data.Map.empty,
         _ProtocolError'details = Data.Vector.Generic.empty,
         _ProtocolError'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProtocolError
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser ProtocolError
        loop x mutable'details
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'details <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'details)
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
                              (Data.ProtoLens.Field.field @"vec'details") frozen'details x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "code"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
                                  mutable'details
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "message"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"message") y x)
                                  mutable'details
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "retryable"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"retryable") y x)
                                  mutable'details
                        34
                          -> do !(entry :: ProtocolError'MetadataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
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
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'details)
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "details"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'details y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'details
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'details <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'details)
          "ProtocolError"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"message") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"retryable") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
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
                                                ProtocolError'MetadataEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x))))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
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
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'details") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData ProtocolError where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProtocolError'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProtocolError'code x__)
                (Control.DeepSeq.deepseq
                   (_ProtocolError'message x__)
                   (Control.DeepSeq.deepseq
                      (_ProtocolError'retryable x__)
                      (Control.DeepSeq.deepseq
                         (_ProtocolError'metadata x__)
                         (Control.DeepSeq.deepseq (_ProtocolError'details x__) ())))))
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.key' @:: Lens' ProtocolError'MetadataEntry Data.Text.Text@
         * 'Proto.Oll.Common_Fields.value' @:: Lens' ProtocolError'MetadataEntry Data.Text.Text@ -}
data ProtocolError'MetadataEntry
  = ProtocolError'MetadataEntry'_constructor {_ProtocolError'MetadataEntry'key :: !Data.Text.Text,
                                              _ProtocolError'MetadataEntry'value :: !Data.Text.Text,
                                              _ProtocolError'MetadataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProtocolError'MetadataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProtocolError'MetadataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolError'MetadataEntry'key
           (\ x__ y__ -> x__ {_ProtocolError'MetadataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProtocolError'MetadataEntry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProtocolError'MetadataEntry'value
           (\ x__ y__ -> x__ {_ProtocolError'MetadataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProtocolError'MetadataEntry where
  messageName _
    = Data.Text.pack "oll.protocol.ProtocolError.MetadataEntry"
  packedMessageDescriptor _
    = "\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor ProtocolError'MetadataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor ProtocolError'MetadataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProtocolError'MetadataEntry'_unknownFields
        (\ x__ y__
           -> x__ {_ProtocolError'MetadataEntry'_unknownFields = y__})
  defMessage
    = ProtocolError'MetadataEntry'_constructor
        {_ProtocolError'MetadataEntry'key = Data.ProtoLens.fieldDefault,
         _ProtocolError'MetadataEntry'value = Data.ProtoLens.fieldDefault,
         _ProtocolError'MetadataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProtocolError'MetadataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ProtocolError'MetadataEntry
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData ProtocolError'MetadataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProtocolError'MetadataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProtocolError'MetadataEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ProtocolError'MetadataEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.value' @:: Lens' ReplicaId Data.Text.Text@ -}
data ReplicaId
  = ReplicaId'_constructor {_ReplicaId'value :: !Data.Text.Text,
                            _ReplicaId'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ReplicaId where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ReplicaId "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ReplicaId'value (\ x__ y__ -> x__ {_ReplicaId'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ReplicaId where
  messageName _ = Data.Text.pack "oll.protocol.ReplicaId"
  packedMessageDescriptor _
    = "\n\
      \\tReplicaId\DC2\DC4\n\
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
              Data.ProtoLens.FieldDescriptor ReplicaId
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ReplicaId'_unknownFields
        (\ x__ y__ -> x__ {_ReplicaId'_unknownFields = y__})
  defMessage
    = ReplicaId'_constructor
        {_ReplicaId'value = Data.ProtoLens.fieldDefault,
         _ReplicaId'_unknownFields = []}
  parseMessage
    = let
        loop :: ReplicaId -> Data.ProtoLens.Encoding.Bytes.Parser ReplicaId
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
          (do loop Data.ProtoLens.defMessage) "ReplicaId"
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
instance Control.DeepSeq.NFData ReplicaId where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ReplicaId'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ReplicaId'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Common_Fields.correlationId' @:: Lens' TraceContext Data.Text.Text@
         * 'Proto.Oll.Common_Fields.parentCallId' @:: Lens' TraceContext Data.Word.Word64@
         * 'Proto.Oll.Common_Fields.maybe'parentCallId' @:: Lens' TraceContext (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Oll.Common_Fields.callDepth' @:: Lens' TraceContext Data.Word.Word32@
         * 'Proto.Oll.Common_Fields.causalDepth' @:: Lens' TraceContext Data.Word.Word32@
         * 'Proto.Oll.Common_Fields.taskId' @:: Lens' TraceContext Data.Text.Text@
         * 'Proto.Oll.Common_Fields.maybe'taskId' @:: Lens' TraceContext (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Common_Fields.taskGroupId' @:: Lens' TraceContext Data.Text.Text@
         * 'Proto.Oll.Common_Fields.maybe'taskGroupId' @:: Lens' TraceContext (Prelude.Maybe Data.Text.Text)@ -}
data TraceContext
  = TraceContext'_constructor {_TraceContext'correlationId :: !Data.Text.Text,
                               _TraceContext'parentCallId :: !(Prelude.Maybe Data.Word.Word64),
                               _TraceContext'callDepth :: !Data.Word.Word32,
                               _TraceContext'causalDepth :: !Data.Word.Word32,
                               _TraceContext'taskId :: !(Prelude.Maybe Data.Text.Text),
                               _TraceContext'taskGroupId :: !(Prelude.Maybe Data.Text.Text),
                               _TraceContext'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TraceContext where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TraceContext "correlationId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceContext'correlationId
           (\ x__ y__ -> x__ {_TraceContext'correlationId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceContext "parentCallId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceContext'parentCallId
           (\ x__ y__ -> x__ {_TraceContext'parentCallId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceContext "maybe'parentCallId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceContext'parentCallId
           (\ x__ y__ -> x__ {_TraceContext'parentCallId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceContext "callDepth" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceContext'callDepth
           (\ x__ y__ -> x__ {_TraceContext'callDepth = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceContext "causalDepth" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceContext'causalDepth
           (\ x__ y__ -> x__ {_TraceContext'causalDepth = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceContext "taskId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceContext'taskId
           (\ x__ y__ -> x__ {_TraceContext'taskId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceContext "maybe'taskId" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceContext'taskId
           (\ x__ y__ -> x__ {_TraceContext'taskId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceContext "taskGroupId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceContext'taskGroupId
           (\ x__ y__ -> x__ {_TraceContext'taskGroupId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceContext "maybe'taskGroupId" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceContext'taskGroupId
           (\ x__ y__ -> x__ {_TraceContext'taskGroupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message TraceContext where
  messageName _ = Data.Text.pack "oll.protocol.TraceContext"
  packedMessageDescriptor _
    = "\n\
      \\fTraceContext\DC2%\n\
      \\SOcorrelation_id\CAN\SOH \SOH(\tR\rcorrelationId\DC2)\n\
      \\SOparent_call_id\CAN\STX \SOH(\EOTH\NULR\fparentCallId\136\SOH\SOH\DC2\GS\n\
      \\n\
      \call_depth\CAN\ETX \SOH(\rR\tcallDepth\DC2!\n\
      \\fcausal_depth\CAN\EOT \SOH(\rR\vcausalDepth\DC2\FS\n\
      \\atask_id\CAN\ENQ \SOH(\tH\SOHR\ACKtaskId\136\SOH\SOH\DC2'\n\
      \\rtask_group_id\CAN\ACK \SOH(\tH\STXR\vtaskGroupId\136\SOH\SOHB\DC1\n\
      \\SI_parent_call_idB\n\
      \\n\
      \\b_task_idB\DLE\n\
      \\SO_task_group_id"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        correlationId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "correlation_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"correlationId")) ::
              Data.ProtoLens.FieldDescriptor TraceContext
        parentCallId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_call_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'parentCallId")) ::
              Data.ProtoLens.FieldDescriptor TraceContext
        callDepth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "call_depth"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"callDepth")) ::
              Data.ProtoLens.FieldDescriptor TraceContext
        causalDepth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "causal_depth"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"causalDepth")) ::
              Data.ProtoLens.FieldDescriptor TraceContext
        taskId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'taskId")) ::
              Data.ProtoLens.FieldDescriptor TraceContext
        taskGroupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "task_group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'taskGroupId")) ::
              Data.ProtoLens.FieldDescriptor TraceContext
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, correlationId__field_descriptor),
           (Data.ProtoLens.Tag 2, parentCallId__field_descriptor),
           (Data.ProtoLens.Tag 3, callDepth__field_descriptor),
           (Data.ProtoLens.Tag 4, causalDepth__field_descriptor),
           (Data.ProtoLens.Tag 5, taskId__field_descriptor),
           (Data.ProtoLens.Tag 6, taskGroupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TraceContext'_unknownFields
        (\ x__ y__ -> x__ {_TraceContext'_unknownFields = y__})
  defMessage
    = TraceContext'_constructor
        {_TraceContext'correlationId = Data.ProtoLens.fieldDefault,
         _TraceContext'parentCallId = Prelude.Nothing,
         _TraceContext'callDepth = Data.ProtoLens.fieldDefault,
         _TraceContext'causalDepth = Data.ProtoLens.fieldDefault,
         _TraceContext'taskId = Prelude.Nothing,
         _TraceContext'taskGroupId = Prelude.Nothing,
         _TraceContext'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TraceContext -> Data.ProtoLens.Encoding.Bytes.Parser TraceContext
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
                                       "correlation_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"correlationId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "parent_call_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"parentCallId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "call_depth"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callDepth") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "causal_depth"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"causalDepth") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"taskId") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "task_group_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"taskGroupId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TraceContext"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"correlationId") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'parentCallId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"callDepth") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"causalDepth") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'taskId") _x
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
                                      Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'taskGroupId") _x
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
                                         Data.Text.Encoding.encodeUtf8 _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData TraceContext where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TraceContext'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TraceContext'correlationId x__)
                (Control.DeepSeq.deepseq
                   (_TraceContext'parentCallId x__)
                   (Control.DeepSeq.deepseq
                      (_TraceContext'callDepth x__)
                      (Control.DeepSeq.deepseq
                         (_TraceContext'causalDepth x__)
                         (Control.DeepSeq.deepseq
                            (_TraceContext'taskId x__)
                            (Control.DeepSeq.deepseq (_TraceContext'taskGroupId x__) ()))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\DLEoll/common.proto\DC2\foll.protocol\SUB\EMgoogle/protobuf/any.proto\"\RS\n\
    \\ACKNodeId\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\" \n\
    \\bNodeName\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\"r\n\
    \\fNodeIdentity\DC2-\n\
    \\anode_id\CAN\SOH \SOH(\v2\DC4.oll.protocol.NodeIdR\ACKnodeId\DC23\n\
    \\tnode_name\CAN\STX \SOH(\v2\SYN.oll.protocol.NodeNameR\bnodeName\"!\n\
    \\tReplicaId\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\"\"\n\
    \\n\
    \DocumentId\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\"%\n\
    \\rCatalogNodeId\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\" \n\
    \\bBinaryId\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\" \n\
    \\bPluginId\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\"\"\n\
    \\n\
    \PluginName\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\"#\n\
    \\vPluginJobId\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\"(\n\
    \\DLEPluginArtifactId\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\"'\n\
    \\SICatalogRevision\DC2\DC4\n\
    \\ENQtoken\CAN\SOH \SOH(\fR\ENQtoken\"(\n\
    \\DLEDocumentRevision\DC2\DC4\n\
    \\ENQtoken\CAN\SOH \SOH(\fR\ENQtoken\"\154\STX\n\
    \\fTraceContext\DC2%\n\
    \\SOcorrelation_id\CAN\SOH \SOH(\tR\rcorrelationId\DC2)\n\
    \\SOparent_call_id\CAN\STX \SOH(\EOTH\NULR\fparentCallId\136\SOH\SOH\DC2\GS\n\
    \\n\
    \call_depth\CAN\ETX \SOH(\rR\tcallDepth\DC2!\n\
    \\fcausal_depth\CAN\EOT \SOH(\rR\vcausalDepth\DC2\FS\n\
    \\atask_id\CAN\ENQ \SOH(\tH\SOHR\ACKtaskId\136\SOH\SOH\DC2'\n\
    \\rtask_group_id\CAN\ACK \SOH(\tH\STXR\vtaskGroupId\136\SOH\SOHB\DC1\n\
    \\SI_parent_call_idB\n\
    \\n\
    \\b_task_idB\DLE\n\
    \\SO_task_group_id\"\168\STX\n\
    \\rProtocolError\DC2+\n\
    \\EOTcode\CAN\SOH \SOH(\SO2\ETB.oll.protocol.ErrorCodeR\EOTcode\DC2\CAN\n\
    \\amessage\CAN\STX \SOH(\tR\amessage\DC2\FS\n\
    \\tretryable\CAN\ETX \SOH(\bR\tretryable\DC2E\n\
    \\bmetadata\CAN\EOT \ETX(\v2).oll.protocol.ProtocolError.MetadataEntryR\bmetadata\DC2.\n\
    \\adetails\CAN\ENQ \ETX(\v2\DC4.google.protobuf.AnyR\adetails\SUB;\n\
    \\rMetadataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue:\STX8\SOH*\140\SOH\n\
    \\bLogLevel\DC2\EM\n\
    \\NAKLOG_LEVEL_UNSPECIFIED\DLE\NUL\DC2\DC3\n\
    \\SILOG_LEVEL_TRACE\DLE\SOH\DC2\DC3\n\
    \\SILOG_LEVEL_DEBUG\DLE\STX\DC2\DC2\n\
    \\SOLOG_LEVEL_INFO\DLE\ETX\DC2\DC2\n\
    \\SOLOG_LEVEL_WARN\DLE\EOT\DC2\DC3\n\
    \\SILOG_LEVEL_ERROR\DLE\ENQ*\226\ETX\n\
    \\tErrorCode\DC2\SUB\n\
    \\SYNERROR_CODE_UNSPECIFIED\DLE\NUL\DC2\US\n\
    \\ESCERROR_CODE_INVALID_ARGUMENT\DLE\SOH\DC2\CAN\n\
    \\DC4ERROR_CODE_NOT_FOUND\DLE\STX\DC2\GS\n\
    \\EMERROR_CODE_ALREADY_EXISTS\DLE\ETX\DC2 \n\
    \\FSERROR_CODE_REVISION_CONFLICT\DLE\EOT\DC2\"\n\
    \\RSERROR_CODE_CALL_DEPTH_EXCEEDED\DLE\ENQ\DC2$\n\
    \ ERROR_CODE_CAUSAL_DEPTH_EXCEEDED\DLE\ACK\DC2 \n\
    \\FSERROR_CODE_DEADLINE_EXCEEDED\DLE\a\DC2\CAN\n\
    \\DC4ERROR_CODE_CANCELLED\DLE\b\DC2\SUB\n\
    \\SYNERROR_CODE_UNAVAILABLE\DLE\t\DC2 \n\
    \\FSERROR_CODE_PROTOCOL_MISMATCH\DLE\n\
    \\DC2\"\n\
    \\RSERROR_CODE_FAILED_PRECONDITION\DLE\v\DC2\ETB\n\
    \\DC3ERROR_CODE_INTERNAL\DLE\f\DC2 \n\
    \\FSERROR_CODE_PAYLOAD_TOO_LARGE\DLE\r\DC2\SUB\n\
    \\SYNERROR_CODE_UNSUPPORTED\DLE\SOJ\167\US\n\
    \\ACK\DC2\EOT\NUL\NULf\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\NAK\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL#\n\
    \\144\SOH\n\
    \\STX\EOT\NUL\DC2\ETX\b\NUL$\SUB\132\SOH Node IDs are canonical UUID v4 strings. They identify a node but do not carry\n\
    \ routing, authority, or other application semantics.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b\SO\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\DC1\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\CAN\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b !\n\
    \\134\SOH\n\
    \\STX\EOT\SOH\DC2\ETX\f\NUL&\SUB{ A durable human-facing node name. Implementations validate the lowercase\n\
    \ DNS-label syntax documented in architecture.md.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\f\b\DLE\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\f\DC3$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\f\DC3\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\f\SUB\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\f\"#\n\
    \\174\SOH\n\
    \\STX\EOT\STX\DC2\EOT\DC1\NUL\DC4\SOH\SUB\161\SOH NodeId and NodeName are both required and have a durable one-to-one\n\
    \ relationship. A node presents this same pair at every local and remote\n\
    \ protocol boundary.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC1\b\DC4\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC2\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC2\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC2\DC3\DC4\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\DC3\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\DC3\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\DC3\ETB\CAN\n\
    \M\n\
    \\STX\ENQ\NUL\DC2\EOT\ETB\NUL\RS\SOH\SUBA Shared structured-log severity used by host and plugin records.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\ETB\ENQ\r\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\CAN\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\CAN\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\CAN\SUB\ESC\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\EM\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\EM\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\EM\DC4\NAK\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\SUB\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\SUB\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\SUB\DC4\NAK\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\ESC\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\ESC\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\ESC\DC3\DC4\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX\FS\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX\FS\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX\FS\DC3\DC4\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ENQ\DC2\ETX\GS\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\SOH\DC2\ETX\GS\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\STX\DC2\ETX\GS\DC4\NAK\n\
    \\t\n\
    \\STX\EOT\ETX\DC2\ETX \NUL'\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX \b\DC1\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX \DC4%\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX \DC4\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX \ESC \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX #$\n\
    \\t\n\
    \\STX\EOT\EOT\DC2\ETX\"\NUL(\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\"\b\DC2\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\"\NAK&\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\"\NAK\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\"\FS!\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\"$%\n\
    \\t\n\
    \\STX\EOT\ENQ\DC2\ETX$\NUL+\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX$\b\NAK\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX$\CAN)\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX$\CAN\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX$\US$\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX$'(\n\
    \\t\n\
    \\STX\EOT\ACK\DC2\ETX&\NUL&\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX&\b\DLE\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX&\DC3$\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX&\DC3\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX&\SUB\US\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX&\"#\n\
    \\163\SOH\n\
    \\STX\EOT\a\DC2\ETX*\NUL&\SUB\151\SOH Immutable publisher identity used for package, process, job, and filesystem\n\
    \ ownership. Its dotted path-safe grammar is defined in plugin-storage.md.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX*\b\DLE\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX*\DC3$\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX*\DC3\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX*\SUB\US\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX*\"#\n\
    \w\n\
    \\STX\EOT\b\DC2\ETX.\NUL(\SUBl Mutable unique human-facing selector. Changing it never changes PluginId or\n\
    \ moves PluginId-keyed storage.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX.\b\DC2\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX.\NAK&\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETX.\NAK\ESC\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX.\FS!\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX.$%\n\
    \N\n\
    \\STX\EOT\t\DC2\ETX1\NUL)\SUBC Host-generated canonical UUID v4 for one asynchronous plugin job.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETX1\b\DC3\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETX1\SYN'\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETX1\SYN\FS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETX1\GS\"\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETX1%&\n\
    \~\n\
    \\STX\EOT\n\
    \\DC2\ETX5\NUL.\SUBs Plugin-generated canonical UUID v4, unique within the deployment, for one\n\
    \ verified artifact transfer and result.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETX5\b\CAN\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETX5\ESC,\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETX5\ESC!\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETX5\"'\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETX5*+\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOT7\NUL<\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETX7\b\ETB\n\
    \\169\SOH\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETX;\STX\DC2\SUB\155\SOH An opaque token representing the observed catalog state of one\n\
    \ CatalogNodeId. This intentionally does not expose Loro's frontier or\n\
    \ version-vector API.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETX;\STX\a\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETX;\b\r\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETX;\DLE\DC1\n\
    \\n\
    \\n\
    \\STX\EOT\f\DC2\EOT>\NULC\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETX>\b\CAN\n\
    \\184\SOH\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETXB\STX\DC2\SUB\170\SOH An opaque token representing the observed content and abstract CRDT state\n\
    \ of one DocumentId. This intentionally does not expose Loro's frontier or\n\
    \ version-vector API.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\ETXB\STX\a\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETXB\b\r\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETXB\DLE\DC1\n\
    \\n\
    \\n\
    \\STX\EOT\r\DC2\EOTE\NULL\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXE\b\DC4\n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXF\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\ETXF\STX\b\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXF\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXF\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\r\STX\SOH\DC2\ETXG\STX%\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\ETXG\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\ETXG\DC2 \n\
    \\f\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\ETXG#$\n\
    \\v\n\
    \\EOT\EOT\r\STX\STX\DC2\ETXH\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\ETXH\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\ETXH\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\r\STX\ETX\DC2\ETXI\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ENQ\DC2\ETXI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\ETXI\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\ETXI\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\r\STX\EOT\DC2\ETXJ\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\ENQ\DC2\ETXJ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\SOH\DC2\ETXJ\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\r\STX\EOT\ETX\DC2\ETXJ\FS\GS\n\
    \\v\n\
    \\EOT\EOT\r\STX\ENQ\DC2\ETXK\STX$\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\ENQ\DC2\ETXK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\SOH\DC2\ETXK\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\r\STX\ENQ\ETX\DC2\ETXK\"#\n\
    \\n\
    \\n\
    \\STX\ENQ\SOH\DC2\EOTN\NUL^\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETXN\ENQ\SO\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETXO\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETXO\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETXO\ESC\FS\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETXP\STX\"\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETXP\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETXP !\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\ETXQ\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\ETXQ\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\ETXQ\EM\SUB\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\ETX\DC2\ETXR\STX \n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\SOH\DC2\ETXR\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\STX\DC2\ETXR\RS\US\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\EOT\DC2\ETXS\STX#\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\EOT\SOH\DC2\ETXS\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\EOT\STX\DC2\ETXS!\"\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\ENQ\DC2\ETXT\STX%\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ENQ\SOH\DC2\ETXT\STX \n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ENQ\STX\DC2\ETXT#$\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\ACK\DC2\ETXU\STX'\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ACK\SOH\DC2\ETXU\STX\"\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ACK\STX\DC2\ETXU%&\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\a\DC2\ETXV\STX#\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\a\SOH\DC2\ETXV\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\a\STX\DC2\ETXV!\"\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\b\DC2\ETXW\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\b\SOH\DC2\ETXW\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\b\STX\DC2\ETXW\EM\SUB\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\t\DC2\ETXX\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\t\SOH\DC2\ETXX\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\t\STX\DC2\ETXX\ESC\FS\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\n\
    \\DC2\ETXY\STX$\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\n\
    \\SOH\DC2\ETXY\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\n\
    \\STX\DC2\ETXY!#\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\v\DC2\ETXZ\STX&\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\v\SOH\DC2\ETXZ\STX \n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\v\STX\DC2\ETXZ#%\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\f\DC2\ETX[\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\f\SOH\DC2\ETX[\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\f\STX\DC2\ETX[\CAN\SUB\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\r\DC2\ETX\\\STX$\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\r\SOH\DC2\ETX\\\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\r\STX\DC2\ETX\\!#\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\SO\DC2\ETX]\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SO\SOH\DC2\ETX]\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SO\STX\DC2\ETX]\ESC\GS\n\
    \\n\
    \\n\
    \\STX\EOT\SO\DC2\EOT`\NULf\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SO\SOH\DC2\ETX`\b\NAK\n\
    \\v\n\
    \\EOT\EOT\SO\STX\NUL\DC2\ETXa\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ACK\DC2\ETXa\STX\v\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\ETXa\f\DLE\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\ETXa\DC3\DC4\n\
    \\v\n\
    \\EOT\EOT\SO\STX\SOH\DC2\ETXb\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\ETXb\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\ETXb\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\ETXb\DC3\DC4\n\
    \\v\n\
    \\EOT\EOT\SO\STX\STX\DC2\ETXc\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\ETXc\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\ETXc\a\DLE\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\ETXc\DC3\DC4\n\
    \\v\n\
    \\EOT\EOT\SO\STX\ETX\DC2\ETXd\STX#\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\ETX\ACK\DC2\ETXd\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\ETX\SOH\DC2\ETXd\SYN\RS\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\ETX\ETX\DC2\ETXd!\"\n\
    \\v\n\
    \\EOT\EOT\SO\STX\EOT\DC2\ETXe\STX+\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\EOT\EOT\DC2\ETXe\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\EOT\ACK\DC2\ETXe\v\RS\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\EOT\SOH\DC2\ETXe\US&\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\EOT\ETX\DC2\ETXe)*b\ACKproto3"