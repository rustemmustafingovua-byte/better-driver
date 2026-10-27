.class public final enum Ls5/s;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements La6/j;


# static fields
.field public static final enum o:Ls5/s;

.field public static final enum p:Ls5/s;

.field public static final synthetic q:[Ls5/s;


# instance fields
.field public final l:Z

.field public final m:I

.field public final n:Ls5/j;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ls5/s;

    const/4 v1, 0x0

    sget-object v2, Ls5/j;->n:Ls5/j;

    const-string v3, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v3, v1, v2}, Ls5/s;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v1, Ls5/s;

    const/4 v2, 0x1

    sget-object v3, Ls5/j;->C:Ls5/j;

    const-string v4, "STRICT_DUPLICATE_DETECTION"

    invoke-direct {v1, v4, v2, v3}, Ls5/s;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v2, Ls5/s;

    const/4 v3, 0x2

    sget-object v4, Ls5/j;->D:Ls5/j;

    const-string v5, "IGNORE_UNDEFINED"

    invoke-direct {v2, v5, v3, v4}, Ls5/s;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v3, Ls5/s;

    const/4 v4, 0x3

    sget-object v5, Ls5/j;->E:Ls5/j;

    const-string v6, "INCLUDE_SOURCE_IN_LOCATION"

    invoke-direct {v3, v6, v4, v5}, Ls5/s;-><init>(Ljava/lang/String;ILs5/j;)V

    new-instance v4, Ls5/s;

    const/4 v5, 0x4

    sget-object v6, Ls5/j;->F:Ls5/j;

    const-string v7, "USE_FAST_DOUBLE_PARSER"

    invoke-direct {v4, v7, v5, v6}, Ls5/s;-><init>(Ljava/lang/String;ILs5/j;)V

    sput-object v4, Ls5/s;->o:Ls5/s;

    new-instance v5, Ls5/s;

    const/4 v6, 0x5

    sget-object v7, Ls5/j;->G:Ls5/j;

    const-string v8, "USE_FAST_BIG_NUMBER_PARSER"

    invoke-direct {v5, v8, v6, v7}, Ls5/s;-><init>(Ljava/lang/String;ILs5/j;)V

    sput-object v5, Ls5/s;->p:Ls5/s;

    filled-new-array/range {v0 .. v5}, [Ls5/s;

    move-result-object v0

    sput-object v0, Ls5/s;->q:[Ls5/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILs5/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ls5/s;->n:Ls5/j;

    iget p1, p3, Ls5/j;->m:I

    iput p1, p0, Ls5/s;->m:I

    iget-boolean p1, p3, Ls5/j;->l:Z

    iput-boolean p1, p0, Ls5/s;->l:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls5/s;
    .locals 1

    const-class v0, Ls5/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls5/s;

    return-object p0
.end method

.method public static values()[Ls5/s;
    .locals 1

    sget-object v0, Ls5/s;->q:[Ls5/s;

    invoke-virtual {v0}, [Ls5/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls5/s;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Ls5/s;->l:Z

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Ls5/s;->m:I

    return p0
.end method
