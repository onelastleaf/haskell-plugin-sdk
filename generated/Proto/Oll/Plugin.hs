{- This file was auto-generated from oll/plugin.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Oll.Plugin (
        PluginRuntime(..), ActionDescriptor(), ActionInvocation(),
        ArtifactDescriptor(), ArtifactStored(), ArtifactTransferAccepted(),
        ArtifactTransferChunk(), ArtifactTransferComplete(),
        ArtifactTransferStart(), CancelJobAcknowledged(),
        CancelJobRequest(), Heartbeat(), HostCallRequest(),
        HostCallRequest'Call(..), _HostCallRequest'ReadDocument,
        _HostCallRequest'ListDirectory, _HostCallRequest'GetDirectoryTree,
        _HostCallRequest'ReadCrdt, _HostCallRequest'CommitDocuments,
        _HostCallRequest'GetConfig, _HostCallRequest'InvokeConfigFunction,
        HostCallResponse(), HostCallResponse'Result(..),
        _HostCallResponse'ReadDocument, _HostCallResponse'ListDirectory,
        _HostCallResponse'GetDirectoryTree, _HostCallResponse'ReadCrdt,
        _HostCallResponse'CommitDocuments, _HostCallResponse'GetConfig,
        _HostCallResponse'InvokeConfigFunction, _HostCallResponse'Error,
        HostHello(), JobAccepted(), JobCancellationReason(..),
        JobCancellationReason(), JobCancellationReason'UnrecognizedValue,
        JobState(..), JobState(), JobState'UnrecognizedValue, JobUpdate(),
        LogRecord(), LogRecord'FieldsEntry(), PluginEnvelope(),
        PluginEnvelope'Payload(..), _PluginEnvelope'HostHello,
        _PluginEnvelope'PluginHello, _PluginEnvelope'Ready,
        _PluginEnvelope'StartJob, _PluginEnvelope'JobAccepted,
        _PluginEnvelope'JobUpdate, _PluginEnvelope'HostCall,
        _PluginEnvelope'HostResult, _PluginEnvelope'Log,
        _PluginEnvelope'Heartbeat, _PluginEnvelope'Shutdown,
        _PluginEnvelope'ShutdownAcknowledged,
        _PluginEnvelope'ProtocolError, _PluginEnvelope'ArtifactStart,
        _PluginEnvelope'ArtifactAccepted, _PluginEnvelope'ArtifactChunk,
        _PluginEnvelope'ArtifactComplete, _PluginEnvelope'ArtifactStored,
        _PluginEnvelope'CancelJob, _PluginEnvelope'CancelJobAcknowledged,
        PluginHello(), SessionReady(), ShutdownAcknowledged(),
        ShutdownRequest(), StartJobRequest(),
        StartJobRequest'Invocation(..), _StartJobRequest'Action
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
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Oll.Common
import qualified Proto.Oll.Config
import qualified Proto.Oll.Document
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.name' @:: Lens' ActionDescriptor Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.description' @:: Lens' ActionDescriptor Data.Text.Text@ -}
data ActionDescriptor
  = ActionDescriptor'_constructor {_ActionDescriptor'name :: !Data.Text.Text,
                                   _ActionDescriptor'description :: !Data.Text.Text,
                                   _ActionDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActionDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActionDescriptor "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActionDescriptor'name
           (\ x__ y__ -> x__ {_ActionDescriptor'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActionDescriptor "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActionDescriptor'description
           (\ x__ y__ -> x__ {_ActionDescriptor'description = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActionDescriptor where
  messageName _ = Data.Text.pack "oll.protocol.ActionDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DLEActionDescriptor\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2 \n\
      \\vdescription\CAN\STX \SOH(\tR\vdescription"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor ActionDescriptor
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor ActionDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActionDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_ActionDescriptor'_unknownFields = y__})
  defMessage
    = ActionDescriptor'_constructor
        {_ActionDescriptor'name = Data.ProtoLens.fieldDefault,
         _ActionDescriptor'description = Data.ProtoLens.fieldDefault,
         _ActionDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActionDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser ActionDescriptor
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ActionDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
instance Control.DeepSeq.NFData ActionDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActionDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActionDescriptor'name x__)
                (Control.DeepSeq.deepseq (_ActionDescriptor'description x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.action' @:: Lens' ActionInvocation Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.arguments' @:: Lens' ActionInvocation [Data.Text.Text]@
         * 'Proto.Oll.Plugin_Fields.vec'arguments' @:: Lens' ActionInvocation (Data.Vector.Vector Data.Text.Text)@ -}
data ActionInvocation
  = ActionInvocation'_constructor {_ActionInvocation'action :: !Data.Text.Text,
                                   _ActionInvocation'arguments :: !(Data.Vector.Vector Data.Text.Text),
                                   _ActionInvocation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ActionInvocation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ActionInvocation "action" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActionInvocation'action
           (\ x__ y__ -> x__ {_ActionInvocation'action = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ActionInvocation "arguments" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActionInvocation'arguments
           (\ x__ y__ -> x__ {_ActionInvocation'arguments = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ActionInvocation "vec'arguments" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ActionInvocation'arguments
           (\ x__ y__ -> x__ {_ActionInvocation'arguments = y__}))
        Prelude.id
instance Data.ProtoLens.Message ActionInvocation where
  messageName _ = Data.Text.pack "oll.protocol.ActionInvocation"
  packedMessageDescriptor _
    = "\n\
      \\DLEActionInvocation\DC2\SYN\n\
      \\ACKaction\CAN\SOH \SOH(\tR\ACKaction\DC2\FS\n\
      \\targuments\CAN\STX \ETX(\tR\targuments"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        action__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "action"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"action")) ::
              Data.ProtoLens.FieldDescriptor ActionInvocation
        arguments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arguments"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"arguments")) ::
              Data.ProtoLens.FieldDescriptor ActionInvocation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, action__field_descriptor),
           (Data.ProtoLens.Tag 2, arguments__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ActionInvocation'_unknownFields
        (\ x__ y__ -> x__ {_ActionInvocation'_unknownFields = y__})
  defMessage
    = ActionInvocation'_constructor
        {_ActionInvocation'action = Data.ProtoLens.fieldDefault,
         _ActionInvocation'arguments = Data.Vector.Generic.empty,
         _ActionInvocation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ActionInvocation
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ActionInvocation
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
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "action"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"action") y x)
                                  mutable'arguments
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getText
                                              (Prelude.fromIntegral len))
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
          "ActionInvocation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"action") _x
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
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'arguments") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ActionInvocation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ActionInvocation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ActionInvocation'action x__)
                (Control.DeepSeq.deepseq (_ActionInvocation'arguments x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.artifactId' @:: Lens' ArtifactDescriptor Proto.Oll.Common.PluginArtifactId@
         * 'Proto.Oll.Plugin_Fields.maybe'artifactId' @:: Lens' ArtifactDescriptor (Prelude.Maybe Proto.Oll.Common.PluginArtifactId)@
         * 'Proto.Oll.Plugin_Fields.fileName' @:: Lens' ArtifactDescriptor Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.mediaType' @:: Lens' ArtifactDescriptor Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.sizeBytes' @:: Lens' ArtifactDescriptor Data.Word.Word64@
         * 'Proto.Oll.Plugin_Fields.sha256' @:: Lens' ArtifactDescriptor Data.ByteString.ByteString@ -}
data ArtifactDescriptor
  = ArtifactDescriptor'_constructor {_ArtifactDescriptor'artifactId :: !(Prelude.Maybe Proto.Oll.Common.PluginArtifactId),
                                     _ArtifactDescriptor'fileName :: !Data.Text.Text,
                                     _ArtifactDescriptor'mediaType :: !Data.Text.Text,
                                     _ArtifactDescriptor'sizeBytes :: !Data.Word.Word64,
                                     _ArtifactDescriptor'sha256 :: !Data.ByteString.ByteString,
                                     _ArtifactDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ArtifactDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ArtifactDescriptor "artifactId" Proto.Oll.Common.PluginArtifactId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactDescriptor'artifactId
           (\ x__ y__ -> x__ {_ArtifactDescriptor'artifactId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ArtifactDescriptor "maybe'artifactId" (Prelude.Maybe Proto.Oll.Common.PluginArtifactId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactDescriptor'artifactId
           (\ x__ y__ -> x__ {_ArtifactDescriptor'artifactId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ArtifactDescriptor "fileName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactDescriptor'fileName
           (\ x__ y__ -> x__ {_ArtifactDescriptor'fileName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ArtifactDescriptor "mediaType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactDescriptor'mediaType
           (\ x__ y__ -> x__ {_ArtifactDescriptor'mediaType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ArtifactDescriptor "sizeBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactDescriptor'sizeBytes
           (\ x__ y__ -> x__ {_ArtifactDescriptor'sizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ArtifactDescriptor "sha256" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactDescriptor'sha256
           (\ x__ y__ -> x__ {_ArtifactDescriptor'sha256 = y__}))
        Prelude.id
instance Data.ProtoLens.Message ArtifactDescriptor where
  messageName _ = Data.Text.pack "oll.protocol.ArtifactDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DC2ArtifactDescriptor\DC2?\n\
      \\vartifact_id\CAN\SOH \SOH(\v2\RS.oll.protocol.PluginArtifactIdR\n\
      \artifactId\DC2\ESC\n\
      \\tfile_name\CAN\STX \SOH(\tR\bfileName\DC2\GS\n\
      \\n\
      \media_type\CAN\ETX \SOH(\tR\tmediaType\DC2\GS\n\
      \\n\
      \size_bytes\CAN\EOT \SOH(\EOTR\tsizeBytes\DC2\SYN\n\
      \\ACKsha256\CAN\ENQ \SOH(\fR\ACKsha256"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        artifactId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifact_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginArtifactId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'artifactId")) ::
              Data.ProtoLens.FieldDescriptor ArtifactDescriptor
        fileName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "file_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fileName")) ::
              Data.ProtoLens.FieldDescriptor ArtifactDescriptor
        mediaType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "media_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mediaType")) ::
              Data.ProtoLens.FieldDescriptor ArtifactDescriptor
        sizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sizeBytes")) ::
              Data.ProtoLens.FieldDescriptor ArtifactDescriptor
        sha256__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sha256"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sha256")) ::
              Data.ProtoLens.FieldDescriptor ArtifactDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, artifactId__field_descriptor),
           (Data.ProtoLens.Tag 2, fileName__field_descriptor),
           (Data.ProtoLens.Tag 3, mediaType__field_descriptor),
           (Data.ProtoLens.Tag 4, sizeBytes__field_descriptor),
           (Data.ProtoLens.Tag 5, sha256__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ArtifactDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_ArtifactDescriptor'_unknownFields = y__})
  defMessage
    = ArtifactDescriptor'_constructor
        {_ArtifactDescriptor'artifactId = Prelude.Nothing,
         _ArtifactDescriptor'fileName = Data.ProtoLens.fieldDefault,
         _ArtifactDescriptor'mediaType = Data.ProtoLens.fieldDefault,
         _ArtifactDescriptor'sizeBytes = Data.ProtoLens.fieldDefault,
         _ArtifactDescriptor'sha256 = Data.ProtoLens.fieldDefault,
         _ArtifactDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ArtifactDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser ArtifactDescriptor
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
                                       "artifact_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"artifactId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "file_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fileName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "media_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mediaType") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "size_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sizeBytes") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "sha256"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sha256") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ArtifactDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'artifactId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fileName") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"mediaType") _x
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
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sizeBytes") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sha256") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData ArtifactDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ArtifactDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ArtifactDescriptor'artifactId x__)
                (Control.DeepSeq.deepseq
                   (_ArtifactDescriptor'fileName x__)
                   (Control.DeepSeq.deepseq
                      (_ArtifactDescriptor'mediaType x__)
                      (Control.DeepSeq.deepseq
                         (_ArtifactDescriptor'sizeBytes x__)
                         (Control.DeepSeq.deepseq (_ArtifactDescriptor'sha256 x__) ())))))
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.artifactId' @:: Lens' ArtifactStored Proto.Oll.Common.PluginArtifactId@
         * 'Proto.Oll.Plugin_Fields.maybe'artifactId' @:: Lens' ArtifactStored (Prelude.Maybe Proto.Oll.Common.PluginArtifactId)@ -}
data ArtifactStored
  = ArtifactStored'_constructor {_ArtifactStored'artifactId :: !(Prelude.Maybe Proto.Oll.Common.PluginArtifactId),
                                 _ArtifactStored'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ArtifactStored where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ArtifactStored "artifactId" Proto.Oll.Common.PluginArtifactId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactStored'artifactId
           (\ x__ y__ -> x__ {_ArtifactStored'artifactId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ArtifactStored "maybe'artifactId" (Prelude.Maybe Proto.Oll.Common.PluginArtifactId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactStored'artifactId
           (\ x__ y__ -> x__ {_ArtifactStored'artifactId = y__}))
        Prelude.id
instance Data.ProtoLens.Message ArtifactStored where
  messageName _ = Data.Text.pack "oll.protocol.ArtifactStored"
  packedMessageDescriptor _
    = "\n\
      \\SOArtifactStored\DC2?\n\
      \\vartifact_id\CAN\SOH \SOH(\v2\RS.oll.protocol.PluginArtifactIdR\n\
      \artifactId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        artifactId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifact_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginArtifactId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'artifactId")) ::
              Data.ProtoLens.FieldDescriptor ArtifactStored
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, artifactId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ArtifactStored'_unknownFields
        (\ x__ y__ -> x__ {_ArtifactStored'_unknownFields = y__})
  defMessage
    = ArtifactStored'_constructor
        {_ArtifactStored'artifactId = Prelude.Nothing,
         _ArtifactStored'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ArtifactStored
          -> Data.ProtoLens.Encoding.Bytes.Parser ArtifactStored
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
                                       "artifact_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"artifactId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ArtifactStored"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'artifactId") _x
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
instance Control.DeepSeq.NFData ArtifactStored where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ArtifactStored'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ArtifactStored'artifactId x__) ())
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.artifactId' @:: Lens' ArtifactTransferAccepted Proto.Oll.Common.PluginArtifactId@
         * 'Proto.Oll.Plugin_Fields.maybe'artifactId' @:: Lens' ArtifactTransferAccepted (Prelude.Maybe Proto.Oll.Common.PluginArtifactId)@ -}
data ArtifactTransferAccepted
  = ArtifactTransferAccepted'_constructor {_ArtifactTransferAccepted'artifactId :: !(Prelude.Maybe Proto.Oll.Common.PluginArtifactId),
                                           _ArtifactTransferAccepted'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ArtifactTransferAccepted where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ArtifactTransferAccepted "artifactId" Proto.Oll.Common.PluginArtifactId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferAccepted'artifactId
           (\ x__ y__ -> x__ {_ArtifactTransferAccepted'artifactId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ArtifactTransferAccepted "maybe'artifactId" (Prelude.Maybe Proto.Oll.Common.PluginArtifactId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferAccepted'artifactId
           (\ x__ y__ -> x__ {_ArtifactTransferAccepted'artifactId = y__}))
        Prelude.id
instance Data.ProtoLens.Message ArtifactTransferAccepted where
  messageName _
    = Data.Text.pack "oll.protocol.ArtifactTransferAccepted"
  packedMessageDescriptor _
    = "\n\
      \\CANArtifactTransferAccepted\DC2?\n\
      \\vartifact_id\CAN\SOH \SOH(\v2\RS.oll.protocol.PluginArtifactIdR\n\
      \artifactId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        artifactId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifact_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginArtifactId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'artifactId")) ::
              Data.ProtoLens.FieldDescriptor ArtifactTransferAccepted
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, artifactId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ArtifactTransferAccepted'_unknownFields
        (\ x__ y__ -> x__ {_ArtifactTransferAccepted'_unknownFields = y__})
  defMessage
    = ArtifactTransferAccepted'_constructor
        {_ArtifactTransferAccepted'artifactId = Prelude.Nothing,
         _ArtifactTransferAccepted'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ArtifactTransferAccepted
          -> Data.ProtoLens.Encoding.Bytes.Parser ArtifactTransferAccepted
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
                                       "artifact_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"artifactId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ArtifactTransferAccepted"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'artifactId") _x
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
instance Control.DeepSeq.NFData ArtifactTransferAccepted where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ArtifactTransferAccepted'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ArtifactTransferAccepted'artifactId x__) ())
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.artifactId' @:: Lens' ArtifactTransferChunk Proto.Oll.Common.PluginArtifactId@
         * 'Proto.Oll.Plugin_Fields.maybe'artifactId' @:: Lens' ArtifactTransferChunk (Prelude.Maybe Proto.Oll.Common.PluginArtifactId)@
         * 'Proto.Oll.Plugin_Fields.chunkIndex' @:: Lens' ArtifactTransferChunk Data.Word.Word32@
         * 'Proto.Oll.Plugin_Fields.data'' @:: Lens' ArtifactTransferChunk Data.ByteString.ByteString@ -}
data ArtifactTransferChunk
  = ArtifactTransferChunk'_constructor {_ArtifactTransferChunk'artifactId :: !(Prelude.Maybe Proto.Oll.Common.PluginArtifactId),
                                        _ArtifactTransferChunk'chunkIndex :: !Data.Word.Word32,
                                        _ArtifactTransferChunk'data' :: !Data.ByteString.ByteString,
                                        _ArtifactTransferChunk'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ArtifactTransferChunk where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ArtifactTransferChunk "artifactId" Proto.Oll.Common.PluginArtifactId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferChunk'artifactId
           (\ x__ y__ -> x__ {_ArtifactTransferChunk'artifactId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ArtifactTransferChunk "maybe'artifactId" (Prelude.Maybe Proto.Oll.Common.PluginArtifactId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferChunk'artifactId
           (\ x__ y__ -> x__ {_ArtifactTransferChunk'artifactId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ArtifactTransferChunk "chunkIndex" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferChunk'chunkIndex
           (\ x__ y__ -> x__ {_ArtifactTransferChunk'chunkIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ArtifactTransferChunk "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferChunk'data'
           (\ x__ y__ -> x__ {_ArtifactTransferChunk'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Message ArtifactTransferChunk where
  messageName _ = Data.Text.pack "oll.protocol.ArtifactTransferChunk"
  packedMessageDescriptor _
    = "\n\
      \\NAKArtifactTransferChunk\DC2?\n\
      \\vartifact_id\CAN\SOH \SOH(\v2\RS.oll.protocol.PluginArtifactIdR\n\
      \artifactId\DC2\US\n\
      \\vchunk_index\CAN\STX \SOH(\rR\n\
      \chunkIndex\DC2\DC2\n\
      \\EOTdata\CAN\ETX \SOH(\fR\EOTdata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        artifactId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifact_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginArtifactId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'artifactId")) ::
              Data.ProtoLens.FieldDescriptor ArtifactTransferChunk
        chunkIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"chunkIndex")) ::
              Data.ProtoLens.FieldDescriptor ArtifactTransferChunk
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor ArtifactTransferChunk
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, artifactId__field_descriptor),
           (Data.ProtoLens.Tag 2, chunkIndex__field_descriptor),
           (Data.ProtoLens.Tag 3, data'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ArtifactTransferChunk'_unknownFields
        (\ x__ y__ -> x__ {_ArtifactTransferChunk'_unknownFields = y__})
  defMessage
    = ArtifactTransferChunk'_constructor
        {_ArtifactTransferChunk'artifactId = Prelude.Nothing,
         _ArtifactTransferChunk'chunkIndex = Data.ProtoLens.fieldDefault,
         _ArtifactTransferChunk'data' = Data.ProtoLens.fieldDefault,
         _ArtifactTransferChunk'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ArtifactTransferChunk
          -> Data.ProtoLens.Encoding.Bytes.Parser ArtifactTransferChunk
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
                                       "artifact_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"artifactId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "chunk_index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"chunkIndex") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ArtifactTransferChunk"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'artifactId") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"chunkIndex") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ArtifactTransferChunk where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ArtifactTransferChunk'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ArtifactTransferChunk'artifactId x__)
                (Control.DeepSeq.deepseq
                   (_ArtifactTransferChunk'chunkIndex x__)
                   (Control.DeepSeq.deepseq (_ArtifactTransferChunk'data' x__) ())))
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.artifactId' @:: Lens' ArtifactTransferComplete Proto.Oll.Common.PluginArtifactId@
         * 'Proto.Oll.Plugin_Fields.maybe'artifactId' @:: Lens' ArtifactTransferComplete (Prelude.Maybe Proto.Oll.Common.PluginArtifactId)@ -}
data ArtifactTransferComplete
  = ArtifactTransferComplete'_constructor {_ArtifactTransferComplete'artifactId :: !(Prelude.Maybe Proto.Oll.Common.PluginArtifactId),
                                           _ArtifactTransferComplete'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ArtifactTransferComplete where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ArtifactTransferComplete "artifactId" Proto.Oll.Common.PluginArtifactId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferComplete'artifactId
           (\ x__ y__ -> x__ {_ArtifactTransferComplete'artifactId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ArtifactTransferComplete "maybe'artifactId" (Prelude.Maybe Proto.Oll.Common.PluginArtifactId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferComplete'artifactId
           (\ x__ y__ -> x__ {_ArtifactTransferComplete'artifactId = y__}))
        Prelude.id
instance Data.ProtoLens.Message ArtifactTransferComplete where
  messageName _
    = Data.Text.pack "oll.protocol.ArtifactTransferComplete"
  packedMessageDescriptor _
    = "\n\
      \\CANArtifactTransferComplete\DC2?\n\
      \\vartifact_id\CAN\SOH \SOH(\v2\RS.oll.protocol.PluginArtifactIdR\n\
      \artifactId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        artifactId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifact_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginArtifactId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'artifactId")) ::
              Data.ProtoLens.FieldDescriptor ArtifactTransferComplete
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, artifactId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ArtifactTransferComplete'_unknownFields
        (\ x__ y__ -> x__ {_ArtifactTransferComplete'_unknownFields = y__})
  defMessage
    = ArtifactTransferComplete'_constructor
        {_ArtifactTransferComplete'artifactId = Prelude.Nothing,
         _ArtifactTransferComplete'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ArtifactTransferComplete
          -> Data.ProtoLens.Encoding.Bytes.Parser ArtifactTransferComplete
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
                                       "artifact_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"artifactId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ArtifactTransferComplete"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'artifactId") _x
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
instance Control.DeepSeq.NFData ArtifactTransferComplete where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ArtifactTransferComplete'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ArtifactTransferComplete'artifactId x__) ())
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.jobId' @:: Lens' ArtifactTransferStart Proto.Oll.Common.PluginJobId@
         * 'Proto.Oll.Plugin_Fields.maybe'jobId' @:: Lens' ArtifactTransferStart (Prelude.Maybe Proto.Oll.Common.PluginJobId)@
         * 'Proto.Oll.Plugin_Fields.artifact' @:: Lens' ArtifactTransferStart ArtifactDescriptor@
         * 'Proto.Oll.Plugin_Fields.maybe'artifact' @:: Lens' ArtifactTransferStart (Prelude.Maybe ArtifactDescriptor)@
         * 'Proto.Oll.Plugin_Fields.chunkCount' @:: Lens' ArtifactTransferStart Data.Word.Word32@ -}
data ArtifactTransferStart
  = ArtifactTransferStart'_constructor {_ArtifactTransferStart'jobId :: !(Prelude.Maybe Proto.Oll.Common.PluginJobId),
                                        _ArtifactTransferStart'artifact :: !(Prelude.Maybe ArtifactDescriptor),
                                        _ArtifactTransferStart'chunkCount :: !Data.Word.Word32,
                                        _ArtifactTransferStart'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ArtifactTransferStart where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ArtifactTransferStart "jobId" Proto.Oll.Common.PluginJobId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferStart'jobId
           (\ x__ y__ -> x__ {_ArtifactTransferStart'jobId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ArtifactTransferStart "maybe'jobId" (Prelude.Maybe Proto.Oll.Common.PluginJobId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferStart'jobId
           (\ x__ y__ -> x__ {_ArtifactTransferStart'jobId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ArtifactTransferStart "artifact" ArtifactDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferStart'artifact
           (\ x__ y__ -> x__ {_ArtifactTransferStart'artifact = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ArtifactTransferStart "maybe'artifact" (Prelude.Maybe ArtifactDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferStart'artifact
           (\ x__ y__ -> x__ {_ArtifactTransferStart'artifact = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ArtifactTransferStart "chunkCount" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ArtifactTransferStart'chunkCount
           (\ x__ y__ -> x__ {_ArtifactTransferStart'chunkCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message ArtifactTransferStart where
  messageName _ = Data.Text.pack "oll.protocol.ArtifactTransferStart"
  packedMessageDescriptor _
    = "\n\
      \\NAKArtifactTransferStart\DC20\n\
      \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId\DC2<\n\
      \\bartifact\CAN\STX \SOH(\v2 .oll.protocol.ArtifactDescriptorR\bartifact\DC2\US\n\
      \\vchunk_count\CAN\ETX \SOH(\rR\n\
      \chunkCount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        jobId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "job_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginJobId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jobId")) ::
              Data.ProtoLens.FieldDescriptor ArtifactTransferStart
        artifact__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifact"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ArtifactDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'artifact")) ::
              Data.ProtoLens.FieldDescriptor ArtifactTransferStart
        chunkCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"chunkCount")) ::
              Data.ProtoLens.FieldDescriptor ArtifactTransferStart
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, jobId__field_descriptor),
           (Data.ProtoLens.Tag 2, artifact__field_descriptor),
           (Data.ProtoLens.Tag 3, chunkCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ArtifactTransferStart'_unknownFields
        (\ x__ y__ -> x__ {_ArtifactTransferStart'_unknownFields = y__})
  defMessage
    = ArtifactTransferStart'_constructor
        {_ArtifactTransferStart'jobId = Prelude.Nothing,
         _ArtifactTransferStart'artifact = Prelude.Nothing,
         _ArtifactTransferStart'chunkCount = Data.ProtoLens.fieldDefault,
         _ArtifactTransferStart'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ArtifactTransferStart
          -> Data.ProtoLens.Encoding.Bytes.Parser ArtifactTransferStart
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
                                       "job_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"jobId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "artifact"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"artifact") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "chunk_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"chunkCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ArtifactTransferStart"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'jobId") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'artifact") _x
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
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"chunkCount") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ArtifactTransferStart where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ArtifactTransferStart'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ArtifactTransferStart'jobId x__)
                (Control.DeepSeq.deepseq
                   (_ArtifactTransferStart'artifact x__)
                   (Control.DeepSeq.deepseq
                      (_ArtifactTransferStart'chunkCount x__) ())))
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.jobId' @:: Lens' CancelJobAcknowledged Proto.Oll.Common.PluginJobId@
         * 'Proto.Oll.Plugin_Fields.maybe'jobId' @:: Lens' CancelJobAcknowledged (Prelude.Maybe Proto.Oll.Common.PluginJobId)@ -}
data CancelJobAcknowledged
  = CancelJobAcknowledged'_constructor {_CancelJobAcknowledged'jobId :: !(Prelude.Maybe Proto.Oll.Common.PluginJobId),
                                        _CancelJobAcknowledged'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelJobAcknowledged where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelJobAcknowledged "jobId" Proto.Oll.Common.PluginJobId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelJobAcknowledged'jobId
           (\ x__ y__ -> x__ {_CancelJobAcknowledged'jobId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CancelJobAcknowledged "maybe'jobId" (Prelude.Maybe Proto.Oll.Common.PluginJobId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelJobAcknowledged'jobId
           (\ x__ y__ -> x__ {_CancelJobAcknowledged'jobId = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelJobAcknowledged where
  messageName _ = Data.Text.pack "oll.protocol.CancelJobAcknowledged"
  packedMessageDescriptor _
    = "\n\
      \\NAKCancelJobAcknowledged\DC20\n\
      \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        jobId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "job_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginJobId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jobId")) ::
              Data.ProtoLens.FieldDescriptor CancelJobAcknowledged
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, jobId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelJobAcknowledged'_unknownFields
        (\ x__ y__ -> x__ {_CancelJobAcknowledged'_unknownFields = y__})
  defMessage
    = CancelJobAcknowledged'_constructor
        {_CancelJobAcknowledged'jobId = Prelude.Nothing,
         _CancelJobAcknowledged'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelJobAcknowledged
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelJobAcknowledged
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
                                       "job_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"jobId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelJobAcknowledged"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'jobId") _x
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
instance Control.DeepSeq.NFData CancelJobAcknowledged where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelJobAcknowledged'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CancelJobAcknowledged'jobId x__) ())
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.jobId' @:: Lens' CancelJobRequest Proto.Oll.Common.PluginJobId@
         * 'Proto.Oll.Plugin_Fields.maybe'jobId' @:: Lens' CancelJobRequest (Prelude.Maybe Proto.Oll.Common.PluginJobId)@
         * 'Proto.Oll.Plugin_Fields.reason' @:: Lens' CancelJobRequest JobCancellationReason@ -}
data CancelJobRequest
  = CancelJobRequest'_constructor {_CancelJobRequest'jobId :: !(Prelude.Maybe Proto.Oll.Common.PluginJobId),
                                   _CancelJobRequest'reason :: !JobCancellationReason,
                                   _CancelJobRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CancelJobRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CancelJobRequest "jobId" Proto.Oll.Common.PluginJobId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelJobRequest'jobId
           (\ x__ y__ -> x__ {_CancelJobRequest'jobId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CancelJobRequest "maybe'jobId" (Prelude.Maybe Proto.Oll.Common.PluginJobId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelJobRequest'jobId
           (\ x__ y__ -> x__ {_CancelJobRequest'jobId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CancelJobRequest "reason" JobCancellationReason where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CancelJobRequest'reason
           (\ x__ y__ -> x__ {_CancelJobRequest'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message CancelJobRequest where
  messageName _ = Data.Text.pack "oll.protocol.CancelJobRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLECancelJobRequest\DC20\n\
      \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId\DC2;\n\
      \\ACKreason\CAN\STX \SOH(\SO2#.oll.protocol.JobCancellationReasonR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        jobId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "job_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginJobId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jobId")) ::
              Data.ProtoLens.FieldDescriptor CancelJobRequest
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor JobCancellationReason)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor CancelJobRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, jobId__field_descriptor),
           (Data.ProtoLens.Tag 2, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CancelJobRequest'_unknownFields
        (\ x__ y__ -> x__ {_CancelJobRequest'_unknownFields = y__})
  defMessage
    = CancelJobRequest'_constructor
        {_CancelJobRequest'jobId = Prelude.Nothing,
         _CancelJobRequest'reason = Data.ProtoLens.fieldDefault,
         _CancelJobRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CancelJobRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser CancelJobRequest
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
                                       "job_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"jobId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CancelJobRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'jobId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
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
instance Control.DeepSeq.NFData CancelJobRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CancelJobRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CancelJobRequest'jobId x__)
                (Control.DeepSeq.deepseq (_CancelJobRequest'reason x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.nonce' @:: Lens' Heartbeat Data.Word.Word64@ -}
data Heartbeat
  = Heartbeat'_constructor {_Heartbeat'nonce :: !Data.Word.Word64,
                            _Heartbeat'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Heartbeat where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Heartbeat "nonce" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Heartbeat'nonce (\ x__ y__ -> x__ {_Heartbeat'nonce = y__}))
        Prelude.id
instance Data.ProtoLens.Message Heartbeat where
  messageName _ = Data.Text.pack "oll.protocol.Heartbeat"
  packedMessageDescriptor _
    = "\n\
      \\tHeartbeat\DC2\DC4\n\
      \\ENQnonce\CAN\SOH \SOH(\EOTR\ENQnonce"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nonce__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nonce"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"nonce")) ::
              Data.ProtoLens.FieldDescriptor Heartbeat
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, nonce__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Heartbeat'_unknownFields
        (\ x__ y__ -> x__ {_Heartbeat'_unknownFields = y__})
  defMessage
    = Heartbeat'_constructor
        {_Heartbeat'nonce = Data.ProtoLens.fieldDefault,
         _Heartbeat'_unknownFields = []}
  parseMessage
    = let
        loop :: Heartbeat -> Data.ProtoLens.Encoding.Bytes.Parser Heartbeat
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "nonce"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nonce") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Heartbeat"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"nonce") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Heartbeat where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Heartbeat'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Heartbeat'nonce x__) ())
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.maybe'call' @:: Lens' HostCallRequest (Prelude.Maybe HostCallRequest'Call)@
         * 'Proto.Oll.Plugin_Fields.maybe'readDocument' @:: Lens' HostCallRequest (Prelude.Maybe Proto.Oll.Document.ReadDocumentRequest)@
         * 'Proto.Oll.Plugin_Fields.readDocument' @:: Lens' HostCallRequest Proto.Oll.Document.ReadDocumentRequest@
         * 'Proto.Oll.Plugin_Fields.maybe'listDirectory' @:: Lens' HostCallRequest (Prelude.Maybe Proto.Oll.Document.ListDirectoryRequest)@
         * 'Proto.Oll.Plugin_Fields.listDirectory' @:: Lens' HostCallRequest Proto.Oll.Document.ListDirectoryRequest@
         * 'Proto.Oll.Plugin_Fields.maybe'getDirectoryTree' @:: Lens' HostCallRequest (Prelude.Maybe Proto.Oll.Document.GetDirectoryTreeRequest)@
         * 'Proto.Oll.Plugin_Fields.getDirectoryTree' @:: Lens' HostCallRequest Proto.Oll.Document.GetDirectoryTreeRequest@
         * 'Proto.Oll.Plugin_Fields.maybe'readCrdt' @:: Lens' HostCallRequest (Prelude.Maybe Proto.Oll.Document.ReadCrdtRequest)@
         * 'Proto.Oll.Plugin_Fields.readCrdt' @:: Lens' HostCallRequest Proto.Oll.Document.ReadCrdtRequest@
         * 'Proto.Oll.Plugin_Fields.maybe'commitDocuments' @:: Lens' HostCallRequest (Prelude.Maybe Proto.Oll.Document.CommitDocumentsRequest)@
         * 'Proto.Oll.Plugin_Fields.commitDocuments' @:: Lens' HostCallRequest Proto.Oll.Document.CommitDocumentsRequest@
         * 'Proto.Oll.Plugin_Fields.maybe'getConfig' @:: Lens' HostCallRequest (Prelude.Maybe Proto.Oll.Config.GetConfigRequest)@
         * 'Proto.Oll.Plugin_Fields.getConfig' @:: Lens' HostCallRequest Proto.Oll.Config.GetConfigRequest@
         * 'Proto.Oll.Plugin_Fields.maybe'invokeConfigFunction' @:: Lens' HostCallRequest (Prelude.Maybe Proto.Oll.Config.InvokeConfigFunctionRequest)@
         * 'Proto.Oll.Plugin_Fields.invokeConfigFunction' @:: Lens' HostCallRequest Proto.Oll.Config.InvokeConfigFunctionRequest@ -}
data HostCallRequest
  = HostCallRequest'_constructor {_HostCallRequest'call :: !(Prelude.Maybe HostCallRequest'Call),
                                  _HostCallRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HostCallRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HostCallRequest'Call
  = HostCallRequest'ReadDocument !Proto.Oll.Document.ReadDocumentRequest |
    HostCallRequest'ListDirectory !Proto.Oll.Document.ListDirectoryRequest |
    HostCallRequest'GetDirectoryTree !Proto.Oll.Document.GetDirectoryTreeRequest |
    HostCallRequest'ReadCrdt !Proto.Oll.Document.ReadCrdtRequest |
    HostCallRequest'CommitDocuments !Proto.Oll.Document.CommitDocumentsRequest |
    HostCallRequest'GetConfig !Proto.Oll.Config.GetConfigRequest |
    HostCallRequest'InvokeConfigFunction !Proto.Oll.Config.InvokeConfigFunctionRequest
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HostCallRequest "maybe'call" (Prelude.Maybe HostCallRequest'Call) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostCallRequest "maybe'readDocument" (Prelude.Maybe Proto.Oll.Document.ReadDocumentRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallRequest'ReadDocument x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallRequest'ReadDocument y__))
instance Data.ProtoLens.Field.HasField HostCallRequest "readDocument" Proto.Oll.Document.ReadDocumentRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallRequest'ReadDocument x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallRequest'ReadDocument y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallRequest "maybe'listDirectory" (Prelude.Maybe Proto.Oll.Document.ListDirectoryRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallRequest'ListDirectory x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallRequest'ListDirectory y__))
instance Data.ProtoLens.Field.HasField HostCallRequest "listDirectory" Proto.Oll.Document.ListDirectoryRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallRequest'ListDirectory x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallRequest'ListDirectory y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallRequest "maybe'getDirectoryTree" (Prelude.Maybe Proto.Oll.Document.GetDirectoryTreeRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallRequest'GetDirectoryTree x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallRequest'GetDirectoryTree y__))
instance Data.ProtoLens.Field.HasField HostCallRequest "getDirectoryTree" Proto.Oll.Document.GetDirectoryTreeRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallRequest'GetDirectoryTree x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallRequest'GetDirectoryTree y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallRequest "maybe'readCrdt" (Prelude.Maybe Proto.Oll.Document.ReadCrdtRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallRequest'ReadCrdt x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallRequest'ReadCrdt y__))
instance Data.ProtoLens.Field.HasField HostCallRequest "readCrdt" Proto.Oll.Document.ReadCrdtRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallRequest'ReadCrdt x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallRequest'ReadCrdt y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallRequest "maybe'commitDocuments" (Prelude.Maybe Proto.Oll.Document.CommitDocumentsRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallRequest'CommitDocuments x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallRequest'CommitDocuments y__))
instance Data.ProtoLens.Field.HasField HostCallRequest "commitDocuments" Proto.Oll.Document.CommitDocumentsRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallRequest'CommitDocuments x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallRequest'CommitDocuments y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallRequest "maybe'getConfig" (Prelude.Maybe Proto.Oll.Config.GetConfigRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallRequest'GetConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallRequest'GetConfig y__))
instance Data.ProtoLens.Field.HasField HostCallRequest "getConfig" Proto.Oll.Config.GetConfigRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallRequest'GetConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallRequest'GetConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallRequest "maybe'invokeConfigFunction" (Prelude.Maybe Proto.Oll.Config.InvokeConfigFunctionRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallRequest'InvokeConfigFunction x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallRequest'InvokeConfigFunction y__))
instance Data.ProtoLens.Field.HasField HostCallRequest "invokeConfigFunction" Proto.Oll.Config.InvokeConfigFunctionRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallRequest'call
           (\ x__ y__ -> x__ {_HostCallRequest'call = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallRequest'InvokeConfigFunction x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallRequest'InvokeConfigFunction y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HostCallRequest where
  messageName _ = Data.Text.pack "oll.protocol.HostCallRequest"
  packedMessageDescriptor _
    = "\n\
      \\SIHostCallRequest\DC2H\n\
      \\rread_document\CAN\SOH \SOH(\v2!.oll.protocol.ReadDocumentRequestH\NULR\freadDocument\DC2K\n\
      \\SOlist_directory\CAN\STX \SOH(\v2\".oll.protocol.ListDirectoryRequestH\NULR\rlistDirectory\DC2U\n\
      \\DC2get_directory_tree\CAN\ETX \SOH(\v2%.oll.protocol.GetDirectoryTreeRequestH\NULR\DLEgetDirectoryTree\DC2<\n\
      \\tread_crdt\CAN\EOT \SOH(\v2\GS.oll.protocol.ReadCrdtRequestH\NULR\breadCrdt\DC2Q\n\
      \\DLEcommit_documents\CAN\ENQ \SOH(\v2$.oll.protocol.CommitDocumentsRequestH\NULR\SIcommitDocuments\DC2?\n\
      \\n\
      \get_config\CAN\ACK \SOH(\v2\RS.oll.protocol.GetConfigRequestH\NULR\tgetConfig\DC2a\n\
      \\SYNinvoke_config_function\CAN\a \SOH(\v2).oll.protocol.InvokeConfigFunctionRequestH\NULR\DC4invokeConfigFunctionB\ACK\n\
      \\EOTcall"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        readDocument__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_document"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Document.ReadDocumentRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'readDocument")) ::
              Data.ProtoLens.FieldDescriptor HostCallRequest
        listDirectory__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_directory"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Document.ListDirectoryRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listDirectory")) ::
              Data.ProtoLens.FieldDescriptor HostCallRequest
        getDirectoryTree__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "get_directory_tree"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Document.GetDirectoryTreeRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'getDirectoryTree")) ::
              Data.ProtoLens.FieldDescriptor HostCallRequest
        readCrdt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_crdt"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Document.ReadCrdtRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'readCrdt")) ::
              Data.ProtoLens.FieldDescriptor HostCallRequest
        commitDocuments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commit_documents"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Document.CommitDocumentsRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commitDocuments")) ::
              Data.ProtoLens.FieldDescriptor HostCallRequest
        getConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "get_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Config.GetConfigRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'getConfig")) ::
              Data.ProtoLens.FieldDescriptor HostCallRequest
        invokeConfigFunction__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invoke_config_function"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Config.InvokeConfigFunctionRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'invokeConfigFunction")) ::
              Data.ProtoLens.FieldDescriptor HostCallRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, readDocument__field_descriptor),
           (Data.ProtoLens.Tag 2, listDirectory__field_descriptor),
           (Data.ProtoLens.Tag 3, getDirectoryTree__field_descriptor),
           (Data.ProtoLens.Tag 4, readCrdt__field_descriptor),
           (Data.ProtoLens.Tag 5, commitDocuments__field_descriptor),
           (Data.ProtoLens.Tag 6, getConfig__field_descriptor),
           (Data.ProtoLens.Tag 7, invokeConfigFunction__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HostCallRequest'_unknownFields
        (\ x__ y__ -> x__ {_HostCallRequest'_unknownFields = y__})
  defMessage
    = HostCallRequest'_constructor
        {_HostCallRequest'call = Prelude.Nothing,
         _HostCallRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HostCallRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser HostCallRequest
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
                                       "read_document"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"readDocument") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list_directory"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"listDirectory") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "get_directory_tree"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"getDirectoryTree") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "read_crdt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readCrdt") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "commit_documents"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commitDocuments") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "get_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"getConfig") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "invoke_config_function"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invokeConfigFunction") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HostCallRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'call") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (HostCallRequest'ReadDocument v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallRequest'ListDirectory v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallRequest'GetDirectoryTree v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallRequest'ReadCrdt v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallRequest'CommitDocuments v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallRequest'GetConfig v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallRequest'InvokeConfigFunction v))
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
instance Control.DeepSeq.NFData HostCallRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HostCallRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HostCallRequest'call x__) ())
instance Control.DeepSeq.NFData HostCallRequest'Call where
  rnf (HostCallRequest'ReadDocument x__) = Control.DeepSeq.rnf x__
  rnf (HostCallRequest'ListDirectory x__) = Control.DeepSeq.rnf x__
  rnf (HostCallRequest'GetDirectoryTree x__)
    = Control.DeepSeq.rnf x__
  rnf (HostCallRequest'ReadCrdt x__) = Control.DeepSeq.rnf x__
  rnf (HostCallRequest'CommitDocuments x__) = Control.DeepSeq.rnf x__
  rnf (HostCallRequest'GetConfig x__) = Control.DeepSeq.rnf x__
  rnf (HostCallRequest'InvokeConfigFunction x__)
    = Control.DeepSeq.rnf x__
_HostCallRequest'ReadDocument ::
  Data.ProtoLens.Prism.Prism' HostCallRequest'Call Proto.Oll.Document.ReadDocumentRequest
_HostCallRequest'ReadDocument
  = Data.ProtoLens.Prism.prism'
      HostCallRequest'ReadDocument
      (\ p__
         -> case p__ of
              (HostCallRequest'ReadDocument p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallRequest'ListDirectory ::
  Data.ProtoLens.Prism.Prism' HostCallRequest'Call Proto.Oll.Document.ListDirectoryRequest
_HostCallRequest'ListDirectory
  = Data.ProtoLens.Prism.prism'
      HostCallRequest'ListDirectory
      (\ p__
         -> case p__ of
              (HostCallRequest'ListDirectory p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallRequest'GetDirectoryTree ::
  Data.ProtoLens.Prism.Prism' HostCallRequest'Call Proto.Oll.Document.GetDirectoryTreeRequest
_HostCallRequest'GetDirectoryTree
  = Data.ProtoLens.Prism.prism'
      HostCallRequest'GetDirectoryTree
      (\ p__
         -> case p__ of
              (HostCallRequest'GetDirectoryTree p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallRequest'ReadCrdt ::
  Data.ProtoLens.Prism.Prism' HostCallRequest'Call Proto.Oll.Document.ReadCrdtRequest
_HostCallRequest'ReadCrdt
  = Data.ProtoLens.Prism.prism'
      HostCallRequest'ReadCrdt
      (\ p__
         -> case p__ of
              (HostCallRequest'ReadCrdt p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallRequest'CommitDocuments ::
  Data.ProtoLens.Prism.Prism' HostCallRequest'Call Proto.Oll.Document.CommitDocumentsRequest
_HostCallRequest'CommitDocuments
  = Data.ProtoLens.Prism.prism'
      HostCallRequest'CommitDocuments
      (\ p__
         -> case p__ of
              (HostCallRequest'CommitDocuments p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallRequest'GetConfig ::
  Data.ProtoLens.Prism.Prism' HostCallRequest'Call Proto.Oll.Config.GetConfigRequest
_HostCallRequest'GetConfig
  = Data.ProtoLens.Prism.prism'
      HostCallRequest'GetConfig
      (\ p__
         -> case p__ of
              (HostCallRequest'GetConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallRequest'InvokeConfigFunction ::
  Data.ProtoLens.Prism.Prism' HostCallRequest'Call Proto.Oll.Config.InvokeConfigFunctionRequest
_HostCallRequest'InvokeConfigFunction
  = Data.ProtoLens.Prism.prism'
      HostCallRequest'InvokeConfigFunction
      (\ p__
         -> case p__ of
              (HostCallRequest'InvokeConfigFunction p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.maybe'result' @:: Lens' HostCallResponse (Prelude.Maybe HostCallResponse'Result)@
         * 'Proto.Oll.Plugin_Fields.maybe'readDocument' @:: Lens' HostCallResponse (Prelude.Maybe Proto.Oll.Document.ReadDocumentResponse)@
         * 'Proto.Oll.Plugin_Fields.readDocument' @:: Lens' HostCallResponse Proto.Oll.Document.ReadDocumentResponse@
         * 'Proto.Oll.Plugin_Fields.maybe'listDirectory' @:: Lens' HostCallResponse (Prelude.Maybe Proto.Oll.Document.ListDirectoryResponse)@
         * 'Proto.Oll.Plugin_Fields.listDirectory' @:: Lens' HostCallResponse Proto.Oll.Document.ListDirectoryResponse@
         * 'Proto.Oll.Plugin_Fields.maybe'getDirectoryTree' @:: Lens' HostCallResponse (Prelude.Maybe Proto.Oll.Document.GetDirectoryTreeResponse)@
         * 'Proto.Oll.Plugin_Fields.getDirectoryTree' @:: Lens' HostCallResponse Proto.Oll.Document.GetDirectoryTreeResponse@
         * 'Proto.Oll.Plugin_Fields.maybe'readCrdt' @:: Lens' HostCallResponse (Prelude.Maybe Proto.Oll.Document.ReadCrdtResponse)@
         * 'Proto.Oll.Plugin_Fields.readCrdt' @:: Lens' HostCallResponse Proto.Oll.Document.ReadCrdtResponse@
         * 'Proto.Oll.Plugin_Fields.maybe'commitDocuments' @:: Lens' HostCallResponse (Prelude.Maybe Proto.Oll.Document.CommitDocumentsResponse)@
         * 'Proto.Oll.Plugin_Fields.commitDocuments' @:: Lens' HostCallResponse Proto.Oll.Document.CommitDocumentsResponse@
         * 'Proto.Oll.Plugin_Fields.maybe'getConfig' @:: Lens' HostCallResponse (Prelude.Maybe Proto.Oll.Config.GetConfigResponse)@
         * 'Proto.Oll.Plugin_Fields.getConfig' @:: Lens' HostCallResponse Proto.Oll.Config.GetConfigResponse@
         * 'Proto.Oll.Plugin_Fields.maybe'invokeConfigFunction' @:: Lens' HostCallResponse (Prelude.Maybe Proto.Oll.Config.InvokeConfigFunctionResponse)@
         * 'Proto.Oll.Plugin_Fields.invokeConfigFunction' @:: Lens' HostCallResponse Proto.Oll.Config.InvokeConfigFunctionResponse@
         * 'Proto.Oll.Plugin_Fields.maybe'error' @:: Lens' HostCallResponse (Prelude.Maybe Proto.Oll.Common.ProtocolError)@
         * 'Proto.Oll.Plugin_Fields.error' @:: Lens' HostCallResponse Proto.Oll.Common.ProtocolError@ -}
data HostCallResponse
  = HostCallResponse'_constructor {_HostCallResponse'result :: !(Prelude.Maybe HostCallResponse'Result),
                                   _HostCallResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HostCallResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HostCallResponse'Result
  = HostCallResponse'ReadDocument !Proto.Oll.Document.ReadDocumentResponse |
    HostCallResponse'ListDirectory !Proto.Oll.Document.ListDirectoryResponse |
    HostCallResponse'GetDirectoryTree !Proto.Oll.Document.GetDirectoryTreeResponse |
    HostCallResponse'ReadCrdt !Proto.Oll.Document.ReadCrdtResponse |
    HostCallResponse'CommitDocuments !Proto.Oll.Document.CommitDocumentsResponse |
    HostCallResponse'GetConfig !Proto.Oll.Config.GetConfigResponse |
    HostCallResponse'InvokeConfigFunction !Proto.Oll.Config.InvokeConfigFunctionResponse |
    HostCallResponse'Error !Proto.Oll.Common.ProtocolError
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HostCallResponse "maybe'result" (Prelude.Maybe HostCallResponse'Result) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostCallResponse "maybe'readDocument" (Prelude.Maybe Proto.Oll.Document.ReadDocumentResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallResponse'ReadDocument x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallResponse'ReadDocument y__))
instance Data.ProtoLens.Field.HasField HostCallResponse "readDocument" Proto.Oll.Document.ReadDocumentResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallResponse'ReadDocument x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallResponse'ReadDocument y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallResponse "maybe'listDirectory" (Prelude.Maybe Proto.Oll.Document.ListDirectoryResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallResponse'ListDirectory x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallResponse'ListDirectory y__))
instance Data.ProtoLens.Field.HasField HostCallResponse "listDirectory" Proto.Oll.Document.ListDirectoryResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallResponse'ListDirectory x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallResponse'ListDirectory y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallResponse "maybe'getDirectoryTree" (Prelude.Maybe Proto.Oll.Document.GetDirectoryTreeResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallResponse'GetDirectoryTree x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallResponse'GetDirectoryTree y__))
instance Data.ProtoLens.Field.HasField HostCallResponse "getDirectoryTree" Proto.Oll.Document.GetDirectoryTreeResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallResponse'GetDirectoryTree x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallResponse'GetDirectoryTree y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallResponse "maybe'readCrdt" (Prelude.Maybe Proto.Oll.Document.ReadCrdtResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallResponse'ReadCrdt x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallResponse'ReadCrdt y__))
instance Data.ProtoLens.Field.HasField HostCallResponse "readCrdt" Proto.Oll.Document.ReadCrdtResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallResponse'ReadCrdt x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallResponse'ReadCrdt y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallResponse "maybe'commitDocuments" (Prelude.Maybe Proto.Oll.Document.CommitDocumentsResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallResponse'CommitDocuments x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallResponse'CommitDocuments y__))
instance Data.ProtoLens.Field.HasField HostCallResponse "commitDocuments" Proto.Oll.Document.CommitDocumentsResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallResponse'CommitDocuments x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallResponse'CommitDocuments y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallResponse "maybe'getConfig" (Prelude.Maybe Proto.Oll.Config.GetConfigResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallResponse'GetConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallResponse'GetConfig y__))
instance Data.ProtoLens.Field.HasField HostCallResponse "getConfig" Proto.Oll.Config.GetConfigResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallResponse'GetConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallResponse'GetConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallResponse "maybe'invokeConfigFunction" (Prelude.Maybe Proto.Oll.Config.InvokeConfigFunctionResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallResponse'InvokeConfigFunction x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HostCallResponse'InvokeConfigFunction y__))
instance Data.ProtoLens.Field.HasField HostCallResponse "invokeConfigFunction" Proto.Oll.Config.InvokeConfigFunctionResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallResponse'InvokeConfigFunction x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HostCallResponse'InvokeConfigFunction y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HostCallResponse "maybe'error" (Prelude.Maybe Proto.Oll.Common.ProtocolError) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HostCallResponse'Error x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HostCallResponse'Error y__))
instance Data.ProtoLens.Field.HasField HostCallResponse "error" Proto.Oll.Common.ProtocolError where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostCallResponse'result
           (\ x__ y__ -> x__ {_HostCallResponse'result = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HostCallResponse'Error x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HostCallResponse'Error y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HostCallResponse where
  messageName _ = Data.Text.pack "oll.protocol.HostCallResponse"
  packedMessageDescriptor _
    = "\n\
      \\DLEHostCallResponse\DC2I\n\
      \\rread_document\CAN\SOH \SOH(\v2\".oll.protocol.ReadDocumentResponseH\NULR\freadDocument\DC2L\n\
      \\SOlist_directory\CAN\STX \SOH(\v2#.oll.protocol.ListDirectoryResponseH\NULR\rlistDirectory\DC2V\n\
      \\DC2get_directory_tree\CAN\ETX \SOH(\v2&.oll.protocol.GetDirectoryTreeResponseH\NULR\DLEgetDirectoryTree\DC2=\n\
      \\tread_crdt\CAN\EOT \SOH(\v2\RS.oll.protocol.ReadCrdtResponseH\NULR\breadCrdt\DC2R\n\
      \\DLEcommit_documents\CAN\ENQ \SOH(\v2%.oll.protocol.CommitDocumentsResponseH\NULR\SIcommitDocuments\DC2@\n\
      \\n\
      \get_config\CAN\ACK \SOH(\v2\US.oll.protocol.GetConfigResponseH\NULR\tgetConfig\DC2b\n\
      \\SYNinvoke_config_function\CAN\a \SOH(\v2*.oll.protocol.InvokeConfigFunctionResponseH\NULR\DC4invokeConfigFunction\DC23\n\
      \\ENQerror\CAN\SI \SOH(\v2\ESC.oll.protocol.ProtocolErrorH\NULR\ENQerrorB\b\n\
      \\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        readDocument__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_document"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Document.ReadDocumentResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'readDocument")) ::
              Data.ProtoLens.FieldDescriptor HostCallResponse
        listDirectory__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_directory"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Document.ListDirectoryResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listDirectory")) ::
              Data.ProtoLens.FieldDescriptor HostCallResponse
        getDirectoryTree__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "get_directory_tree"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Document.GetDirectoryTreeResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'getDirectoryTree")) ::
              Data.ProtoLens.FieldDescriptor HostCallResponse
        readCrdt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_crdt"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Document.ReadCrdtResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'readCrdt")) ::
              Data.ProtoLens.FieldDescriptor HostCallResponse
        commitDocuments__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commit_documents"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Document.CommitDocumentsResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commitDocuments")) ::
              Data.ProtoLens.FieldDescriptor HostCallResponse
        getConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "get_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Config.GetConfigResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'getConfig")) ::
              Data.ProtoLens.FieldDescriptor HostCallResponse
        invokeConfigFunction__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invoke_config_function"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Config.InvokeConfigFunctionResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'invokeConfigFunction")) ::
              Data.ProtoLens.FieldDescriptor HostCallResponse
        error__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.ProtocolError)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'error")) ::
              Data.ProtoLens.FieldDescriptor HostCallResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, readDocument__field_descriptor),
           (Data.ProtoLens.Tag 2, listDirectory__field_descriptor),
           (Data.ProtoLens.Tag 3, getDirectoryTree__field_descriptor),
           (Data.ProtoLens.Tag 4, readCrdt__field_descriptor),
           (Data.ProtoLens.Tag 5, commitDocuments__field_descriptor),
           (Data.ProtoLens.Tag 6, getConfig__field_descriptor),
           (Data.ProtoLens.Tag 7, invokeConfigFunction__field_descriptor),
           (Data.ProtoLens.Tag 15, error__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HostCallResponse'_unknownFields
        (\ x__ y__ -> x__ {_HostCallResponse'_unknownFields = y__})
  defMessage
    = HostCallResponse'_constructor
        {_HostCallResponse'result = Prelude.Nothing,
         _HostCallResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HostCallResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser HostCallResponse
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
                                       "read_document"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"readDocument") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list_directory"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"listDirectory") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "get_directory_tree"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"getDirectoryTree") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "read_crdt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readCrdt") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "commit_documents"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commitDocuments") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "get_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"getConfig") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "invoke_config_function"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invokeConfigFunction") y x)
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"error") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HostCallResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'result") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (HostCallResponse'ReadDocument v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallResponse'ListDirectory v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallResponse'GetDirectoryTree v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallResponse'ReadCrdt v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallResponse'CommitDocuments v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallResponse'GetConfig v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallResponse'InvokeConfigFunction v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (HostCallResponse'Error v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HostCallResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HostCallResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HostCallResponse'result x__) ())
instance Control.DeepSeq.NFData HostCallResponse'Result where
  rnf (HostCallResponse'ReadDocument x__) = Control.DeepSeq.rnf x__
  rnf (HostCallResponse'ListDirectory x__) = Control.DeepSeq.rnf x__
  rnf (HostCallResponse'GetDirectoryTree x__)
    = Control.DeepSeq.rnf x__
  rnf (HostCallResponse'ReadCrdt x__) = Control.DeepSeq.rnf x__
  rnf (HostCallResponse'CommitDocuments x__)
    = Control.DeepSeq.rnf x__
  rnf (HostCallResponse'GetConfig x__) = Control.DeepSeq.rnf x__
  rnf (HostCallResponse'InvokeConfigFunction x__)
    = Control.DeepSeq.rnf x__
  rnf (HostCallResponse'Error x__) = Control.DeepSeq.rnf x__
_HostCallResponse'ReadDocument ::
  Data.ProtoLens.Prism.Prism' HostCallResponse'Result Proto.Oll.Document.ReadDocumentResponse
_HostCallResponse'ReadDocument
  = Data.ProtoLens.Prism.prism'
      HostCallResponse'ReadDocument
      (\ p__
         -> case p__ of
              (HostCallResponse'ReadDocument p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallResponse'ListDirectory ::
  Data.ProtoLens.Prism.Prism' HostCallResponse'Result Proto.Oll.Document.ListDirectoryResponse
_HostCallResponse'ListDirectory
  = Data.ProtoLens.Prism.prism'
      HostCallResponse'ListDirectory
      (\ p__
         -> case p__ of
              (HostCallResponse'ListDirectory p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallResponse'GetDirectoryTree ::
  Data.ProtoLens.Prism.Prism' HostCallResponse'Result Proto.Oll.Document.GetDirectoryTreeResponse
_HostCallResponse'GetDirectoryTree
  = Data.ProtoLens.Prism.prism'
      HostCallResponse'GetDirectoryTree
      (\ p__
         -> case p__ of
              (HostCallResponse'GetDirectoryTree p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallResponse'ReadCrdt ::
  Data.ProtoLens.Prism.Prism' HostCallResponse'Result Proto.Oll.Document.ReadCrdtResponse
_HostCallResponse'ReadCrdt
  = Data.ProtoLens.Prism.prism'
      HostCallResponse'ReadCrdt
      (\ p__
         -> case p__ of
              (HostCallResponse'ReadCrdt p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallResponse'CommitDocuments ::
  Data.ProtoLens.Prism.Prism' HostCallResponse'Result Proto.Oll.Document.CommitDocumentsResponse
_HostCallResponse'CommitDocuments
  = Data.ProtoLens.Prism.prism'
      HostCallResponse'CommitDocuments
      (\ p__
         -> case p__ of
              (HostCallResponse'CommitDocuments p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallResponse'GetConfig ::
  Data.ProtoLens.Prism.Prism' HostCallResponse'Result Proto.Oll.Config.GetConfigResponse
_HostCallResponse'GetConfig
  = Data.ProtoLens.Prism.prism'
      HostCallResponse'GetConfig
      (\ p__
         -> case p__ of
              (HostCallResponse'GetConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallResponse'InvokeConfigFunction ::
  Data.ProtoLens.Prism.Prism' HostCallResponse'Result Proto.Oll.Config.InvokeConfigFunctionResponse
_HostCallResponse'InvokeConfigFunction
  = Data.ProtoLens.Prism.prism'
      HostCallResponse'InvokeConfigFunction
      (\ p__
         -> case p__ of
              (HostCallResponse'InvokeConfigFunction p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HostCallResponse'Error ::
  Data.ProtoLens.Prism.Prism' HostCallResponse'Result Proto.Oll.Common.ProtocolError
_HostCallResponse'Error
  = Data.ProtoLens.Prism.prism'
      HostCallResponse'Error
      (\ p__
         -> case p__ of
              (HostCallResponse'Error p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.node' @:: Lens' HostHello Proto.Oll.Common.NodeIdentity@
         * 'Proto.Oll.Plugin_Fields.maybe'node' @:: Lens' HostHello (Prelude.Maybe Proto.Oll.Common.NodeIdentity)@
         * 'Proto.Oll.Plugin_Fields.sessionId' @:: Lens' HostHello Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.pluginInstanceId' @:: Lens' HostHello Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.protocolSchemaSha256' @:: Lens' HostHello Data.ByteString.ByteString@
         * 'Proto.Oll.Plugin_Fields.maximumCallDepth' @:: Lens' HostHello Data.Word.Word32@
         * 'Proto.Oll.Plugin_Fields.maximumCausalDepth' @:: Lens' HostHello Data.Word.Word32@
         * 'Proto.Oll.Plugin_Fields.maximumArtifactChunkBytes' @:: Lens' HostHello Data.Word.Word64@
         * 'Proto.Oll.Plugin_Fields.pluginId' @:: Lens' HostHello Proto.Oll.Common.PluginId@
         * 'Proto.Oll.Plugin_Fields.maybe'pluginId' @:: Lens' HostHello (Prelude.Maybe Proto.Oll.Common.PluginId)@
         * 'Proto.Oll.Plugin_Fields.pluginName' @:: Lens' HostHello Proto.Oll.Common.PluginName@
         * 'Proto.Oll.Plugin_Fields.maybe'pluginName' @:: Lens' HostHello (Prelude.Maybe Proto.Oll.Common.PluginName)@ -}
data HostHello
  = HostHello'_constructor {_HostHello'node :: !(Prelude.Maybe Proto.Oll.Common.NodeIdentity),
                            _HostHello'sessionId :: !Data.Text.Text,
                            _HostHello'pluginInstanceId :: !Data.Text.Text,
                            _HostHello'protocolSchemaSha256 :: !Data.ByteString.ByteString,
                            _HostHello'maximumCallDepth :: !Data.Word.Word32,
                            _HostHello'maximumCausalDepth :: !Data.Word.Word32,
                            _HostHello'maximumArtifactChunkBytes :: !Data.Word.Word64,
                            _HostHello'pluginId :: !(Prelude.Maybe Proto.Oll.Common.PluginId),
                            _HostHello'pluginName :: !(Prelude.Maybe Proto.Oll.Common.PluginName),
                            _HostHello'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HostHello where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HostHello "node" Proto.Oll.Common.NodeIdentity where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'node (\ x__ y__ -> x__ {_HostHello'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HostHello "maybe'node" (Prelude.Maybe Proto.Oll.Common.NodeIdentity) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'node (\ x__ y__ -> x__ {_HostHello'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHello "sessionId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'sessionId
           (\ x__ y__ -> x__ {_HostHello'sessionId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHello "pluginInstanceId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'pluginInstanceId
           (\ x__ y__ -> x__ {_HostHello'pluginInstanceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHello "protocolSchemaSha256" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'protocolSchemaSha256
           (\ x__ y__ -> x__ {_HostHello'protocolSchemaSha256 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHello "maximumCallDepth" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'maximumCallDepth
           (\ x__ y__ -> x__ {_HostHello'maximumCallDepth = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHello "maximumCausalDepth" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'maximumCausalDepth
           (\ x__ y__ -> x__ {_HostHello'maximumCausalDepth = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHello "maximumArtifactChunkBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'maximumArtifactChunkBytes
           (\ x__ y__ -> x__ {_HostHello'maximumArtifactChunkBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHello "pluginId" Proto.Oll.Common.PluginId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'pluginId (\ x__ y__ -> x__ {_HostHello'pluginId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HostHello "maybe'pluginId" (Prelude.Maybe Proto.Oll.Common.PluginId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'pluginId (\ x__ y__ -> x__ {_HostHello'pluginId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHello "pluginName" Proto.Oll.Common.PluginName where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'pluginName
           (\ x__ y__ -> x__ {_HostHello'pluginName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HostHello "maybe'pluginName" (Prelude.Maybe Proto.Oll.Common.PluginName) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHello'pluginName
           (\ x__ y__ -> x__ {_HostHello'pluginName = y__}))
        Prelude.id
instance Data.ProtoLens.Message HostHello where
  messageName _ = Data.Text.pack "oll.protocol.HostHello"
  packedMessageDescriptor _
    = "\n\
      \\tHostHello\DC2.\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.oll.protocol.NodeIdentityR\EOTnode\DC2\GS\n\
      \\n\
      \session_id\CAN\STX \SOH(\tR\tsessionId\DC2,\n\
      \\DC2plugin_instance_id\CAN\ETX \SOH(\tR\DLEpluginInstanceId\DC24\n\
      \\SYNprotocol_schema_sha256\CAN\EOT \SOH(\fR\DC4protocolSchemaSha256\DC2,\n\
      \\DC2maximum_call_depth\CAN\ENQ \SOH(\rR\DLEmaximumCallDepth\DC20\n\
      \\DC4maximum_causal_depth\CAN\ACK \SOH(\rR\DC2maximumCausalDepth\DC2?\n\
      \\FSmaximum_artifact_chunk_bytes\CAN\a \SOH(\EOTR\EMmaximumArtifactChunkBytes\DC23\n\
      \\tplugin_id\CAN\b \SOH(\v2\SYN.oll.protocol.PluginIdR\bpluginId\DC29\n\
      \\vplugin_name\CAN\t \SOH(\v2\CAN.oll.protocol.PluginNameR\n\
      \pluginName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.NodeIdentity)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor HostHello
        sessionId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "session_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sessionId")) ::
              Data.ProtoLens.FieldDescriptor HostHello
        pluginInstanceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plugin_instance_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pluginInstanceId")) ::
              Data.ProtoLens.FieldDescriptor HostHello
        protocolSchemaSha256__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol_schema_sha256"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocolSchemaSha256")) ::
              Data.ProtoLens.FieldDescriptor HostHello
        maximumCallDepth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "maximum_call_depth"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maximumCallDepth")) ::
              Data.ProtoLens.FieldDescriptor HostHello
        maximumCausalDepth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "maximum_causal_depth"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maximumCausalDepth")) ::
              Data.ProtoLens.FieldDescriptor HostHello
        maximumArtifactChunkBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "maximum_artifact_chunk_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maximumArtifactChunkBytes")) ::
              Data.ProtoLens.FieldDescriptor HostHello
        pluginId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plugin_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pluginId")) ::
              Data.ProtoLens.FieldDescriptor HostHello
        pluginName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plugin_name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginName)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pluginName")) ::
              Data.ProtoLens.FieldDescriptor HostHello
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, node__field_descriptor),
           (Data.ProtoLens.Tag 2, sessionId__field_descriptor),
           (Data.ProtoLens.Tag 3, pluginInstanceId__field_descriptor),
           (Data.ProtoLens.Tag 4, protocolSchemaSha256__field_descriptor),
           (Data.ProtoLens.Tag 5, maximumCallDepth__field_descriptor),
           (Data.ProtoLens.Tag 6, maximumCausalDepth__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            maximumArtifactChunkBytes__field_descriptor),
           (Data.ProtoLens.Tag 8, pluginId__field_descriptor),
           (Data.ProtoLens.Tag 9, pluginName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HostHello'_unknownFields
        (\ x__ y__ -> x__ {_HostHello'_unknownFields = y__})
  defMessage
    = HostHello'_constructor
        {_HostHello'node = Prelude.Nothing,
         _HostHello'sessionId = Data.ProtoLens.fieldDefault,
         _HostHello'pluginInstanceId = Data.ProtoLens.fieldDefault,
         _HostHello'protocolSchemaSha256 = Data.ProtoLens.fieldDefault,
         _HostHello'maximumCallDepth = Data.ProtoLens.fieldDefault,
         _HostHello'maximumCausalDepth = Data.ProtoLens.fieldDefault,
         _HostHello'maximumArtifactChunkBytes = Data.ProtoLens.fieldDefault,
         _HostHello'pluginId = Prelude.Nothing,
         _HostHello'pluginName = Prelude.Nothing,
         _HostHello'_unknownFields = []}
  parseMessage
    = let
        loop :: HostHello -> Data.ProtoLens.Encoding.Bytes.Parser HostHello
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
                                       "node"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "session_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sessionId") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "plugin_instance_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pluginInstanceId") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "protocol_schema_sha256"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protocolSchemaSha256") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "maximum_call_depth"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maximumCallDepth") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "maximum_causal_depth"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maximumCausalDepth") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "maximum_artifact_chunk_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maximumArtifactChunkBytes") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "plugin_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pluginId") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "plugin_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pluginName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HostHello"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sessionId") _x
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
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"pluginInstanceId") _x
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
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"protocolSchemaSha256") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"maximumCallDepth") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"maximumCausalDepth") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"maximumArtifactChunkBytes") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'pluginId") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'pluginName") _x
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
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData HostHello where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HostHello'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HostHello'node x__)
                (Control.DeepSeq.deepseq
                   (_HostHello'sessionId x__)
                   (Control.DeepSeq.deepseq
                      (_HostHello'pluginInstanceId x__)
                      (Control.DeepSeq.deepseq
                         (_HostHello'protocolSchemaSha256 x__)
                         (Control.DeepSeq.deepseq
                            (_HostHello'maximumCallDepth x__)
                            (Control.DeepSeq.deepseq
                               (_HostHello'maximumCausalDepth x__)
                               (Control.DeepSeq.deepseq
                                  (_HostHello'maximumArtifactChunkBytes x__)
                                  (Control.DeepSeq.deepseq
                                     (_HostHello'pluginId x__)
                                     (Control.DeepSeq.deepseq
                                        (_HostHello'pluginName x__) ())))))))))
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.jobId' @:: Lens' JobAccepted Proto.Oll.Common.PluginJobId@
         * 'Proto.Oll.Plugin_Fields.maybe'jobId' @:: Lens' JobAccepted (Prelude.Maybe Proto.Oll.Common.PluginJobId)@ -}
data JobAccepted
  = JobAccepted'_constructor {_JobAccepted'jobId :: !(Prelude.Maybe Proto.Oll.Common.PluginJobId),
                              _JobAccepted'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show JobAccepted where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField JobAccepted "jobId" Proto.Oll.Common.PluginJobId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobAccepted'jobId (\ x__ y__ -> x__ {_JobAccepted'jobId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField JobAccepted "maybe'jobId" (Prelude.Maybe Proto.Oll.Common.PluginJobId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobAccepted'jobId (\ x__ y__ -> x__ {_JobAccepted'jobId = y__}))
        Prelude.id
instance Data.ProtoLens.Message JobAccepted where
  messageName _ = Data.Text.pack "oll.protocol.JobAccepted"
  packedMessageDescriptor _
    = "\n\
      \\vJobAccepted\DC20\n\
      \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        jobId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "job_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginJobId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jobId")) ::
              Data.ProtoLens.FieldDescriptor JobAccepted
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, jobId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _JobAccepted'_unknownFields
        (\ x__ y__ -> x__ {_JobAccepted'_unknownFields = y__})
  defMessage
    = JobAccepted'_constructor
        {_JobAccepted'jobId = Prelude.Nothing,
         _JobAccepted'_unknownFields = []}
  parseMessage
    = let
        loop ::
          JobAccepted -> Data.ProtoLens.Encoding.Bytes.Parser JobAccepted
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
                                       "job_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"jobId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "JobAccepted"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'jobId") _x
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
instance Control.DeepSeq.NFData JobAccepted where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_JobAccepted'_unknownFields x__)
             (Control.DeepSeq.deepseq (_JobAccepted'jobId x__) ())
newtype JobCancellationReason'UnrecognizedValue
  = JobCancellationReason'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data JobCancellationReason
  = JOB_CANCELLATION_REASON_UNSPECIFIED |
    JOB_CANCELLATION_REASON_USER_REQUEST |
    JOB_CANCELLATION_REASON_DEADLINE |
    JobCancellationReason'Unrecognized !JobCancellationReason'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum JobCancellationReason where
  maybeToEnum 0 = Prelude.Just JOB_CANCELLATION_REASON_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just JOB_CANCELLATION_REASON_USER_REQUEST
  maybeToEnum 2 = Prelude.Just JOB_CANCELLATION_REASON_DEADLINE
  maybeToEnum k
    = Prelude.Just
        (JobCancellationReason'Unrecognized
           (JobCancellationReason'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum JOB_CANCELLATION_REASON_UNSPECIFIED
    = "JOB_CANCELLATION_REASON_UNSPECIFIED"
  showEnum JOB_CANCELLATION_REASON_USER_REQUEST
    = "JOB_CANCELLATION_REASON_USER_REQUEST"
  showEnum JOB_CANCELLATION_REASON_DEADLINE
    = "JOB_CANCELLATION_REASON_DEADLINE"
  showEnum
    (JobCancellationReason'Unrecognized (JobCancellationReason'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "JOB_CANCELLATION_REASON_UNSPECIFIED"
    = Prelude.Just JOB_CANCELLATION_REASON_UNSPECIFIED
    | (Prelude.==) k "JOB_CANCELLATION_REASON_USER_REQUEST"
    = Prelude.Just JOB_CANCELLATION_REASON_USER_REQUEST
    | (Prelude.==) k "JOB_CANCELLATION_REASON_DEADLINE"
    = Prelude.Just JOB_CANCELLATION_REASON_DEADLINE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded JobCancellationReason where
  minBound = JOB_CANCELLATION_REASON_UNSPECIFIED
  maxBound = JOB_CANCELLATION_REASON_DEADLINE
instance Prelude.Enum JobCancellationReason where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum JobCancellationReason: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum JOB_CANCELLATION_REASON_UNSPECIFIED = 0
  fromEnum JOB_CANCELLATION_REASON_USER_REQUEST = 1
  fromEnum JOB_CANCELLATION_REASON_DEADLINE = 2
  fromEnum
    (JobCancellationReason'Unrecognized (JobCancellationReason'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ JOB_CANCELLATION_REASON_DEADLINE
    = Prelude.error
        "JobCancellationReason.succ: bad argument JOB_CANCELLATION_REASON_DEADLINE. This value would be out of bounds."
  succ JOB_CANCELLATION_REASON_UNSPECIFIED
    = JOB_CANCELLATION_REASON_USER_REQUEST
  succ JOB_CANCELLATION_REASON_USER_REQUEST
    = JOB_CANCELLATION_REASON_DEADLINE
  succ (JobCancellationReason'Unrecognized _)
    = Prelude.error
        "JobCancellationReason.succ: bad argument: unrecognized value"
  pred JOB_CANCELLATION_REASON_UNSPECIFIED
    = Prelude.error
        "JobCancellationReason.pred: bad argument JOB_CANCELLATION_REASON_UNSPECIFIED. This value would be out of bounds."
  pred JOB_CANCELLATION_REASON_USER_REQUEST
    = JOB_CANCELLATION_REASON_UNSPECIFIED
  pred JOB_CANCELLATION_REASON_DEADLINE
    = JOB_CANCELLATION_REASON_USER_REQUEST
  pred (JobCancellationReason'Unrecognized _)
    = Prelude.error
        "JobCancellationReason.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault JobCancellationReason where
  fieldDefault = JOB_CANCELLATION_REASON_UNSPECIFIED
instance Control.DeepSeq.NFData JobCancellationReason where
  rnf x__ = Prelude.seq x__ ()
newtype JobState'UnrecognizedValue
  = JobState'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data JobState
  = JOB_STATE_UNSPECIFIED |
    JOB_STATE_RUNNING |
    JOB_STATE_SUCCEEDED |
    JOB_STATE_FAILED |
    JobState'Unrecognized !JobState'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum JobState where
  maybeToEnum 0 = Prelude.Just JOB_STATE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just JOB_STATE_RUNNING
  maybeToEnum 2 = Prelude.Just JOB_STATE_SUCCEEDED
  maybeToEnum 3 = Prelude.Just JOB_STATE_FAILED
  maybeToEnum k
    = Prelude.Just
        (JobState'Unrecognized
           (JobState'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum JOB_STATE_UNSPECIFIED = "JOB_STATE_UNSPECIFIED"
  showEnum JOB_STATE_RUNNING = "JOB_STATE_RUNNING"
  showEnum JOB_STATE_SUCCEEDED = "JOB_STATE_SUCCEEDED"
  showEnum JOB_STATE_FAILED = "JOB_STATE_FAILED"
  showEnum (JobState'Unrecognized (JobState'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "JOB_STATE_UNSPECIFIED"
    = Prelude.Just JOB_STATE_UNSPECIFIED
    | (Prelude.==) k "JOB_STATE_RUNNING"
    = Prelude.Just JOB_STATE_RUNNING
    | (Prelude.==) k "JOB_STATE_SUCCEEDED"
    = Prelude.Just JOB_STATE_SUCCEEDED
    | (Prelude.==) k "JOB_STATE_FAILED" = Prelude.Just JOB_STATE_FAILED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded JobState where
  minBound = JOB_STATE_UNSPECIFIED
  maxBound = JOB_STATE_FAILED
instance Prelude.Enum JobState where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum JobState: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum JOB_STATE_UNSPECIFIED = 0
  fromEnum JOB_STATE_RUNNING = 1
  fromEnum JOB_STATE_SUCCEEDED = 2
  fromEnum JOB_STATE_FAILED = 3
  fromEnum (JobState'Unrecognized (JobState'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ JOB_STATE_FAILED
    = Prelude.error
        "JobState.succ: bad argument JOB_STATE_FAILED. This value would be out of bounds."
  succ JOB_STATE_UNSPECIFIED = JOB_STATE_RUNNING
  succ JOB_STATE_RUNNING = JOB_STATE_SUCCEEDED
  succ JOB_STATE_SUCCEEDED = JOB_STATE_FAILED
  succ (JobState'Unrecognized _)
    = Prelude.error "JobState.succ: bad argument: unrecognized value"
  pred JOB_STATE_UNSPECIFIED
    = Prelude.error
        "JobState.pred: bad argument JOB_STATE_UNSPECIFIED. This value would be out of bounds."
  pred JOB_STATE_RUNNING = JOB_STATE_UNSPECIFIED
  pred JOB_STATE_SUCCEEDED = JOB_STATE_RUNNING
  pred JOB_STATE_FAILED = JOB_STATE_SUCCEEDED
  pred (JobState'Unrecognized _)
    = Prelude.error "JobState.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault JobState where
  fieldDefault = JOB_STATE_UNSPECIFIED
instance Control.DeepSeq.NFData JobState where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.jobId' @:: Lens' JobUpdate Proto.Oll.Common.PluginJobId@
         * 'Proto.Oll.Plugin_Fields.maybe'jobId' @:: Lens' JobUpdate (Prelude.Maybe Proto.Oll.Common.PluginJobId)@
         * 'Proto.Oll.Plugin_Fields.state' @:: Lens' JobUpdate JobState@
         * 'Proto.Oll.Plugin_Fields.progress' @:: Lens' JobUpdate Prelude.Double@
         * 'Proto.Oll.Plugin_Fields.maybe'progress' @:: Lens' JobUpdate (Prelude.Maybe Prelude.Double)@
         * 'Proto.Oll.Plugin_Fields.statusMessage' @:: Lens' JobUpdate Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.maybe'statusMessage' @:: Lens' JobUpdate (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Oll.Plugin_Fields.result' @:: Lens' JobUpdate Proto.Oll.Config.ConfigValue@
         * 'Proto.Oll.Plugin_Fields.maybe'result' @:: Lens' JobUpdate (Prelude.Maybe Proto.Oll.Config.ConfigValue)@
         * 'Proto.Oll.Plugin_Fields.error' @:: Lens' JobUpdate Proto.Oll.Common.ProtocolError@
         * 'Proto.Oll.Plugin_Fields.maybe'error' @:: Lens' JobUpdate (Prelude.Maybe Proto.Oll.Common.ProtocolError)@
         * 'Proto.Oll.Plugin_Fields.artifacts' @:: Lens' JobUpdate [ArtifactDescriptor]@
         * 'Proto.Oll.Plugin_Fields.vec'artifacts' @:: Lens' JobUpdate (Data.Vector.Vector ArtifactDescriptor)@ -}
data JobUpdate
  = JobUpdate'_constructor {_JobUpdate'jobId :: !(Prelude.Maybe Proto.Oll.Common.PluginJobId),
                            _JobUpdate'state :: !JobState,
                            _JobUpdate'progress :: !(Prelude.Maybe Prelude.Double),
                            _JobUpdate'statusMessage :: !(Prelude.Maybe Data.Text.Text),
                            _JobUpdate'result :: !(Prelude.Maybe Proto.Oll.Config.ConfigValue),
                            _JobUpdate'error :: !(Prelude.Maybe Proto.Oll.Common.ProtocolError),
                            _JobUpdate'artifacts :: !(Data.Vector.Vector ArtifactDescriptor),
                            _JobUpdate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show JobUpdate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField JobUpdate "jobId" Proto.Oll.Common.PluginJobId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'jobId (\ x__ y__ -> x__ {_JobUpdate'jobId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField JobUpdate "maybe'jobId" (Prelude.Maybe Proto.Oll.Common.PluginJobId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'jobId (\ x__ y__ -> x__ {_JobUpdate'jobId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JobUpdate "state" JobState where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'state (\ x__ y__ -> x__ {_JobUpdate'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JobUpdate "progress" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'progress (\ x__ y__ -> x__ {_JobUpdate'progress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField JobUpdate "maybe'progress" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'progress (\ x__ y__ -> x__ {_JobUpdate'progress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JobUpdate "statusMessage" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'statusMessage
           (\ x__ y__ -> x__ {_JobUpdate'statusMessage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField JobUpdate "maybe'statusMessage" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'statusMessage
           (\ x__ y__ -> x__ {_JobUpdate'statusMessage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JobUpdate "result" Proto.Oll.Config.ConfigValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'result (\ x__ y__ -> x__ {_JobUpdate'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField JobUpdate "maybe'result" (Prelude.Maybe Proto.Oll.Config.ConfigValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'result (\ x__ y__ -> x__ {_JobUpdate'result = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JobUpdate "error" Proto.Oll.Common.ProtocolError where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'error (\ x__ y__ -> x__ {_JobUpdate'error = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField JobUpdate "maybe'error" (Prelude.Maybe Proto.Oll.Common.ProtocolError) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'error (\ x__ y__ -> x__ {_JobUpdate'error = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField JobUpdate "artifacts" [ArtifactDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'artifacts
           (\ x__ y__ -> x__ {_JobUpdate'artifacts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField JobUpdate "vec'artifacts" (Data.Vector.Vector ArtifactDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _JobUpdate'artifacts
           (\ x__ y__ -> x__ {_JobUpdate'artifacts = y__}))
        Prelude.id
instance Data.ProtoLens.Message JobUpdate where
  messageName _ = Data.Text.pack "oll.protocol.JobUpdate"
  packedMessageDescriptor _
    = "\n\
      \\tJobUpdate\DC20\n\
      \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId\DC2,\n\
      \\ENQstate\CAN\STX \SOH(\SO2\SYN.oll.protocol.JobStateR\ENQstate\DC2\US\n\
      \\bprogress\CAN\ETX \SOH(\SOHH\NULR\bprogress\136\SOH\SOH\DC2*\n\
      \\SOstatus_message\CAN\EOT \SOH(\tH\SOHR\rstatusMessage\136\SOH\SOH\DC26\n\
      \\ACKresult\CAN\ENQ \SOH(\v2\EM.oll.protocol.ConfigValueH\STXR\ACKresult\136\SOH\SOH\DC26\n\
      \\ENQerror\CAN\ACK \SOH(\v2\ESC.oll.protocol.ProtocolErrorH\ETXR\ENQerror\136\SOH\SOH\DC2>\n\
      \\tartifacts\CAN\a \ETX(\v2 .oll.protocol.ArtifactDescriptorR\tartifactsB\v\n\
      \\t_progressB\DC1\n\
      \\SI_status_messageB\t\n\
      \\a_resultB\b\n\
      \\ACK_error"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        jobId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "job_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginJobId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jobId")) ::
              Data.ProtoLens.FieldDescriptor JobUpdate
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor JobState)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"state")) ::
              Data.ProtoLens.FieldDescriptor JobUpdate
        progress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "progress"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'progress")) ::
              Data.ProtoLens.FieldDescriptor JobUpdate
        statusMessage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status_message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'statusMessage")) ::
              Data.ProtoLens.FieldDescriptor JobUpdate
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Config.ConfigValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor JobUpdate
        error__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.ProtocolError)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'error")) ::
              Data.ProtoLens.FieldDescriptor JobUpdate
        artifacts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifacts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ArtifactDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"artifacts")) ::
              Data.ProtoLens.FieldDescriptor JobUpdate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, jobId__field_descriptor),
           (Data.ProtoLens.Tag 2, state__field_descriptor),
           (Data.ProtoLens.Tag 3, progress__field_descriptor),
           (Data.ProtoLens.Tag 4, statusMessage__field_descriptor),
           (Data.ProtoLens.Tag 5, result__field_descriptor),
           (Data.ProtoLens.Tag 6, error__field_descriptor),
           (Data.ProtoLens.Tag 7, artifacts__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _JobUpdate'_unknownFields
        (\ x__ y__ -> x__ {_JobUpdate'_unknownFields = y__})
  defMessage
    = JobUpdate'_constructor
        {_JobUpdate'jobId = Prelude.Nothing,
         _JobUpdate'state = Data.ProtoLens.fieldDefault,
         _JobUpdate'progress = Prelude.Nothing,
         _JobUpdate'statusMessage = Prelude.Nothing,
         _JobUpdate'result = Prelude.Nothing,
         _JobUpdate'error = Prelude.Nothing,
         _JobUpdate'artifacts = Data.Vector.Generic.empty,
         _JobUpdate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          JobUpdate
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ArtifactDescriptor
             -> Data.ProtoLens.Encoding.Bytes.Parser JobUpdate
        loop x mutable'artifacts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'artifacts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'artifacts)
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
                              (Data.ProtoLens.Field.field @"vec'artifacts") frozen'artifacts x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "job_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"jobId") y x)
                                  mutable'artifacts
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "state"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                                  mutable'artifacts
                        25
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "progress"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"progress") y x)
                                  mutable'artifacts
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "status_message"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"statusMessage") y x)
                                  mutable'artifacts
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "result"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
                                  mutable'artifacts
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "error"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"error") y x)
                                  mutable'artifacts
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "artifacts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'artifacts y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'artifacts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'artifacts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'artifacts)
          "JobUpdate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'jobId") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"state") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'progress") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 25)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putFixed64
                                Data.ProtoLens.Encoding.Bytes.doubleToWord _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'statusMessage") _x
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
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'result") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'error") _x
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
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
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
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'artifacts") _x))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData JobUpdate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_JobUpdate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_JobUpdate'jobId x__)
                (Control.DeepSeq.deepseq
                   (_JobUpdate'state x__)
                   (Control.DeepSeq.deepseq
                      (_JobUpdate'progress x__)
                      (Control.DeepSeq.deepseq
                         (_JobUpdate'statusMessage x__)
                         (Control.DeepSeq.deepseq
                            (_JobUpdate'result x__)
                            (Control.DeepSeq.deepseq
                               (_JobUpdate'error x__)
                               (Control.DeepSeq.deepseq (_JobUpdate'artifacts x__) ())))))))
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.timestamp' @:: Lens' LogRecord Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Oll.Plugin_Fields.maybe'timestamp' @:: Lens' LogRecord (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Oll.Plugin_Fields.level' @:: Lens' LogRecord Proto.Oll.Common.LogLevel@
         * 'Proto.Oll.Plugin_Fields.target' @:: Lens' LogRecord Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.message' @:: Lens' LogRecord Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.fields' @:: Lens' LogRecord (Data.Map.Map Data.Text.Text Proto.Oll.Config.ConfigValue)@ -}
data LogRecord
  = LogRecord'_constructor {_LogRecord'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                            _LogRecord'level :: !Proto.Oll.Common.LogLevel,
                            _LogRecord'target :: !Data.Text.Text,
                            _LogRecord'message :: !Data.Text.Text,
                            _LogRecord'fields :: !(Data.Map.Map Data.Text.Text Proto.Oll.Config.ConfigValue),
                            _LogRecord'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LogRecord where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LogRecord "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogRecord'timestamp
           (\ x__ y__ -> x__ {_LogRecord'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LogRecord "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogRecord'timestamp
           (\ x__ y__ -> x__ {_LogRecord'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LogRecord "level" Proto.Oll.Common.LogLevel where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogRecord'level (\ x__ y__ -> x__ {_LogRecord'level = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LogRecord "target" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogRecord'target (\ x__ y__ -> x__ {_LogRecord'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LogRecord "message" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogRecord'message (\ x__ y__ -> x__ {_LogRecord'message = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LogRecord "fields" (Data.Map.Map Data.Text.Text Proto.Oll.Config.ConfigValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogRecord'fields (\ x__ y__ -> x__ {_LogRecord'fields = y__}))
        Prelude.id
instance Data.ProtoLens.Message LogRecord where
  messageName _ = Data.Text.pack "oll.protocol.LogRecord"
  packedMessageDescriptor _
    = "\n\
      \\tLogRecord\DC28\n\
      \\ttimestamp\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestamp\DC2,\n\
      \\ENQlevel\CAN\STX \SOH(\SO2\SYN.oll.protocol.LogLevelR\ENQlevel\DC2\SYN\n\
      \\ACKtarget\CAN\ETX \SOH(\tR\ACKtarget\DC2\CAN\n\
      \\amessage\CAN\EOT \SOH(\tR\amessage\DC2;\n\
      \\ACKfields\CAN\ENQ \ETX(\v2#.oll.protocol.LogRecord.FieldsEntryR\ACKfields\SUBT\n\
      \\vFieldsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2/\n\
      \\ENQvalue\CAN\STX \SOH(\v2\EM.oll.protocol.ConfigValueR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor LogRecord
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.LogLevel)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"level")) ::
              Data.ProtoLens.FieldDescriptor LogRecord
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"target")) ::
              Data.ProtoLens.FieldDescriptor LogRecord
        message__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"message")) ::
              Data.ProtoLens.FieldDescriptor LogRecord
        fields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fields"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LogRecord'FieldsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"fields")) ::
              Data.ProtoLens.FieldDescriptor LogRecord
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 2, level__field_descriptor),
           (Data.ProtoLens.Tag 3, target__field_descriptor),
           (Data.ProtoLens.Tag 4, message__field_descriptor),
           (Data.ProtoLens.Tag 5, fields__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LogRecord'_unknownFields
        (\ x__ y__ -> x__ {_LogRecord'_unknownFields = y__})
  defMessage
    = LogRecord'_constructor
        {_LogRecord'timestamp = Prelude.Nothing,
         _LogRecord'level = Data.ProtoLens.fieldDefault,
         _LogRecord'target = Data.ProtoLens.fieldDefault,
         _LogRecord'message = Data.ProtoLens.fieldDefault,
         _LogRecord'fields = Data.Map.empty, _LogRecord'_unknownFields = []}
  parseMessage
    = let
        loop :: LogRecord -> Data.ProtoLens.Encoding.Bytes.Parser LogRecord
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
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "level"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "message"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"message") y x)
                        42
                          -> do !(entry :: LogRecord'FieldsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                           Data.ProtoLens.Encoding.Bytes.isolate
                                                                             (Prelude.fromIntegral
                                                                                len)
                                                                             Data.ProtoLens.parseMessage)
                                                                       "fields"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"fields")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LogRecord"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'timestamp") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"level") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"target") _x
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
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"message") _x
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
                                                   LogRecord'FieldsEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"fields") _x))))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData LogRecord where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LogRecord'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LogRecord'timestamp x__)
                (Control.DeepSeq.deepseq
                   (_LogRecord'level x__)
                   (Control.DeepSeq.deepseq
                      (_LogRecord'target x__)
                      (Control.DeepSeq.deepseq
                         (_LogRecord'message x__)
                         (Control.DeepSeq.deepseq (_LogRecord'fields x__) ())))))
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.key' @:: Lens' LogRecord'FieldsEntry Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.value' @:: Lens' LogRecord'FieldsEntry Proto.Oll.Config.ConfigValue@
         * 'Proto.Oll.Plugin_Fields.maybe'value' @:: Lens' LogRecord'FieldsEntry (Prelude.Maybe Proto.Oll.Config.ConfigValue)@ -}
data LogRecord'FieldsEntry
  = LogRecord'FieldsEntry'_constructor {_LogRecord'FieldsEntry'key :: !Data.Text.Text,
                                        _LogRecord'FieldsEntry'value :: !(Prelude.Maybe Proto.Oll.Config.ConfigValue),
                                        _LogRecord'FieldsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LogRecord'FieldsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LogRecord'FieldsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogRecord'FieldsEntry'key
           (\ x__ y__ -> x__ {_LogRecord'FieldsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LogRecord'FieldsEntry "value" Proto.Oll.Config.ConfigValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogRecord'FieldsEntry'value
           (\ x__ y__ -> x__ {_LogRecord'FieldsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LogRecord'FieldsEntry "maybe'value" (Prelude.Maybe Proto.Oll.Config.ConfigValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogRecord'FieldsEntry'value
           (\ x__ y__ -> x__ {_LogRecord'FieldsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message LogRecord'FieldsEntry where
  messageName _ = Data.Text.pack "oll.protocol.LogRecord.FieldsEntry"
  packedMessageDescriptor _
    = "\n\
      \\vFieldsEntry\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor LogRecord'FieldsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Config.ConfigValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor LogRecord'FieldsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LogRecord'FieldsEntry'_unknownFields
        (\ x__ y__ -> x__ {_LogRecord'FieldsEntry'_unknownFields = y__})
  defMessage
    = LogRecord'FieldsEntry'_constructor
        {_LogRecord'FieldsEntry'key = Data.ProtoLens.fieldDefault,
         _LogRecord'FieldsEntry'value = Prelude.Nothing,
         _LogRecord'FieldsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LogRecord'FieldsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser LogRecord'FieldsEntry
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
          (do loop Data.ProtoLens.defMessage) "FieldsEntry"
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
instance Control.DeepSeq.NFData LogRecord'FieldsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LogRecord'FieldsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LogRecord'FieldsEntry'key x__)
                (Control.DeepSeq.deepseq (_LogRecord'FieldsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.messageId' @:: Lens' PluginEnvelope Data.Word.Word64@
         * 'Proto.Oll.Plugin_Fields.replyTo' @:: Lens' PluginEnvelope Data.Word.Word64@
         * 'Proto.Oll.Plugin_Fields.maybe'replyTo' @:: Lens' PluginEnvelope (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Oll.Plugin_Fields.sessionId' @:: Lens' PluginEnvelope Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.pluginInstanceId' @:: Lens' PluginEnvelope Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.trace' @:: Lens' PluginEnvelope Proto.Oll.Common.TraceContext@
         * 'Proto.Oll.Plugin_Fields.maybe'trace' @:: Lens' PluginEnvelope (Prelude.Maybe Proto.Oll.Common.TraceContext)@
         * 'Proto.Oll.Plugin_Fields.maybe'payload' @:: Lens' PluginEnvelope (Prelude.Maybe PluginEnvelope'Payload)@
         * 'Proto.Oll.Plugin_Fields.maybe'hostHello' @:: Lens' PluginEnvelope (Prelude.Maybe HostHello)@
         * 'Proto.Oll.Plugin_Fields.hostHello' @:: Lens' PluginEnvelope HostHello@
         * 'Proto.Oll.Plugin_Fields.maybe'pluginHello' @:: Lens' PluginEnvelope (Prelude.Maybe PluginHello)@
         * 'Proto.Oll.Plugin_Fields.pluginHello' @:: Lens' PluginEnvelope PluginHello@
         * 'Proto.Oll.Plugin_Fields.maybe'ready' @:: Lens' PluginEnvelope (Prelude.Maybe SessionReady)@
         * 'Proto.Oll.Plugin_Fields.ready' @:: Lens' PluginEnvelope SessionReady@
         * 'Proto.Oll.Plugin_Fields.maybe'startJob' @:: Lens' PluginEnvelope (Prelude.Maybe StartJobRequest)@
         * 'Proto.Oll.Plugin_Fields.startJob' @:: Lens' PluginEnvelope StartJobRequest@
         * 'Proto.Oll.Plugin_Fields.maybe'jobAccepted' @:: Lens' PluginEnvelope (Prelude.Maybe JobAccepted)@
         * 'Proto.Oll.Plugin_Fields.jobAccepted' @:: Lens' PluginEnvelope JobAccepted@
         * 'Proto.Oll.Plugin_Fields.maybe'jobUpdate' @:: Lens' PluginEnvelope (Prelude.Maybe JobUpdate)@
         * 'Proto.Oll.Plugin_Fields.jobUpdate' @:: Lens' PluginEnvelope JobUpdate@
         * 'Proto.Oll.Plugin_Fields.maybe'hostCall' @:: Lens' PluginEnvelope (Prelude.Maybe HostCallRequest)@
         * 'Proto.Oll.Plugin_Fields.hostCall' @:: Lens' PluginEnvelope HostCallRequest@
         * 'Proto.Oll.Plugin_Fields.maybe'hostResult' @:: Lens' PluginEnvelope (Prelude.Maybe HostCallResponse)@
         * 'Proto.Oll.Plugin_Fields.hostResult' @:: Lens' PluginEnvelope HostCallResponse@
         * 'Proto.Oll.Plugin_Fields.maybe'log' @:: Lens' PluginEnvelope (Prelude.Maybe LogRecord)@
         * 'Proto.Oll.Plugin_Fields.log' @:: Lens' PluginEnvelope LogRecord@
         * 'Proto.Oll.Plugin_Fields.maybe'heartbeat' @:: Lens' PluginEnvelope (Prelude.Maybe Heartbeat)@
         * 'Proto.Oll.Plugin_Fields.heartbeat' @:: Lens' PluginEnvelope Heartbeat@
         * 'Proto.Oll.Plugin_Fields.maybe'shutdown' @:: Lens' PluginEnvelope (Prelude.Maybe ShutdownRequest)@
         * 'Proto.Oll.Plugin_Fields.shutdown' @:: Lens' PluginEnvelope ShutdownRequest@
         * 'Proto.Oll.Plugin_Fields.maybe'shutdownAcknowledged' @:: Lens' PluginEnvelope (Prelude.Maybe ShutdownAcknowledged)@
         * 'Proto.Oll.Plugin_Fields.shutdownAcknowledged' @:: Lens' PluginEnvelope ShutdownAcknowledged@
         * 'Proto.Oll.Plugin_Fields.maybe'protocolError' @:: Lens' PluginEnvelope (Prelude.Maybe Proto.Oll.Common.ProtocolError)@
         * 'Proto.Oll.Plugin_Fields.protocolError' @:: Lens' PluginEnvelope Proto.Oll.Common.ProtocolError@
         * 'Proto.Oll.Plugin_Fields.maybe'artifactStart' @:: Lens' PluginEnvelope (Prelude.Maybe ArtifactTransferStart)@
         * 'Proto.Oll.Plugin_Fields.artifactStart' @:: Lens' PluginEnvelope ArtifactTransferStart@
         * 'Proto.Oll.Plugin_Fields.maybe'artifactAccepted' @:: Lens' PluginEnvelope (Prelude.Maybe ArtifactTransferAccepted)@
         * 'Proto.Oll.Plugin_Fields.artifactAccepted' @:: Lens' PluginEnvelope ArtifactTransferAccepted@
         * 'Proto.Oll.Plugin_Fields.maybe'artifactChunk' @:: Lens' PluginEnvelope (Prelude.Maybe ArtifactTransferChunk)@
         * 'Proto.Oll.Plugin_Fields.artifactChunk' @:: Lens' PluginEnvelope ArtifactTransferChunk@
         * 'Proto.Oll.Plugin_Fields.maybe'artifactComplete' @:: Lens' PluginEnvelope (Prelude.Maybe ArtifactTransferComplete)@
         * 'Proto.Oll.Plugin_Fields.artifactComplete' @:: Lens' PluginEnvelope ArtifactTransferComplete@
         * 'Proto.Oll.Plugin_Fields.maybe'artifactStored' @:: Lens' PluginEnvelope (Prelude.Maybe ArtifactStored)@
         * 'Proto.Oll.Plugin_Fields.artifactStored' @:: Lens' PluginEnvelope ArtifactStored@
         * 'Proto.Oll.Plugin_Fields.maybe'cancelJob' @:: Lens' PluginEnvelope (Prelude.Maybe CancelJobRequest)@
         * 'Proto.Oll.Plugin_Fields.cancelJob' @:: Lens' PluginEnvelope CancelJobRequest@
         * 'Proto.Oll.Plugin_Fields.maybe'cancelJobAcknowledged' @:: Lens' PluginEnvelope (Prelude.Maybe CancelJobAcknowledged)@
         * 'Proto.Oll.Plugin_Fields.cancelJobAcknowledged' @:: Lens' PluginEnvelope CancelJobAcknowledged@ -}
data PluginEnvelope
  = PluginEnvelope'_constructor {_PluginEnvelope'messageId :: !Data.Word.Word64,
                                 _PluginEnvelope'replyTo :: !(Prelude.Maybe Data.Word.Word64),
                                 _PluginEnvelope'sessionId :: !Data.Text.Text,
                                 _PluginEnvelope'pluginInstanceId :: !Data.Text.Text,
                                 _PluginEnvelope'trace :: !(Prelude.Maybe Proto.Oll.Common.TraceContext),
                                 _PluginEnvelope'payload :: !(Prelude.Maybe PluginEnvelope'Payload),
                                 _PluginEnvelope'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PluginEnvelope where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PluginEnvelope'Payload
  = PluginEnvelope'HostHello !HostHello |
    PluginEnvelope'PluginHello !PluginHello |
    PluginEnvelope'Ready !SessionReady |
    PluginEnvelope'StartJob !StartJobRequest |
    PluginEnvelope'JobAccepted !JobAccepted |
    PluginEnvelope'JobUpdate !JobUpdate |
    PluginEnvelope'HostCall !HostCallRequest |
    PluginEnvelope'HostResult !HostCallResponse |
    PluginEnvelope'Log !LogRecord |
    PluginEnvelope'Heartbeat !Heartbeat |
    PluginEnvelope'Shutdown !ShutdownRequest |
    PluginEnvelope'ShutdownAcknowledged !ShutdownAcknowledged |
    PluginEnvelope'ProtocolError !Proto.Oll.Common.ProtocolError |
    PluginEnvelope'ArtifactStart !ArtifactTransferStart |
    PluginEnvelope'ArtifactAccepted !ArtifactTransferAccepted |
    PluginEnvelope'ArtifactChunk !ArtifactTransferChunk |
    PluginEnvelope'ArtifactComplete !ArtifactTransferComplete |
    PluginEnvelope'ArtifactStored !ArtifactStored |
    PluginEnvelope'CancelJob !CancelJobRequest |
    PluginEnvelope'CancelJobAcknowledged !CancelJobAcknowledged
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PluginEnvelope "messageId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'messageId
           (\ x__ y__ -> x__ {_PluginEnvelope'messageId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginEnvelope "replyTo" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'replyTo
           (\ x__ y__ -> x__ {_PluginEnvelope'replyTo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'replyTo" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'replyTo
           (\ x__ y__ -> x__ {_PluginEnvelope'replyTo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginEnvelope "sessionId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'sessionId
           (\ x__ y__ -> x__ {_PluginEnvelope'sessionId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginEnvelope "pluginInstanceId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'pluginInstanceId
           (\ x__ y__ -> x__ {_PluginEnvelope'pluginInstanceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginEnvelope "trace" Proto.Oll.Common.TraceContext where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'trace
           (\ x__ y__ -> x__ {_PluginEnvelope'trace = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'trace" (Prelude.Maybe Proto.Oll.Common.TraceContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'trace
           (\ x__ y__ -> x__ {_PluginEnvelope'trace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'payload" (Prelude.Maybe PluginEnvelope'Payload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'hostHello" (Prelude.Maybe HostHello) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'HostHello x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'HostHello y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "hostHello" HostHello where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'HostHello x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'HostHello y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'pluginHello" (Prelude.Maybe PluginHello) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'PluginHello x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'PluginHello y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "pluginHello" PluginHello where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'PluginHello x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'PluginHello y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'ready" (Prelude.Maybe SessionReady) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'Ready x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'Ready y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "ready" SessionReady where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'Ready x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'Ready y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'startJob" (Prelude.Maybe StartJobRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'StartJob x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'StartJob y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "startJob" StartJobRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'StartJob x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'StartJob y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'jobAccepted" (Prelude.Maybe JobAccepted) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'JobAccepted x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'JobAccepted y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "jobAccepted" JobAccepted where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'JobAccepted x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'JobAccepted y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'jobUpdate" (Prelude.Maybe JobUpdate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'JobUpdate x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'JobUpdate y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "jobUpdate" JobUpdate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'JobUpdate x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'JobUpdate y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'hostCall" (Prelude.Maybe HostCallRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'HostCall x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'HostCall y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "hostCall" HostCallRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'HostCall x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'HostCall y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'hostResult" (Prelude.Maybe HostCallResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'HostResult x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'HostResult y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "hostResult" HostCallResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'HostResult x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'HostResult y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'log" (Prelude.Maybe LogRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'Log x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'Log y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "log" LogRecord where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'Log x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'Log y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'heartbeat" (Prelude.Maybe Heartbeat) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'Heartbeat x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'Heartbeat y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "heartbeat" Heartbeat where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'Heartbeat x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'Heartbeat y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'shutdown" (Prelude.Maybe ShutdownRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'Shutdown x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'Shutdown y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "shutdown" ShutdownRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'Shutdown x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'Shutdown y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'shutdownAcknowledged" (Prelude.Maybe ShutdownAcknowledged) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'ShutdownAcknowledged x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'ShutdownAcknowledged y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "shutdownAcknowledged" ShutdownAcknowledged where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'ShutdownAcknowledged x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'ShutdownAcknowledged y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'protocolError" (Prelude.Maybe Proto.Oll.Common.ProtocolError) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'ProtocolError x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'ProtocolError y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "protocolError" Proto.Oll.Common.ProtocolError where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'ProtocolError x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'ProtocolError y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'artifactStart" (Prelude.Maybe ArtifactTransferStart) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'ArtifactStart x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'ArtifactStart y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "artifactStart" ArtifactTransferStart where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'ArtifactStart x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'ArtifactStart y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'artifactAccepted" (Prelude.Maybe ArtifactTransferAccepted) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'ArtifactAccepted x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'ArtifactAccepted y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "artifactAccepted" ArtifactTransferAccepted where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'ArtifactAccepted x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'ArtifactAccepted y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'artifactChunk" (Prelude.Maybe ArtifactTransferChunk) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'ArtifactChunk x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'ArtifactChunk y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "artifactChunk" ArtifactTransferChunk where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'ArtifactChunk x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'ArtifactChunk y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'artifactComplete" (Prelude.Maybe ArtifactTransferComplete) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'ArtifactComplete x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'ArtifactComplete y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "artifactComplete" ArtifactTransferComplete where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'ArtifactComplete x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'ArtifactComplete y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'artifactStored" (Prelude.Maybe ArtifactStored) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'ArtifactStored x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'ArtifactStored y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "artifactStored" ArtifactStored where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'ArtifactStored x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'ArtifactStored y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'cancelJob" (Prelude.Maybe CancelJobRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'CancelJob x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'CancelJob y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "cancelJob" CancelJobRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'CancelJob x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'CancelJob y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PluginEnvelope "maybe'cancelJobAcknowledged" (Prelude.Maybe CancelJobAcknowledged) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PluginEnvelope'CancelJobAcknowledged x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PluginEnvelope'CancelJobAcknowledged y__))
instance Data.ProtoLens.Field.HasField PluginEnvelope "cancelJobAcknowledged" CancelJobAcknowledged where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginEnvelope'payload
           (\ x__ y__ -> x__ {_PluginEnvelope'payload = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PluginEnvelope'CancelJobAcknowledged x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PluginEnvelope'CancelJobAcknowledged y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message PluginEnvelope where
  messageName _ = Data.Text.pack "oll.protocol.PluginEnvelope"
  packedMessageDescriptor _
    = "\n\
      \\SOPluginEnvelope\DC2\GS\n\
      \\n\
      \message_id\CAN\SOH \SOH(\EOTR\tmessageId\DC2\RS\n\
      \\breply_to\CAN\STX \SOH(\EOTH\SOHR\areplyTo\136\SOH\SOH\DC2\GS\n\
      \\n\
      \session_id\CAN\ETX \SOH(\tR\tsessionId\DC2,\n\
      \\DC2plugin_instance_id\CAN\EOT \SOH(\tR\DLEpluginInstanceId\DC20\n\
      \\ENQtrace\CAN\ENQ \SOH(\v2\SUB.oll.protocol.TraceContextR\ENQtrace\DC28\n\
      \\n\
      \host_hello\CAN\n\
      \ \SOH(\v2\ETB.oll.protocol.HostHelloH\NULR\thostHello\DC2>\n\
      \\fplugin_hello\CAN\v \SOH(\v2\EM.oll.protocol.PluginHelloH\NULR\vpluginHello\DC22\n\
      \\ENQready\CAN\f \SOH(\v2\SUB.oll.protocol.SessionReadyH\NULR\ENQready\DC2<\n\
      \\tstart_job\CAN\r \SOH(\v2\GS.oll.protocol.StartJobRequestH\NULR\bstartJob\DC2>\n\
      \\fjob_accepted\CAN\SO \SOH(\v2\EM.oll.protocol.JobAcceptedH\NULR\vjobAccepted\DC28\n\
      \\n\
      \job_update\CAN\SI \SOH(\v2\ETB.oll.protocol.JobUpdateH\NULR\tjobUpdate\DC2<\n\
      \\thost_call\CAN\DLE \SOH(\v2\GS.oll.protocol.HostCallRequestH\NULR\bhostCall\DC2A\n\
      \\vhost_result\CAN\DC1 \SOH(\v2\RS.oll.protocol.HostCallResponseH\NULR\n\
      \hostResult\DC2+\n\
      \\ETXlog\CAN\DC2 \SOH(\v2\ETB.oll.protocol.LogRecordH\NULR\ETXlog\DC27\n\
      \\theartbeat\CAN\DC3 \SOH(\v2\ETB.oll.protocol.HeartbeatH\NULR\theartbeat\DC2;\n\
      \\bshutdown\CAN\DC4 \SOH(\v2\GS.oll.protocol.ShutdownRequestH\NULR\bshutdown\DC2Y\n\
      \\NAKshutdown_acknowledged\CAN\NAK \SOH(\v2\".oll.protocol.ShutdownAcknowledgedH\NULR\DC4shutdownAcknowledged\DC2D\n\
      \\SOprotocol_error\CAN\SYN \SOH(\v2\ESC.oll.protocol.ProtocolErrorH\NULR\rprotocolError\DC2L\n\
      \\SOartifact_start\CAN\ETB \SOH(\v2#.oll.protocol.ArtifactTransferStartH\NULR\rartifactStart\DC2U\n\
      \\DC1artifact_accepted\CAN\CAN \SOH(\v2&.oll.protocol.ArtifactTransferAcceptedH\NULR\DLEartifactAccepted\DC2L\n\
      \\SOartifact_chunk\CAN\EM \SOH(\v2#.oll.protocol.ArtifactTransferChunkH\NULR\rartifactChunk\DC2U\n\
      \\DC1artifact_complete\CAN\SUB \SOH(\v2&.oll.protocol.ArtifactTransferCompleteH\NULR\DLEartifactComplete\DC2G\n\
      \\SIartifact_stored\CAN\ESC \SOH(\v2\FS.oll.protocol.ArtifactStoredH\NULR\SOartifactStored\DC2?\n\
      \\n\
      \cancel_job\CAN\FS \SOH(\v2\RS.oll.protocol.CancelJobRequestH\NULR\tcancelJob\DC2]\n\
      \\ETBcancel_job_acknowledged\CAN\GS \SOH(\v2#.oll.protocol.CancelJobAcknowledgedH\NULR\NAKcancelJobAcknowledgedB\t\n\
      \\apayloadB\v\n\
      \\t_reply_to"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        messageId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"messageId")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        replyTo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reply_to"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'replyTo")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        sessionId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "session_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sessionId")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        pluginInstanceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plugin_instance_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pluginInstanceId")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        trace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.TraceContext)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trace")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        hostHello__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_hello"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HostHello)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hostHello")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        pluginHello__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plugin_hello"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PluginHello)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pluginHello")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        ready__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ready"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SessionReady)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ready")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        startJob__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_job"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StartJobRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startJob")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        jobAccepted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "job_accepted"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JobAccepted)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jobAccepted")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        jobUpdate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "job_update"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor JobUpdate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jobUpdate")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        hostCall__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_call"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HostCallRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hostCall")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        hostResult__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HostCallResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hostResult")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        log__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LogRecord)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'log")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        heartbeat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Heartbeat)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heartbeat")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        shutdown__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shutdown"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ShutdownRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'shutdown")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        shutdownAcknowledged__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shutdown_acknowledged"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ShutdownAcknowledged)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'shutdownAcknowledged")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        protocolError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol_error"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.ProtocolError)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protocolError")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        artifactStart__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifact_start"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ArtifactTransferStart)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'artifactStart")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        artifactAccepted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifact_accepted"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ArtifactTransferAccepted)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'artifactAccepted")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        artifactChunk__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifact_chunk"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ArtifactTransferChunk)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'artifactChunk")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        artifactComplete__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifact_complete"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ArtifactTransferComplete)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'artifactComplete")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        artifactStored__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "artifact_stored"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ArtifactStored)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'artifactStored")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        cancelJob__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_job"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelJobRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelJob")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
        cancelJobAcknowledged__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cancel_job_acknowledged"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CancelJobAcknowledged)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cancelJobAcknowledged")) ::
              Data.ProtoLens.FieldDescriptor PluginEnvelope
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, messageId__field_descriptor),
           (Data.ProtoLens.Tag 2, replyTo__field_descriptor),
           (Data.ProtoLens.Tag 3, sessionId__field_descriptor),
           (Data.ProtoLens.Tag 4, pluginInstanceId__field_descriptor),
           (Data.ProtoLens.Tag 5, trace__field_descriptor),
           (Data.ProtoLens.Tag 10, hostHello__field_descriptor),
           (Data.ProtoLens.Tag 11, pluginHello__field_descriptor),
           (Data.ProtoLens.Tag 12, ready__field_descriptor),
           (Data.ProtoLens.Tag 13, startJob__field_descriptor),
           (Data.ProtoLens.Tag 14, jobAccepted__field_descriptor),
           (Data.ProtoLens.Tag 15, jobUpdate__field_descriptor),
           (Data.ProtoLens.Tag 16, hostCall__field_descriptor),
           (Data.ProtoLens.Tag 17, hostResult__field_descriptor),
           (Data.ProtoLens.Tag 18, log__field_descriptor),
           (Data.ProtoLens.Tag 19, heartbeat__field_descriptor),
           (Data.ProtoLens.Tag 20, shutdown__field_descriptor),
           (Data.ProtoLens.Tag 21, shutdownAcknowledged__field_descriptor),
           (Data.ProtoLens.Tag 22, protocolError__field_descriptor),
           (Data.ProtoLens.Tag 23, artifactStart__field_descriptor),
           (Data.ProtoLens.Tag 24, artifactAccepted__field_descriptor),
           (Data.ProtoLens.Tag 25, artifactChunk__field_descriptor),
           (Data.ProtoLens.Tag 26, artifactComplete__field_descriptor),
           (Data.ProtoLens.Tag 27, artifactStored__field_descriptor),
           (Data.ProtoLens.Tag 28, cancelJob__field_descriptor),
           (Data.ProtoLens.Tag 29, cancelJobAcknowledged__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PluginEnvelope'_unknownFields
        (\ x__ y__ -> x__ {_PluginEnvelope'_unknownFields = y__})
  defMessage
    = PluginEnvelope'_constructor
        {_PluginEnvelope'messageId = Data.ProtoLens.fieldDefault,
         _PluginEnvelope'replyTo = Prelude.Nothing,
         _PluginEnvelope'sessionId = Data.ProtoLens.fieldDefault,
         _PluginEnvelope'pluginInstanceId = Data.ProtoLens.fieldDefault,
         _PluginEnvelope'trace = Prelude.Nothing,
         _PluginEnvelope'payload = Prelude.Nothing,
         _PluginEnvelope'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PluginEnvelope
          -> Data.ProtoLens.Encoding.Bytes.Parser PluginEnvelope
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "message_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"messageId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "reply_to"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"replyTo") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "session_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sessionId") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "plugin_instance_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pluginInstanceId") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "trace"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"trace") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "host_hello"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostHello") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "plugin_hello"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pluginHello") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ready"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ready") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_job"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startJob") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "job_accepted"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"jobAccepted") y x)
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "job_update"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"jobUpdate") y x)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "host_call"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostCall") y x)
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "host_result"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostResult") y x)
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "log"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"log") y x)
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "heartbeat"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heartbeat") y x)
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "shutdown"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"shutdown") y x)
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "shutdown_acknowledged"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"shutdownAcknowledged") y x)
                        178
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "protocol_error"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protocolError") y x)
                        186
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "artifact_start"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"artifactStart") y x)
                        194
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "artifact_accepted"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"artifactAccepted") y x)
                        202
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "artifact_chunk"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"artifactChunk") y x)
                        210
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "artifact_complete"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"artifactComplete") y x)
                        218
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "artifact_stored"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"artifactStored") y x)
                        226
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_job"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cancelJob") y x)
                        234
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cancel_job_acknowledged"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cancelJobAcknowledged") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PluginEnvelope"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"messageId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'replyTo") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sessionId") _x
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
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"pluginInstanceId") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'trace") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'payload") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just (PluginEnvelope'HostHello v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'PluginHello v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'Ready v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'StartJob v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'JobAccepted v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'JobUpdate v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'HostCall v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 130)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'HostResult v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 138)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'Log v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 146)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'Heartbeat v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 154)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'Shutdown v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 162)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'ShutdownAcknowledged v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 170)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'ProtocolError v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 178)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'ArtifactStart v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 186)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'ArtifactAccepted v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 194)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'ArtifactChunk v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 202)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'ArtifactComplete v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 210)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'ArtifactStored v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 218)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'CancelJob v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 226)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v)
                               (Prelude.Just (PluginEnvelope'CancelJobAcknowledged v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 234)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData PluginEnvelope where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PluginEnvelope'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PluginEnvelope'messageId x__)
                (Control.DeepSeq.deepseq
                   (_PluginEnvelope'replyTo x__)
                   (Control.DeepSeq.deepseq
                      (_PluginEnvelope'sessionId x__)
                      (Control.DeepSeq.deepseq
                         (_PluginEnvelope'pluginInstanceId x__)
                         (Control.DeepSeq.deepseq
                            (_PluginEnvelope'trace x__)
                            (Control.DeepSeq.deepseq (_PluginEnvelope'payload x__) ()))))))
instance Control.DeepSeq.NFData PluginEnvelope'Payload where
  rnf (PluginEnvelope'HostHello x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'PluginHello x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'Ready x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'StartJob x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'JobAccepted x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'JobUpdate x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'HostCall x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'HostResult x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'Log x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'Heartbeat x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'Shutdown x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'ShutdownAcknowledged x__)
    = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'ProtocolError x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'ArtifactStart x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'ArtifactAccepted x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'ArtifactChunk x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'ArtifactComplete x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'ArtifactStored x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'CancelJob x__) = Control.DeepSeq.rnf x__
  rnf (PluginEnvelope'CancelJobAcknowledged x__)
    = Control.DeepSeq.rnf x__
_PluginEnvelope'HostHello ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload HostHello
_PluginEnvelope'HostHello
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'HostHello
      (\ p__
         -> case p__ of
              (PluginEnvelope'HostHello p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'PluginHello ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload PluginHello
_PluginEnvelope'PluginHello
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'PluginHello
      (\ p__
         -> case p__ of
              (PluginEnvelope'PluginHello p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'Ready ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload SessionReady
_PluginEnvelope'Ready
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'Ready
      (\ p__
         -> case p__ of
              (PluginEnvelope'Ready p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'StartJob ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload StartJobRequest
_PluginEnvelope'StartJob
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'StartJob
      (\ p__
         -> case p__ of
              (PluginEnvelope'StartJob p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'JobAccepted ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload JobAccepted
_PluginEnvelope'JobAccepted
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'JobAccepted
      (\ p__
         -> case p__ of
              (PluginEnvelope'JobAccepted p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'JobUpdate ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload JobUpdate
_PluginEnvelope'JobUpdate
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'JobUpdate
      (\ p__
         -> case p__ of
              (PluginEnvelope'JobUpdate p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'HostCall ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload HostCallRequest
_PluginEnvelope'HostCall
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'HostCall
      (\ p__
         -> case p__ of
              (PluginEnvelope'HostCall p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'HostResult ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload HostCallResponse
_PluginEnvelope'HostResult
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'HostResult
      (\ p__
         -> case p__ of
              (PluginEnvelope'HostResult p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'Log ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload LogRecord
_PluginEnvelope'Log
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'Log
      (\ p__
         -> case p__ of
              (PluginEnvelope'Log p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'Heartbeat ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload Heartbeat
_PluginEnvelope'Heartbeat
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'Heartbeat
      (\ p__
         -> case p__ of
              (PluginEnvelope'Heartbeat p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'Shutdown ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload ShutdownRequest
_PluginEnvelope'Shutdown
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'Shutdown
      (\ p__
         -> case p__ of
              (PluginEnvelope'Shutdown p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'ShutdownAcknowledged ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload ShutdownAcknowledged
_PluginEnvelope'ShutdownAcknowledged
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'ShutdownAcknowledged
      (\ p__
         -> case p__ of
              (PluginEnvelope'ShutdownAcknowledged p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'ProtocolError ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload Proto.Oll.Common.ProtocolError
_PluginEnvelope'ProtocolError
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'ProtocolError
      (\ p__
         -> case p__ of
              (PluginEnvelope'ProtocolError p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'ArtifactStart ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload ArtifactTransferStart
_PluginEnvelope'ArtifactStart
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'ArtifactStart
      (\ p__
         -> case p__ of
              (PluginEnvelope'ArtifactStart p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'ArtifactAccepted ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload ArtifactTransferAccepted
_PluginEnvelope'ArtifactAccepted
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'ArtifactAccepted
      (\ p__
         -> case p__ of
              (PluginEnvelope'ArtifactAccepted p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'ArtifactChunk ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload ArtifactTransferChunk
_PluginEnvelope'ArtifactChunk
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'ArtifactChunk
      (\ p__
         -> case p__ of
              (PluginEnvelope'ArtifactChunk p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'ArtifactComplete ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload ArtifactTransferComplete
_PluginEnvelope'ArtifactComplete
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'ArtifactComplete
      (\ p__
         -> case p__ of
              (PluginEnvelope'ArtifactComplete p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'ArtifactStored ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload ArtifactStored
_PluginEnvelope'ArtifactStored
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'ArtifactStored
      (\ p__
         -> case p__ of
              (PluginEnvelope'ArtifactStored p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'CancelJob ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload CancelJobRequest
_PluginEnvelope'CancelJob
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'CancelJob
      (\ p__
         -> case p__ of
              (PluginEnvelope'CancelJob p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PluginEnvelope'CancelJobAcknowledged ::
  Data.ProtoLens.Prism.Prism' PluginEnvelope'Payload CancelJobAcknowledged
_PluginEnvelope'CancelJobAcknowledged
  = Data.ProtoLens.Prism.prism'
      PluginEnvelope'CancelJobAcknowledged
      (\ p__
         -> case p__ of
              (PluginEnvelope'CancelJobAcknowledged p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.pluginId' @:: Lens' PluginHello Proto.Oll.Common.PluginId@
         * 'Proto.Oll.Plugin_Fields.maybe'pluginId' @:: Lens' PluginHello (Prelude.Maybe Proto.Oll.Common.PluginId)@
         * 'Proto.Oll.Plugin_Fields.pluginName' @:: Lens' PluginHello Proto.Oll.Common.PluginName@
         * 'Proto.Oll.Plugin_Fields.maybe'pluginName' @:: Lens' PluginHello (Prelude.Maybe Proto.Oll.Common.PluginName)@
         * 'Proto.Oll.Plugin_Fields.protocolSchemaSha256' @:: Lens' PluginHello Data.ByteString.ByteString@
         * 'Proto.Oll.Plugin_Fields.actions' @:: Lens' PluginHello [ActionDescriptor]@
         * 'Proto.Oll.Plugin_Fields.vec'actions' @:: Lens' PluginHello (Data.Vector.Vector ActionDescriptor)@
         * 'Proto.Oll.Plugin_Fields.pluginVersion' @:: Lens' PluginHello Data.Text.Text@ -}
data PluginHello
  = PluginHello'_constructor {_PluginHello'pluginId :: !(Prelude.Maybe Proto.Oll.Common.PluginId),
                              _PluginHello'pluginName :: !(Prelude.Maybe Proto.Oll.Common.PluginName),
                              _PluginHello'protocolSchemaSha256 :: !Data.ByteString.ByteString,
                              _PluginHello'actions :: !(Data.Vector.Vector ActionDescriptor),
                              _PluginHello'pluginVersion :: !Data.Text.Text,
                              _PluginHello'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PluginHello where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PluginHello "pluginId" Proto.Oll.Common.PluginId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginHello'pluginId
           (\ x__ y__ -> x__ {_PluginHello'pluginId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PluginHello "maybe'pluginId" (Prelude.Maybe Proto.Oll.Common.PluginId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginHello'pluginId
           (\ x__ y__ -> x__ {_PluginHello'pluginId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginHello "pluginName" Proto.Oll.Common.PluginName where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginHello'pluginName
           (\ x__ y__ -> x__ {_PluginHello'pluginName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PluginHello "maybe'pluginName" (Prelude.Maybe Proto.Oll.Common.PluginName) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginHello'pluginName
           (\ x__ y__ -> x__ {_PluginHello'pluginName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginHello "protocolSchemaSha256" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginHello'protocolSchemaSha256
           (\ x__ y__ -> x__ {_PluginHello'protocolSchemaSha256 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginHello "actions" [ActionDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginHello'actions
           (\ x__ y__ -> x__ {_PluginHello'actions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField PluginHello "vec'actions" (Data.Vector.Vector ActionDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginHello'actions
           (\ x__ y__ -> x__ {_PluginHello'actions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PluginHello "pluginVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PluginHello'pluginVersion
           (\ x__ y__ -> x__ {_PluginHello'pluginVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Message PluginHello where
  messageName _ = Data.Text.pack "oll.protocol.PluginHello"
  packedMessageDescriptor _
    = "\n\
      \\vPluginHello\DC23\n\
      \\tplugin_id\CAN\SOH \SOH(\v2\SYN.oll.protocol.PluginIdR\bpluginId\DC29\n\
      \\vplugin_name\CAN\STX \SOH(\v2\CAN.oll.protocol.PluginNameR\n\
      \pluginName\DC24\n\
      \\SYNprotocol_schema_sha256\CAN\ETX \SOH(\fR\DC4protocolSchemaSha256\DC28\n\
      \\aactions\CAN\EOT \ETX(\v2\RS.oll.protocol.ActionDescriptorR\aactions\DC2%\n\
      \\SOplugin_version\CAN\ENQ \SOH(\tR\rpluginVersion"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pluginId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plugin_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pluginId")) ::
              Data.ProtoLens.FieldDescriptor PluginHello
        pluginName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plugin_name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginName)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pluginName")) ::
              Data.ProtoLens.FieldDescriptor PluginHello
        protocolSchemaSha256__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol_schema_sha256"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocolSchemaSha256")) ::
              Data.ProtoLens.FieldDescriptor PluginHello
        actions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "actions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ActionDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"actions")) ::
              Data.ProtoLens.FieldDescriptor PluginHello
        pluginVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plugin_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"pluginVersion")) ::
              Data.ProtoLens.FieldDescriptor PluginHello
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pluginId__field_descriptor),
           (Data.ProtoLens.Tag 2, pluginName__field_descriptor),
           (Data.ProtoLens.Tag 3, protocolSchemaSha256__field_descriptor),
           (Data.ProtoLens.Tag 4, actions__field_descriptor),
           (Data.ProtoLens.Tag 5, pluginVersion__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PluginHello'_unknownFields
        (\ x__ y__ -> x__ {_PluginHello'_unknownFields = y__})
  defMessage
    = PluginHello'_constructor
        {_PluginHello'pluginId = Prelude.Nothing,
         _PluginHello'pluginName = Prelude.Nothing,
         _PluginHello'protocolSchemaSha256 = Data.ProtoLens.fieldDefault,
         _PluginHello'actions = Data.Vector.Generic.empty,
         _PluginHello'pluginVersion = Data.ProtoLens.fieldDefault,
         _PluginHello'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PluginHello
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ActionDescriptor
             -> Data.ProtoLens.Encoding.Bytes.Parser PluginHello
        loop x mutable'actions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'actions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'actions)
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
                              (Data.ProtoLens.Field.field @"vec'actions") frozen'actions x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "plugin_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pluginId") y x)
                                  mutable'actions
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "plugin_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pluginName") y x)
                                  mutable'actions
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "protocol_schema_sha256"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protocolSchemaSha256") y x)
                                  mutable'actions
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "actions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'actions y)
                                loop x v
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getText
                                             (Prelude.fromIntegral len))
                                       "plugin_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pluginVersion") y x)
                                  mutable'actions
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'actions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'actions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'actions)
          "PluginHello"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pluginId") _x
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
                       (Data.ProtoLens.Field.field @"maybe'pluginName") _x
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
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"protocolSchemaSha256") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               _v))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'actions") _x))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"pluginVersion") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData PluginHello where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PluginHello'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PluginHello'pluginId x__)
                (Control.DeepSeq.deepseq
                   (_PluginHello'pluginName x__)
                   (Control.DeepSeq.deepseq
                      (_PluginHello'protocolSchemaSha256 x__)
                      (Control.DeepSeq.deepseq
                         (_PluginHello'actions x__)
                         (Control.DeepSeq.deepseq (_PluginHello'pluginVersion x__) ())))))
{- | Fields :
      -}
data SessionReady
  = SessionReady'_constructor {_SessionReady'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SessionReady where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message SessionReady where
  messageName _ = Data.Text.pack "oll.protocol.SessionReady"
  packedMessageDescriptor _
    = "\n\
      \\fSessionReady"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SessionReady'_unknownFields
        (\ x__ y__ -> x__ {_SessionReady'_unknownFields = y__})
  defMessage
    = SessionReady'_constructor {_SessionReady'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SessionReady -> Data.ProtoLens.Encoding.Bytes.Parser SessionReady
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SessionReady"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData SessionReady where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_SessionReady'_unknownFields x__) ()
{- | Fields :
      -}
data ShutdownAcknowledged
  = ShutdownAcknowledged'_constructor {_ShutdownAcknowledged'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ShutdownAcknowledged where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ShutdownAcknowledged where
  messageName _ = Data.Text.pack "oll.protocol.ShutdownAcknowledged"
  packedMessageDescriptor _
    = "\n\
      \\DC4ShutdownAcknowledged"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ShutdownAcknowledged'_unknownFields
        (\ x__ y__ -> x__ {_ShutdownAcknowledged'_unknownFields = y__})
  defMessage
    = ShutdownAcknowledged'_constructor
        {_ShutdownAcknowledged'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ShutdownAcknowledged
          -> Data.ProtoLens.Encoding.Bytes.Parser ShutdownAcknowledged
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ShutdownAcknowledged"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData ShutdownAcknowledged where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ShutdownAcknowledged'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.reason' @:: Lens' ShutdownRequest Data.Text.Text@
         * 'Proto.Oll.Plugin_Fields.gracePeriodDeadline' @:: Lens' ShutdownRequest Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Oll.Plugin_Fields.maybe'gracePeriodDeadline' @:: Lens' ShutdownRequest (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data ShutdownRequest
  = ShutdownRequest'_constructor {_ShutdownRequest'reason :: !Data.Text.Text,
                                  _ShutdownRequest'gracePeriodDeadline :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                  _ShutdownRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ShutdownRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ShutdownRequest "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ShutdownRequest'reason
           (\ x__ y__ -> x__ {_ShutdownRequest'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ShutdownRequest "gracePeriodDeadline" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ShutdownRequest'gracePeriodDeadline
           (\ x__ y__ -> x__ {_ShutdownRequest'gracePeriodDeadline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ShutdownRequest "maybe'gracePeriodDeadline" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ShutdownRequest'gracePeriodDeadline
           (\ x__ y__ -> x__ {_ShutdownRequest'gracePeriodDeadline = y__}))
        Prelude.id
instance Data.ProtoLens.Message ShutdownRequest where
  messageName _ = Data.Text.pack "oll.protocol.ShutdownRequest"
  packedMessageDescriptor _
    = "\n\
      \\SIShutdownRequest\DC2\SYN\n\
      \\ACKreason\CAN\SOH \SOH(\tR\ACKreason\DC2N\n\
      \\NAKgrace_period_deadline\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\DC3gracePeriodDeadline"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor ShutdownRequest
        gracePeriodDeadline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grace_period_deadline"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gracePeriodDeadline")) ::
              Data.ProtoLens.FieldDescriptor ShutdownRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, reason__field_descriptor),
           (Data.ProtoLens.Tag 2, gracePeriodDeadline__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ShutdownRequest'_unknownFields
        (\ x__ y__ -> x__ {_ShutdownRequest'_unknownFields = y__})
  defMessage
    = ShutdownRequest'_constructor
        {_ShutdownRequest'reason = Data.ProtoLens.fieldDefault,
         _ShutdownRequest'gracePeriodDeadline = Prelude.Nothing,
         _ShutdownRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ShutdownRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser ShutdownRequest
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
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "grace_period_deadline"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"gracePeriodDeadline") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ShutdownRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
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
                       (Data.ProtoLens.Field.field @"maybe'gracePeriodDeadline") _x
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
instance Control.DeepSeq.NFData ShutdownRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ShutdownRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ShutdownRequest'reason x__)
                (Control.DeepSeq.deepseq
                   (_ShutdownRequest'gracePeriodDeadline x__) ()))
{- | Fields :
     
         * 'Proto.Oll.Plugin_Fields.jobId' @:: Lens' StartJobRequest Proto.Oll.Common.PluginJobId@
         * 'Proto.Oll.Plugin_Fields.maybe'jobId' @:: Lens' StartJobRequest (Prelude.Maybe Proto.Oll.Common.PluginJobId)@
         * 'Proto.Oll.Plugin_Fields.deadline' @:: Lens' StartJobRequest Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Oll.Plugin_Fields.maybe'deadline' @:: Lens' StartJobRequest (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Oll.Plugin_Fields.maybe'invocation' @:: Lens' StartJobRequest (Prelude.Maybe StartJobRequest'Invocation)@
         * 'Proto.Oll.Plugin_Fields.maybe'action' @:: Lens' StartJobRequest (Prelude.Maybe ActionInvocation)@
         * 'Proto.Oll.Plugin_Fields.action' @:: Lens' StartJobRequest ActionInvocation@ -}
data StartJobRequest
  = StartJobRequest'_constructor {_StartJobRequest'jobId :: !(Prelude.Maybe Proto.Oll.Common.PluginJobId),
                                  _StartJobRequest'deadline :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                  _StartJobRequest'invocation :: !(Prelude.Maybe StartJobRequest'Invocation),
                                  _StartJobRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StartJobRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StartJobRequest'Invocation
  = StartJobRequest'Action !ActionInvocation
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StartJobRequest "jobId" Proto.Oll.Common.PluginJobId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartJobRequest'jobId
           (\ x__ y__ -> x__ {_StartJobRequest'jobId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartJobRequest "maybe'jobId" (Prelude.Maybe Proto.Oll.Common.PluginJobId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartJobRequest'jobId
           (\ x__ y__ -> x__ {_StartJobRequest'jobId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartJobRequest "deadline" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartJobRequest'deadline
           (\ x__ y__ -> x__ {_StartJobRequest'deadline = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StartJobRequest "maybe'deadline" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartJobRequest'deadline
           (\ x__ y__ -> x__ {_StartJobRequest'deadline = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartJobRequest "maybe'invocation" (Prelude.Maybe StartJobRequest'Invocation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartJobRequest'invocation
           (\ x__ y__ -> x__ {_StartJobRequest'invocation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StartJobRequest "maybe'action" (Prelude.Maybe ActionInvocation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartJobRequest'invocation
           (\ x__ y__ -> x__ {_StartJobRequest'invocation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StartJobRequest'Action x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StartJobRequest'Action y__))
instance Data.ProtoLens.Field.HasField StartJobRequest "action" ActionInvocation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StartJobRequest'invocation
           (\ x__ y__ -> x__ {_StartJobRequest'invocation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StartJobRequest'Action x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StartJobRequest'Action y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message StartJobRequest where
  messageName _ = Data.Text.pack "oll.protocol.StartJobRequest"
  packedMessageDescriptor _
    = "\n\
      \\SIStartJobRequest\DC20\n\
      \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId\DC2;\n\
      \\bdeadline\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampH\SOHR\bdeadline\136\SOH\SOH\DC28\n\
      \\ACKaction\CAN\ETX \SOH(\v2\RS.oll.protocol.ActionInvocationH\NULR\ACKactionB\f\n\
      \\n\
      \invocationB\v\n\
      \\t_deadline"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        jobId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "job_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Oll.Common.PluginJobId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jobId")) ::
              Data.ProtoLens.FieldDescriptor StartJobRequest
        deadline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deadline"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deadline")) ::
              Data.ProtoLens.FieldDescriptor StartJobRequest
        action__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "action"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ActionInvocation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'action")) ::
              Data.ProtoLens.FieldDescriptor StartJobRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, jobId__field_descriptor),
           (Data.ProtoLens.Tag 2, deadline__field_descriptor),
           (Data.ProtoLens.Tag 3, action__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StartJobRequest'_unknownFields
        (\ x__ y__ -> x__ {_StartJobRequest'_unknownFields = y__})
  defMessage
    = StartJobRequest'_constructor
        {_StartJobRequest'jobId = Prelude.Nothing,
         _StartJobRequest'deadline = Prelude.Nothing,
         _StartJobRequest'invocation = Prelude.Nothing,
         _StartJobRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StartJobRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser StartJobRequest
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
                                       "job_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"jobId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deadline"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deadline") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "action"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"action") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StartJobRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'jobId") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'deadline") _x
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
                          (Data.ProtoLens.Field.field @"maybe'invocation") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (StartJobRequest'Action v))
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData StartJobRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StartJobRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StartJobRequest'jobId x__)
                (Control.DeepSeq.deepseq
                   (_StartJobRequest'deadline x__)
                   (Control.DeepSeq.deepseq (_StartJobRequest'invocation x__) ())))
instance Control.DeepSeq.NFData StartJobRequest'Invocation where
  rnf (StartJobRequest'Action x__) = Control.DeepSeq.rnf x__
_StartJobRequest'Action ::
  Data.ProtoLens.Prism.Prism' StartJobRequest'Invocation ActionInvocation
_StartJobRequest'Action
  = Data.ProtoLens.Prism.prism'
      StartJobRequest'Action
      (\ p__
         -> case p__ of
              (StartJobRequest'Action p__val) -> Prelude.Just p__val)
data PluginRuntime = PluginRuntime {}
instance Data.ProtoLens.Service.Types.Service PluginRuntime where
  type ServiceName PluginRuntime = "PluginRuntime"
  type ServicePackage PluginRuntime = "oll.protocol"
  type ServiceMethods PluginRuntime = '["connect"]
  packedServiceDescriptor _
    = "\n\
      \\rPluginRuntime\DC2I\n\
      \\aConnect\DC2\FS.oll.protocol.PluginEnvelope\SUB\FS.oll.protocol.PluginEnvelope(\SOH0\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl PluginRuntime "connect" where
  type MethodName PluginRuntime "connect" = "Connect"
  type MethodInput PluginRuntime "connect" = PluginEnvelope
  type MethodOutput PluginRuntime "connect" = PluginEnvelope
  type MethodStreamingType PluginRuntime "connect" = 'Data.ProtoLens.Service.Types.BiDiStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\DLEoll/plugin.proto\DC2\foll.protocol\SUB\USgoogle/protobuf/timestamp.proto\SUB\DLEoll/common.proto\SUB\DLEoll/config.proto\SUB\DC2oll/document.proto\"\207\ETX\n\
    \\tHostHello\DC2.\n\
    \\EOTnode\CAN\SOH \SOH(\v2\SUB.oll.protocol.NodeIdentityR\EOTnode\DC2\GS\n\
    \\n\
    \session_id\CAN\STX \SOH(\tR\tsessionId\DC2,\n\
    \\DC2plugin_instance_id\CAN\ETX \SOH(\tR\DLEpluginInstanceId\DC24\n\
    \\SYNprotocol_schema_sha256\CAN\EOT \SOH(\fR\DC4protocolSchemaSha256\DC2,\n\
    \\DC2maximum_call_depth\CAN\ENQ \SOH(\rR\DLEmaximumCallDepth\DC20\n\
    \\DC4maximum_causal_depth\CAN\ACK \SOH(\rR\DC2maximumCausalDepth\DC2?\n\
    \\FSmaximum_artifact_chunk_bytes\CAN\a \SOH(\EOTR\EMmaximumArtifactChunkBytes\DC23\n\
    \\tplugin_id\CAN\b \SOH(\v2\SYN.oll.protocol.PluginIdR\bpluginId\DC29\n\
    \\vplugin_name\CAN\t \SOH(\v2\CAN.oll.protocol.PluginNameR\n\
    \pluginName\"H\n\
    \\DLEActionDescriptor\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2 \n\
    \\vdescription\CAN\STX \SOH(\tR\vdescription\"\148\STX\n\
    \\vPluginHello\DC23\n\
    \\tplugin_id\CAN\SOH \SOH(\v2\SYN.oll.protocol.PluginIdR\bpluginId\DC29\n\
    \\vplugin_name\CAN\STX \SOH(\v2\CAN.oll.protocol.PluginNameR\n\
    \pluginName\DC24\n\
    \\SYNprotocol_schema_sha256\CAN\ETX \SOH(\fR\DC4protocolSchemaSha256\DC28\n\
    \\aactions\CAN\EOT \ETX(\v2\RS.oll.protocol.ActionDescriptorR\aactions\DC2%\n\
    \\SOplugin_version\CAN\ENQ \SOH(\tR\rpluginVersion\"\SO\n\
    \\fSessionReady\"H\n\
    \\DLEActionInvocation\DC2\SYN\n\
    \\ACKaction\CAN\SOH \SOH(\tR\ACKaction\DC2\FS\n\
    \\targuments\CAN\STX \ETX(\tR\targuments\"\213\SOH\n\
    \\SIStartJobRequest\DC20\n\
    \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId\DC2;\n\
    \\bdeadline\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampH\SOHR\bdeadline\136\SOH\SOH\DC28\n\
    \\ACKaction\CAN\ETX \SOH(\v2\RS.oll.protocol.ActionInvocationH\NULR\ACKactionB\f\n\
    \\n\
    \invocationB\v\n\
    \\t_deadline\"?\n\
    \\vJobAccepted\DC20\n\
    \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId\"\157\ETX\n\
    \\tJobUpdate\DC20\n\
    \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId\DC2,\n\
    \\ENQstate\CAN\STX \SOH(\SO2\SYN.oll.protocol.JobStateR\ENQstate\DC2\US\n\
    \\bprogress\CAN\ETX \SOH(\SOHH\NULR\bprogress\136\SOH\SOH\DC2*\n\
    \\SOstatus_message\CAN\EOT \SOH(\tH\SOHR\rstatusMessage\136\SOH\SOH\DC26\n\
    \\ACKresult\CAN\ENQ \SOH(\v2\EM.oll.protocol.ConfigValueH\STXR\ACKresult\136\SOH\SOH\DC26\n\
    \\ENQerror\CAN\ACK \SOH(\v2\ESC.oll.protocol.ProtocolErrorH\ETXR\ENQerror\136\SOH\SOH\DC2>\n\
    \\tartifacts\CAN\a \ETX(\v2 .oll.protocol.ArtifactDescriptorR\tartifactsB\v\n\
    \\t_progressB\DC1\n\
    \\SI_status_messageB\t\n\
    \\a_resultB\b\n\
    \\ACK_error\"\200\SOH\n\
    \\DC2ArtifactDescriptor\DC2?\n\
    \\vartifact_id\CAN\SOH \SOH(\v2\RS.oll.protocol.PluginArtifactIdR\n\
    \artifactId\DC2\ESC\n\
    \\tfile_name\CAN\STX \SOH(\tR\bfileName\DC2\GS\n\
    \\n\
    \media_type\CAN\ETX \SOH(\tR\tmediaType\DC2\GS\n\
    \\n\
    \size_bytes\CAN\EOT \SOH(\EOTR\tsizeBytes\DC2\SYN\n\
    \\ACKsha256\CAN\ENQ \SOH(\fR\ACKsha256\"\168\SOH\n\
    \\NAKArtifactTransferStart\DC20\n\
    \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId\DC2<\n\
    \\bartifact\CAN\STX \SOH(\v2 .oll.protocol.ArtifactDescriptorR\bartifact\DC2\US\n\
    \\vchunk_count\CAN\ETX \SOH(\rR\n\
    \chunkCount\"[\n\
    \\CANArtifactTransferAccepted\DC2?\n\
    \\vartifact_id\CAN\SOH \SOH(\v2\RS.oll.protocol.PluginArtifactIdR\n\
    \artifactId\"\141\SOH\n\
    \\NAKArtifactTransferChunk\DC2?\n\
    \\vartifact_id\CAN\SOH \SOH(\v2\RS.oll.protocol.PluginArtifactIdR\n\
    \artifactId\DC2\US\n\
    \\vchunk_index\CAN\STX \SOH(\rR\n\
    \chunkIndex\DC2\DC2\n\
    \\EOTdata\CAN\ETX \SOH(\fR\EOTdata\"[\n\
    \\CANArtifactTransferComplete\DC2?\n\
    \\vartifact_id\CAN\SOH \SOH(\v2\RS.oll.protocol.PluginArtifactIdR\n\
    \artifactId\"Q\n\
    \\SOArtifactStored\DC2?\n\
    \\vartifact_id\CAN\SOH \SOH(\v2\RS.oll.protocol.PluginArtifactIdR\n\
    \artifactId\"\129\SOH\n\
    \\DLECancelJobRequest\DC20\n\
    \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId\DC2;\n\
    \\ACKreason\CAN\STX \SOH(\SO2#.oll.protocol.JobCancellationReasonR\ACKreason\"I\n\
    \\NAKCancelJobAcknowledged\DC20\n\
    \\ACKjob_id\CAN\SOH \SOH(\v2\EM.oll.protocol.PluginJobIdR\ENQjobId\"\188\EOT\n\
    \\SIHostCallRequest\DC2H\n\
    \\rread_document\CAN\SOH \SOH(\v2!.oll.protocol.ReadDocumentRequestH\NULR\freadDocument\DC2K\n\
    \\SOlist_directory\CAN\STX \SOH(\v2\".oll.protocol.ListDirectoryRequestH\NULR\rlistDirectory\DC2U\n\
    \\DC2get_directory_tree\CAN\ETX \SOH(\v2%.oll.protocol.GetDirectoryTreeRequestH\NULR\DLEgetDirectoryTree\DC2<\n\
    \\tread_crdt\CAN\EOT \SOH(\v2\GS.oll.protocol.ReadCrdtRequestH\NULR\breadCrdt\DC2Q\n\
    \\DLEcommit_documents\CAN\ENQ \SOH(\v2$.oll.protocol.CommitDocumentsRequestH\NULR\SIcommitDocuments\DC2?\n\
    \\n\
    \get_config\CAN\ACK \SOH(\v2\RS.oll.protocol.GetConfigRequestH\NULR\tgetConfig\DC2a\n\
    \\SYNinvoke_config_function\CAN\a \SOH(\v2).oll.protocol.InvokeConfigFunctionRequestH\NULR\DC4invokeConfigFunctionB\ACK\n\
    \\EOTcall\"\251\EOT\n\
    \\DLEHostCallResponse\DC2I\n\
    \\rread_document\CAN\SOH \SOH(\v2\".oll.protocol.ReadDocumentResponseH\NULR\freadDocument\DC2L\n\
    \\SOlist_directory\CAN\STX \SOH(\v2#.oll.protocol.ListDirectoryResponseH\NULR\rlistDirectory\DC2V\n\
    \\DC2get_directory_tree\CAN\ETX \SOH(\v2&.oll.protocol.GetDirectoryTreeResponseH\NULR\DLEgetDirectoryTree\DC2=\n\
    \\tread_crdt\CAN\EOT \SOH(\v2\RS.oll.protocol.ReadCrdtResponseH\NULR\breadCrdt\DC2R\n\
    \\DLEcommit_documents\CAN\ENQ \SOH(\v2%.oll.protocol.CommitDocumentsResponseH\NULR\SIcommitDocuments\DC2@\n\
    \\n\
    \get_config\CAN\ACK \SOH(\v2\US.oll.protocol.GetConfigResponseH\NULR\tgetConfig\DC2b\n\
    \\SYNinvoke_config_function\CAN\a \SOH(\v2*.oll.protocol.InvokeConfigFunctionResponseH\NULR\DC4invokeConfigFunction\DC23\n\
    \\ENQerror\CAN\SI \SOH(\v2\ESC.oll.protocol.ProtocolErrorH\NULR\ENQerrorB\b\n\
    \\ACKresult\"\184\STX\n\
    \\tLogRecord\DC28\n\
    \\ttimestamp\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestamp\DC2,\n\
    \\ENQlevel\CAN\STX \SOH(\SO2\SYN.oll.protocol.LogLevelR\ENQlevel\DC2\SYN\n\
    \\ACKtarget\CAN\ETX \SOH(\tR\ACKtarget\DC2\CAN\n\
    \\amessage\CAN\EOT \SOH(\tR\amessage\DC2;\n\
    \\ACKfields\CAN\ENQ \ETX(\v2#.oll.protocol.LogRecord.FieldsEntryR\ACKfields\SUBT\n\
    \\vFieldsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2/\n\
    \\ENQvalue\CAN\STX \SOH(\v2\EM.oll.protocol.ConfigValueR\ENQvalue:\STX8\SOH\"!\n\
    \\tHeartbeat\DC2\DC4\n\
    \\ENQnonce\CAN\SOH \SOH(\EOTR\ENQnonce\"y\n\
    \\SIShutdownRequest\DC2\SYN\n\
    \\ACKreason\CAN\SOH \SOH(\tR\ACKreason\DC2N\n\
    \\NAKgrace_period_deadline\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\DC3gracePeriodDeadline\"\SYN\n\
    \\DC4ShutdownAcknowledged\"\196\f\n\
    \\SOPluginEnvelope\DC2\GS\n\
    \\n\
    \message_id\CAN\SOH \SOH(\EOTR\tmessageId\DC2\RS\n\
    \\breply_to\CAN\STX \SOH(\EOTH\SOHR\areplyTo\136\SOH\SOH\DC2\GS\n\
    \\n\
    \session_id\CAN\ETX \SOH(\tR\tsessionId\DC2,\n\
    \\DC2plugin_instance_id\CAN\EOT \SOH(\tR\DLEpluginInstanceId\DC20\n\
    \\ENQtrace\CAN\ENQ \SOH(\v2\SUB.oll.protocol.TraceContextR\ENQtrace\DC28\n\
    \\n\
    \host_hello\CAN\n\
    \ \SOH(\v2\ETB.oll.protocol.HostHelloH\NULR\thostHello\DC2>\n\
    \\fplugin_hello\CAN\v \SOH(\v2\EM.oll.protocol.PluginHelloH\NULR\vpluginHello\DC22\n\
    \\ENQready\CAN\f \SOH(\v2\SUB.oll.protocol.SessionReadyH\NULR\ENQready\DC2<\n\
    \\tstart_job\CAN\r \SOH(\v2\GS.oll.protocol.StartJobRequestH\NULR\bstartJob\DC2>\n\
    \\fjob_accepted\CAN\SO \SOH(\v2\EM.oll.protocol.JobAcceptedH\NULR\vjobAccepted\DC28\n\
    \\n\
    \job_update\CAN\SI \SOH(\v2\ETB.oll.protocol.JobUpdateH\NULR\tjobUpdate\DC2<\n\
    \\thost_call\CAN\DLE \SOH(\v2\GS.oll.protocol.HostCallRequestH\NULR\bhostCall\DC2A\n\
    \\vhost_result\CAN\DC1 \SOH(\v2\RS.oll.protocol.HostCallResponseH\NULR\n\
    \hostResult\DC2+\n\
    \\ETXlog\CAN\DC2 \SOH(\v2\ETB.oll.protocol.LogRecordH\NULR\ETXlog\DC27\n\
    \\theartbeat\CAN\DC3 \SOH(\v2\ETB.oll.protocol.HeartbeatH\NULR\theartbeat\DC2;\n\
    \\bshutdown\CAN\DC4 \SOH(\v2\GS.oll.protocol.ShutdownRequestH\NULR\bshutdown\DC2Y\n\
    \\NAKshutdown_acknowledged\CAN\NAK \SOH(\v2\".oll.protocol.ShutdownAcknowledgedH\NULR\DC4shutdownAcknowledged\DC2D\n\
    \\SOprotocol_error\CAN\SYN \SOH(\v2\ESC.oll.protocol.ProtocolErrorH\NULR\rprotocolError\DC2L\n\
    \\SOartifact_start\CAN\ETB \SOH(\v2#.oll.protocol.ArtifactTransferStartH\NULR\rartifactStart\DC2U\n\
    \\DC1artifact_accepted\CAN\CAN \SOH(\v2&.oll.protocol.ArtifactTransferAcceptedH\NULR\DLEartifactAccepted\DC2L\n\
    \\SOartifact_chunk\CAN\EM \SOH(\v2#.oll.protocol.ArtifactTransferChunkH\NULR\rartifactChunk\DC2U\n\
    \\DC1artifact_complete\CAN\SUB \SOH(\v2&.oll.protocol.ArtifactTransferCompleteH\NULR\DLEartifactComplete\DC2G\n\
    \\SIartifact_stored\CAN\ESC \SOH(\v2\FS.oll.protocol.ArtifactStoredH\NULR\SOartifactStored\DC2?\n\
    \\n\
    \cancel_job\CAN\FS \SOH(\v2\RS.oll.protocol.CancelJobRequestH\NULR\tcancelJob\DC2]\n\
    \\ETBcancel_job_acknowledged\CAN\GS \SOH(\v2#.oll.protocol.CancelJobAcknowledgedH\NULR\NAKcancelJobAcknowledgedB\t\n\
    \\apayloadB\v\n\
    \\t_reply_to*k\n\
    \\bJobState\DC2\EM\n\
    \\NAKJOB_STATE_UNSPECIFIED\DLE\NUL\DC2\NAK\n\
    \\DC1JOB_STATE_RUNNING\DLE\SOH\DC2\ETB\n\
    \\DC3JOB_STATE_SUCCEEDED\DLE\STX\DC2\DC4\n\
    \\DLEJOB_STATE_FAILED\DLE\ETX*\144\SOH\n\
    \\NAKJobCancellationReason\DC2'\n\
    \#JOB_CANCELLATION_REASON_UNSPECIFIED\DLE\NUL\DC2(\n\
    \$JOB_CANCELLATION_REASON_USER_REQUEST\DLE\SOH\DC2$\n\
    \ JOB_CANCELLATION_REASON_DEADLINE\DLE\STX2Z\n\
    \\rPluginRuntime\DC2I\n\
    \\aConnect\DC2\FS.oll.protocol.PluginEnvelope\SUB\FS.oll.protocol.PluginEnvelope(\SOH0\SOHJ\163;\n\
    \\a\DC2\ENQ\NUL\NUL\194\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\NAK\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL\FS\n\
    \\214\SOH\n\
    \\STX\ACK\NUL\DC2\EOT\f\NUL\SO\SOH\SUB\201\SOH oll hosts this service on an instance-owned loopback listener. The spawned\n\
    \ plugin receives OLL_PLUGIN_ENDPOINT, connects as the gRPC client, and all\n\
    \ calls in either direction share this one stream.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\f\b\NAK\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\r\STXE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\r\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\r\SO\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\r\NAK#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ACK\DC2\ETX\r.4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\r5C\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL\SUB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\DC1\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC1\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC1\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC1\SI\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC1\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC2\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC2\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC2\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC3\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DC3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC3\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC3\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC4\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\DC4\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC4\b\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC4!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\NAK\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\NAK\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\NAK\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\SYN\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\SYN\t\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\SYN !\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\ETB\STX*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\ETB\t%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\ETB()\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX\CAN\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX\CAN\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX\CAN\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX\EM\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETX\EM\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX\EM\r\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX\EM\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\FS\NUL\US\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\FS\b\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\GS\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\GS\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\GS\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\RS\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\RS\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\RS\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT!\NUL(\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX!\b\DC3\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\"\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\"\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\"\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX#\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX#\STX\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX#\r\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX#\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX$\STX#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX$\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX$\b\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX$!\"\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX%\STX(\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX%\v\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX%\FS#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX%&'\n\
    \Z\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX'\STX\FS\SUBM Informational build string only; package/release selection never parses it.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX'\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX'\SUB\ESC\n\
    \\t\n\
    \\STX\EOT\ETX\DC2\ETX*\NUL\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX*\b\DC4\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT,\NUL1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX,\b\CAN\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX-\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX-\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX-\t\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX-\DC2\DC3\n\
    \\154\SOH\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX0\STX \SUB\140\SOH Generic action calls use shell-style UTF-8 argv semantics. oll preserves\n\
    \ order, duplicates, empty strings, and values beginning with '-'.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX0\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX0\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT3\NUL7\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX3\b\ETB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX4\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX4\STX\r\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX4\SO\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX4\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX5\STX2\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETX5\v$\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX5%-\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX501\n\
    \\v\n\
    \\EOT\EOT\ENQ\b\NUL\DC2\ETX6\STX3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\b\NUL\SOH\DC2\ETX6\b\DC2\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX6\NAK1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\ETX6\NAK%\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX6&,\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX6/0\n\
    \\t\n\
    \\STX\EOT\ACK\DC2\ETX9\NUL/\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX9\b\DC3\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX9\SYN-\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETX9\SYN!\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX9\"(\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX9+,\n\
    \\n\
    \\n\
    \\STX\ENQ\NUL\DC2\EOT;\NUL@\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX;\ENQ\r\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX<\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX<\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX<\SUB\ESC\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX=\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX=\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX=\SYN\ETB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX>\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX>\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX>\CAN\EM\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX?\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX?\STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX?\NAK\SYN\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOTB\NULK\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXB\b\DC1\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXC\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETXC\STX\r\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXC\SO\DC4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXC\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXD\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXD\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXD\DC3\DC4\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETXE\STX\US\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETXE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETXE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXE\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXE\GS\RS\n\
    \\v\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETXF\STX%\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\ETXF\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETXF\DC2 \n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETXF#$\n\
    \\v\n\
    \\EOT\EOT\a\STX\EOT\DC2\ETXG\STX\"\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ACK\DC2\ETXG\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\ETXG\ETB\GS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\ETXG !\n\
    \\v\n\
    \\EOT\EOT\a\STX\ENQ\DC2\ETXH\STX#\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\ACK\DC2\ETXH\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\SOH\DC2\ETXH\EM\RS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ENQ\ETX\DC2\ETXH!\"\n\
    \X\n\
    \\EOT\EOT\a\STX\ACK\DC2\ETXJ\STX,\SUBK Terminal updates list only artifacts that oll has acknowledged as stored.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ACK\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ACK\ACK\DC2\ETXJ\v\GS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ACK\SOH\DC2\ETXJ\RS'\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ACK\ETX\DC2\ETXJ*+\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOTM\NULS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXM\b\SUB\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXN\STX#\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\ETXN\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXN\DC3\RS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXN!\"\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXO\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETXO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXO\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXO\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\b\STX\STX\DC2\ETXP\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\ETXP\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETXP\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETXP\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\b\STX\ETX\DC2\ETXQ\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\ETXQ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\ETXQ\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\ETXQ\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\b\STX\EOT\DC2\ETXR\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\ETXR\STX\a\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\ETXR\b\SO\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\ETXR\DC1\DC2\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOTU\NULY\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXU\b\GS\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXV\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\ETXV\STX\r\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXV\SO\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXV\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETXW\STX\"\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\ETXW\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETXW\NAK\GS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETXW !\n\
    \\v\n\
    \\EOT\EOT\t\STX\STX\DC2\ETXX\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\ETXX\STX\b\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\ETXX\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\ETXX\ETB\CAN\n\
    \\t\n\
    \\STX\EOT\n\
    \\DC2\ETX[\NULF\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETX[\b \n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETX[#D\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ACK\DC2\ETX[#3\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETX[4?\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETX[BC\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOT]\NULa\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETX]\b\GS\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETX^\STX#\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\ETX^\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETX^\DC3\RS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETX^!\"\n\
    \\v\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETX_\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETX_\STX\b\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETX_\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETX_\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\v\STX\STX\DC2\ETX`\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\ETX`\STX\a\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\ETX`\b\f\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\ETX`\SI\DLE\n\
    \\t\n\
    \\STX\EOT\f\DC2\ETXc\NULF\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETXc\b \n\
    \\v\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETXc#D\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\ETXc#3\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETXc4?\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETXcBC\n\
    \\t\n\
    \\STX\EOT\r\DC2\ETXe\NUL<\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXe\b\SYN\n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXe\EM:\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\ETXe\EM)\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXe*5\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXe89\n\
    \\n\
    \\n\
    \\STX\ENQ\SOH\DC2\EOTg\NULk\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETXg\ENQ\SUB\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETXh\STX*\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETXh\STX%\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETXh()\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETXi\STX+\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETXi\STX&\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETXi)*\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\ETXj\STX'\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\ETXj\STX\"\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\ETXj%&\n\
    \\n\
    \\n\
    \\STX\EOT\SO\DC2\EOTm\NULp\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SO\SOH\DC2\ETXm\b\CAN\n\
    \\v\n\
    \\EOT\EOT\SO\STX\NUL\DC2\ETXn\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ACK\DC2\ETXn\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\ETXn\SO\DC4\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\ETXn\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SO\STX\SOH\DC2\ETXo\STX#\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ACK\DC2\ETXo\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\ETXo\CAN\RS\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\ETXo!\"\n\
    \\t\n\
    \\STX\EOT\SI\DC2\ETXr\NUL9\n\
    \\n\
    \\n\
    \\ETX\EOT\SI\SOH\DC2\ETXr\b\GS\n\
    \\v\n\
    \\EOT\EOT\SI\STX\NUL\DC2\ETXr 7\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ACK\DC2\ETXr +\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\ETXr,2\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\ETXr56\n\
    \\n\
    \\n\
    \\STX\EOT\DLE\DC2\EOTt\NUL~\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DLE\SOH\DC2\ETXt\b\ETB\n\
    \\f\n\
    \\EOT\EOT\DLE\b\NUL\DC2\EOTu\STX}\ETX\n\
    \\f\n\
    \\ENQ\EOT\DLE\b\NUL\SOH\DC2\ETXu\b\f\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\ETXv\EOT*\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ACK\DC2\ETXv\EOT\ETB\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\ETXv\CAN%\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\ETXv()\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\ETXw\EOT,\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\ACK\DC2\ETXw\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\ETXw\EM'\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\ETXw*+\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\STX\DC2\ETXx\EOT3\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\ACK\DC2\ETXx\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\ETXx\FS.\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\ETXx12\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\ETXy\EOT\"\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ETX\ACK\DC2\ETXy\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\ETXy\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\ETXy !\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\EOT\DC2\ETXz\EOT0\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\EOT\ACK\DC2\ETXz\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\EOT\SOH\DC2\ETXz\ESC+\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\EOT\ETX\DC2\ETXz./\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\ENQ\DC2\ETX{\EOT$\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ENQ\ACK\DC2\ETX{\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ENQ\SOH\DC2\ETX{\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ENQ\ETX\DC2\ETX{\"#\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\ACK\DC2\ETX|\EOT;\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ACK\ACK\DC2\ETX|\EOT\US\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ACK\SOH\DC2\ETX| 6\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\ACK\ETX\DC2\ETX|9:\n\
    \\f\n\
    \\STX\EOT\DC1\DC2\ACK\128\SOH\NUL\139\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\128\SOH\b\CAN\n\
    \\SO\n\
    \\EOT\EOT\DC1\b\NUL\DC2\ACK\129\SOH\STX\138\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\DC1\b\NUL\SOH\DC2\EOT\129\SOH\b\SO\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\130\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ACK\DC2\EOT\130\SOH\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\130\SOH\EM&\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\130\SOH)*\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\131\SOH\EOT-\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ACK\DC2\EOT\131\SOH\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\131\SOH\SUB(\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\131\SOH+,\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\STX\DC2\EOT\132\SOH\EOT4\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ACK\DC2\EOT\132\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\SOH\DC2\EOT\132\SOH\GS/\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ETX\DC2\EOT\132\SOH23\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\ETX\DC2\EOT\133\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\ACK\DC2\EOT\133\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\SOH\DC2\EOT\133\SOH\NAK\RS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\ETX\DC2\EOT\133\SOH!\"\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\EOT\DC2\EOT\134\SOH\EOT1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\ACK\DC2\EOT\134\SOH\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\SOH\DC2\EOT\134\SOH\FS,\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\ETX\DC2\EOT\134\SOH/0\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\ENQ\DC2\EOT\135\SOH\EOT%\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\ACK\DC2\EOT\135\SOH\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\SOH\DC2\EOT\135\SOH\SYN \n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\ETX\DC2\EOT\135\SOH#$\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\ACK\DC2\EOT\136\SOH\EOT<\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\ACK\DC2\EOT\136\SOH\EOT \n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\SOH\DC2\EOT\136\SOH!7\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\ETX\DC2\EOT\136\SOH:;\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\a\DC2\EOT\137\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\ACK\DC2\EOT\137\SOH\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\SOH\DC2\EOT\137\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\ETX\DC2\EOT\137\SOH\SUB\FS\n\
    \\f\n\
    \\STX\EOT\DC2\DC2\ACK\141\SOH\NUL\147\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\141\SOH\b\DC1\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\142\SOH\STX*\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ACK\DC2\EOT\142\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\142\SOH\FS%\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\142\SOH()\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\143\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ACK\DC2\EOT\143\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\143\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\143\SOH\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\STX\DC2\EOT\144\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ENQ\DC2\EOT\144\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\SOH\DC2\EOT\144\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ETX\DC2\EOT\144\SOH\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\ETX\DC2\EOT\145\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ENQ\DC2\EOT\145\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\SOH\DC2\EOT\145\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ETX\DC2\EOT\145\SOH\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\EOT\DC2\EOT\146\SOH\STX&\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\ACK\DC2\EOT\146\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\SOH\DC2\EOT\146\SOH\ESC!\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\ETX\DC2\EOT\146\SOH$%\n\
    \\n\
    \\n\
    \\STX\EOT\DC3\DC2\EOT\149\SOH\NUL'\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\149\SOH\b\DC1\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\149\SOH\DC4%\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\149\SOH\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\149\SOH\ESC \n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\149\SOH#$\n\
    \\f\n\
    \\STX\EOT\DC4\DC2\ACK\151\SOH\NUL\157\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\151\SOH\b\ETB\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\152\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\EOT\152\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\152\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\152\SOH\DC2\DC3\n\
    \\197\SOH\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\156\SOH\STX6\SUB\182\SOH The plugin should acknowledge and exit before this deadline. Host signal\n\
    \ escalation after the deadline is enforcement of this same graceful request,\n\
    \ not another public operation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ACK\DC2\EOT\156\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\156\SOH\FS1\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\156\SOH45\n\
    \\n\
    \\n\
    \\STX\EOT\NAK\DC2\EOT\159\SOH\NUL\US\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\159\SOH\b\FS\n\
    \\254\SOH\n\
    \\STX\EOT\SYN\DC2\ACK\165\SOH\NUL\194\SOH\SOH\SUB\239\SOH Each sender owns an independent sequence. IDs are nonzero and strictly\n\
    \ increase relative to that sender's preceding envelope; gaps are valid.\n\
    \ Direct responses set reply_to. New nested calls set parent_call_id and\n\
    \ increment call_depth.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\165\SOH\b\SYN\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\166\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\EOT\166\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\166\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\166\SOH\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\167\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\EOT\DC2\EOT\167\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ENQ\DC2\EOT\167\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\167\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\167\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\STX\DC2\EOT\168\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ENQ\DC2\EOT\168\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\SOH\DC2\EOT\168\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ETX\DC2\EOT\168\SOH\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\ETX\DC2\EOT\169\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ENQ\DC2\EOT\169\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\SOH\DC2\EOT\169\SOH\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ETX\DC2\EOT\169\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\EOT\DC2\EOT\170\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\ACK\DC2\EOT\170\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\SOH\DC2\EOT\170\SOH\SI\DC4\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\ETX\DC2\EOT\170\SOH\ETB\CAN\n\
    \\SO\n\
    \\EOT\EOT\SYN\b\NUL\DC2\ACK\172\SOH\STX\193\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\SYN\b\NUL\SOH\DC2\EOT\172\SOH\b\SI\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\ENQ\DC2\EOT\173\SOH\EOT\RS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ENQ\ACK\DC2\EOT\173\SOH\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ENQ\SOH\DC2\EOT\173\SOH\SO\CAN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ENQ\ETX\DC2\EOT\173\SOH\ESC\GS\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\ACK\DC2\EOT\174\SOH\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ACK\ACK\DC2\EOT\174\SOH\EOT\SI\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ACK\SOH\DC2\EOT\174\SOH\DLE\FS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ACK\ETX\DC2\EOT\174\SOH\US!\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\a\DC2\EOT\175\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\a\ACK\DC2\EOT\175\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\a\SOH\DC2\EOT\175\SOH\DC1\SYN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\a\ETX\DC2\EOT\175\SOH\EM\ESC\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\b\DC2\EOT\176\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\b\ACK\DC2\EOT\176\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\b\SOH\DC2\EOT\176\SOH\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\b\ETX\DC2\EOT\176\SOH \"\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\t\DC2\EOT\177\SOH\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\t\ACK\DC2\EOT\177\SOH\EOT\SI\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\t\SOH\DC2\EOT\177\SOH\DLE\FS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\t\ETX\DC2\EOT\177\SOH\US!\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\n\
    \\DC2\EOT\178\SOH\EOT\RS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\n\
    \\ACK\DC2\EOT\178\SOH\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\n\
    \\SOH\DC2\EOT\178\SOH\SO\CAN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\n\
    \\ETX\DC2\EOT\178\SOH\ESC\GS\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\v\DC2\EOT\179\SOH\EOT#\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\v\ACK\DC2\EOT\179\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\v\SOH\DC2\EOT\179\SOH\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\v\ETX\DC2\EOT\179\SOH \"\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\f\DC2\EOT\180\SOH\EOT&\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\f\ACK\DC2\EOT\180\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\f\SOH\DC2\EOT\180\SOH\NAK \n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\f\ETX\DC2\EOT\180\SOH#%\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\r\DC2\EOT\181\SOH\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\r\ACK\DC2\EOT\181\SOH\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\r\SOH\DC2\EOT\181\SOH\SO\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\r\ETX\DC2\EOT\181\SOH\DC4\SYN\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\SO\DC2\EOT\182\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SO\ACK\DC2\EOT\182\SOH\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SO\SOH\DC2\EOT\182\SOH\SO\ETB\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SO\ETX\DC2\EOT\182\SOH\SUB\FS\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\SI\DC2\EOT\183\SOH\EOT\"\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SI\ACK\DC2\EOT\183\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SI\SOH\DC2\EOT\183\SOH\DC4\FS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SI\ETX\DC2\EOT\183\SOH\US!\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\DLE\DC2\EOT\184\SOH\EOT4\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DLE\ACK\DC2\EOT\184\SOH\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DLE\SOH\DC2\EOT\184\SOH\EM.\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DLE\ETX\DC2\EOT\184\SOH13\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\DC1\DC2\EOT\185\SOH\EOT&\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC1\ACK\DC2\EOT\185\SOH\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC1\SOH\DC2\EOT\185\SOH\DC2 \n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC1\ETX\DC2\EOT\185\SOH#%\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\DC2\DC2\EOT\186\SOH\EOT.\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC2\ACK\DC2\EOT\186\SOH\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC2\SOH\DC2\EOT\186\SOH\SUB(\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC2\ETX\DC2\EOT\186\SOH+-\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\DC3\DC2\EOT\187\SOH\EOT4\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC3\ACK\DC2\EOT\187\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC3\SOH\DC2\EOT\187\SOH\GS.\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC3\ETX\DC2\EOT\187\SOH13\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\DC4\DC2\EOT\188\SOH\EOT.\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC4\ACK\DC2\EOT\188\SOH\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC4\SOH\DC2\EOT\188\SOH\SUB(\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\DC4\ETX\DC2\EOT\188\SOH+-\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\NAK\DC2\EOT\189\SOH\EOT4\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NAK\ACK\DC2\EOT\189\SOH\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NAK\SOH\DC2\EOT\189\SOH\GS.\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NAK\ETX\DC2\EOT\189\SOH13\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\SYN\DC2\EOT\190\SOH\EOT(\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SYN\ACK\DC2\EOT\190\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SYN\SOH\DC2\EOT\190\SOH\DC3\"\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SYN\ETX\DC2\EOT\190\SOH%'\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\ETB\DC2\EOT\191\SOH\EOT%\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETB\ACK\DC2\EOT\191\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETB\SOH\DC2\EOT\191\SOH\NAK\US\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETB\ETX\DC2\EOT\191\SOH\"$\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\CAN\DC2\EOT\192\SOH\EOT7\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\CAN\ACK\DC2\EOT\192\SOH\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\CAN\SOH\DC2\EOT\192\SOH\SUB1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\CAN\ETX\DC2\EOT\192\SOH46b\ACKproto3"