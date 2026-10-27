.class public final Lg6/m0;
.super Lg6/p0;
.source "SourceFile"


# static fields
.field public static final s:Lg6/m0;

.field public static final t:Lg6/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg6/m0;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Lg6/m0;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    sput-object v0, Lg6/m0;->s:Lg6/m0;

    new-instance v0, Lg6/m0;

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg6/m0;-><init>(Ljava/lang/Class;Ljava/lang/Integer;)V

    sput-object v0, Lg6/m0;->t:Lg6/m0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lt6/f;->q:Lt6/f;

    invoke-direct {p0, p1, v1, p2, v0}, Lg6/p0;-><init>(Ljava/lang/Class;Lt6/f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ls5/k;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->X()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lg6/p0;->r:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lg6/f1;->H(Ls5/k;Lb6/i;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, v0}, Lg6/f1;->I(Ls5/k;Lb6/i;Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ls5/k;->t0()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ls5/k;->X()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean p3, p0, Lg6/p0;->r:Z

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lg6/f1;->H(Ls5/k;Lb6/i;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const-class p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lg6/f1;->I(Ls5/k;Lb6/i;Ljava/lang/Class;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final isCachable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
