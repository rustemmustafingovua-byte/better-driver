.class public final Lf8/c2;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:Lf8/c4;

.field public p:Lf8/c4;

.field public q:Ljava/io/Serializable;

.field public r:Ljava/io/Serializable;

.field public s:Lf8/k4;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    sget-object v0, Lf8/z3;->o:Lf8/z3;

    iput-object v0, p0, Lf8/c2;->o:Lf8/c4;

    iput-object v0, p0, Lf8/c2;->p:Lf8/c4;

    const-string v0, ""

    iput-object v0, p0, Lf8/c2;->q:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/c2;->r:Ljava/io/Serializable;

    sget-object v0, Lf8/j4;->n:Lf8/j4;

    iput-object v0, p0, Lf8/c2;->s:Lf8/k4;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lf8/c2;

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

    sget-object p0, Lf8/l2;->V:Lf8/x3;

    const-class v0, Lf8/d2;

    const-class v1, Lf8/c2;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final R()Lf8/d2;
    .locals 5

    new-instance v0, Lf8/d2;

    invoke-direct {v0, p0}, Lf8/y3;-><init>(Lf8/l3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lf8/d2;->t:B

    iget v1, p0, Lf8/c2;->n:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf8/c2;->o:Lf8/c4;

    check-cast v2, Lf8/e;

    iput-boolean v3, v2, Lf8/e;->l:Z

    and-int/lit8 v2, v1, -0x2

    iput v2, p0, Lf8/c2;->n:I

    :cond_0
    iget-object v2, p0, Lf8/c2;->o:Lf8/c4;

    iput-object v2, v0, Lf8/d2;->o:Lf8/c4;

    iget v2, p0, Lf8/c2;->n:I

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lf8/c2;->p:Lf8/c4;

    check-cast v4, Lf8/e;

    iput-boolean v3, v4, Lf8/e;->l:Z

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lf8/c2;->n:I

    :cond_1
    iget-object v2, p0, Lf8/c2;->p:Lf8/c4;

    iput-object v2, v0, Lf8/d2;->p:Lf8/c4;

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget-object v2, p0, Lf8/c2;->q:Ljava/io/Serializable;

    iput-object v2, v0, Lf8/d2;->q:Ljava/io/Serializable;

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    or-int/lit8 v3, v3, 0x2

    :cond_3
    iget-object v1, p0, Lf8/c2;->r:Ljava/io/Serializable;

    iput-object v1, v0, Lf8/d2;->r:Ljava/io/Serializable;

    iget v1, p0, Lf8/c2;->n:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    iget-object v1, p0, Lf8/c2;->s:Lf8/k4;

    invoke-interface {v1}, Lf8/k4;->i()Lf8/k4;

    move-result-object v1

    iput-object v1, p0, Lf8/c2;->s:Lf8/k4;

    iget v1, p0, Lf8/c2;->n:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lf8/c2;->n:I

    :cond_4
    iget-object v1, p0, Lf8/c2;->s:Lf8/k4;

    iput-object v1, v0, Lf8/d2;->s:Lf8/k4;

    iput v3, v0, Lf8/d2;->n:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final S(Lf8/d2;)V
    .locals 2

    sget-object v0, Lf8/d2;->u:Lf8/d2;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lf8/d2;->o:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lf8/c2;->o:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lf8/d2;->o:Lf8/c4;

    iput-object v0, p0, Lf8/c2;->o:Lf8/c4;

    iget v0, p0, Lf8/c2;->n:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lf8/c2;->n:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lf8/c2;->n:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lf8/c2;->o:Lf8/c4;

    invoke-static {v0}, Lf8/y3;->r(Lf8/c4;)Lf8/z3;

    move-result-object v0

    iput-object v0, p0, Lf8/c2;->o:Lf8/c4;

    iget v0, p0, Lf8/c2;->n:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf8/c2;->n:I

    :cond_2
    iget-object v0, p0, Lf8/c2;->o:Lf8/c4;

    iget-object v1, p1, Lf8/d2;->o:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_3
    iget-object v0, p1, Lf8/d2;->p:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lf8/c2;->p:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lf8/d2;->p:Lf8/c4;

    iput-object v0, p0, Lf8/c2;->p:Lf8/c4;

    iget v0, p0, Lf8/c2;->n:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lf8/c2;->n:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lf8/c2;->n:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    iget-object v0, p0, Lf8/c2;->p:Lf8/c4;

    invoke-static {v0}, Lf8/y3;->r(Lf8/c4;)Lf8/z3;

    move-result-object v0

    iput-object v0, p0, Lf8/c2;->p:Lf8/c4;

    iget v0, p0, Lf8/c2;->n:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf8/c2;->n:I

    :cond_5
    iget-object v0, p0, Lf8/c2;->p:Lf8/c4;

    iget-object v1, p1, Lf8/d2;->p:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_6
    iget v0, p1, Lf8/d2;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    iget v0, p0, Lf8/c2;->n:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lf8/c2;->n:I

    iget-object v0, p1, Lf8/d2;->q:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/c2;->q:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_7
    invoke-virtual {p1}, Lf8/d2;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lf8/c2;->n:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lf8/c2;->n:I

    iget-object v0, p1, Lf8/d2;->r:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/c2;->r:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_8
    iget-object v0, p1, Lf8/d2;->s:Lf8/k4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lf8/c2;->s:Lf8/k4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lf8/d2;->s:Lf8/k4;

    iput-object v0, p0, Lf8/c2;->s:Lf8/k4;

    iget v0, p0, Lf8/c2;->n:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lf8/c2;->n:I

    goto :goto_2

    :cond_9
    iget v0, p0, Lf8/c2;->n:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_a

    new-instance v0, Lf8/j4;

    iget-object v1, p0, Lf8/c2;->s:Lf8/k4;

    invoke-direct {v0, v1}, Lf8/j4;-><init>(Lf8/k4;)V

    iput-object v0, p0, Lf8/c2;->s:Lf8/k4;

    iget v0, p0, Lf8/c2;->n:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lf8/c2;->n:I

    :cond_a
    iget-object v0, p0, Lf8/c2;->s:Lf8/k4;

    iget-object v1, p1, Lf8/d2;->s:Lf8/k4;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_b
    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lf8/c2;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final T(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lf8/d2;->v:Lf8/b2;

    invoke-virtual {v1, p1, p2}, Lf8/b2;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/d2;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lf8/c2;->S(Lf8/d2;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lf8/d2;
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

    invoke-virtual {p0, v0}, Lf8/c2;->S(Lf8/d2;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/d2;->u:Lf8/d2;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lf8/c2;->R()Lf8/d2;

    move-result-object p0

    invoke-virtual {p0}, Lf8/d2;->p()Z

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

    check-cast p0, Lf8/c2;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lf8/l2;->U:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/c2;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lf8/c2;->R()Lf8/d2;

    move-result-object p0

    invoke-virtual {p0}, Lf8/d2;->p()Z

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

    invoke-virtual {p0}, Lf8/c2;->R()Lf8/d2;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/d2;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/d2;

    invoke-virtual {p0, p1}, Lf8/c2;->S(Lf8/d2;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/c2;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/d2;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/d2;

    invoke-virtual {p0, p1}, Lf8/c2;->S(Lf8/d2;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
