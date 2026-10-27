.class public final Lg6/z;
.super Lg6/f;
.source "SourceFile"


# static fields
.field public static final r:Lg6/z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg6/z;

    const-class v1, Lp6/v;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lg6/f;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    sput-object v0, Lg6/z;->r:Lg6/z;

    return-void
.end method


# virtual methods
.method public final Z(ZZ)Lb6/n;
    .locals 1

    new-instance v0, Lg6/z;

    invoke-direct {v0, p0, p1, p2}, Lg6/f;-><init>(Lg6/f;ZZ)V

    return-object v0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 7

    .line 7
    iget-object v0, p2, Lb6/i;->q:Lb6/h;

    .line 8
    iget-object v4, v0, Lb6/h;->v:Lp6/m;

    .line 9
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v6, Lp6/v;

    invoke-direct {v6, v4}, Lp6/v;-><init>(Lp6/m;)V

    .line 12
    new-instance v5, Lad/s2;

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 13
    invoke-direct {v5, v0, v1}, Lad/s2;-><init>(IB)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 14
    invoke-virtual/range {v1 .. v6}, Lg6/f;->b0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;Lp6/f;)V

    return-object v6

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 15
    sget-object p0, Ls5/n;->y:Ls5/n;

    invoke-virtual {v2, p0}, Ls5/k;->q0(Ls5/n;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 16
    new-instance p0, Lad/s2;

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 17
    invoke-direct {p0, p1, p2}, Lad/s2;-><init>(IB)V

    .line 18
    invoke-virtual {v1, v2, v3, v4, p0}, Lg6/f;->c0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;)Lp6/v;

    move-result-object p0

    return-object p0

    .line 19
    :cond_1
    sget-object p0, Ls5/n;->v:Ls5/n;

    invoke-virtual {v2, p0}, Ls5/k;->q0(Ls5/n;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance p0, Lp6/v;

    invoke-direct {p0, v4}, Lp6/v;-><init>(Lp6/m;)V

    return-object p0

    .line 22
    :cond_2
    const-class p0, Lp6/v;

    invoke-virtual {v3, p0, v2}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p3, Lp6/v;

    .line 2
    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ls5/n;->y:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-class p0, Lp6/v;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    const/4 p0, 0x0

    throw p0

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lad/s2;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lad/s2;-><init>(IB)V

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lg6/f;->k0(Ls5/k;Lb6/i;Lp6/v;Lad/s2;)Lb6/q;

    move-result-object p0

    check-cast p0, Lp6/v;

    return-object p0
.end method
