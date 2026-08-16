{- This file was auto-generated from oll/config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Oll.Config (
        ConfigFunctionRef(), ConfigList(), ConfigMap(),
        ConfigMap'EntriesEntry(), ConfigPath(), ConfigPathSegment(),
        ConfigPathSegment'Kind(..), _ConfigPathSegment'Key,
        _ConfigPathSegment'Index, ConfigValue(), ConfigValue'Kind(..),
        _ConfigValue'NullValue, _ConfigValue'BoolValue,
        _ConfigValue'IntegerValue, _ConfigValue'NumberValue,
        _ConfigValue'StringValue, _ConfigValue'BytesValue,
        _ConfigValue'ListValue, _ConfigValue'MapValue,
        _ConfigValue'FunctionValue, _ConfigValue'TimestampValue,
        _ConfigValue'DurationValue, GetConfigRequest(),
        GetConfigResponse(), InvokeConfigFunctionRequest(),
        InvokeConfigFunctionResponse()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Oll.Config_Fields.sessionId' @:: Lens' ConfigFunctionRef Data.Text.Text@
         * 'Proto.Oll.Config_Fields.functionId' @:: Lens' ConfigFunctionRef Data.Text.Text@ -}
data ConfigFunctionRef
  = ConfigFunctionRef'_constructor {_ConfigFunctionRef'sessionId :: !Data.Text.Text,
                                    _ConfigFunctionRef'functionId :: !Data.Text.Text,
                                    _ConfigFunctionRef'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigFunctionRef where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConfigFunctionRef "sessionId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigFunctionRef'sessionId
           (\ x__ y__ -> x__ {_ConfigFunctionRef'sessionId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigFunctionRef "functionId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigFunctionRef'functionId
           (\ x__ y__ -> x__ {_ConfigFunctionRef'functionId = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConfigFunctionRef where
  messageName _ = Data.Text.pack "oll.protocol.ConfigFunctionRef"
  packedMessageDescriptor _
    = "\n\
      \\DC1ConfigFunctionRef\DC2\GS\n\
      \\n\
      \session_id\CAN\SOH \SOH(\tR\tsessionId\DC2\US\n\
      \\vfunction_id\CAN\STX \SOH(\tR\n\
      \functionId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sessionId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "session_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sessionId")) ::
              Data.ProtoLens.FieldDescriptor ConfigFunctionRef
        functionId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"functionId")) ::
              Data.ProtoLens.FieldDescriptor ConfigFunctionRef
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sessionId__field_descriptor),
           (Data.ProtoLens.Tag 2, functionId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigFunctionRef'_unknownFields
        (\ x__ y__ -> x__ {_ConfigFunctionRef'_unknownFields = y__})
  defMessage
    = ConfigFunctionRef'_constructor
        {_ConfigFunctionRef'sessionId = Data.ProtoLens.fieldDefault,
         _ConfigFunctionRef'functionId = Data.ProtoLens.fieldDefault,
         _ConfigFunctionRef'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigFunctionRef
          -> Data.ProtoLens.Encoding.Bytes.Parser ConfigFunctionRef
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
                                       "session_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sessionId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "function_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"functionId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConfigFunctionRef"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sessionId") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"functionId") _x
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
instance Control.DeepSeq.NFData ConfigFunctionRef where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigFunctionRef'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConfigFunctionRef'sessionId x__)
                (Control.DeepSeq.deepseq (_ConfigFunctionRef'functionId x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Config_Fields.values' @:: Lens' ConfigList [ConfigValue]@
         * 'Proto.Oll.Config_Fields.vec'values' @:: Lens' ConfigList (Data.Vector.Vector ConfigValue)@ -}
data ConfigList
  = ConfigList'_constructor {_ConfigList'values :: !(Data.Vector.Vector ConfigValue),
                             _ConfigList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConfigList "values" [ConfigValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigList'values (\ x__ y__ -> x__ {_ConfigList'values = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ConfigList "vec'values" (Data.Vector.Vector ConfigValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigList'values (\ x__ y__ -> x__ {_ConfigList'values = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConfigList where
  messageName _ = Data.Text.pack "oll.protocol.ConfigList"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ConfigList\DC21\n\
      \\ACKvalues\CAN\SOH \ETX(\v2\EM.oll.protocol.ConfigValueR\ACKvalues"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        values__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "values"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"values")) ::
              Data.ProtoLens.FieldDescriptor ConfigList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, values__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigList'_unknownFields
        (\ x__ y__ -> x__ {_ConfigList'_unknownFields = y__})
  defMessage
    = ConfigList'_constructor
        {_ConfigList'values = Data.Vector.Generic.empty,
         _ConfigList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ConfigValue
             -> Data.ProtoLens.Encoding.Bytes.Parser ConfigList
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
          "ConfigList"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ConfigList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigList'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ConfigList'values x__) ())
{- | Fields :
     
         * 'Proto.Oll.Config_Fields.entries' @:: Lens' ConfigMap (Data.Map.Map Data.Text.Text ConfigValue)@ -}
data ConfigMap
  = ConfigMap'_constructor {_ConfigMap'entries :: !(Data.Map.Map Data.Text.Text ConfigValue),
                            _ConfigMap'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigMap where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConfigMap "entries" (Data.Map.Map Data.Text.Text ConfigValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigMap'entries (\ x__ y__ -> x__ {_ConfigMap'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConfigMap where
  messageName _ = Data.Text.pack "oll.protocol.ConfigMap"
  packedMessageDescriptor _
    = "\n\
      \\tConfigMap\DC2>\n\
      \\aentries\CAN\SOH \ETX(\v2$.oll.protocol.ConfigMap.EntriesEntryR\aentries\SUBU\n\
      \\fEntriesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2/\n\
      \\ENQvalue\CAN\STX \SOH(\v2\EM.oll.protocol.ConfigValueR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigMap'EntriesEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor ConfigMap
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigMap'_unknownFields
        (\ x__ y__ -> x__ {_ConfigMap'_unknownFields = y__})
  defMessage
    = ConfigMap'_constructor
        {_ConfigMap'entries = Data.Map.empty,
         _ConfigMap'_unknownFields = []}
  parseMessage
    = let
        loop :: ConfigMap -> Data.ProtoLens.Encoding.Bytes.Parser ConfigMap
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
                          -> do !(entry :: ConfigMap'EntriesEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
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
          (do loop Data.ProtoLens.defMessage) "ConfigMap"
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
                                    (Data.ProtoLens.defMessage :: ConfigMap'EntriesEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"entries") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ConfigMap where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigMap'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ConfigMap'entries x__) ())
{- | Fields :
     
         * 'Proto.Oll.Config_Fields.key' @:: Lens' ConfigMap'EntriesEntry Data.Text.Text@
         * 'Proto.Oll.Config_Fields.value' @:: Lens' ConfigMap'EntriesEntry ConfigValue@
         * 'Proto.Oll.Config_Fields.maybe'value' @:: Lens' ConfigMap'EntriesEntry (Prelude.Maybe ConfigValue)@ -}
data ConfigMap'EntriesEntry
  = ConfigMap'EntriesEntry'_constructor {_ConfigMap'EntriesEntry'key :: !Data.Text.Text,
                                         _ConfigMap'EntriesEntry'value :: !(Prelude.Maybe ConfigValue),
                                         _ConfigMap'EntriesEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigMap'EntriesEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConfigMap'EntriesEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigMap'EntriesEntry'key
           (\ x__ y__ -> x__ {_ConfigMap'EntriesEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigMap'EntriesEntry "value" ConfigValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigMap'EntriesEntry'value
           (\ x__ y__ -> x__ {_ConfigMap'EntriesEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConfigMap'EntriesEntry "maybe'value" (Prelude.Maybe ConfigValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigMap'EntriesEntry'value
           (\ x__ y__ -> x__ {_ConfigMap'EntriesEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConfigMap'EntriesEntry where
  messageName _
    = Data.Text.pack "oll.protocol.ConfigMap.EntriesEntry"
  packedMessageDescriptor _
    = "\n\
      \\fEntriesEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2/\n\
      \\ENQvalue\CAN\STX \SOH(\v2\EM.oll.protocol.ConfigValueR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor ConfigMap'EntriesEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor ConfigMap'EntriesEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigMap'EntriesEntry'_unknownFields
        (\ x__ y__ -> x__ {_ConfigMap'EntriesEntry'_unknownFields = y__})
  defMessage
    = ConfigMap'EntriesEntry'_constructor
        {_ConfigMap'EntriesEntry'key = Data.ProtoLens.fieldDefault,
         _ConfigMap'EntriesEntry'value = Prelude.Nothing,
         _ConfigMap'EntriesEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigMap'EntriesEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ConfigMap'EntriesEntry
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
instance Control.DeepSeq.NFData ConfigMap'EntriesEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigMap'EntriesEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConfigMap'EntriesEntry'key x__)
                (Control.DeepSeq.deepseq (_ConfigMap'EntriesEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Config_Fields.segments' @:: Lens' ConfigPath [ConfigPathSegment]@
         * 'Proto.Oll.Config_Fields.vec'segments' @:: Lens' ConfigPath (Data.Vector.Vector ConfigPathSegment)@ -}
data ConfigPath
  = ConfigPath'_constructor {_ConfigPath'segments :: !(Data.Vector.Vector ConfigPathSegment),
                             _ConfigPath'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigPath where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConfigPath "segments" [ConfigPathSegment] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigPath'segments
           (\ x__ y__ -> x__ {_ConfigPath'segments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ConfigPath "vec'segments" (Data.Vector.Vector ConfigPathSegment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigPath'segments
           (\ x__ y__ -> x__ {_ConfigPath'segments = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConfigPath where
  messageName _ = Data.Text.pack "oll.protocol.ConfigPath"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ConfigPath\DC2;\n\
      \\bsegments\CAN\SOH \ETX(\v2\US.oll.protocol.ConfigPathSegmentR\bsegments"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        segments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "segments"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigPathSegment)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"segments")) ::
              Data.ProtoLens.FieldDescriptor ConfigPath
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, segments__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigPath'_unknownFields
        (\ x__ y__ -> x__ {_ConfigPath'_unknownFields = y__})
  defMessage
    = ConfigPath'_constructor
        {_ConfigPath'segments = Data.Vector.Generic.empty,
         _ConfigPath'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigPath
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ConfigPathSegment
             -> Data.ProtoLens.Encoding.Bytes.Parser ConfigPath
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
          "ConfigPath"
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
instance Control.DeepSeq.NFData ConfigPath where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigPath'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ConfigPath'segments x__) ())
{- | Fields :
     
         * 'Proto.Oll.Config_Fields.maybe'kind' @:: Lens' ConfigPathSegment (Prelude.Maybe ConfigPathSegment'Kind)@
         * 'Proto.Oll.Config_Fields.maybe'key' @:: Lens' ConfigPathSegment (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Config_Fields.key' @:: Lens' ConfigPathSegment Data.Text.Text@
         * 'Proto.Oll.Config_Fields.maybe'index' @:: Lens' ConfigPathSegment (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Oll.Config_Fields.index' @:: Lens' ConfigPathSegment Data.Word.Word64@ -}
data ConfigPathSegment
  = ConfigPathSegment'_constructor {_ConfigPathSegment'kind :: !(Prelude.Maybe ConfigPathSegment'Kind),
                                    _ConfigPathSegment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigPathSegment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ConfigPathSegment'Kind
  = ConfigPathSegment'Key !Data.Text.Text |
    ConfigPathSegment'Index !Data.Word.Word64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ConfigPathSegment "maybe'kind" (Prelude.Maybe ConfigPathSegment'Kind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigPathSegment'kind
           (\ x__ y__ -> x__ {_ConfigPathSegment'kind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigPathSegment "maybe'key" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigPathSegment'kind
           (\ x__ y__ -> x__ {_ConfigPathSegment'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigPathSegment'Key x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigPathSegment'Key y__))
instance Data.ProtoLens.Field.HasField ConfigPathSegment "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigPathSegment'kind
           (\ x__ y__ -> x__ {_ConfigPathSegment'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigPathSegment'Key x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigPathSegment'Key y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ConfigPathSegment "maybe'index" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigPathSegment'kind
           (\ x__ y__ -> x__ {_ConfigPathSegment'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigPathSegment'Index x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigPathSegment'Index y__))
instance Data.ProtoLens.Field.HasField ConfigPathSegment "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigPathSegment'kind
           (\ x__ y__ -> x__ {_ConfigPathSegment'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigPathSegment'Index x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigPathSegment'Index y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message ConfigPathSegment where
  messageName _ = Data.Text.pack "oll.protocol.ConfigPathSegment"
  packedMessageDescriptor _
    = "\n\
      \\DC1ConfigPathSegment\DC2\DC2\n\
      \\ETXkey\CAN\SOH \SOH(\tH\NULR\ETXkey\DC2\SYN\n\
      \\ENQindex\CAN\STX \SOH(\EOTH\NULR\ENQindexB\ACK\n\
      \\EOTkind"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'key")) ::
              Data.ProtoLens.FieldDescriptor ConfigPathSegment
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'index")) ::
              Data.ProtoLens.FieldDescriptor ConfigPathSegment
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, index__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigPathSegment'_unknownFields
        (\ x__ y__ -> x__ {_ConfigPathSegment'_unknownFields = y__})
  defMessage
    = ConfigPathSegment'_constructor
        {_ConfigPathSegment'kind = Prelude.Nothing,
         _ConfigPathSegment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigPathSegment
          -> Data.ProtoLens.Encoding.Bytes.Parser ConfigPathSegment
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
                        16
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
          (do loop Data.ProtoLens.defMessage) "ConfigPathSegment"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kind") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ConfigPathSegment'Key v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8 v)
                (Prelude.Just (ConfigPathSegment'Index v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ConfigPathSegment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigPathSegment'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ConfigPathSegment'kind x__) ())
instance Control.DeepSeq.NFData ConfigPathSegment'Kind where
  rnf (ConfigPathSegment'Key x__) = Control.DeepSeq.rnf x__
  rnf (ConfigPathSegment'Index x__) = Control.DeepSeq.rnf x__
_ConfigPathSegment'Key ::
  Data.ProtoLens.Prism.Prism' ConfigPathSegment'Kind Data.Text.Text
_ConfigPathSegment'Key
  = Data.ProtoLens.Prism.prism'
      ConfigPathSegment'Key
      (\ p__
         -> case p__ of
              (ConfigPathSegment'Key p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigPathSegment'Index ::
  Data.ProtoLens.Prism.Prism' ConfigPathSegment'Kind Data.Word.Word64
_ConfigPathSegment'Index
  = Data.ProtoLens.Prism.prism'
      ConfigPathSegment'Index
      (\ p__
         -> case p__ of
              (ConfigPathSegment'Index p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Config_Fields.maybe'kind' @:: Lens' ConfigValue (Prelude.Maybe ConfigValue'Kind)@
         * 'Proto.Oll.Config_Fields.maybe'nullValue' @:: Lens' ConfigValue (Prelude.Maybe Proto.Google.Protobuf.Struct.NullValue)@
         * 'Proto.Oll.Config_Fields.nullValue' @:: Lens' ConfigValue Proto.Google.Protobuf.Struct.NullValue@
         * 'Proto.Oll.Config_Fields.maybe'boolValue' @:: Lens' ConfigValue (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Oll.Config_Fields.boolValue' @:: Lens' ConfigValue Prelude.Bool@
         * 'Proto.Oll.Config_Fields.maybe'integerValue' @:: Lens' ConfigValue (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Oll.Config_Fields.integerValue' @:: Lens' ConfigValue Data.Int.Int64@
         * 'Proto.Oll.Config_Fields.maybe'numberValue' @:: Lens' ConfigValue (Prelude.Maybe Prelude.Double)@
         * 'Proto.Oll.Config_Fields.numberValue' @:: Lens' ConfigValue Prelude.Double@
         * 'Proto.Oll.Config_Fields.maybe'stringValue' @:: Lens' ConfigValue (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Config_Fields.stringValue' @:: Lens' ConfigValue Data.Text.Text@
         * 'Proto.Oll.Config_Fields.maybe'bytesValue' @:: Lens' ConfigValue (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Oll.Config_Fields.bytesValue' @:: Lens' ConfigValue Data.ByteString.ByteString@
         * 'Proto.Oll.Config_Fields.maybe'listValue' @:: Lens' ConfigValue (Prelude.Maybe ConfigList)@
         * 'Proto.Oll.Config_Fields.listValue' @:: Lens' ConfigValue ConfigList@
         * 'Proto.Oll.Config_Fields.maybe'mapValue' @:: Lens' ConfigValue (Prelude.Maybe ConfigMap)@
         * 'Proto.Oll.Config_Fields.mapValue' @:: Lens' ConfigValue ConfigMap@
         * 'Proto.Oll.Config_Fields.maybe'functionValue' @:: Lens' ConfigValue (Prelude.Maybe ConfigFunctionRef)@
         * 'Proto.Oll.Config_Fields.functionValue' @:: Lens' ConfigValue ConfigFunctionRef@
         * 'Proto.Oll.Config_Fields.maybe'timestampValue' @:: Lens' ConfigValue (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Oll.Config_Fields.timestampValue' @:: Lens' ConfigValue Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Oll.Config_Fields.maybe'durationValue' @:: Lens' ConfigValue (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Oll.Config_Fields.durationValue' @:: Lens' ConfigValue Proto.Google.Protobuf.Duration.Duration@ -}
data ConfigValue
  = ConfigValue'_constructor {_ConfigValue'kind :: !(Prelude.Maybe ConfigValue'Kind),
                              _ConfigValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ConfigValue'Kind
  = ConfigValue'NullValue !Proto.Google.Protobuf.Struct.NullValue |
    ConfigValue'BoolValue !Prelude.Bool |
    ConfigValue'IntegerValue !Data.Int.Int64 |
    ConfigValue'NumberValue !Prelude.Double |
    ConfigValue'StringValue !Data.Text.Text |
    ConfigValue'BytesValue !Data.ByteString.ByteString |
    ConfigValue'ListValue !ConfigList |
    ConfigValue'MapValue !ConfigMap |
    ConfigValue'FunctionValue !ConfigFunctionRef |
    ConfigValue'TimestampValue !Proto.Google.Protobuf.Timestamp.Timestamp |
    ConfigValue'DurationValue !Proto.Google.Protobuf.Duration.Duration
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'kind" (Prelude.Maybe ConfigValue'Kind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'nullValue" (Prelude.Maybe Proto.Google.Protobuf.Struct.NullValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigValue'NullValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigValue'NullValue y__))
instance Data.ProtoLens.Field.HasField ConfigValue "nullValue" Proto.Google.Protobuf.Struct.NullValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigValue'NullValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigValue'NullValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'boolValue" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigValue'BoolValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigValue'BoolValue y__))
instance Data.ProtoLens.Field.HasField ConfigValue "boolValue" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigValue'BoolValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigValue'BoolValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'integerValue" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigValue'IntegerValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigValue'IntegerValue y__))
instance Data.ProtoLens.Field.HasField ConfigValue "integerValue" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigValue'IntegerValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigValue'IntegerValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'numberValue" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigValue'NumberValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigValue'NumberValue y__))
instance Data.ProtoLens.Field.HasField ConfigValue "numberValue" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigValue'NumberValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigValue'NumberValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'stringValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigValue'StringValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigValue'StringValue y__))
instance Data.ProtoLens.Field.HasField ConfigValue "stringValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigValue'StringValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigValue'StringValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'bytesValue" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigValue'BytesValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigValue'BytesValue y__))
instance Data.ProtoLens.Field.HasField ConfigValue "bytesValue" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigValue'BytesValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigValue'BytesValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'listValue" (Prelude.Maybe ConfigList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigValue'ListValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigValue'ListValue y__))
instance Data.ProtoLens.Field.HasField ConfigValue "listValue" ConfigList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigValue'ListValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigValue'ListValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'mapValue" (Prelude.Maybe ConfigMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigValue'MapValue x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigValue'MapValue y__))
instance Data.ProtoLens.Field.HasField ConfigValue "mapValue" ConfigMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigValue'MapValue x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigValue'MapValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'functionValue" (Prelude.Maybe ConfigFunctionRef) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigValue'FunctionValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigValue'FunctionValue y__))
instance Data.ProtoLens.Field.HasField ConfigValue "functionValue" ConfigFunctionRef where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigValue'FunctionValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigValue'FunctionValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'timestampValue" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigValue'TimestampValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigValue'TimestampValue y__))
instance Data.ProtoLens.Field.HasField ConfigValue "timestampValue" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigValue'TimestampValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigValue'TimestampValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ConfigValue "maybe'durationValue" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigValue'DurationValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigValue'DurationValue y__))
instance Data.ProtoLens.Field.HasField ConfigValue "durationValue" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigValue'kind (\ x__ y__ -> x__ {_ConfigValue'kind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigValue'DurationValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigValue'DurationValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ConfigValue where
  messageName _ = Data.Text.pack "oll.protocol.ConfigValue"
  packedMessageDescriptor _
    = "\n\
      \\vConfigValue\DC2;\n\
      \\n\
      \null_value\CAN\SOH \SOH(\SO2\SUB.google.protobuf.NullValueH\NULR\tnullValue\DC2\US\n\
      \\n\
      \bool_value\CAN\STX \SOH(\bH\NULR\tboolValue\DC2%\n\
      \\rinteger_value\CAN\ETX \SOH(\DC2H\NULR\fintegerValue\DC2#\n\
      \\fnumber_value\CAN\EOT \SOH(\SOHH\NULR\vnumberValue\DC2#\n\
      \\fstring_value\CAN\ENQ \SOH(\tH\NULR\vstringValue\DC2!\n\
      \\vbytes_value\CAN\ACK \SOH(\fH\NULR\n\
      \bytesValue\DC29\n\
      \\n\
      \list_value\CAN\a \SOH(\v2\CAN.oll.protocol.ConfigListH\NULR\tlistValue\DC26\n\
      \\tmap_value\CAN\b \SOH(\v2\ETB.oll.protocol.ConfigMapH\NULR\bmapValue\DC2H\n\
      \\SOfunction_value\CAN\t \SOH(\v2\US.oll.protocol.ConfigFunctionRefH\NULR\rfunctionValue\DC2E\n\
      \\SItimestamp_value\CAN\n\
      \ \SOH(\v2\SUB.google.protobuf.TimestampH\NULR\SOtimestampValue\DC2B\n\
      \\SOduration_value\CAN\v \SOH(\v2\EM.google.protobuf.DurationH\NULR\rdurationValueB\ACK\n\
      \\EOTkind"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nullValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "null_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.NullValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nullValue")) ::
              Data.ProtoLens.FieldDescriptor ConfigValue
        boolValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'boolValue")) ::
              Data.ProtoLens.FieldDescriptor ConfigValue
        integerValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "integer_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.SInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'integerValue")) ::
              Data.ProtoLens.FieldDescriptor ConfigValue
        numberValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "number_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'numberValue")) ::
              Data.ProtoLens.FieldDescriptor ConfigValue
        stringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringValue")) ::
              Data.ProtoLens.FieldDescriptor ConfigValue
        bytesValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesValue")) ::
              Data.ProtoLens.FieldDescriptor ConfigValue
        listValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listValue")) ::
              Data.ProtoLens.FieldDescriptor ConfigValue
        mapValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mapValue")) ::
              Data.ProtoLens.FieldDescriptor ConfigValue
        functionValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigFunctionRef)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'functionValue")) ::
              Data.ProtoLens.FieldDescriptor ConfigValue
        timestampValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestampValue")) ::
              Data.ProtoLens.FieldDescriptor ConfigValue
        durationValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "duration_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'durationValue")) ::
              Data.ProtoLens.FieldDescriptor ConfigValue
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nullValue__field_descriptor),
           (Data.ProtoLens.Tag 2, boolValue__field_descriptor),
           (Data.ProtoLens.Tag 3, integerValue__field_descriptor),
           (Data.ProtoLens.Tag 4, numberValue__field_descriptor),
           (Data.ProtoLens.Tag 5, stringValue__field_descriptor),
           (Data.ProtoLens.Tag 6, bytesValue__field_descriptor),
           (Data.ProtoLens.Tag 7, listValue__field_descriptor),
           (Data.ProtoLens.Tag 8, mapValue__field_descriptor),
           (Data.ProtoLens.Tag 9, functionValue__field_descriptor),
           (Data.ProtoLens.Tag 10, timestampValue__field_descriptor),
           (Data.ProtoLens.Tag 11, durationValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigValue'_unknownFields
        (\ x__ y__ -> x__ {_ConfigValue'_unknownFields = y__})
  defMessage
    = ConfigValue'_constructor
        {_ConfigValue'kind = Prelude.Nothing,
         _ConfigValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigValue -> Data.ProtoLens.Encoding.Bytes.Parser ConfigValue
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "null_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nullValue") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bool_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"boolValue") y x)
                        24
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
                        33
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "number_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"numberValue") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "string_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringValue") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "bytes_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesValue") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listValue") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "map_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mapValue") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "function_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"functionValue") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timestampValue") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "duration_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"durationValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConfigValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kind") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ConfigValue'NullValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum v)
                (Prelude.Just (ConfigValue'BoolValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (ConfigValue'IntegerValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Data.ProtoLens.Encoding.Bytes.signedInt64ToWord v)
                (Prelude.Just (ConfigValue'NumberValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 33)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed64
                          Data.ProtoLens.Encoding.Bytes.doubleToWord v)
                (Prelude.Just (ConfigValue'StringValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8 v)
                (Prelude.Just (ConfigValue'BytesValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (ConfigValue'ListValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ConfigValue'MapValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ConfigValue'FunctionValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ConfigValue'TimestampValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ConfigValue'DurationValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ConfigValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigValue'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ConfigValue'kind x__) ())
instance Control.DeepSeq.NFData ConfigValue'Kind where
  rnf (ConfigValue'NullValue x__) = Control.DeepSeq.rnf x__
  rnf (ConfigValue'BoolValue x__) = Control.DeepSeq.rnf x__
  rnf (ConfigValue'IntegerValue x__) = Control.DeepSeq.rnf x__
  rnf (ConfigValue'NumberValue x__) = Control.DeepSeq.rnf x__
  rnf (ConfigValue'StringValue x__) = Control.DeepSeq.rnf x__
  rnf (ConfigValue'BytesValue x__) = Control.DeepSeq.rnf x__
  rnf (ConfigValue'ListValue x__) = Control.DeepSeq.rnf x__
  rnf (ConfigValue'MapValue x__) = Control.DeepSeq.rnf x__
  rnf (ConfigValue'FunctionValue x__) = Control.DeepSeq.rnf x__
  rnf (ConfigValue'TimestampValue x__) = Control.DeepSeq.rnf x__
  rnf (ConfigValue'DurationValue x__) = Control.DeepSeq.rnf x__
_ConfigValue'NullValue ::
  Data.ProtoLens.Prism.Prism' ConfigValue'Kind Proto.Google.Protobuf.Struct.NullValue
_ConfigValue'NullValue
  = Data.ProtoLens.Prism.prism'
      ConfigValue'NullValue
      (\ p__
         -> case p__ of
              (ConfigValue'NullValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigValue'BoolValue ::
  Data.ProtoLens.Prism.Prism' ConfigValue'Kind Prelude.Bool
_ConfigValue'BoolValue
  = Data.ProtoLens.Prism.prism'
      ConfigValue'BoolValue
      (\ p__
         -> case p__ of
              (ConfigValue'BoolValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigValue'IntegerValue ::
  Data.ProtoLens.Prism.Prism' ConfigValue'Kind Data.Int.Int64
_ConfigValue'IntegerValue
  = Data.ProtoLens.Prism.prism'
      ConfigValue'IntegerValue
      (\ p__
         -> case p__ of
              (ConfigValue'IntegerValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigValue'NumberValue ::
  Data.ProtoLens.Prism.Prism' ConfigValue'Kind Prelude.Double
_ConfigValue'NumberValue
  = Data.ProtoLens.Prism.prism'
      ConfigValue'NumberValue
      (\ p__
         -> case p__ of
              (ConfigValue'NumberValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigValue'StringValue ::
  Data.ProtoLens.Prism.Prism' ConfigValue'Kind Data.Text.Text
_ConfigValue'StringValue
  = Data.ProtoLens.Prism.prism'
      ConfigValue'StringValue
      (\ p__
         -> case p__ of
              (ConfigValue'StringValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigValue'BytesValue ::
  Data.ProtoLens.Prism.Prism' ConfigValue'Kind Data.ByteString.ByteString
_ConfigValue'BytesValue
  = Data.ProtoLens.Prism.prism'
      ConfigValue'BytesValue
      (\ p__
         -> case p__ of
              (ConfigValue'BytesValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigValue'ListValue ::
  Data.ProtoLens.Prism.Prism' ConfigValue'Kind ConfigList
_ConfigValue'ListValue
  = Data.ProtoLens.Prism.prism'
      ConfigValue'ListValue
      (\ p__
         -> case p__ of
              (ConfigValue'ListValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigValue'MapValue ::
  Data.ProtoLens.Prism.Prism' ConfigValue'Kind ConfigMap
_ConfigValue'MapValue
  = Data.ProtoLens.Prism.prism'
      ConfigValue'MapValue
      (\ p__
         -> case p__ of
              (ConfigValue'MapValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigValue'FunctionValue ::
  Data.ProtoLens.Prism.Prism' ConfigValue'Kind ConfigFunctionRef
_ConfigValue'FunctionValue
  = Data.ProtoLens.Prism.prism'
      ConfigValue'FunctionValue
      (\ p__
         -> case p__ of
              (ConfigValue'FunctionValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigValue'TimestampValue ::
  Data.ProtoLens.Prism.Prism' ConfigValue'Kind Proto.Google.Protobuf.Timestamp.Timestamp
_ConfigValue'TimestampValue
  = Data.ProtoLens.Prism.prism'
      ConfigValue'TimestampValue
      (\ p__
         -> case p__ of
              (ConfigValue'TimestampValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigValue'DurationValue ::
  Data.ProtoLens.Prism.Prism' ConfigValue'Kind Proto.Google.Protobuf.Duration.Duration
_ConfigValue'DurationValue
  = Data.ProtoLens.Prism.prism'
      ConfigValue'DurationValue
      (\ p__
         -> case p__ of
              (ConfigValue'DurationValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Config_Fields.path' @:: Lens' GetConfigRequest ConfigPath@
         * 'Proto.Oll.Config_Fields.maybe'path' @:: Lens' GetConfigRequest (Prelude.Maybe ConfigPath)@ -}
data GetConfigRequest
  = GetConfigRequest'_constructor {_GetConfigRequest'path :: !(Prelude.Maybe ConfigPath),
                                   _GetConfigRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetConfigRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetConfigRequest "path" ConfigPath where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetConfigRequest'path
           (\ x__ y__ -> x__ {_GetConfigRequest'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetConfigRequest "maybe'path" (Prelude.Maybe ConfigPath) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetConfigRequest'path
           (\ x__ y__ -> x__ {_GetConfigRequest'path = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetConfigRequest where
  messageName _ = Data.Text.pack "oll.protocol.GetConfigRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLEGetConfigRequest\DC2,\n\
      \\EOTpath\CAN\SOH \SOH(\v2\CAN.oll.protocol.ConfigPathR\EOTpath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigPath)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor GetConfigRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetConfigRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetConfigRequest'_unknownFields = y__})
  defMessage
    = GetConfigRequest'_constructor
        {_GetConfigRequest'path = Prelude.Nothing,
         _GetConfigRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetConfigRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetConfigRequest
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
          (do loop Data.ProtoLens.defMessage) "GetConfigRequest"
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
instance Control.DeepSeq.NFData GetConfigRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetConfigRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetConfigRequest'path x__) ())
{- | Fields :
     
         * 'Proto.Oll.Config_Fields.value' @:: Lens' GetConfigResponse ConfigValue@
         * 'Proto.Oll.Config_Fields.maybe'value' @:: Lens' GetConfigResponse (Prelude.Maybe ConfigValue)@ -}
data GetConfigResponse
  = GetConfigResponse'_constructor {_GetConfigResponse'value :: !(Prelude.Maybe ConfigValue),
                                    _GetConfigResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetConfigResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetConfigResponse "value" ConfigValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetConfigResponse'value
           (\ x__ y__ -> x__ {_GetConfigResponse'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetConfigResponse "maybe'value" (Prelude.Maybe ConfigValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetConfigResponse'value
           (\ x__ y__ -> x__ {_GetConfigResponse'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetConfigResponse where
  messageName _ = Data.Text.pack "oll.protocol.GetConfigResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1GetConfigResponse\DC2/\n\
      \\ENQvalue\CAN\SOH \SOH(\v2\EM.oll.protocol.ConfigValueR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor GetConfigResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetConfigResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetConfigResponse'_unknownFields = y__})
  defMessage
    = GetConfigResponse'_constructor
        {_GetConfigResponse'value = Prelude.Nothing,
         _GetConfigResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetConfigResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetConfigResponse
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
          (do loop Data.ProtoLens.defMessage) "GetConfigResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData GetConfigResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetConfigResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetConfigResponse'value x__) ())
{- | Fields :
     
         * 'Proto.Oll.Config_Fields.function' @:: Lens' InvokeConfigFunctionRequest ConfigFunctionRef@
         * 'Proto.Oll.Config_Fields.maybe'function' @:: Lens' InvokeConfigFunctionRequest (Prelude.Maybe ConfigFunctionRef)@
         * 'Proto.Oll.Config_Fields.arguments' @:: Lens' InvokeConfigFunctionRequest [ConfigValue]@
         * 'Proto.Oll.Config_Fields.vec'arguments' @:: Lens' InvokeConfigFunctionRequest (Data.Vector.Vector ConfigValue)@ -}
data InvokeConfigFunctionRequest
  = InvokeConfigFunctionRequest'_constructor {_InvokeConfigFunctionRequest'function :: !(Prelude.Maybe ConfigFunctionRef),
                                              _InvokeConfigFunctionRequest'arguments :: !(Data.Vector.Vector ConfigValue),
                                              _InvokeConfigFunctionRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InvokeConfigFunctionRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InvokeConfigFunctionRequest "function" ConfigFunctionRef where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InvokeConfigFunctionRequest'function
           (\ x__ y__ -> x__ {_InvokeConfigFunctionRequest'function = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField InvokeConfigFunctionRequest "maybe'function" (Prelude.Maybe ConfigFunctionRef) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InvokeConfigFunctionRequest'function
           (\ x__ y__ -> x__ {_InvokeConfigFunctionRequest'function = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InvokeConfigFunctionRequest "arguments" [ConfigValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InvokeConfigFunctionRequest'arguments
           (\ x__ y__ -> x__ {_InvokeConfigFunctionRequest'arguments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InvokeConfigFunctionRequest "vec'arguments" (Data.Vector.Vector ConfigValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InvokeConfigFunctionRequest'arguments
           (\ x__ y__ -> x__ {_InvokeConfigFunctionRequest'arguments = y__}))
        Prelude.id
instance Data.ProtoLens.Message InvokeConfigFunctionRequest where
  messageName _
    = Data.Text.pack "oll.protocol.InvokeConfigFunctionRequest"
  packedMessageDescriptor _
    = "\n\
      \\ESCInvokeConfigFunctionRequest\DC2;\n\
      \\bfunction\CAN\SOH \SOH(\v2\US.oll.protocol.ConfigFunctionRefR\bfunction\DC27\n\
      \\targuments\CAN\STX \ETX(\v2\EM.oll.protocol.ConfigValueR\targuments"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        function__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigFunctionRef)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'function")) ::
              Data.ProtoLens.FieldDescriptor InvokeConfigFunctionRequest
        arguments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arguments"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"arguments")) ::
              Data.ProtoLens.FieldDescriptor InvokeConfigFunctionRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, function__field_descriptor),
           (Data.ProtoLens.Tag 2, arguments__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InvokeConfigFunctionRequest'_unknownFields
        (\ x__ y__
           -> x__ {_InvokeConfigFunctionRequest'_unknownFields = y__})
  defMessage
    = InvokeConfigFunctionRequest'_constructor
        {_InvokeConfigFunctionRequest'function = Prelude.Nothing,
         _InvokeConfigFunctionRequest'arguments = Data.Vector.Generic.empty,
         _InvokeConfigFunctionRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InvokeConfigFunctionRequest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ConfigValue
             -> Data.ProtoLens.Encoding.Bytes.Parser InvokeConfigFunctionRequest
        loop x mutable'arguments
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'arguments)
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
                              (Data.ProtoLens.Field.field @"vec'arguments") frozen'arguments x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "function"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"function") y x)
                                  mutable'arguments
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "arguments"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'arguments y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'arguments
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'arguments <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'arguments)
          "InvokeConfigFunctionRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'function") _x
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
                      (Data.ProtoLens.Field.field @"vec'arguments") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData InvokeConfigFunctionRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InvokeConfigFunctionRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InvokeConfigFunctionRequest'function x__)
                (Control.DeepSeq.deepseq
                   (_InvokeConfigFunctionRequest'arguments x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Config_Fields.results' @:: Lens' InvokeConfigFunctionResponse [ConfigValue]@
         * 'Proto.Oll.Config_Fields.vec'results' @:: Lens' InvokeConfigFunctionResponse (Data.Vector.Vector ConfigValue)@ -}
data InvokeConfigFunctionResponse
  = InvokeConfigFunctionResponse'_constructor {_InvokeConfigFunctionResponse'results :: !(Data.Vector.Vector ConfigValue),
                                               _InvokeConfigFunctionResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InvokeConfigFunctionResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InvokeConfigFunctionResponse "results" [ConfigValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InvokeConfigFunctionResponse'results
           (\ x__ y__ -> x__ {_InvokeConfigFunctionResponse'results = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InvokeConfigFunctionResponse "vec'results" (Data.Vector.Vector ConfigValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InvokeConfigFunctionResponse'results
           (\ x__ y__ -> x__ {_InvokeConfigFunctionResponse'results = y__}))
        Prelude.id
instance Data.ProtoLens.Message InvokeConfigFunctionResponse where
  messageName _
    = Data.Text.pack "oll.protocol.InvokeConfigFunctionResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSInvokeConfigFunctionResponse\DC23\n\
      \\aresults\CAN\SOH \ETX(\v2\EM.oll.protocol.ConfigValueR\aresults"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        results__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "results"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ConfigValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"results")) ::
              Data.ProtoLens.FieldDescriptor InvokeConfigFunctionResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, results__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InvokeConfigFunctionResponse'_unknownFields
        (\ x__ y__
           -> x__ {_InvokeConfigFunctionResponse'_unknownFields = y__})
  defMessage
    = InvokeConfigFunctionResponse'_constructor
        {_InvokeConfigFunctionResponse'results = Data.Vector.Generic.empty,
         _InvokeConfigFunctionResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InvokeConfigFunctionResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ConfigValue
             -> Data.ProtoLens.Encoding.Bytes.Parser InvokeConfigFunctionResponse
        loop x mutable'results
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'results <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'results)
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
                              (Data.ProtoLens.Field.field @"vec'results") frozen'results x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "results"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'results y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'results
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'results <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'results)
          "InvokeConfigFunctionResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'results") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData InvokeConfigFunctionResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InvokeConfigFunctionResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InvokeConfigFunctionResponse'results x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\DLEoll/config.proto\DC2\foll.protocol\SUB\RSgoogle/protobuf/duration.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\USgoogle/protobuf/timestamp.proto\"S\n\
    \\DC1ConfigFunctionRef\DC2\GS\n\
    \\n\
    \session_id\CAN\SOH \SOH(\tR\tsessionId\DC2\US\n\
    \\vfunction_id\CAN\STX \SOH(\tR\n\
    \functionId\"?\n\
    \\n\
    \ConfigList\DC21\n\
    \\ACKvalues\CAN\SOH \ETX(\v2\EM.oll.protocol.ConfigValueR\ACKvalues\"\162\SOH\n\
    \\tConfigMap\DC2>\n\
    \\aentries\CAN\SOH \ETX(\v2$.oll.protocol.ConfigMap.EntriesEntryR\aentries\SUBU\n\
    \\fEntriesEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2/\n\
    \\ENQvalue\CAN\STX \SOH(\v2\EM.oll.protocol.ConfigValueR\ENQvalue:\STX8\SOH\"\207\EOT\n\
    \\vConfigValue\DC2;\n\
    \\n\
    \null_value\CAN\SOH \SOH(\SO2\SUB.google.protobuf.NullValueH\NULR\tnullValue\DC2\US\n\
    \\n\
    \bool_value\CAN\STX \SOH(\bH\NULR\tboolValue\DC2%\n\
    \\rinteger_value\CAN\ETX \SOH(\DC2H\NULR\fintegerValue\DC2#\n\
    \\fnumber_value\CAN\EOT \SOH(\SOHH\NULR\vnumberValue\DC2#\n\
    \\fstring_value\CAN\ENQ \SOH(\tH\NULR\vstringValue\DC2!\n\
    \\vbytes_value\CAN\ACK \SOH(\fH\NULR\n\
    \bytesValue\DC29\n\
    \\n\
    \list_value\CAN\a \SOH(\v2\CAN.oll.protocol.ConfigListH\NULR\tlistValue\DC26\n\
    \\tmap_value\CAN\b \SOH(\v2\ETB.oll.protocol.ConfigMapH\NULR\bmapValue\DC2H\n\
    \\SOfunction_value\CAN\t \SOH(\v2\US.oll.protocol.ConfigFunctionRefH\NULR\rfunctionValue\DC2E\n\
    \\SItimestamp_value\CAN\n\
    \ \SOH(\v2\SUB.google.protobuf.TimestampH\NULR\SOtimestampValue\DC2B\n\
    \\SOduration_value\CAN\v \SOH(\v2\EM.google.protobuf.DurationH\NULR\rdurationValueB\ACK\n\
    \\EOTkind\"G\n\
    \\DC1ConfigPathSegment\DC2\DC2\n\
    \\ETXkey\CAN\SOH \SOH(\tH\NULR\ETXkey\DC2\SYN\n\
    \\ENQindex\CAN\STX \SOH(\EOTH\NULR\ENQindexB\ACK\n\
    \\EOTkind\"I\n\
    \\n\
    \ConfigPath\DC2;\n\
    \\bsegments\CAN\SOH \ETX(\v2\US.oll.protocol.ConfigPathSegmentR\bsegments\"@\n\
    \\DLEGetConfigRequest\DC2,\n\
    \\EOTpath\CAN\SOH \SOH(\v2\CAN.oll.protocol.ConfigPathR\EOTpath\"D\n\
    \\DC1GetConfigResponse\DC2/\n\
    \\ENQvalue\CAN\SOH \SOH(\v2\EM.oll.protocol.ConfigValueR\ENQvalue\"\147\SOH\n\
    \\ESCInvokeConfigFunctionRequest\DC2;\n\
    \\bfunction\CAN\SOH \SOH(\v2\US.oll.protocol.ConfigFunctionRefR\bfunction\DC27\n\
    \\targuments\CAN\STX \ETX(\v2\EM.oll.protocol.ConfigValueR\targuments\"S\n\
    \\FSInvokeConfigFunctionResponse\DC23\n\
    \\aresults\CAN\SOH \ETX(\v2\EM.oll.protocol.ConfigValueR\aresultsJ\255\DC3\n\
    \\ACK\DC2\EOT\NUL\NUL?J\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\NAK\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL)\n\
    \\162\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\r\SOH\SUB\149\SOH A closure is never serialized. This is a session-scoped host-owned handle\n\
    \ into oll's embedded configuration runtime; Lua does not call the plugin.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\v\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\v\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\v\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\v\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\f\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\f\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\f\ETB\CAN\n\
    \\t\n\
    \\STX\EOT\SOH\DC2\ETX\SI\NUL7\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SI\b\DC2\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SI\NAK5\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SI\NAK\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\SI\RS)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SI*0\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SI34\n\
    \\t\n\
    \\STX\EOT\STX\DC2\ETX\DC1\NUL;\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC1\b\DC1\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC1\DC49\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\DC1\DC4,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC1-4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC178\n\
    \\234\EOT\n\
    \\STX\EOT\ETX\DC2\EOT\ESC\NUL)\SOH\SUB\221\EOT The structured value format crossing the configuration boundary and used by\n\
    \ Lua, structured results, and log fields. Generic plugin actions use\n\
    \ shell-style string argv instead. Lua adapters must reject cyclic tables and\n\
    \ values that cannot be represented here. A root value has depth zero and the\n\
    \ deepest accepted value has depth 33. Numbers must be finite; Timestamp and\n\
    \ Duration values must be inside their protobuf domains. Function handles are\n\
    \ accepted only by configuration-function calls for the exact active session\n\
    \ and an existing registry entry; durable values and log fields reject them.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\ESC\b\DC3\n\
    \\f\n\
    \\EOT\EOT\ETX\b\NUL\DC2\EOT\FS\STX(\ETX\n\
    \\f\n\
    \\ENQ\EOT\ETX\b\NUL\SOH\DC2\ETX\FS\b\f\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\GS\EOT-\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX\GS\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\GS\RS(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\GS+,\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\RS\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\RS\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\RS\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\RS\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\US\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\US\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\US\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\US\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX \EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX \EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX \v\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX \SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX!\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX!\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX!\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX!\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX\"\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETX\"\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX\"\n\
    \\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX\"\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETX#\EOT\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ACK\DC2\ETX#\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETX#\SI\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETX#\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\a\DC2\ETX$\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ACK\DC2\ETX$\EOT\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETX$\SO\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETX$\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\b\DC2\ETX%\EOT)\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ACK\DC2\ETX%\EOT\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\ETX%\SYN$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\ETX%'(\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\t\DC2\ETX&\EOT3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ACK\DC2\ETX&\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\ETX&\RS-\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\ETX&02\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\ETX'\EOT1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ACK\DC2\ETX'\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\ETX'\GS+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\ETX'.0\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT+\NUL0\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX+\b\EM\n\
    \\f\n\
    \\EOT\EOT\EOT\b\NUL\DC2\EOT,\STX/\ETX\n\
    \\f\n\
    \\ENQ\EOT\EOT\b\NUL\SOH\DC2\ETX,\b\f\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX-\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX-\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX-\v\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX-\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX.\EOT\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX.\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX.\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX.\DC3\DC4\n\
    \\133\SOH\n\
    \\STX\EOT\ENQ\DC2\ETX4\NUL?\SUBz Relative to the caller's own live per-plugin Lua result. List indexes are\n\
    \ zero-based at this language-neutral boundary.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX4\b\DC2\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX4\NAK=\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX4\NAK\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX4\RS/\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX408\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX4;<\n\
    \\t\n\
    \\STX\EOT\ACK\DC2\ETX6\NUL1\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX6\b\CAN\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX6\ESC/\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETX6\ESC%\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX6&*\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX6-.\n\
    \\t\n\
    \\STX\EOT\a\DC2\ETX8\NUL4\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX8\b\EM\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX8\FS2\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETX8\FS'\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX8(-\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX801\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOT:\NUL=\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX:\b#\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX;\STX!\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\ETX;\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX;\DC4\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX;\US \n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETX<\STX%\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\ETX<\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETX<\ETB \n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETX<#$\n\
    \\t\n\
    \\STX\EOT\t\DC2\ETX?\NULJ\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETX?\b$\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETX?'H\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETX?'/\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\ETX?0;\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETX?<C\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETX?FGb\ACKproto3"