.class public final Lpb/w;
.super Lpb/i;
.source "SourceFile"

# interfaces
.implements Lpb/b0;


# instance fields
.field public final o:Lpb/d;


# direct methods
.method public constructor <init>(Lpb/d;Lpb/m;)V
    .locals 2

    invoke-direct {p0, p2}, Lpb/i;-><init>(Lpb/m;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p2, Lpb/m;->m:Lqb/b;

    new-array p2, v0, [Lpb/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lqb/a;

    invoke-direct {p1, p2}, Lqb/a;-><init>([Lpb/a;)V

    :cond_0
    invoke-interface {p1}, Lpb/d;->size()I

    move-result p2

    const/4 v1, 0x1

    if-gt p2, v1, :cond_1

    move v0, v1

    :cond_1
    const/4 p2, 0x0

    invoke-static {p2, v0}, Ly4/s;->w(Ljava/lang/String;Z)V

    iput-object p1, p0, Lpb/w;->o:Lpb/d;

    return-void
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 0

    const-string p0, "Point"

    return-object p0
.end method

.method public final F()I
    .locals 0

    invoke-virtual {p0}, Lpb/w;->L()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final G()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final L()Z
    .locals 0

    iget-object p0, p0, Lpb/w;->o:Lpb/d;

    invoke-interface {p0}, Lpb/d;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Lc5/o;)V
    .locals 0

    invoke-virtual {p1, p0}, Lc5/o;->a(Lpb/i;)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lpb/i;->o()Lpb/i;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lg5/e;)V
    .locals 1

    invoke-virtual {p0}, Lpb/w;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lpb/w;->o:Lpb/d;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lg5/e;->k(Lpb/d;I)V

    return-void
.end method

.method public final getDimension()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h(Lpb/l;)V
    .locals 0

    invoke-interface {p1, p0}, Lpb/l;->a(Lpb/i;)V

    return-void
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lpb/w;

    invoke-virtual {p0}, Lpb/w;->v()Lpb/a;

    move-result-object p0

    invoke-virtual {p1}, Lpb/w;->v()Lpb/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpb/a;->a(Lpb/a;)I

    move-result p0

    return p0
.end method

.method public final j()Lpb/h;
    .locals 5

    invoke-virtual {p0}, Lpb/w;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lpb/h;

    invoke-direct {p0}, Lpb/h;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lpb/h;

    invoke-direct {v0}, Lpb/h;-><init>()V

    iget-object v1, p0, Lpb/w;->o:Lpb/d;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lpb/d;->C(I)D

    move-result-wide v3

    iget-object p0, p0, Lpb/w;->o:Lpb/d;

    invoke-interface {p0, v2}, Lpb/d;->n(I)D

    move-result-wide v1

    invoke-virtual {v0, v3, v4, v1, v2}, Lpb/h;->b(DD)V

    return-object v0
.end method

.method public final p()Lpb/i;
    .locals 2

    new-instance v0, Lpb/w;

    iget-object v1, p0, Lpb/w;->o:Lpb/d;

    invoke-interface {v1}, Lpb/d;->d()Lpb/d;

    move-result-object v1

    iget-object p0, p0, Lpb/i;->m:Lpb/m;

    invoke-direct {v0, v1, p0}, Lpb/w;-><init>(Lpb/d;Lpb/m;)V

    return-object v0
.end method

.method public final r(Lpb/i;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lpb/i;->M(Lpb/i;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpb/w;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lpb/i;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lpb/w;->L()Z

    move-result v0

    invoke-virtual {p1}, Lpb/i;->L()Z

    move-result v1

    if-eq v0, v1, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    check-cast p1, Lpb/w;

    invoke-virtual {p1}, Lpb/w;->v()Lpb/a;

    move-result-object p1

    invoke-virtual {p0}, Lpb/w;->v()Lpb/a;

    move-result-object p0

    invoke-virtual {p1, p0}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final s()Lpb/i;
    .locals 2

    iget-object p0, p0, Lpb/i;->m:Lpb/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lpb/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object v0
.end method

.method public final u()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final v()Lpb/a;
    .locals 1

    iget-object v0, p0, Lpb/w;->o:Lpb/d;

    invoke-interface {v0}, Lpb/d;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lpb/w;->o:Lpb/d;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lpb/d;->b(I)Lpb/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final x()[Lpb/a;
    .locals 2

    invoke-virtual {p0}, Lpb/w;->L()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p0, v1, [Lpb/a;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lpb/a;

    invoke-virtual {p0}, Lpb/w;->v()Lpb/a;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method
