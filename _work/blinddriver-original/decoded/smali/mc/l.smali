.class public final Lmc/l;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:Lf8/c4;

.field public p:Lf8/e4;

.field public q:Lf8/e4;

.field public r:Lf8/c4;

.field public s:Lf8/c4;

.field public t:Lf8/a4;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    sget-object v0, Lf8/z3;->o:Lf8/z3;

    iput-object v0, p0, Lmc/l;->o:Lf8/c4;

    sget-object v1, Lf8/l4;->o:Lf8/l4;

    iput-object v1, p0, Lmc/l;->p:Lf8/e4;

    iput-object v1, p0, Lmc/l;->q:Lf8/e4;

    iput-object v0, p0, Lmc/l;->r:Lf8/c4;

    iput-object v0, p0, Lmc/l;->s:Lf8/c4;

    sget-object v0, Lf8/g;->o:Lf8/g;

    iput-object v0, p0, Lmc/l;->t:Lf8/a4;

    sget-object p0, Lmc/m;->u:Lmc/m;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lmc/l;

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

    sget-object p0, Lmc/s0;->n:Lf8/x3;

    const-class v0, Lmc/m;

    const-class v1, Lmc/l;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final R()Lmc/m;
    .locals 4

    new-instance v0, Lmc/m;

    invoke-direct {v0, p0}, Lf8/y3;-><init>(Lf8/l3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lmc/m;->t:B

    iget v1, p0, Lmc/l;->n:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmc/l;->o:Lf8/c4;

    check-cast v2, Lf8/e;

    iput-boolean v3, v2, Lf8/e;->l:Z

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lmc/l;->n:I

    :cond_0
    iget-object v1, p0, Lmc/l;->o:Lf8/c4;

    iput-object v1, v0, Lmc/m;->n:Lf8/c4;

    iget v1, p0, Lmc/l;->n:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmc/l;->p:Lf8/e4;

    check-cast v2, Lf8/e;

    iput-boolean v3, v2, Lf8/e;->l:Z

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lmc/l;->n:I

    :cond_1
    iget-object v1, p0, Lmc/l;->p:Lf8/e4;

    iput-object v1, v0, Lmc/m;->o:Lf8/e4;

    iget v1, p0, Lmc/l;->n:I

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmc/l;->q:Lf8/e4;

    check-cast v2, Lf8/e;

    iput-boolean v3, v2, Lf8/e;->l:Z

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lmc/l;->n:I

    :cond_2
    iget-object v1, p0, Lmc/l;->q:Lf8/e4;

    iput-object v1, v0, Lmc/m;->p:Lf8/e4;

    iget v1, p0, Lmc/l;->n:I

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmc/l;->r:Lf8/c4;

    check-cast v2, Lf8/e;

    iput-boolean v3, v2, Lf8/e;->l:Z

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lmc/l;->n:I

    :cond_3
    iget-object v1, p0, Lmc/l;->r:Lf8/c4;

    iput-object v1, v0, Lmc/m;->q:Lf8/c4;

    iget v1, p0, Lmc/l;->n:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmc/l;->s:Lf8/c4;

    check-cast v2, Lf8/e;

    iput-boolean v3, v2, Lf8/e;->l:Z

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lmc/l;->n:I

    :cond_4
    iget-object v1, p0, Lmc/l;->s:Lf8/c4;

    iput-object v1, v0, Lmc/m;->r:Lf8/c4;

    iget v1, p0, Lmc/l;->n:I

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmc/l;->t:Lf8/a4;

    check-cast v2, Lf8/e;

    iput-boolean v3, v2, Lf8/e;->l:Z

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lmc/l;->n:I

    :cond_5
    iget-object v1, p0, Lmc/l;->t:Lf8/a4;

    iput-object v1, v0, Lmc/m;->s:Lf8/a4;

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final S(Lmc/m;)V
    .locals 4

    sget-object v0, Lmc/m;->u:Lmc/m;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lmc/m;->n:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmc/l;->o:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lmc/m;->n:Lf8/c4;

    iput-object v0, p0, Lmc/l;->o:Lf8/c4;

    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lmc/l;->n:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lmc/l;->o:Lf8/c4;

    invoke-static {v0}, Lf8/y3;->r(Lf8/c4;)Lf8/z3;

    move-result-object v0

    iput-object v0, p0, Lmc/l;->o:Lf8/c4;

    iget v0, p0, Lmc/l;->n:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmc/l;->n:I

    :cond_2
    iget-object v0, p0, Lmc/l;->o:Lf8/c4;

    iget-object v1, p1, Lmc/m;->n:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_3
    iget-object v0, p1, Lmc/m;->o:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmc/l;->p:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lmc/m;->o:Lf8/e4;

    iput-object v0, p0, Lmc/l;->p:Lf8/e4;

    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lmc/l;->n:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    iget-object v0, p0, Lmc/l;->p:Lf8/e4;

    invoke-static {v0}, Lf8/y3;->s(Lf8/e4;)Lf8/l4;

    move-result-object v0

    iput-object v0, p0, Lmc/l;->p:Lf8/e4;

    iget v0, p0, Lmc/l;->n:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmc/l;->n:I

    :cond_5
    iget-object v0, p0, Lmc/l;->p:Lf8/e4;

    iget-object v1, p1, Lmc/m;->o:Lf8/e4;

    check-cast v0, Lf8/l4;

    invoke-virtual {v0, v1}, Lf8/l4;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_6
    iget-object v0, p1, Lmc/m;->p:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lmc/l;->q:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lmc/m;->p:Lf8/e4;

    iput-object v0, p0, Lmc/l;->q:Lf8/e4;

    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lmc/l;->n:I

    goto :goto_2

    :cond_7
    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_8

    iget-object v0, p0, Lmc/l;->q:Lf8/e4;

    invoke-static {v0}, Lf8/y3;->s(Lf8/e4;)Lf8/l4;

    move-result-object v0

    iput-object v0, p0, Lmc/l;->q:Lf8/e4;

    iget v0, p0, Lmc/l;->n:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmc/l;->n:I

    :cond_8
    iget-object v0, p0, Lmc/l;->q:Lf8/e4;

    iget-object v1, p1, Lmc/m;->p:Lf8/e4;

    check-cast v0, Lf8/l4;

    invoke-virtual {v0, v1}, Lf8/l4;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_9
    iget-object v0, p1, Lmc/m;->q:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lmc/l;->r:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lmc/m;->q:Lf8/c4;

    iput-object v0, p0, Lmc/l;->r:Lf8/c4;

    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lmc/l;->n:I

    goto :goto_3

    :cond_a
    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_b

    iget-object v0, p0, Lmc/l;->r:Lf8/c4;

    invoke-static {v0}, Lf8/y3;->r(Lf8/c4;)Lf8/z3;

    move-result-object v0

    iput-object v0, p0, Lmc/l;->r:Lf8/c4;

    iget v0, p0, Lmc/l;->n:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lmc/l;->n:I

    :cond_b
    iget-object v0, p0, Lmc/l;->r:Lf8/c4;

    iget-object v1, p1, Lmc/m;->q:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_c
    iget-object v0, p1, Lmc/m;->r:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lmc/l;->s:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lmc/m;->r:Lf8/c4;

    iput-object v0, p0, Lmc/l;->s:Lf8/c4;

    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lmc/l;->n:I

    goto :goto_4

    :cond_d
    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_e

    iget-object v0, p0, Lmc/l;->s:Lf8/c4;

    invoke-static {v0}, Lf8/y3;->r(Lf8/c4;)Lf8/z3;

    move-result-object v0

    iput-object v0, p0, Lmc/l;->s:Lf8/c4;

    iget v0, p0, Lmc/l;->n:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lmc/l;->n:I

    :cond_e
    iget-object v0, p0, Lmc/l;->s:Lf8/c4;

    iget-object v1, p1, Lmc/m;->r:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->addAll(Ljava/util/Collection;)Z

    :goto_4
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_f
    iget-object v0, p1, Lmc/m;->s:Lf8/a4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lmc/l;->t:Lf8/a4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lmc/m;->s:Lf8/a4;

    iput-object v0, p0, Lmc/l;->t:Lf8/a4;

    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lmc/l;->n:I

    goto :goto_7

    :cond_10
    iget v0, p0, Lmc/l;->n:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_13

    iget-object v0, p0, Lmc/l;->t:Lf8/a4;

    check-cast v0, Lf8/g;

    iget v1, v0, Lf8/g;->n:I

    if-nez v1, :cond_11

    const/16 v2, 0xa

    goto :goto_5

    :cond_11
    mul-int/lit8 v2, v1, 0x2

    :goto_5
    if-lt v2, v1, :cond_12

    new-instance v1, Lf8/g;

    iget-object v3, v0, Lf8/g;->m:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iget v0, v0, Lf8/g;->n:I

    invoke-direct {v1, v2, v0}, Lf8/g;-><init>([ZI)V

    iput-object v1, p0, Lmc/l;->t:Lf8/a4;

    iget v0, p0, Lmc/l;->n:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lmc/l;->n:I

    goto :goto_6

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_13
    :goto_6
    iget-object v0, p0, Lmc/l;->t:Lf8/a4;

    iget-object v1, p1, Lmc/m;->s:Lf8/a4;

    check-cast v0, Lf8/g;

    invoke-virtual {v0, v1}, Lf8/g;->addAll(Ljava/util/Collection;)Z

    :goto_7
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_14
    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lmc/l;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final T(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lmc/m;->v:Lmc/k;

    invoke-virtual {v1, p1, p2}, Lmc/k;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmc/m;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lmc/l;->S(Lmc/m;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lmc/m;
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

    invoke-virtual {p0, v0}, Lmc/l;->S(Lmc/m;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/m;->u:Lmc/m;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lmc/l;->R()Lmc/m;

    move-result-object p0

    invoke-virtual {p0}, Lmc/m;->p()Z

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

    check-cast p0, Lmc/l;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lmc/s0;->m:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmc/l;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lmc/l;->R()Lmc/m;

    move-result-object p0

    invoke-virtual {p0}, Lmc/m;->p()Z

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

    invoke-virtual {p0}, Lmc/l;->R()Lmc/m;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lmc/m;

    if-eqz v0, :cond_0

    check-cast p1, Lmc/m;

    invoke-virtual {p0, p1}, Lmc/l;->S(Lmc/m;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmc/l;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lmc/m;

    if-eqz v0, :cond_0

    check-cast p1, Lmc/m;

    invoke-virtual {p0, p1}, Lmc/l;->S(Lmc/m;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
