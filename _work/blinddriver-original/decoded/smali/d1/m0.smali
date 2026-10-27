.class public final Ld1/m0;
.super Ld1/c;
.source "SourceFile"


# instance fields
.field public final o:Ld1/c;

.field public final p:Z

.field public final q:Z

.field public r:Li9/c;

.field public s:Li9/c;

.field public final t:J


# direct methods
.method public constructor <init>(Ld1/c;Li9/c;Li9/c;ZZ)V
    .locals 7

    sget-object v0, Ld1/p;->a:Lad/b2;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ld1/c;->y()Li9/c;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Ld1/p;->j:Ld1/b;

    iget-object v0, v0, Ld1/c;->e:Li9/c;

    :cond_1
    invoke-static {p2, v0, p4}, Ld1/p;->k(Li9/c;Li9/c;Z)Li9/c;

    move-result-object v5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ld1/c;->i()Li9/c;

    move-result-object p2

    if-nez p2, :cond_3

    :cond_2
    sget-object p2, Ld1/p;->j:Ld1/b;

    iget-object p2, p2, Ld1/c;->f:Li9/c;

    :cond_3
    invoke-static {p3, p2}, Ld1/p;->l(Li9/c;Li9/c;)Li9/c;

    move-result-object v6

    const-wide/16 v2, 0x0

    sget-object v4, Ld1/m;->p:Ld1/m;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ld1/c;-><init>(JLd1/m;Li9/c;Li9/c;)V

    iput-object p1, v1, Ld1/m0;->o:Ld1/c;

    iput-boolean p4, v1, Ld1/m0;->p:Z

    iput-boolean p5, v1, Ld1/m0;->q:Z

    iget-object p0, v1, Ld1/c;->e:Li9/c;

    iput-object p0, v1, Ld1/m0;->r:Li9/c;

    iget-object p0, v1, Ld1/c;->f:Li9/c;

    iput-object p0, v1, Ld1/m0;->s:Li9/c;

    invoke-static {}, Lz0/i;->b()J

    move-result-wide p0

    iput-wide p0, v1, Ld1/m0;->t:J

    return-void
.end method


# virtual methods
.method public final B(Lk/n0;)V
    .locals 0

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final C(Li9/c;Li9/c;)Ld1/c;
    .locals 8

    iget-object v0, p0, Ld1/m0;->r:Li9/c;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ld1/p;->k(Li9/c;Li9/c;Z)Li9/c;

    move-result-object v4

    iget-object p1, p0, Ld1/m0;->s:Li9/c;

    invoke-static {p2, p1}, Ld1/p;->l(Li9/c;Li9/c;)Li9/c;

    move-result-object v5

    iget-boolean p1, p0, Ld1/m0;->p:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v5}, Ld1/c;->C(Li9/c;Li9/c;)Ld1/c;

    move-result-object v3

    new-instance v2, Ld1/m0;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Ld1/m0;-><init>(Ld1/c;Li9/c;Li9/c;ZZ)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Ld1/c;->C(Li9/c;Li9/c;)Ld1/c;

    move-result-object p0

    return-object p0
.end method

.method public final D()Ld1/c;
    .locals 0

    iget-object p0, p0, Ld1/m0;->o:Ld1/c;

    if-nez p0, :cond_0

    sget-object p0, Ld1/p;->j:Ld1/b;

    :cond_0
    return-object p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld1/g;->c:Z

    iget-boolean v0, p0, Ld1/m0;->q:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ld1/m0;->o:Ld1/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld1/c;->c()V

    :cond_0
    return-void
.end method

.method public final d()Ld1/m;
    .locals 0

    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    invoke-virtual {p0}, Ld1/g;->d()Ld1/m;

    move-result-object p0

    return-object p0
.end method

.method public final e()Li9/c;
    .locals 0

    iget-object p0, p0, Ld1/m0;->r:Li9/c;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    invoke-virtual {p0}, Ld1/c;->f()Z

    move-result p0

    return p0
.end method

.method public final g()J
    .locals 2

    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    invoke-virtual {p0}, Ld1/g;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 0

    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    invoke-virtual {p0}, Ld1/c;->h()I

    move-result p0

    return p0
.end method

.method public final i()Li9/c;
    .locals 0

    iget-object p0, p0, Ld1/m0;->s:Li9/c;

    return-object p0
.end method

.method public final k()V
    .locals 0

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l()V
    .locals 0

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m()V
    .locals 0

    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    invoke-virtual {p0}, Ld1/c;->m()V

    return-void
.end method

.method public final n(Ld1/h0;)V
    .locals 0

    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld1/c;->n(Ld1/h0;)V

    return-void
.end method

.method public final r(Ld1/m;)V
    .locals 0

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final s(J)V
    .locals 0

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t(I)V
    .locals 0

    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld1/c;->t(I)V

    return-void
.end method

.method public final u(Li9/c;)Ld1/g;
    .locals 2

    iget-object v0, p0, Ld1/m0;->r:Li9/c;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Ld1/p;->k(Li9/c;Li9/c;Z)Li9/c;

    move-result-object p1

    iget-boolean v0, p0, Ld1/m0;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld1/c;->u(Li9/c;)Ld1/g;

    move-result-object p0

    invoke-static {p0, p1, v1}, Ld1/p;->g(Ld1/g;Li9/c;Z)Ld1/g;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Ld1/c;->u(Li9/c;)Ld1/g;

    move-result-object p0

    return-object p0
.end method

.method public final w()Ld1/w;
    .locals 0

    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    invoke-virtual {p0}, Ld1/c;->w()Ld1/w;

    move-result-object p0

    return-object p0
.end method

.method public final x()Lk/n0;
    .locals 0

    invoke-virtual {p0}, Ld1/m0;->D()Ld1/c;

    move-result-object p0

    invoke-virtual {p0}, Ld1/c;->x()Lk/n0;

    move-result-object p0

    return-object p0
.end method

.method public final y()Li9/c;
    .locals 0

    iget-object p0, p0, Ld1/m0;->r:Li9/c;

    return-object p0
.end method
