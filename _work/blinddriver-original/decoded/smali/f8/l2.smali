.class public abstract Lf8/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lf8/m2;

.field public static final B:Lf8/x3;

.field public static final C:Lf8/m2;

.field public static final D:Lf8/x3;

.field public static final E:Lf8/m2;

.field public static final F:Lf8/x3;

.field public static final G:Lf8/m2;

.field public static final H:Lf8/x3;

.field public static final I:Lf8/m2;

.field public static final J:Lf8/x3;

.field public static final K:Lf8/m2;

.field public static final L:Lf8/x3;

.field public static final M:Lf8/m2;

.field public static final N:Lf8/x3;

.field public static final O:Lf8/m2;

.field public static final P:Lf8/x3;

.field public static final Q:Lf8/m2;

.field public static final R:Lf8/x3;

.field public static final S:Lf8/m2;

.field public static final T:Lf8/x3;

.field public static final U:Lf8/m2;

.field public static final V:Lf8/x3;

.field public static final a:Lf8/m2;

.field public static final b:Lf8/x3;

.field public static final c:Lf8/m2;

.field public static final d:Lf8/x3;

.field public static final e:Lf8/m2;

.field public static final f:Lf8/x3;

.field public static final g:Lf8/m2;

.field public static final h:Lf8/x3;

.field public static final i:Lf8/m2;

.field public static final j:Lf8/x3;

.field public static final k:Lf8/m2;

.field public static final l:Lf8/x3;

.field public static final m:Lf8/m2;

.field public static final n:Lf8/x3;

.field public static final o:Lf8/m2;

.field public static final p:Lf8/x3;

.field public static final q:Lf8/m2;

.field public static final r:Lf8/x3;

.field public static final s:Lf8/m2;

.field public static final t:Lf8/x3;

.field public static final u:Lf8/m2;

.field public static final v:Lf8/x3;

.field public static final w:Lf8/m2;

.field public static final x:Lf8/x3;

.field public static final y:Lf8/m2;

.field public static final z:Lf8/x3;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v0, "\n google/protobuf/descriptor.proto\u0012\u000fgoogle.protobuf\"G\n\u0011FileDescriptorSet\u00122\n\u0004file\u0018\u0001 \u0003(\u000b2$.google.protobuf.FileDescriptorProto\"\u00db\u0003\n\u0013FileDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007package\u0018\u0002 \u0001(\t\u0012\u0012\n\ndependency\u0018\u0003 \u0003(\t\u0012\u0019\n\u0011public_dependency\u0018\n \u0003(\u0005\u0012\u0017\n\u000fweak_dependency\u0018\u000b \u0003(\u0005\u00126\n\u000cmessage_type\u0018\u0004 \u0003(\u000b2 .google.protobuf.DescriptorProto\u00127\n\tenum_type\u0018\u0005 \u0003(\u000b2$.google.protobuf.EnumDescriptorProto\u00128\n\u0007service\u0018\u0006 \u0003(\u000b2\'.google.protobuf.ServiceDescriptorProto\u00128\n\textension\u0018\u0007 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u0012-\n\u0007options\u0018\u0008 \u0001(\u000b2\u001c.google.protobuf.FileOptions\u00129\n\u0010source_code_info\u0018\t \u0001(\u000b2\u001f.google.protobuf.SourceCodeInfo\u0012\u000e\n\u0006syntax\u0018\u000c \u0001(\t\"\u00a9\u0005\n\u000fDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00124\n\u0005field\u0018\u0002 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u00128\n\textension\u0018\u0006 \u0003(\u000b2%.google.protobuf.FieldDescriptorProto\u00125\n\u000bnested_type\u0018\u0003 \u0003(\u000b2 .google.protobuf.DescriptorProto\u00127\n\tenum_type\u0018\u0004 \u0003(\u000b2$.google.protobuf.EnumDescriptorProto\u0012H\n\u000fextension_range\u0018\u0005 \u0003(\u000b2/.google.protobuf.DescriptorProto.ExtensionRange\u00129\n\noneof_decl\u0018\u0008 \u0003(\u000b2%.google.protobuf.OneofDescriptorProto\u00120\n\u0007options\u0018\u0007 \u0001(\u000b2\u001f.google.protobuf.MessageOptions\u0012F\n\u000ereserved_range\u0018\t \u0003(\u000b2..google.protobuf.DescriptorProto.ReservedRange\u0012\u0015\n\rreserved_name\u0018\n \u0003(\t\u001ae\n\u000eExtensionRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\u00127\n\u0007options\u0018\u0003 \u0001(\u000b2&.google.protobuf.ExtensionRangeOptions\u001a+\n\rReservedRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\"g\n\u0015ExtensionRangeOptions\u0012C\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u00d5\u0005\n\u0014FieldDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0003 \u0001(\u0005\u0012:\n\u0005label\u0018\u0004 \u0001(\u000e2+.google.protobuf.FieldDescriptorProto.Label\u00128\n\u0004type\u0018\u0005 \u0001(\u000e2*.google.protobuf.FieldDescriptorProto.Type\u0012\u0011\n\ttype_name\u0018\u0006 \u0001(\t\u0012\u0010\n\u0008extendee\u0018\u0002 \u0001(\t\u0012\u0015\n\rdefault_value\u0018\u0007 \u0001(\t\u0012\u0013\n\u000boneof_index\u0018\t \u0001(\u0005\u0012\u0011\n\tjson_name\u0018\n \u0001(\t\u0012.\n\u0007options\u0018\u0008 \u0001(\u000b2\u001d.google.protobuf.FieldOptions\u0012\u0017\n\u000fproto3_optional\u0018\u0011 \u0001(\u0008\"\u00b6\u0002\n\u0004Type\u0012\u000f\n\u000bTYPE_DOUBLE\u0010\u0001\u0012\u000e\n\nTYPE_FLOAT\u0010\u0002\u0012\u000e\n\nTYPE_INT64\u0010\u0003\u0012\u000f\n\u000bTYPE_UINT64\u0010\u0004\u0012\u000e\n\nTYPE_INT32\u0010\u0005\u0012\u0010\n\u000cTYPE_FIXED64\u0010\u0006\u0012\u0010\n\u000cTYPE_FIXED32\u0010\u0007\u0012\r\n\tTYPE_BOOL\u0010\u0008\u0012\u000f\n\u000bTYPE_STRING\u0010\t\u0012\u000e\n\nTYPE_GROUP\u0010\n\u0012\u0010\n\u000cTYPE_MESSAGE\u0010\u000b\u0012\u000e\n\nTYPE_BYTES\u0010\u000c\u0012\u000f\n\u000bTYPE_UINT32\u0010\r\u0012\r\n\tTYPE_ENUM\u0010\u000e\u0012\u0011\n\rTYPE_SFIXED32\u0010\u000f\u0012\u0011\n\rTYPE_SFIXED64\u0010\u0010\u0012\u000f\n\u000bTYPE_SINT32\u0010\u0011\u0012\u000f\n\u000bTYPE_SINT64\u0010\u0012\"C\n\u0005Label\u0012\u0012\n\u000eLABEL_OPTIONAL\u0010\u0001\u0012\u0012\n\u000eLABEL_REQUIRED\u0010\u0002\u0012\u0012\n\u000eLABEL_REPEATED\u0010\u0003\"T\n\u0014OneofDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012.\n\u0007options\u0018\u0002 \u0001(\u000b2\u001d.google.protobuf.OneofOptions\"\u00a4\u0002\n\u0013EnumDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00128\n\u0005value\u0018\u0002 \u0003(\u000b2).google.protobuf.EnumValueDescriptorProto\u0012-\n\u0007options\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.EnumOptions\u0012N\n\u000ereserved_range\u0018\u0004 \u0003(\u000b26.google.protobuf.EnumDescriptorProto.EnumReservedRange\u0012\u0015\n\rreserved_name\u0018\u0005 \u0003(\t\u001a/\n\u0011EnumReservedRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\"l\n\u0018EnumValueDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006number\u0018\u0002 \u0001(\u0005\u00122\n\u0007options\u0018\u0003 \u0001(\u000b2!.google.protobuf.EnumValueOptions\"\u0090\u0001\n\u0016ServiceDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u00126\n\u0006method\u0018\u0002 \u0003(\u000b2&.google.protobuf.MethodDescriptorProto\u00120\n\u0007options\u0018\u0003 \u0001(\u000b2\u001f.google.protobuf.ServiceOptions\"\u00c1\u0001\n\u0015MethodDescriptorProto\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0012\n\ninput_type\u0018\u0002 \u0001(\t\u0012\u0013\n\u000boutput_type\u0018\u0003 \u0001(\t\u0012/\n\u0007options\u0018\u0004 \u0001(\u000b2\u001e.google.protobuf.MethodOptions\u0012\u001f\n\u0010client_streaming\u0018\u0005 \u0001(\u0008:\u0005false\u0012\u001f\n\u0010server_streaming\u0018\u0006 \u0001(\u0008:\u0005false\"\u00a5\u0006\n\u000bFileOptions\u0012\u0014\n\u000cjava_package\u0018\u0001 \u0001(\t\u0012\u001c\n\u0014java_outer_classname\u0018\u0008 \u0001(\t\u0012\"\n\u0013java_multiple_files\u0018\n \u0001(\u0008:\u0005false\u0012)\n\u001djava_generate_equals_and_hash\u0018\u0014 \u0001(\u0008B\u0002\u0018\u0001\u0012%\n\u0016java_string_check_utf8\u0018\u001b \u0001(\u0008:\u0005false\u0012F\n\u000coptimize_for\u0018\t \u0001(\u000e2).google.protobuf.FileOptions.OptimizeMode:\u0005SPEED\u0012\u0012\n\ngo_package\u0018\u000b \u0001(\t\u0012\"\n\u0013cc_generic_services\u0018\u0010 \u0001(\u0008:\u0005false\u0012$\n\u0015java_generic_services\u0018\u0011 \u0001(\u0008:\u0005false\u0012\"\n\u0013py_generic_services\u0018\u0012 \u0001(\u0008:\u0005false\u0012#\n\u0014php_generic_services\u0018* \u0001(\u0008:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0017 \u0001(\u0008:\u0005false\u0012\u001e\n\u0010cc_enable_arenas\u0018\u001f \u0001(\u0008:\u0004true\u0012\u0019\n\u0011objc_class_prefix\u0018$ \u0001(\t\u0012\u0018\n\u0010csharp_namespace\u0018% \u0001(\t\u0012\u0014\n\u000cswift_prefix\u0018\' \u0001(\t\u0012\u0018\n\u0010php_class_prefix\u0018( \u0001(\t\u0012\u0015\n\rphp_namespace\u0018) \u0001(\t\u0012\u001e\n\u0016php_metadata_namespace\u0018, \u0001(\t\u0012\u0014\n\u000cruby_package\u0018- \u0001(\t\u0012C\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\":\n\u000cOptimizeMode\u0012\t\n\u0005SPEED\u0010\u0001\u0012\r\n\tCODE_SIZE\u0010\u0002\u0012\u0010\n\u000cLITE_RUNTIME\u0010\u0003*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\u0008&\u0010\'\"\u00f2\u0001\n\u000eMessageOptions\u0012&\n\u0017message_set_wire_format\u0018\u0001 \u0001(\u0008:\u0005false\u0012.\n\u001fno_standard_descriptor_accessor\u0018\u0002 \u0001(\u0008:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\u0008:\u0005false\u0012\u0011\n\tmap_entry\u0018\u0007 \u0001(\u0008\u0012C\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\u0008\u0008\u0010\tJ\u0004\u0008\t\u0010\n\"\u009e\u0003\n\u000cFieldOptions\u0012:\n\u0005ctype\u0018\u0001 \u0001(\u000e2#.google.protobuf.FieldOptions.CType:\u0006STRING\u0012\u000e\n\u0006packed\u0018\u0002 \u0001(\u0008\u0012?\n\u0006jstype\u0018\u0006 \u0001(\u000e2$.google.protobuf.FieldOptions.JSType:\tJS_NORMAL\u0012\u0013\n\u0004lazy\u0018\u0005 \u0001(\u0008:\u0005false\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\u0008:\u0005false\u0012\u0013\n\u0004weak\u0018\n \u0001(\u0008:\u0005false\u0012C\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\"/\n\u0005CType\u0012\n\n\u0006STRING\u0010\u0000\u0012\u0008\n\u0004CORD\u0010\u0001\u0012\u0010\n\u000cSTRING_PIECE\u0010\u0002\"5\n\u0006JSType\u0012\r\n\tJS_NORMAL\u0010\u0000\u0012\r\n\tJS_STRING\u0010\u0001\u0012\r\n\tJS_NUMBER\u0010\u0002*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\u0008\u0004\u0010\u0005\"^\n\u000cOneofOptions\u0012C\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u0093\u0001\n\u000bEnumOptions\u0012\u0013\n\u000ballow_alias\u0018\u0002 \u0001(\u0008\u0012\u0019\n\ndeprecated\u0018\u0003 \u0001(\u0008:\u0005false\u0012C\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002J\u0004\u0008\u0005\u0010\u0006\"}\n\u0010EnumValueOptions\u0012\u0019\n\ndeprecated\u0018\u0001 \u0001(\u0008:\u0005false\u0012C\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"{\n\u000eServiceOptions\u0012\u0019\n\ndeprecated\u0018! \u0001(\u0008:\u0005false\u0012C\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u00ad\u0002\n\rMethodOptions\u0012\u0019\n\ndeprecated\u0018! \u0001(\u0008:\u0005false\u0012_\n\u0011idempotency_level\u0018\" \u0001(\u000e2/.google.protobuf.MethodOptions.IdempotencyLevel:\u0013IDEMPOTENCY_UNKNOWN\u0012C\n\u0014uninterpreted_option\u0018\u00e7\u0007 \u0003(\u000b2$.google.protobuf.UninterpretedOption\"P\n\u0010IdempotencyLevel\u0012\u0017\n\u0013IDEMPOTENCY_UNKNOWN\u0010\u0000\u0012\u0013\n\u000fNO_SIDE_EFFECTS\u0010\u0001\u0012\u000e\n\nIDEMPOTENT\u0010\u0002*\t\u0008\u00e8\u0007\u0010\u0080\u0080\u0080\u0080\u0002\"\u009e\u0002\n\u0013UninterpretedOption\u0012;\n\u0004name\u0018\u0002 \u0003(\u000b2-.google.protobuf.UninterpretedOption.NamePart\u0012\u0018\n\u0010identifier_value\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012positive_int_value\u0018\u0004 \u0001(\u0004\u0012\u001a\n\u0012negative_int_value\u0018\u0005 \u0001(\u0003\u0012\u0014\n\u000cdouble_value\u0018\u0006 \u0001(\u0001\u0012\u0014\n\u000cstring_value\u0018\u0007 \u0001(\u000c\u0012\u0017\n\u000faggregate_value\u0018\u0008 \u0001(\t\u001a3\n\u0008NamePart\u0012\u0011\n\tname_part\u0018\u0001 \u0002(\t\u0012\u0014\n\u000cis_extension\u0018\u0002 \u0002(\u0008\"\u00d5\u0001\n\u000eSourceCodeInfo\u0012:\n\u0008location\u0018\u0001 \u0003(\u000b2(.google.protobuf.SourceCodeInfo.Location\u001a\u0086\u0001\n\u0008Location\u0012\u0010\n\u0004path\u0018\u0001 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0010\n\u0004span\u0018\u0002 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0018\n\u0010leading_comments\u0018\u0003 \u0001(\t\u0012\u0019\n\u0011trailing_comments\u0018\u0004 \u0001(\t\u0012!\n\u0019leading_detached_comments\u0018\u0006 \u0003(\t\"\u00a7\u0001\n\u0011GeneratedCodeInfo\u0012A\n\nannotation\u0018\u0001 \u0003(\u000b2-.google.protobuf.GeneratedCodeInfo.Annotation\u001aO\n\nAnnotation\u0012\u0010\n\u0004path\u0018\u0001 \u0003(\u0005B\u0002\u0010\u0001\u0012\u0013\n\u000bsource_file\u0018\u0002 \u0001(\t\u0012\r\n\u0005begin\u0018\u0003 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0004 \u0001(\u0005B\u008f\u0001\n\u0013com.google.protobufB\u0010DescriptorProtosH\u0001Z>github.com/golang/protobuf/protoc-gen-go/descriptor;descriptor\u00f8\u0001\u0001\u00a2\u0002\u0003GPB\u00aa\u0002\u001aGoogle.Protobuf.Reflection"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lf8/w2;

    invoke-static {v0, v2}, Lf8/w2;->i([Ljava/lang/String;[Lf8/w2;)Lf8/w2;

    move-result-object v0

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    invoke-virtual {v2}, Lf8/m2;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lf8/p3;

    invoke-virtual {v2}, Lf8/m2;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lg5/i;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->a:Lf8/m2;

    new-instance v4, Lf8/x3;

    const-string v15, "SourceCodeInfo"

    const-string v16, "Syntax"

    const-string v5, "Name"

    const-string v6, "Package"

    const-string v7, "Dependency"

    const-string v8, "PublicDependency"

    const-string v9, "WeakDependency"

    const-string v10, "MessageType"

    const-string v11, "EnumType"

    const-string v12, "Service"

    const-string v13, "Extension"

    const-string v14, "Options"

    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v4, Lf8/l2;->b:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->c:Lf8/m2;

    new-instance v4, Lf8/x3;

    const-string v13, "ReservedRange"

    const-string v14, "ReservedName"

    const-string v5, "Name"

    const-string v6, "Field"

    const-string v7, "Extension"

    const-string v8, "NestedType"

    const-string v9, "EnumType"

    const-string v10, "ExtensionRange"

    const-string v11, "OneofDecl"

    const-string v12, "Options"

    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v4, Lf8/l2;->d:Lf8/x3;

    invoke-virtual {v2}, Lf8/m2;->j()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf8/m2;

    sput-object v4, Lf8/l2;->e:Lf8/m2;

    new-instance v5, Lf8/x3;

    const-string v6, "Start"

    const-string v7, "End"

    const-string v8, "Options"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v4, v9}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v5, Lf8/l2;->f:Lf8/x3;

    invoke-virtual {v2}, Lf8/m2;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->g:Lf8/m2;

    new-instance v3, Lf8/x3;

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->h:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->i:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v4, "UninterpretedOption"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->j:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->k:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v18, "Options"

    const-string v19, "Proto3Optional"

    const-string v9, "Name"

    const-string v10, "Number"

    const-string v11, "Label"

    const-string v12, "Type"

    const-string v13, "TypeName"

    const-string v14, "Extendee"

    const-string v15, "DefaultValue"

    const-string v16, "OneofIndex"

    const-string v17, "JsonName"

    filled-new-array/range {v9 .. v19}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->l:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->m:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v5, "Name"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v2, v9}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->n:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->o:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v9, "ReservedRange"

    const-string v10, "ReservedName"

    const-string v11, "Value"

    filled-new-array {v5, v11, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v2, v9}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->p:Lf8/x3;

    invoke-virtual {v2}, Lf8/m2;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->q:Lf8/m2;

    new-instance v3, Lf8/x3;

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->r:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->s:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v6, "Number"

    filled-new-array {v5, v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->t:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->u:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v6, "Method"

    filled-new-array {v5, v6, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->v:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->w:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v9, "ClientStreaming"

    const-string v10, "ServerStreaming"

    const-string v5, "Name"

    const-string v6, "InputType"

    const-string v7, "OutputType"

    const-string v8, "Options"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->x:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->y:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v24, "RubyPackage"

    const-string v25, "UninterpretedOption"

    const-string v5, "JavaPackage"

    const-string v6, "JavaOuterClassname"

    const-string v7, "JavaMultipleFiles"

    const-string v8, "JavaGenerateEqualsAndHash"

    const-string v9, "JavaStringCheckUtf8"

    const-string v10, "OptimizeFor"

    const-string v11, "GoPackage"

    const-string v12, "CcGenericServices"

    const-string v13, "JavaGenericServices"

    const-string v14, "PyGenericServices"

    const-string v15, "PhpGenericServices"

    const-string v16, "Deprecated"

    const-string v17, "CcEnableArenas"

    const-string v18, "ObjcClassPrefix"

    const-string v19, "CsharpNamespace"

    const-string v20, "SwiftPrefix"

    const-string v21, "PhpClassPrefix"

    const-string v22, "PhpNamespace"

    const-string v23, "PhpMetadataNamespace"

    filled-new-array/range {v5 .. v25}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->z:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xb

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->A:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v5, "MapEntry"

    const-string v6, "MessageSetWireFormat"

    const-string v7, "NoStandardDescriptorAccessor"

    const-string v8, "Deprecated"

    filled-new-array {v6, v7, v8, v5, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->B:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->C:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v14, "Weak"

    const-string v15, "UninterpretedOption"

    const-string v9, "Ctype"

    const-string v10, "Packed"

    const-string v11, "Jstype"

    const-string v12, "Lazy"

    const-string v13, "Deprecated"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->D:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xd

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->E:Lf8/m2;

    new-instance v3, Lf8/x3;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->F:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xe

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->G:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v5, "AllowAlias"

    filled-new-array {v5, v8, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->H:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xf

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->I:Lf8/m2;

    new-instance v3, Lf8/x3;

    filled-new-array {v8, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->J:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->K:Lf8/m2;

    new-instance v3, Lf8/x3;

    filled-new-array {v8, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->L:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x11

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->M:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v5, "IdempotencyLevel"

    filled-new-array {v8, v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->N:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x12

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->O:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v9, "StringValue"

    const-string v10, "AggregateValue"

    const-string v4, "Name"

    const-string v5, "IdentifierValue"

    const-string v6, "PositiveIntValue"

    const-string v7, "NegativeIntValue"

    const-string v8, "DoubleValue"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->P:Lf8/x3;

    invoke-virtual {v2}, Lf8/m2;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->Q:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v4, "NamePart"

    const-string v5, "IsExtension"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->R:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x13

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->S:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v4, "Location"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->T:Lf8/x3;

    invoke-virtual {v2}, Lf8/m2;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/m2;

    sput-object v2, Lf8/l2;->U:Lf8/m2;

    new-instance v3, Lf8/x3;

    const-string v4, "TrailingComments"

    const-string v5, "LeadingDetachedComments"

    const-string v6, "Path"

    const-string v7, "Span"

    const-string v8, "LeadingComments"

    filled-new-array {v6, v7, v8, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lf8/x3;-><init>(Lf8/m2;[Ljava/lang/String;)V

    sput-object v3, Lf8/l2;->V:Lf8/x3;

    invoke-virtual {v0}, Lf8/w2;->g()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x14

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/m2;

    invoke-virtual {v0}, Lf8/m2;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lf8/p3;

    invoke-virtual {v0}, Lf8/m2;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lg5/i;

    invoke-virtual {v0}, Lf8/m2;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/m2;

    invoke-virtual {v0}, Lf8/m2;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lf8/p3;

    invoke-virtual {v0}, Lf8/m2;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lg5/i;

    return-void
.end method
