.class public final enum Ly5/e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements La6/j;


# static fields
.field public static final enum n:Ly5/e;

.field public static final enum o:Ly5/e;

.field public static final enum p:Ly5/e;

.field public static final synthetic q:[Ly5/e;


# instance fields
.field public final l:I

.field public final m:Ls5/j;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Ly5/e;

    const/4 v1, 0x0

    sget-object v2, Ls5/j;->o:Ls5/j;

    const-string v3, "ALLOW_JAVA_COMMENTS"

    invoke-direct {v0, v3, v1, v2}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v1, Ly5/e;

    const/4 v2, 0x1

    sget-object v3, Ls5/j;->p:Ls5/j;

    const-string v4, "ALLOW_YAML_COMMENTS"

    invoke-direct {v1, v4, v2, v3}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v2, Ly5/e;

    const/4 v3, 0x2

    sget-object v4, Ls5/j;->r:Ls5/j;

    const-string v5, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v2, v5, v3, v4}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v3, Ly5/e;

    const/4 v4, 0x3

    sget-object v5, Ls5/j;->q:Ls5/j;

    const-string v6, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v3, v6, v4, v5}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v4, Ly5/e;

    const/4 v5, 0x4

    sget-object v6, Ls5/j;->s:Ls5/j;

    const-string v7, "ALLOW_UNESCAPED_CONTROL_CHARS"

    invoke-direct {v4, v7, v5, v6}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v5, Ly5/e;

    const/4 v6, 0x5

    sget-object v7, Ls5/j;->t:Ls5/j;

    const-string v8, "ALLOW_RS_CONTROL_CHAR"

    invoke-direct {v5, v8, v6, v7}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v6, Ly5/e;

    const/4 v7, 0x6

    sget-object v8, Ls5/j;->u:Ls5/j;

    const-string v9, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    invoke-direct {v6, v9, v7, v8}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v7, Ly5/e;

    const/4 v8, 0x7

    sget-object v9, Ls5/j;->v:Ls5/j;

    const-string v10, "ALLOW_LEADING_ZEROS_FOR_NUMBERS"

    invoke-direct {v7, v10, v8, v9}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v8, Ly5/e;

    const/16 v9, 0x8

    sget-object v10, Ls5/j;->w:Ls5/j;

    const-string v11, "ALLOW_LEADING_PLUS_SIGN_FOR_NUMBERS"

    invoke-direct {v8, v11, v9, v10}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    sput-object v8, Ly5/e;->n:Ly5/e;

    new-instance v9, Ly5/e;

    const/16 v10, 0x9

    sget-object v11, Ls5/j;->x:Ls5/j;

    const-string v12, "ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS"

    invoke-direct {v9, v12, v10, v11}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    sput-object v9, Ly5/e;->o:Ly5/e;

    new-instance v10, Ly5/e;

    const/16 v11, 0xa

    sget-object v12, Ls5/j;->y:Ls5/j;

    const-string v13, "ALLOW_TRAILING_DECIMAL_POINT_FOR_NUMBERS"

    invoke-direct {v10, v13, v11, v12}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    sput-object v10, Ly5/e;->p:Ly5/e;

    new-instance v11, Ly5/e;

    const/16 v12, 0xb

    sget-object v13, Ls5/j;->z:Ls5/j;

    const-string v14, "ALLOW_NON_NUMERIC_NUMBERS"

    invoke-direct {v11, v14, v12, v13}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v12, Ly5/e;

    const/16 v13, 0xc

    sget-object v14, Ls5/j;->A:Ls5/j;

    const-string v15, "ALLOW_MISSING_VALUES"

    invoke-direct {v12, v15, v13, v14}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v13, Ly5/e;

    const/16 v14, 0xd

    sget-object v15, Ls5/j;->B:Ls5/j;

    move-object/from16 v16, v0

    const-string v0, "ALLOW_TRAILING_COMMA"

    invoke-direct {v13, v0, v14, v15}, Ly5/e;-><init>(Ljava/lang/String;ILs5/j;)V

    move-object/from16 v0, v16

    filled-new-array/range {v0 .. v13}, [Ly5/e;

    move-result-object v0

    sput-object v0, Ly5/e;->q:[Ly5/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILs5/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Ly5/e;->l:I

    iput-object p3, p0, Ly5/e;->m:Ls5/j;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly5/e;
    .locals 1

    const-class v0, Ly5/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly5/e;

    return-object p0
.end method

.method public static values()[Ly5/e;
    .locals 1

    sget-object v0, Ly5/e;->q:[Ly5/e;

    invoke-virtual {v0}, [Ly5/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly5/e;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Ly5/e;->l:I

    return p0
.end method
