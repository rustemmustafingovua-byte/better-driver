.class public final enum Lb6/j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ld6/c;


# static fields
.field public static final enum A:Lb6/j;

.field public static final enum B:Lb6/j;

.field public static final enum C:Lb6/j;

.field public static final enum D:Lb6/j;

.field public static final enum E:Lb6/j;

.field public static final enum F:Lb6/j;

.field public static final enum G:Lb6/j;

.field public static final enum H:Lb6/j;

.field public static final enum I:Lb6/j;

.field public static final enum J:Lb6/j;

.field public static final enum K:Lb6/j;

.field public static final enum L:Lb6/j;

.field public static final enum M:Lb6/j;

.field public static final enum N:Lb6/j;

.field public static final synthetic O:[Lb6/j;

.field public static final enum n:Lb6/j;

.field public static final enum o:Lb6/j;

.field public static final enum p:Lb6/j;

.field public static final enum q:Lb6/j;

.field public static final enum r:Lb6/j;

.field public static final enum s:Lb6/j;

.field public static final enum t:Lb6/j;

.field public static final enum u:Lb6/j;

.field public static final enum v:Lb6/j;

.field public static final enum w:Lb6/j;

.field public static final enum x:Lb6/j;

.field public static final enum y:Lb6/j;

.field public static final enum z:Lb6/j;


# instance fields
.field public final l:Z

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    new-instance v1, Lb6/j;

    const-string v0, "USE_BIG_DECIMAL_FOR_FLOATS"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/j;->n:Lb6/j;

    new-instance v0, Lb6/j;

    const-string v3, "USE_BIG_INTEGER_FOR_INTS"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/j;->o:Lb6/j;

    new-instance v3, Lb6/j;

    const-string v5, "USE_LONG_FOR_INTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lb6/j;->p:Lb6/j;

    new-instance v5, Lb6/j;

    const-string v6, "USE_JAVA_ARRAY_FOR_JSON_ARRAY"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lb6/j;->q:Lb6/j;

    move-object v6, v5

    new-instance v5, Lb6/j;

    const-string v7, "FAIL_ON_UNKNOWN_PROPERTIES"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v4}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lb6/j;->r:Lb6/j;

    move-object v7, v6

    new-instance v6, Lb6/j;

    const-string v8, "FAIL_ON_NULL_FOR_PRIMITIVES"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lb6/j;->s:Lb6/j;

    move-object v8, v7

    new-instance v7, Lb6/j;

    const-string v9, "FAIL_ON_NUMBERS_FOR_ENUMS"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lb6/j;->t:Lb6/j;

    move-object v9, v8

    new-instance v8, Lb6/j;

    const-string v10, "FAIL_ON_INVALID_SUBTYPE"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v4}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lb6/j;->u:Lb6/j;

    move-object v10, v9

    new-instance v9, Lb6/j;

    const-string v11, "FAIL_ON_READING_DUP_TREE_KEY"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lb6/j;->v:Lb6/j;

    move-object v11, v10

    new-instance v10, Lb6/j;

    const-string v12, "FAIL_ON_IGNORED_PROPERTIES"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lb6/j;->w:Lb6/j;

    move-object v12, v11

    new-instance v11, Lb6/j;

    const-string v13, "FAIL_ON_UNRESOLVED_OBJECT_IDS"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v4}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lb6/j;->x:Lb6/j;

    move-object v13, v12

    new-instance v12, Lb6/j;

    const-string v14, "FAIL_ON_MISSING_CREATOR_PROPERTIES"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lb6/j;->y:Lb6/j;

    move-object v14, v13

    new-instance v13, Lb6/j;

    const-string v15, "FAIL_ON_NULL_CREATOR_PROPERTIES"

    const/16 v4, 0xc

    invoke-direct {v13, v15, v4, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lb6/j;->z:Lb6/j;

    move-object v4, v14

    new-instance v14, Lb6/j;

    const-string v15, "FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY"

    const/16 v2, 0xd

    move-object/from16 v18, v0

    const/4 v0, 0x1

    invoke-direct {v14, v15, v2, v0}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lb6/j;->A:Lb6/j;

    new-instance v15, Lb6/j;

    const-string v0, "FAIL_ON_TRAILING_TOKENS"

    const/16 v2, 0xe

    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-direct {v15, v0, v2, v1}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lb6/j;->B:Lb6/j;

    new-instance v0, Lb6/j;

    const-string v2, "FAIL_ON_SUBTYPE_CLASS_NOT_REGISTERED"

    move-object/from16 v17, v3

    const/16 v3, 0xf

    invoke-direct {v0, v2, v3, v1}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/j;->C:Lb6/j;

    new-instance v2, Lb6/j;

    const-string v3, "WRAP_EXCEPTIONS"

    const/16 v1, 0x10

    move-object/from16 v21, v0

    const/4 v0, 0x1

    invoke-direct {v2, v3, v1, v0}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lb6/j;->D:Lb6/j;

    new-instance v0, Lb6/j;

    const-string v1, "FAIL_ON_UNEXPECTED_VIEW_PROPERTIES"

    const/16 v3, 0x11

    move-object/from16 v22, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    new-instance v1, Lb6/j;

    const-string v3, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v3, v0, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/j;->E:Lb6/j;

    new-instance v0, Lb6/j;

    const-string v3, "UNWRAP_SINGLE_VALUE_ARRAYS"

    move-object/from16 v23, v1

    const/16 v1, 0x13

    invoke-direct {v0, v3, v1, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/j;->F:Lb6/j;

    new-instance v1, Lb6/j;

    const-string v3, "UNWRAP_ROOT_VALUE"

    move-object/from16 v24, v0

    const/16 v0, 0x14

    invoke-direct {v1, v3, v0, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/j;->G:Lb6/j;

    new-instance v0, Lb6/j;

    const-string v3, "ACCEPT_EMPTY_STRING_AS_NULL_OBJECT"

    move-object/from16 v25, v1

    const/16 v1, 0x15

    invoke-direct {v0, v3, v1, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/j;->H:Lb6/j;

    new-instance v1, Lb6/j;

    const-string v3, "ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT"

    move-object/from16 v26, v0

    const/16 v0, 0x16

    invoke-direct {v1, v3, v0, v2}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/j;->I:Lb6/j;

    new-instance v0, Lb6/j;

    const-string v3, "ACCEPT_FLOAT_AS_INT"

    const/16 v2, 0x17

    move-object/from16 v28, v1

    const/4 v1, 0x1

    invoke-direct {v0, v3, v2, v1}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/j;->J:Lb6/j;

    new-instance v1, Lb6/j;

    const-string v2, "READ_ENUMS_USING_TO_STRING"

    const/16 v3, 0x18

    move-object/from16 v29, v0

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v0}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/j;->K:Lb6/j;

    new-instance v2, Lb6/j;

    const-string v3, "READ_UNKNOWN_ENUM_VALUES_AS_NULL"

    move-object/from16 v27, v1

    const/16 v1, 0x19

    invoke-direct {v2, v3, v1, v0}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lb6/j;->L:Lb6/j;

    new-instance v1, Lb6/j;

    const-string v3, "READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE"

    move-object/from16 v30, v2

    const/16 v2, 0x1a

    invoke-direct {v1, v3, v2, v0}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/j;->M:Lb6/j;

    new-instance v0, Lb6/j;

    const-string v2, "READ_DATE_TIMESTAMPS_AS_NANOSECONDS"

    const/16 v3, 0x1b

    move-object/from16 v31, v1

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    new-instance v2, Lb6/j;

    const-string v3, "ADJUST_DATES_TO_CONTEXT_TIME_ZONE"

    move-object/from16 v16, v0

    const/16 v0, 0x1c

    invoke-direct {v2, v3, v0, v1}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    new-instance v0, Lb6/j;

    const-string v3, "EAGER_DESERIALIZER_FETCH"

    move-object/from16 v32, v2

    const/16 v2, 0x1d

    invoke-direct {v0, v3, v2, v1}, Lb6/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/j;->N:Lb6/j;

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    move-object/from16 v18, v20

    move-object/from16 v17, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move-object/from16 v22, v26

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v26, v30

    move-object/from16 v29, v32

    move-object/from16 v30, v0

    move-object/from16 v28, v16

    move-object/from16 v16, v21

    move-object/from16 v21, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v31

    filled-new-array/range {v1 .. v30}, [Lb6/j;

    move-result-object v0

    sput-object v0, Lb6/j;->O:[Lb6/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lb6/j;->l:Z

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lb6/j;->m:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb6/j;
    .locals 1

    const-class v0, Lb6/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb6/j;

    return-object p0
.end method

.method public static values()[Lb6/j;
    .locals 1

    sget-object v0, Lb6/j;->O:[Lb6/j;

    invoke-virtual {v0}, [Lb6/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb6/j;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lb6/j;->l:Z

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lb6/j;->m:I

    return p0
.end method
