.class public final Lmc/u;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:Lmc/s;

.field public p:Lf8/k4;

.field public q:Lf8/k4;

.field public r:Ljava/io/Serializable;

.field public s:Ljava/io/Serializable;

.field public t:J

.field public u:J

.field public v:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    sget-object v0, Lf8/j4;->n:Lf8/j4;

    iput-object v0, p0, Lmc/u;->p:Lf8/k4;

    iput-object v0, p0, Lmc/u;->q:Lf8/k4;

    const-string v0, ""

    iput-object v0, p0, Lmc/u;->r:Ljava/io/Serializable;

    iput-object v0, p0, Lmc/u;->s:Ljava/io/Serializable;

    iput-object v0, p0, Lmc/u;->v:Ljava/io/Serializable;

    sget-object p0, Lmc/v;->x:Lmc/v;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lmc/u;

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

    sget-object p0, Lmc/s0;->b:Lf8/x3;

    const-class v0, Lmc/v;

    const-class v1, Lmc/u;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final R()Lmc/v;
    .locals 5

    new-instance v0, Lmc/v;

    invoke-direct {v0, p0}, Lf8/y3;-><init>(Lf8/l3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lmc/v;->w:B

    iget v1, p0, Lmc/u;->n:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmc/u;->o:Lmc/s;

    iput-object v2, v0, Lmc/v;->o:Lmc/s;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmc/u;->p:Lf8/k4;

    invoke-interface {v3}, Lf8/k4;->i()Lf8/k4;

    move-result-object v3

    iput-object v3, p0, Lmc/u;->p:Lf8/k4;

    iget v3, p0, Lmc/u;->n:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lmc/u;->n:I

    :cond_1
    iget-object v3, p0, Lmc/u;->p:Lf8/k4;

    iput-object v3, v0, Lmc/v;->p:Lf8/k4;

    iget v3, p0, Lmc/u;->n:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmc/u;->q:Lf8/k4;

    invoke-interface {v3}, Lf8/k4;->i()Lf8/k4;

    move-result-object v3

    iput-object v3, p0, Lmc/u;->q:Lf8/k4;

    iget v3, p0, Lmc/u;->n:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lmc/u;->n:I

    :cond_2
    iget-object v3, p0, Lmc/u;->q:Lf8/k4;

    iput-object v3, v0, Lmc/v;->q:Lf8/k4;

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x2

    :cond_3
    iget-object v3, p0, Lmc/u;->r:Ljava/io/Serializable;

    iput-object v3, v0, Lmc/v;->r:Ljava/io/Serializable;

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x4

    :cond_4
    iget-object v3, p0, Lmc/u;->s:Ljava/io/Serializable;

    iput-object v3, v0, Lmc/v;->s:Ljava/io/Serializable;

    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    iget-wide v3, p0, Lmc/u;->t:J

    iput-wide v3, v0, Lmc/v;->t:J

    or-int/lit8 v2, v2, 0x8

    :cond_5
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lmc/u;->u:J

    iput-wide v3, v0, Lmc/v;->u:J

    or-int/lit8 v2, v2, 0x10

    :cond_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    or-int/lit8 v2, v2, 0x20

    :cond_7
    iget-object v1, p0, Lmc/u;->v:Ljava/io/Serializable;

    iput-object v1, v0, Lmc/v;->v:Ljava/io/Serializable;

    iput v2, v0, Lmc/v;->n:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final S(Lmc/v;)V
    .locals 3

    sget-object v0, Lmc/v;->x:Lmc/v;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lmc/v;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lmc/v;->o:Lmc/s;

    if-nez v0, :cond_1

    sget-object v0, Lmc/s;->t:Lmc/s;

    :cond_1
    iget v1, p0, Lmc/u;->n:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmc/u;->o:Lmc/s;

    if-eqz v1, :cond_2

    sget-object v2, Lmc/s;->t:Lmc/s;

    if-eq v1, v2, :cond_2

    invoke-virtual {v2}, Lmc/s;->z()Lmc/r;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmc/r;->S(Lmc/s;)V

    invoke-virtual {v2, v0}, Lmc/r;->S(Lmc/s;)V

    invoke-virtual {v2}, Lmc/r;->R()Lmc/s;

    move-result-object v0

    iput-object v0, p0, Lmc/u;->o:Lmc/s;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lmc/u;->o:Lmc/s;

    :goto_0
    invoke-virtual {p0}, Lf8/l3;->O()V

    iget v0, p0, Lmc/u;->n:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmc/u;->n:I

    :cond_3
    iget-object v0, p1, Lmc/v;->p:Lf8/k4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmc/u;->p:Lf8/k4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lmc/v;->p:Lf8/k4;

    iput-object v0, p0, Lmc/u;->p:Lf8/k4;

    iget v0, p0, Lmc/u;->n:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lmc/u;->n:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lmc/u;->n:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    new-instance v0, Lf8/j4;

    iget-object v1, p0, Lmc/u;->p:Lf8/k4;

    invoke-direct {v0, v1}, Lf8/j4;-><init>(Lf8/k4;)V

    iput-object v0, p0, Lmc/u;->p:Lf8/k4;

    iget v0, p0, Lmc/u;->n:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmc/u;->n:I

    :cond_5
    iget-object v0, p0, Lmc/u;->p:Lf8/k4;

    iget-object v1, p1, Lmc/v;->p:Lf8/k4;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_6
    iget-object v0, p1, Lmc/v;->q:Lf8/k4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lmc/u;->q:Lf8/k4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lmc/v;->q:Lf8/k4;

    iput-object v0, p0, Lmc/u;->q:Lf8/k4;

    iget v0, p0, Lmc/u;->n:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lmc/u;->n:I

    goto :goto_2

    :cond_7
    iget v0, p0, Lmc/u;->n:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_8

    new-instance v0, Lf8/j4;

    iget-object v1, p0, Lmc/u;->q:Lf8/k4;

    invoke-direct {v0, v1}, Lf8/j4;-><init>(Lf8/k4;)V

    iput-object v0, p0, Lmc/u;->q:Lf8/k4;

    iget v0, p0, Lmc/u;->n:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmc/u;->n:I

    :cond_8
    iget-object v0, p0, Lmc/u;->q:Lf8/k4;

    iget-object v1, p1, Lmc/v;->q:Lf8/k4;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_9
    invoke-virtual {p1}, Lmc/v;->D()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lmc/u;->n:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lmc/u;->n:I

    iget-object v0, p1, Lmc/v;->r:Ljava/io/Serializable;

    iput-object v0, p0, Lmc/u;->r:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_a
    invoke-virtual {p1}, Lmc/v;->C()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lmc/u;->n:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lmc/u;->n:I

    iget-object v0, p1, Lmc/v;->s:Ljava/io/Serializable;

    iput-object v0, p0, Lmc/u;->s:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_b
    invoke-virtual {p1}, Lmc/v;->B()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v0, p1, Lmc/v;->t:J

    iget v2, p0, Lmc/u;->n:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lmc/u;->n:I

    iput-wide v0, p0, Lmc/u;->t:J

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_c
    invoke-virtual {p1}, Lmc/v;->A()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p1, Lmc/v;->u:J

    iget v2, p0, Lmc/u;->n:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lmc/u;->n:I

    iput-wide v0, p0, Lmc/u;->u:J

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_d
    invoke-virtual {p1}, Lmc/v;->z()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lmc/u;->n:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lmc/u;->n:I

    iget-object v0, p1, Lmc/v;->v:Ljava/io/Serializable;

    iput-object v0, p0, Lmc/u;->v:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_e
    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lmc/u;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final T(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lmc/v;->y:Lmc/t;

    invoke-virtual {v1, p1, p2}, Lmc/t;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmc/v;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lmc/u;->S(Lmc/v;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lmc/v;
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

    invoke-virtual {p0, v0}, Lmc/u;->S(Lmc/v;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/v;->x:Lmc/v;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lmc/u;->R()Lmc/v;

    move-result-object p0

    invoke-virtual {p0}, Lmc/v;->p()Z

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

    check-cast p0, Lmc/u;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lmc/s0;->a:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmc/u;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lmc/u;->R()Lmc/v;

    move-result-object p0

    invoke-virtual {p0}, Lmc/v;->p()Z

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

    invoke-virtual {p0}, Lmc/u;->R()Lmc/v;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lmc/v;

    if-eqz v0, :cond_0

    check-cast p1, Lmc/v;

    invoke-virtual {p0, p1}, Lmc/u;->S(Lmc/v;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmc/u;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lmc/v;

    if-eqz v0, :cond_0

    check-cast p1, Lmc/v;

    invoke-virtual {p0, p1}, Lmc/u;->S(Lmc/v;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
