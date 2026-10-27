.class public final enum Ly5/g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements La6/j;


# static fields
.field public static final enum o:Ly5/g;

.field public static final enum p:Ly5/g;

.field public static final synthetic q:[Ly5/g;


# instance fields
.field public final l:Z

.field public final m:I

.field public final n:Ls5/f;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ly5/g;

    sget-object v1, Ls5/f;->q:Ls5/f;

    const-string v2, "QUOTE_FIELD_NAMES"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Ly5/g;-><init>(Ljava/lang/String;IZLs5/f;)V

    new-instance v1, Ly5/g;

    const-string v2, "WRITE_NAN_AS_STRINGS"

    sget-object v5, Ls5/f;->r:Ls5/f;

    invoke-direct {v1, v2, v4, v4, v5}, Ly5/g;-><init>(Ljava/lang/String;IZLs5/f;)V

    new-instance v2, Ly5/g;

    const/4 v5, 0x2

    sget-object v6, Ls5/f;->t:Ls5/f;

    const-string v7, "WRITE_NUMBERS_AS_STRINGS"

    invoke-direct {v2, v7, v5, v3, v6}, Ly5/g;-><init>(Ljava/lang/String;IZLs5/f;)V

    move v5, v3

    new-instance v3, Ly5/g;

    const/4 v6, 0x3

    sget-object v7, Ls5/f;->s:Ls5/f;

    const-string v8, "ESCAPE_NON_ASCII"

    invoke-direct {v3, v8, v6, v5, v7}, Ly5/g;-><init>(Ljava/lang/String;IZLs5/f;)V

    sput-object v3, Ly5/g;->o:Ly5/g;

    move v6, v4

    new-instance v4, Ly5/g;

    const/4 v7, 0x4

    sget-object v8, Ls5/f;->x:Ls5/f;

    const-string v9, "WRITE_HEX_UPPER_CASE"

    invoke-direct {v4, v9, v7, v6, v8}, Ly5/g;-><init>(Ljava/lang/String;IZLs5/f;)V

    move v6, v5

    new-instance v5, Ly5/g;

    const/4 v7, 0x5

    sget-object v8, Ls5/f;->y:Ls5/f;

    const-string v9, "ESCAPE_FORWARD_SLASHES"

    invoke-direct {v5, v9, v7, v6, v8}, Ly5/g;-><init>(Ljava/lang/String;IZLs5/f;)V

    sput-object v5, Ly5/g;->p:Ly5/g;

    move v7, v6

    new-instance v6, Ly5/g;

    const/4 v8, 0x6

    sget-object v9, Ls5/f;->z:Ls5/f;

    const-string v10, "COMBINE_UNICODE_SURROGATES_IN_UTF8"

    invoke-direct {v6, v10, v8, v7, v9}, Ly5/g;-><init>(Ljava/lang/String;IZLs5/f;)V

    filled-new-array/range {v0 .. v6}, [Ly5/g;

    move-result-object v0

    sput-object v0, Ly5/g;->q:[Ly5/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLs5/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Ly5/g;->l:Z

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Ly5/g;->m:I

    iput-object p4, p0, Ly5/g;->n:Ls5/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly5/g;
    .locals 1

    const-class v0, Ly5/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly5/g;

    return-object p0
.end method

.method public static values()[Ly5/g;
    .locals 1

    sget-object v0, Ly5/g;->q:[Ly5/g;

    invoke-virtual {v0}, [Ly5/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly5/g;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Ly5/g;->l:Z

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Ly5/g;->m:I

    return p0
.end method
