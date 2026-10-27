.class public final Lmc/j0;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:J

.field public p:Lf8/c4;

.field public q:Lf8/c4;

.field public r:Lmc/y;

.field public s:Lf8/c4;

.field public t:Lf8/e4;

.field public u:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    sget-object v0, Lf8/z3;->o:Lf8/z3;

    iput-object v0, p0, Lmc/j0;->p:Lf8/c4;

    iput-object v0, p0, Lmc/j0;->q:Lf8/c4;

    iput-object v0, p0, Lmc/j0;->s:Lf8/c4;

    sget-object v0, Lf8/l4;->o:Lf8/l4;

    iput-object v0, p0, Lmc/j0;->t:Lf8/e4;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lmc/j0;->u:Ljava/util/List;

    sget-object p0, Lmc/l0;->w:Lmb/q;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lmc/j0;

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

    sget-object p0, Lmc/s0;->x:Lf8/x3;

    const-class v0, Lmc/l0;

    const-class v1, Lmc/j0;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final R()Lmc/l0;
    .locals 6

    new-instance v0, Lmc/l0;

    invoke-direct {v0, p0}, Lf8/y3;-><init>(Lf8/l3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lmc/l0;->v:B

    iget v1, p0, Lmc/j0;->n:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-wide v4, p0, Lmc/j0;->o:J

    iput-wide v4, v0, Lmc/l0;->o:J

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmc/j0;->p:Lf8/c4;

    check-cast v4, Lf8/e;

    iput-boolean v3, v4, Lf8/e;->l:Z

    and-int/lit8 v4, v1, -0x3

    iput v4, p0, Lmc/j0;->n:I

    :cond_1
    iget-object v4, p0, Lmc/j0;->p:Lf8/c4;

    iput-object v4, v0, Lmc/l0;->p:Lf8/c4;

    iget v4, p0, Lmc/j0;->n:I

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmc/j0;->q:Lf8/c4;

    check-cast v5, Lf8/e;

    iput-boolean v3, v5, Lf8/e;->l:Z

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Lmc/j0;->n:I

    :cond_2
    iget-object v4, p0, Lmc/j0;->q:Lf8/c4;

    iput-object v4, v0, Lmc/l0;->q:Lf8/c4;

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmc/j0;->r:Lmc/y;

    iput-object v1, v0, Lmc/l0;->r:Lmc/y;

    or-int/lit8 v2, v2, 0x2

    :cond_3
    iget v1, p0, Lmc/j0;->n:I

    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmc/j0;->s:Lf8/c4;

    check-cast v4, Lf8/e;

    iput-boolean v3, v4, Lf8/e;->l:Z

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lmc/j0;->n:I

    :cond_4
    iget-object v1, p0, Lmc/j0;->s:Lf8/c4;

    iput-object v1, v0, Lmc/l0;->s:Lf8/c4;

    iget v1, p0, Lmc/j0;->n:I

    and-int/lit8 v4, v1, 0x20

    if-eqz v4, :cond_5

    iget-object v4, p0, Lmc/j0;->t:Lf8/e4;

    check-cast v4, Lf8/e;

    iput-boolean v3, v4, Lf8/e;->l:Z

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lmc/j0;->n:I

    :cond_5
    iget-object v1, p0, Lmc/j0;->t:Lf8/e4;

    iput-object v1, v0, Lmc/l0;->t:Lf8/e4;

    iget v1, p0, Lmc/j0;->n:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmc/j0;->u:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmc/j0;->u:Ljava/util/List;

    iget v1, p0, Lmc/j0;->n:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lmc/j0;->n:I

    :cond_6
    iget-object v1, p0, Lmc/j0;->u:Ljava/util/List;

    iput-object v1, v0, Lmc/l0;->u:Ljava/util/List;

    iput v2, v0, Lmc/l0;->n:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final S(Lmc/l0;)V
    .locals 3

    sget-object v0, Lmc/l0;->x:Lmc/l0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lmc/l0;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lmc/l0;->o:J

    iget v2, p0, Lmc/j0;->n:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmc/j0;->n:I

    iput-wide v0, p0, Lmc/j0;->o:J

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_1
    iget-object v0, p1, Lmc/l0;->p:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmc/j0;->p:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lmc/l0;->p:Lf8/c4;

    iput-object v0, p0, Lmc/j0;->p:Lf8/c4;

    iget v0, p0, Lmc/j0;->n:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lmc/j0;->n:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lmc/j0;->n:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lmc/j0;->p:Lf8/c4;

    invoke-static {v0}, Lf8/y3;->r(Lf8/c4;)Lf8/z3;

    move-result-object v0

    iput-object v0, p0, Lmc/j0;->p:Lf8/c4;

    iget v0, p0, Lmc/j0;->n:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmc/j0;->n:I

    :cond_3
    iget-object v0, p0, Lmc/j0;->p:Lf8/c4;

    iget-object v1, p1, Lmc/l0;->p:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_4
    iget-object v0, p1, Lmc/l0;->q:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmc/j0;->q:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lmc/l0;->q:Lf8/c4;

    iput-object v0, p0, Lmc/j0;->q:Lf8/c4;

    iget v0, p0, Lmc/j0;->n:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lmc/j0;->n:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lmc/j0;->n:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_6

    iget-object v0, p0, Lmc/j0;->q:Lf8/c4;

    invoke-static {v0}, Lf8/y3;->r(Lf8/c4;)Lf8/z3;

    move-result-object v0

    iput-object v0, p0, Lmc/j0;->q:Lf8/c4;

    iget v0, p0, Lmc/j0;->n:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmc/j0;->n:I

    :cond_6
    iget-object v0, p0, Lmc/j0;->q:Lf8/c4;

    iget-object v1, p1, Lmc/l0;->q:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_7
    invoke-virtual {p1}, Lmc/l0;->w()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lmc/l0;->r:Lmc/y;

    if-nez v0, :cond_8

    sget-object v0, Lmc/y;->v:Lmc/y;

    :cond_8
    iget v1, p0, Lmc/j0;->n:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmc/j0;->r:Lmc/y;

    if-eqz v1, :cond_9

    sget-object v2, Lmc/y;->v:Lmc/y;

    if-eq v1, v2, :cond_9

    invoke-virtual {v2}, Lmc/y;->A()Lmc/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmc/x;->S(Lmc/y;)V

    invoke-virtual {v2, v0}, Lmc/x;->S(Lmc/y;)V

    invoke-virtual {v2}, Lmc/x;->R()Lmc/y;

    move-result-object v0

    iput-object v0, p0, Lmc/j0;->r:Lmc/y;

    goto :goto_2

    :cond_9
    iput-object v0, p0, Lmc/j0;->r:Lmc/y;

    :goto_2
    invoke-virtual {p0}, Lf8/l3;->O()V

    iget v0, p0, Lmc/j0;->n:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lmc/j0;->n:I

    :cond_a
    iget-object v0, p1, Lmc/l0;->s:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmc/j0;->s:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lmc/l0;->s:Lf8/c4;

    iput-object v0, p0, Lmc/j0;->s:Lf8/c4;

    iget v0, p0, Lmc/j0;->n:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lmc/j0;->n:I

    goto :goto_3

    :cond_b
    iget v0, p0, Lmc/j0;->n:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_c

    iget-object v0, p0, Lmc/j0;->s:Lf8/c4;

    invoke-static {v0}, Lf8/y3;->r(Lf8/c4;)Lf8/z3;

    move-result-object v0

    iput-object v0, p0, Lmc/j0;->s:Lf8/c4;

    iget v0, p0, Lmc/j0;->n:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lmc/j0;->n:I

    :cond_c
    iget-object v0, p0, Lmc/j0;->s:Lf8/c4;

    iget-object v1, p1, Lmc/l0;->s:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_d
    iget-object v0, p1, Lmc/l0;->t:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lmc/j0;->t:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lmc/l0;->t:Lf8/e4;

    iput-object v0, p0, Lmc/j0;->t:Lf8/e4;

    iget v0, p0, Lmc/j0;->n:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lmc/j0;->n:I

    goto :goto_4

    :cond_e
    iget v0, p0, Lmc/j0;->n:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_f

    iget-object v0, p0, Lmc/j0;->t:Lf8/e4;

    invoke-static {v0}, Lf8/y3;->s(Lf8/e4;)Lf8/l4;

    move-result-object v0

    iput-object v0, p0, Lmc/j0;->t:Lf8/e4;

    iget v0, p0, Lmc/j0;->n:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lmc/j0;->n:I

    :cond_f
    iget-object v0, p0, Lmc/j0;->t:Lf8/e4;

    iget-object v1, p1, Lmc/l0;->t:Lf8/e4;

    check-cast v0, Lf8/l4;

    invoke-virtual {v0, v1}, Lf8/l4;->addAll(Ljava/util/Collection;)Z

    :goto_4
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_10
    iget-object v0, p1, Lmc/l0;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lmc/j0;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lmc/l0;->u:Ljava/util/List;

    iput-object v0, p0, Lmc/j0;->u:Ljava/util/List;

    iget v0, p0, Lmc/j0;->n:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lmc/j0;->n:I

    goto :goto_5

    :cond_11
    iget v0, p0, Lmc/j0;->n:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmc/j0;->u:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmc/j0;->u:Ljava/util/List;

    iget v0, p0, Lmc/j0;->n:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lmc/j0;->n:I

    :cond_12
    iget-object v0, p0, Lmc/j0;->u:Ljava/util/List;

    iget-object v1, p1, Lmc/l0;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_5
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_13
    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lmc/j0;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final T(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lmc/l0;->y:Lmc/i0;

    invoke-virtual {v1, p1, p2}, Lmc/i0;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmc/l0;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lmc/j0;->S(Lmc/l0;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lmc/l0;
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

    invoke-virtual {p0, v0}, Lmc/j0;->S(Lmc/l0;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/l0;->x:Lmc/l0;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lmc/j0;->R()Lmc/l0;

    move-result-object p0

    invoke-virtual {p0}, Lmc/l0;->p()Z

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

    check-cast p0, Lmc/j0;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lmc/s0;->w:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmc/j0;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lmc/j0;->R()Lmc/l0;

    move-result-object p0

    invoke-virtual {p0}, Lmc/l0;->p()Z

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

    invoke-virtual {p0}, Lmc/j0;->R()Lmc/l0;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lmc/l0;

    if-eqz v0, :cond_0

    check-cast p1, Lmc/l0;

    invoke-virtual {p0, p1}, Lmc/j0;->S(Lmc/l0;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmc/j0;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lmc/l0;

    if-eqz v0, :cond_0

    check-cast p1, Lmc/l0;

    invoke-virtual {p0, p1}, Lmc/j0;->S(Lmc/l0;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
