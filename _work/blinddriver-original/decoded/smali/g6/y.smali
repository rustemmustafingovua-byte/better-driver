.class public final Lg6/y;
.super Lg6/f;
.source "SourceFile"


# static fields
.field public static final r:Lg6/y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg6/y;

    const-class v1, Lp6/a;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lg6/f;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    sput-object v0, Lg6/y;->r:Lg6/y;

    return-void
.end method


# virtual methods
.method public final Z(ZZ)Lb6/n;
    .locals 1

    new-instance v0, Lg6/y;

    invoke-direct {v0, p0, p1, p2}, Lg6/f;-><init>(Lg6/f;ZZ)V

    return-object v0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 7

    .line 9
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p2, Lb6/i;->q:Lb6/h;

    .line 11
    iget-object v4, v0, Lb6/h;->v:Lp6/m;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance v6, Lp6/a;

    invoke-direct {v6, v4}, Lp6/a;-><init>(Lp6/m;)V

    .line 14
    new-instance v5, Lad/s2;

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 15
    invoke-direct {v5, v0, v1}, Lad/s2;-><init>(IB)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 16
    invoke-virtual/range {v1 .. v6}, Lg6/f;->b0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;Lp6/f;)V

    return-object v6

    :cond_0
    move-object v2, p1

    move-object v3, p2

    .line 17
    const-class p0, Lp6/a;

    invoke-virtual {v3, p0, v2}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v5, p3

    check-cast v5, Lp6/a;

    .line 2
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p2, Lb6/i;->q:Lb6/h;

    .line 4
    iget-object v3, p3, Lb6/h;->v:Lp6/m;

    .line 5
    new-instance v4, Lad/s2;

    const/4 p3, 0x3

    const/4 v0, 0x0

    .line 6
    invoke-direct {v4, p3, v0}, Lad/s2;-><init>(IB)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 7
    invoke-virtual/range {v0 .. v5}, Lg6/f;->b0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;Lp6/f;)V

    return-object v5

    :cond_0
    move-object v1, p1

    move-object v2, p2

    .line 8
    const-class p0, Lp6/a;

    invoke-virtual {v2, p0, v1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    const/4 p0, 0x0

    throw p0
.end method
