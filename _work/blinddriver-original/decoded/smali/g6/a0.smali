.class public final Lg6/a0;
.super Lg6/f;
.source "SourceFile"


# static fields
.field public static final r:Lg6/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg6/a0;

    const-class v1, Lb6/q;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg6/f;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;)V

    sput-object v0, Lg6/a0;->r:Lg6/a0;

    return-void
.end method


# virtual methods
.method public final Z(ZZ)Lb6/n;
    .locals 1

    new-instance v0, Lg6/a0;

    invoke-direct {v0, p0, p1, p2}, Lg6/f;-><init>(Lg6/f;ZZ)V

    return-object v0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 6

    new-instance v4, Lad/s2;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {v4, v0, v1}, Lad/s2;-><init>(IB)V

    iget-object v0, p2, Lb6/i;->q:Lb6/h;

    iget-object v3, v0, Lb6/h;->v:Lp6/m;

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lg6/f;->a0(Ls5/k;Lb6/i;)Lb6/q;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, v3, v4}, Lg6/f;->c0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;)Lp6/v;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lp6/a;

    invoke-direct {v5, v3}, Lp6/a;-><init>(Lp6/m;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lg6/f;->b0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;Lp6/f;)V

    return-object v5

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lp6/v;

    invoke-direct {p0, v3}, Lp6/v;-><init>(Lp6/m;)V

    return-object p0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lp6/v;

    invoke-direct {v5, v3}, Lp6/v;-><init>(Lp6/m;)V

    invoke-virtual/range {v0 .. v5}, Lg6/f;->b0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;Lp6/f;)V

    return-object v5
.end method

.method public final getAbsentValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNullValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p1, Lb6/i;->q:Lb6/h;

    iget-object p0, p0, Lb6/h;->v:Lp6/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp6/t;->l:Lp6/t;

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lg6/f;->o:Ljava/lang/Boolean;

    return-object p0
.end method
