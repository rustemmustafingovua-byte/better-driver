.class public final enum Ls5/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum A:Ls5/j;

.field public static final enum B:Ls5/j;

.field public static final enum C:Ls5/j;

.field public static final enum D:Ls5/j;

.field public static final enum E:Ls5/j;

.field public static final enum F:Ls5/j;

.field public static final enum G:Ls5/j;

.field public static final synthetic H:[Ls5/j;

.field public static final enum n:Ls5/j;

.field public static final enum o:Ls5/j;

.field public static final enum p:Ls5/j;

.field public static final enum q:Ls5/j;

.field public static final enum r:Ls5/j;

.field public static final enum s:Ls5/j;

.field public static final enum t:Ls5/j;

.field public static final enum u:Ls5/j;

.field public static final enum v:Ls5/j;

.field public static final enum w:Ls5/j;

.field public static final enum x:Ls5/j;

.field public static final enum y:Ls5/j;

.field public static final enum z:Ls5/j;


# instance fields
.field public final l:Z

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, Ls5/j;

    const-string v0, "AUTO_CLOSE_SOURCE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Ls5/j;->n:Ls5/j;

    new-instance v0, Ls5/j;

    const-string v4, "ALLOW_COMMENTS"

    invoke-direct {v0, v4, v3, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Ls5/j;->o:Ls5/j;

    new-instance v3, Ls5/j;

    const-string v4, "ALLOW_YAML_COMMENTS"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Ls5/j;->p:Ls5/j;

    new-instance v4, Ls5/j;

    const-string v5, "ALLOW_UNQUOTED_FIELD_NAMES"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Ls5/j;->q:Ls5/j;

    new-instance v5, Ls5/j;

    const-string v6, "ALLOW_SINGLE_QUOTES"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Ls5/j;->r:Ls5/j;

    new-instance v6, Ls5/j;

    const-string v7, "ALLOW_UNQUOTED_CONTROL_CHARS"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Ls5/j;->s:Ls5/j;

    new-instance v7, Ls5/j;

    const-string v8, "ALLOW_RS_CONTROL_CHAR"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Ls5/j;->t:Ls5/j;

    new-instance v8, Ls5/j;

    const-string v9, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Ls5/j;->u:Ls5/j;

    new-instance v9, Ls5/j;

    const-string v10, "ALLOW_NUMERIC_LEADING_ZEROS"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Ls5/j;->v:Ls5/j;

    new-instance v10, Ls5/j;

    const-string v11, "ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Ls5/j;->w:Ls5/j;

    new-instance v11, Ls5/j;

    const-string v12, "ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Ls5/j;->x:Ls5/j;

    new-instance v12, Ls5/j;

    const-string v13, "ALLOW_TRAILING_DECIMAL_POINT_FOR_NUMBERS"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v12, Ls5/j;->y:Ls5/j;

    new-instance v13, Ls5/j;

    const-string v14, "ALLOW_NON_NUMERIC_NUMBERS"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v13, Ls5/j;->z:Ls5/j;

    new-instance v14, Ls5/j;

    const-string v15, "ALLOW_MISSING_VALUES"

    move-object/from16 v16, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Ls5/j;->A:Ls5/j;

    new-instance v15, Ls5/j;

    const-string v0, "ALLOW_TRAILING_COMMA"

    move-object/from16 v17, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v15, Ls5/j;->B:Ls5/j;

    new-instance v0, Ls5/j;

    const-string v1, "STRICT_DUPLICATE_DETECTION"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Ls5/j;->C:Ls5/j;

    new-instance v1, Ls5/j;

    const-string v3, "IGNORE_UNDEFINED"

    move-object/from16 v19, v0

    const/16 v0, 0x10

    invoke-direct {v1, v3, v0, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Ls5/j;->D:Ls5/j;

    new-instance v0, Ls5/j;

    const-string v3, "INCLUDE_SOURCE_IN_LOCATION"

    move-object/from16 v20, v1

    const/16 v1, 0x11

    invoke-direct {v0, v3, v1, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Ls5/j;->E:Ls5/j;

    new-instance v1, Ls5/j;

    const-string v3, "USE_FAST_DOUBLE_PARSER"

    move-object/from16 v21, v0

    const/16 v0, 0x12

    invoke-direct {v1, v3, v0, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Ls5/j;->F:Ls5/j;

    new-instance v0, Ls5/j;

    const-string v3, "USE_FAST_BIG_NUMBER_PARSER"

    move-object/from16 v22, v1

    const/16 v1, 0x13

    invoke-direct {v0, v3, v1, v2}, Ls5/j;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Ls5/j;->G:Ls5/j;

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move-object/from16 v19, v22

    move-object/from16 v20, v0

    filled-new-array/range {v1 .. v20}, [Ls5/j;

    move-result-object v0

    sput-object v0, Ls5/j;->H:[Ls5/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Ls5/j;->m:I

    iput-boolean p3, p0, Ls5/j;->l:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls5/j;
    .locals 1

    const-class v0, Ls5/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls5/j;

    return-object p0
.end method

.method public static values()[Ls5/j;
    .locals 1

    sget-object v0, Ls5/j;->H:[Ls5/j;

    invoke-virtual {v0}, [Ls5/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls5/j;

    return-object v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    iget p0, p0, Ls5/j;->m:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
