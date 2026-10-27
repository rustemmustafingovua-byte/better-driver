.class public final Lmc/o;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:Lf8/e4;

.field public p:Lmc/m;

.field public q:Lf8/e4;

.field public r:Lf8/e4;

.field public s:Lf8/c4;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    sget-object v0, Lf8/l4;->o:Lf8/l4;

    iput-object v0, p0, Lmc/o;->o:Lf8/e4;

    iput-object v0, p0, Lmc/o;->q:Lf8/e4;

    iput-object v0, p0, Lmc/o;->r:Lf8/e4;

    sget-object v0, Lf8/z3;->o:Lf8/z3;

    iput-object v0, p0, Lmc/o;->s:Lf8/c4;

    sget-object p0, Lmc/p;->u:Lmc/p;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lmc/o;

    return-object p0
.end method

.method public final E(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->P(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final F(Lf8/i5;)Lf8/a;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final L()Lf8/x3;
    .locals 2

    sget-object p0, Lmc/s0;->t:Lf8/x3;

    const-class v0, Lmc/p;

    const-class v1, Lmc/o;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final R()Lmc/p;
    .locals 5

    new-instance v0, Lmc/p;

    invoke-direct {v0, p0}, Lf8/y3;-><init>(Lf8/l3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lmc/p;->t:B

    iget v1, p0, Lmc/o;->n:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmc/o;->o:Lf8/e4;

    check-cast v2, Lf8/e;

    iput-boolean v3, v2, Lf8/e;->l:Z

    and-int/lit8 v2, v1, -0x2

    iput v2, p0, Lmc/o;->n:I

    :cond_0
    iget-object v2, p0, Lmc/o;->o:Lf8/e4;

    iput-object v2, v0, Lmc/p;->o:Lf8/e4;

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmc/o;->p:Lmc/m;

    iput-object v1, v0, Lmc/p;->p:Lmc/m;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget v2, p0, Lmc/o;->n:I

    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmc/o;->q:Lf8/e4;

    check-cast v4, Lf8/e;

    iput-boolean v3, v4, Lf8/e;->l:Z

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lmc/o;->n:I

    :cond_2
    iget-object v2, p0, Lmc/o;->q:Lf8/e4;

    iput-object v2, v0, Lmc/p;->q:Lf8/e4;

    iget v2, p0, Lmc/o;->n:I

    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmc/o;->r:Lf8/e4;

    check-cast v4, Lf8/e;

    iput-boolean v3, v4, Lf8/e;->l:Z

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lmc/o;->n:I

    :cond_3
    iget-object v2, p0, Lmc/o;->r:Lf8/e4;

    iput-object v2, v0, Lmc/p;->r:Lf8/e4;

    iget v2, p0, Lmc/o;->n:I

    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmc/o;->s:Lf8/c4;

    check-cast v4, Lf8/e;

    iput-boolean v3, v4, Lf8/e;->l:Z

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lmc/o;->n:I

    :cond_4
    iget-object v2, p0, Lmc/o;->s:Lf8/c4;

    iput-object v2, v0, Lmc/p;->s:Lf8/c4;

    iput v1, v0, Lmc/p;->n:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final S(Lmc/p;)V
    .locals 3

    sget-object v0, Lmc/p;->u:Lmc/p;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lmc/p;->o:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmc/o;->o:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lmc/p;->o:Lf8/e4;

    iput-object v0, p0, Lmc/o;->o:Lf8/e4;

    iget v0, p0, Lmc/o;->n:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lmc/o;->n:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmc/o;->n:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lmc/o;->o:Lf8/e4;

    invoke-static {v0}, Lf8/y3;->s(Lf8/e4;)Lf8/l4;

    move-result-object v0

    iput-object v0, p0, Lmc/o;->o:Lf8/e4;

    iget v0, p0, Lmc/o;->n:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmc/o;->n:I

    :cond_2
    iget-object v0, p0, Lmc/o;->o:Lf8/e4;

    iget-object v1, p1, Lmc/p;->o:Lf8/e4;

    check-cast v0, Lf8/l4;

    invoke-virtual {v0, v1}, Lf8/l4;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_3
    iget v0, p1, Lmc/p;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p1, Lmc/p;->p:Lmc/m;

    if-nez v0, :cond_4

    sget-object v0, Lmc/m;->u:Lmc/m;

    :cond_4
    iget v1, p0, Lmc/o;->n:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmc/o;->p:Lmc/m;

    if-eqz v1, :cond_5

    sget-object v2, Lmc/m;->u:Lmc/m;

    if-eq v1, v2, :cond_5

    invoke-virtual {v2}, Lmc/m;->v()Lmc/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmc/l;->S(Lmc/m;)V

    invoke-virtual {v2, v0}, Lmc/l;->S(Lmc/m;)V

    invoke-virtual {v2}, Lmc/l;->R()Lmc/m;

    move-result-object v0

    iput-object v0, p0, Lmc/o;->p:Lmc/m;

    goto :goto_1

    :cond_5
    iput-object v0, p0, Lmc/o;->p:Lmc/m;

    :goto_1
    invoke-virtual {p0}, Lf8/l3;->O()V

    iget v0, p0, Lmc/o;->n:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmc/o;->n:I

    :cond_6
    iget-object v0, p1, Lmc/p;->q:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lmc/o;->q:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lmc/p;->q:Lf8/e4;

    iput-object v0, p0, Lmc/o;->q:Lf8/e4;

    iget v0, p0, Lmc/o;->n:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lmc/o;->n:I

    goto :goto_2

    :cond_7
    iget v0, p0, Lmc/o;->n:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_8

    iget-object v0, p0, Lmc/o;->q:Lf8/e4;

    invoke-static {v0}, Lf8/y3;->s(Lf8/e4;)Lf8/l4;

    move-result-object v0

    iput-object v0, p0, Lmc/o;->q:Lf8/e4;

    iget v0, p0, Lmc/o;->n:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmc/o;->n:I

    :cond_8
    iget-object v0, p0, Lmc/o;->q:Lf8/e4;

    iget-object v1, p1, Lmc/p;->q:Lf8/e4;

    check-cast v0, Lf8/l4;

    invoke-virtual {v0, v1}, Lf8/l4;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_9
    iget-object v0, p1, Lmc/p;->r:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lmc/o;->r:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lmc/p;->r:Lf8/e4;

    iput-object v0, p0, Lmc/o;->r:Lf8/e4;

    iget v0, p0, Lmc/o;->n:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lmc/o;->n:I

    goto :goto_3

    :cond_a
    iget v0, p0, Lmc/o;->n:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_b

    iget-object v0, p0, Lmc/o;->r:Lf8/e4;

    invoke-static {v0}, Lf8/y3;->s(Lf8/e4;)Lf8/l4;

    move-result-object v0

    iput-object v0, p0, Lmc/o;->r:Lf8/e4;

    iget v0, p0, Lmc/o;->n:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lmc/o;->n:I

    :cond_b
    iget-object v0, p0, Lmc/o;->r:Lf8/e4;

    iget-object v1, p1, Lmc/p;->r:Lf8/e4;

    check-cast v0, Lf8/l4;

    invoke-virtual {v0, v1}, Lf8/l4;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_c
    iget-object v0, p1, Lmc/p;->s:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lmc/o;->s:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lmc/p;->s:Lf8/c4;

    iput-object v0, p0, Lmc/o;->s:Lf8/c4;

    iget v0, p0, Lmc/o;->n:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lmc/o;->n:I

    goto :goto_4

    :cond_d
    iget v0, p0, Lmc/o;->n:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_e

    iget-object v0, p0, Lmc/o;->s:Lf8/c4;

    invoke-static {v0}, Lf8/y3;->r(Lf8/c4;)Lf8/z3;

    move-result-object v0

    iput-object v0, p0, Lmc/o;->s:Lf8/c4;

    iget v0, p0, Lmc/o;->n:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lmc/o;->n:I

    :cond_e
    iget-object v0, p0, Lmc/o;->s:Lf8/c4;

    iget-object v1, p1, Lmc/p;->s:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->addAll(Ljava/util/Collection;)Z

    :goto_4
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_f
    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lmc/o;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final T(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lmc/p;->v:Lmc/n;

    invoke-virtual {v1, p1, p2}, Lmc/n;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmc/p;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lmc/o;->S(Lmc/p;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lmc/p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lf8/h4;->c()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lmc/o;->S(Lmc/p;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/p;->u:Lmc/p;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lmc/o;->R()Lmc/p;

    move-result-object p0

    invoke-virtual {p0}, Lmc/p;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lf8/a;->D(Lf8/c;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lf8/l3;->H()Lf8/l3;

    move-result-object p0

    check-cast p0, Lmc/o;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lmc/s0;->s:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmc/o;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lmc/o;->R()Lmc/p;

    move-result-object p0

    invoke-virtual {p0}, Lmc/p;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lf8/a;->D(Lf8/c;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0
.end method

.method public final bridge synthetic s()Lf8/c;
    .locals 0

    invoke-virtual {p0}, Lmc/o;->R()Lmc/p;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lmc/p;

    if-eqz v0, :cond_0

    check-cast p1, Lmc/p;

    invoke-virtual {p0, p1}, Lmc/o;->S(Lmc/p;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmc/o;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lmc/p;

    if-eqz v0, :cond_0

    check-cast p1, Lmc/p;

    invoke-virtual {p0, p1}, Lmc/o;->S(Lmc/p;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
