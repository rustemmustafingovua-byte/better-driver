.class public final enum Lb6/x;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ld6/c;


# static fields
.field public static final enum A:Lb6/x;

.field public static final enum B:Lb6/x;

.field public static final enum C:Lb6/x;

.field public static final enum D:Lb6/x;

.field public static final enum E:Lb6/x;

.field public static final enum F:Lb6/x;

.field public static final enum G:Lb6/x;

.field public static final enum H:Lb6/x;

.field public static final enum I:Lb6/x;

.field public static final enum J:Lb6/x;

.field public static final enum K:Lb6/x;

.field public static final enum L:Lb6/x;

.field public static final enum M:Lb6/x;

.field public static final enum N:Lb6/x;

.field public static final enum O:Lb6/x;

.field public static final enum P:Lb6/x;

.field public static final enum Q:Lb6/x;

.field public static final enum R:Lb6/x;

.field public static final enum S:Lb6/x;

.field public static final enum T:Lb6/x;

.field public static final enum U:Lb6/x;

.field public static final enum V:Lb6/x;

.field public static final enum W:Lb6/x;

.field public static final enum X:Lb6/x;

.field public static final synthetic Y:[Lb6/x;

.field public static final enum n:Lb6/x;

.field public static final enum o:Lb6/x;

.field public static final enum p:Lb6/x;

.field public static final enum q:Lb6/x;

.field public static final enum r:Lb6/x;

.field public static final enum s:Lb6/x;

.field public static final enum t:Lb6/x;

.field public static final enum u:Lb6/x;

.field public static final enum v:Lb6/x;

.field public static final enum w:Lb6/x;

.field public static final enum x:Lb6/x;

.field public static final enum y:Lb6/x;

.field public static final enum z:Lb6/x;


# instance fields
.field public final l:Z

.field public final m:J


# direct methods
.method static constructor <clinit>()V
    .locals 41

    new-instance v1, Lb6/x;

    const-string v0, "USE_ANNOTATIONS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/x;->n:Lb6/x;

    new-instance v0, Lb6/x;

    const-string v4, "USE_GETTERS_AS_SETTERS"

    invoke-direct {v0, v4, v3, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/x;->o:Lb6/x;

    new-instance v4, Lb6/x;

    const-string v5, "PROPAGATE_TRANSIENT_MARKER"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lb6/x;->p:Lb6/x;

    move-object v5, v4

    new-instance v4, Lb6/x;

    const-string v6, "AUTO_DETECT_CREATORS"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lb6/x;->q:Lb6/x;

    move-object v6, v5

    new-instance v5, Lb6/x;

    const-string v7, "AUTO_DETECT_FIELDS"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lb6/x;->r:Lb6/x;

    move-object v7, v6

    new-instance v6, Lb6/x;

    const-string v8, "AUTO_DETECT_GETTERS"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lb6/x;->s:Lb6/x;

    move-object v8, v7

    new-instance v7, Lb6/x;

    const-string v9, "AUTO_DETECT_IS_GETTERS"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lb6/x;->t:Lb6/x;

    move-object v9, v8

    new-instance v8, Lb6/x;

    const-string v10, "AUTO_DETECT_SETTERS"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lb6/x;->u:Lb6/x;

    move-object v10, v9

    new-instance v9, Lb6/x;

    const-string v11, "REQUIRE_SETTERS_FOR_GETTERS"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v2}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lb6/x;->v:Lb6/x;

    move-object v11, v10

    new-instance v10, Lb6/x;

    const-string v12, "ALLOW_FINAL_FIELDS_AS_MUTATORS"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lb6/x;->w:Lb6/x;

    move-object v12, v11

    new-instance v11, Lb6/x;

    const-string v13, "INFER_PROPERTY_MUTATORS"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lb6/x;->x:Lb6/x;

    move-object v13, v12

    new-instance v12, Lb6/x;

    const-string v14, "INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Lb6/x;->y:Lb6/x;

    move-object v14, v13

    new-instance v13, Lb6/x;

    const-string v15, "ALLOW_VOID_VALUED_PROPERTIES"

    const/16 v3, 0xc

    invoke-direct {v13, v15, v3, v2}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Lb6/x;->z:Lb6/x;

    move-object v3, v14

    new-instance v14, Lb6/x;

    const-string v15, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    const/16 v2, 0xd

    move-object/from16 v18, v0

    const/4 v0, 0x1

    invoke-direct {v14, v15, v2, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lb6/x;->A:Lb6/x;

    new-instance v15, Lb6/x;

    const-string v2, "OVERRIDE_PUBLIC_ACCESS_MODIFIERS"

    move-object/from16 v19, v1

    const/16 v1, 0xe

    invoke-direct {v15, v2, v1, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Lb6/x;->B:Lb6/x;

    new-instance v0, Lb6/x;

    const-string v1, "INVERSE_READ_WRITE_ACCESS"

    const/16 v2, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/x;->C:Lb6/x;

    new-instance v1, Lb6/x;

    const-string v2, "USE_STATIC_TYPING"

    move-object/from16 v21, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/x;->D:Lb6/x;

    new-instance v0, Lb6/x;

    const-string v2, "USE_BASE_TYPE_AS_DEFAULT_IMPL"

    move-object/from16 v22, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1, v3}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/x;->E:Lb6/x;

    new-instance v1, Lb6/x;

    const-string v2, "INFER_BUILDER_TYPE_BINDINGS"

    const/16 v3, 0x12

    move-object/from16 v23, v0

    const/4 v0, 0x1

    invoke-direct {v1, v2, v3, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/x;->F:Lb6/x;

    new-instance v2, Lb6/x;

    const-string v3, "REQUIRE_TYPE_ID_FOR_SUBTYPES"

    move-object/from16 v24, v1

    const/16 v1, 0x13

    invoke-direct {v2, v3, v1, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lb6/x;->G:Lb6/x;

    new-instance v1, Lb6/x;

    const-string v3, "DEFAULT_VIEW_INCLUSION"

    move-object/from16 v25, v2

    const/16 v2, 0x14

    invoke-direct {v1, v3, v2, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/x;->H:Lb6/x;

    new-instance v2, Lb6/x;

    const-string v3, "SORT_PROPERTIES_ALPHABETICALLY"

    const/16 v0, 0x15

    move-object/from16 v26, v1

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lb6/x;->I:Lb6/x;

    new-instance v0, Lb6/x;

    const-string v3, "SORT_CREATOR_PROPERTIES_FIRST"

    const/16 v1, 0x16

    move-object/from16 v27, v2

    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/x;->J:Lb6/x;

    new-instance v1, Lb6/x;

    const-string v2, "SORT_CREATOR_PROPERTIES_BY_DECLARATION_ORDER"

    const/16 v3, 0x17

    move-object/from16 v28, v0

    const/4 v0, 0x0

    invoke-direct {v1, v2, v3, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/x;->K:Lb6/x;

    new-instance v2, Lb6/x;

    const-string v3, "ACCEPT_CASE_INSENSITIVE_PROPERTIES"

    move-object/from16 v29, v1

    const/16 v1, 0x18

    invoke-direct {v2, v3, v1, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lb6/x;->L:Lb6/x;

    new-instance v1, Lb6/x;

    const-string v3, "ACCEPT_CASE_INSENSITIVE_ENUMS"

    move-object/from16 v30, v2

    const/16 v2, 0x19

    invoke-direct {v1, v3, v2, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/x;->M:Lb6/x;

    new-instance v2, Lb6/x;

    const-string v3, "ACCEPT_CASE_INSENSITIVE_VALUES"

    move-object/from16 v31, v1

    const/16 v1, 0x1a

    invoke-direct {v2, v3, v1, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lb6/x;->N:Lb6/x;

    new-instance v1, Lb6/x;

    const-string v3, "USE_WRAPPER_NAME_AS_PROPERTY_NAME"

    move-object/from16 v32, v2

    const/16 v2, 0x1b

    invoke-direct {v1, v3, v2, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/x;->O:Lb6/x;

    new-instance v2, Lb6/x;

    const-string v3, "USE_STD_BEAN_NAMING"

    move-object/from16 v33, v1

    const/16 v1, 0x1c

    invoke-direct {v2, v3, v1, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lb6/x;->P:Lb6/x;

    new-instance v1, Lb6/x;

    const-string v3, "ALLOW_EXPLICIT_PROPERTY_RENAMING"

    move-object/from16 v34, v2

    const/16 v2, 0x1d

    invoke-direct {v1, v3, v2, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/x;->Q:Lb6/x;

    new-instance v2, Lb6/x;

    const-string v3, "ALLOW_IS_GETTERS_FOR_NON_BOOLEAN"

    move-object/from16 v35, v1

    const/16 v1, 0x1e

    invoke-direct {v2, v3, v1, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lb6/x;->R:Lb6/x;

    new-instance v0, Lb6/x;

    const-string v1, "ALLOW_COERCION_OF_SCALARS"

    const/16 v3, 0x1f

    move-object/from16 v36, v2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/x;->S:Lb6/x;

    new-instance v1, Lb6/x;

    const-string v3, "IGNORE_DUPLICATE_MODULE_REGISTRATIONS"

    move-object/from16 v16, v0

    const/16 v0, 0x20

    invoke-direct {v1, v3, v0, v2}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/x;->T:Lb6/x;

    new-instance v0, Lb6/x;

    const-string v3, "IGNORE_MERGE_FOR_UNMERGEABLE"

    move-object/from16 v37, v1

    const/16 v1, 0x21

    invoke-direct {v0, v3, v1, v2}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/x;->U:Lb6/x;

    new-instance v1, Lb6/x;

    const-string v3, "BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES"

    const/16 v2, 0x22

    move-object/from16 v39, v0

    const/4 v0, 0x0

    invoke-direct {v1, v3, v2, v0}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lb6/x;->V:Lb6/x;

    new-instance v0, Lb6/x;

    const-string v2, "APPLY_DEFAULT_VALUES"

    const/16 v3, 0x23

    move-object/from16 v17, v1

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    new-instance v2, Lb6/x;

    const-string v3, "REQUIRE_HANDLERS_FOR_JAVA8_OPTIONALS"

    move-object/from16 v38, v0

    const/16 v0, 0x24

    invoke-direct {v2, v3, v0, v1}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lb6/x;->W:Lb6/x;

    new-instance v0, Lb6/x;

    const-string v3, "REQUIRE_HANDLERS_FOR_JAVA8_TIMES"

    move-object/from16 v40, v2

    const/16 v2, 0x25

    invoke-direct {v0, v3, v2, v1}, Lb6/x;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lb6/x;->X:Lb6/x;

    move-object/from16 v2, v18

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    move-object/from16 v18, v23

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v28, v33

    move-object/from16 v29, v34

    move-object/from16 v30, v35

    move-object/from16 v33, v37

    move-object/from16 v34, v39

    move-object/from16 v37, v40

    move-object/from16 v35, v17

    move-object/from16 v17, v22

    move-object/from16 v22, v27

    move-object/from16 v27, v32

    move-object/from16 v32, v16

    move-object/from16 v16, v21

    move-object/from16 v21, v26

    move-object/from16 v26, v31

    move-object/from16 v31, v36

    move-object/from16 v36, v38

    move-object/from16 v38, v0

    filled-new-array/range {v1 .. v38}, [Lb6/x;

    move-result-object v0

    sput-object v0, Lb6/x;->Y:[Lb6/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lb6/x;->l:Z

    const-wide/16 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    shl-long/2addr p1, p3

    iput-wide p1, p0, Lb6/x;->m:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb6/x;
    .locals 1

    const-class v0, Lb6/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb6/x;

    return-object p0
.end method

.method public static values()[Lb6/x;
    .locals 1

    sget-object v0, Lb6/x;->Y:[Lb6/x;

    invoke-virtual {v0}, [Lb6/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb6/x;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lb6/x;->l:Z

    return p0
.end method

.method public final b()I
    .locals 2

    iget-wide v0, p0, Lb6/x;->m:J

    long-to-int p0, v0

    return p0
.end method
