.class public final enum Ld6/l;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ld6/g;


# static fields
.field public static final enum n:Ld6/l;

.field public static final enum o:Ld6/l;

.field public static final enum p:Ld6/l;

.field public static final enum q:Ld6/l;

.field public static final enum r:Ld6/l;

.field public static final enum s:Ld6/l;

.field public static final synthetic t:[Ld6/l;


# instance fields
.field public final l:Z

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ld6/l;

    const-string v1, "READ_NULL_PROPERTIES"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ld6/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Ld6/l;->n:Ld6/l;

    new-instance v1, Ld6/l;

    const-string v4, "WRITE_NULL_PROPERTIES"

    invoke-direct {v1, v4, v3, v3}, Ld6/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Ld6/l;->o:Ld6/l;

    move v4, v2

    new-instance v2, Ld6/l;

    const-string v5, "WRITE_PROPERTIES_SORTED"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Ld6/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Ld6/l;->p:Ld6/l;

    move v5, v3

    new-instance v3, Ld6/l;

    const-string v6, "STRIP_TRAILING_BIGDECIMAL_ZEROES"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v5}, Ld6/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Ld6/l;->q:Ld6/l;

    move v5, v4

    new-instance v4, Ld6/l;

    const-string v6, "FAIL_ON_NAN_TO_BIG_DECIMAL_COERCION"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Ld6/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Ld6/l;->r:Ld6/l;

    move v6, v5

    new-instance v5, Ld6/l;

    const-string v7, "USE_BIG_DECIMAL_FOR_FLOATS"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Ld6/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Ld6/l;->s:Ld6/l;

    filled-new-array/range {v0 .. v5}, [Ld6/l;

    move-result-object v0

    sput-object v0, Ld6/l;->t:[Ld6/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Ld6/l;->l:Z

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Ld6/l;->m:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld6/l;
    .locals 1

    const-class v0, Ld6/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld6/l;

    return-object p0
.end method

.method public static values()[Ld6/l;
    .locals 1

    sget-object v0, Ld6/l;->t:[Ld6/l;

    invoke-virtual {v0}, [Ld6/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld6/l;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Ld6/l;->l:Z

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Ld6/l;->m:I

    return p0
.end method

.method public final c(I)Z
    .locals 0

    iget p0, p0, Ld6/l;->m:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
