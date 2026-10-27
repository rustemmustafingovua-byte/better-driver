.class public final Lf8/g2;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:Ljava/util/List;

.field public p:Ljava/io/Serializable;

.field public q:J

.field public r:J

.field public s:D

.field public t:Lf8/j;

.field public u:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lf8/g2;->o:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lf8/g2;->p:Ljava/io/Serializable;

    sget-object v1, Lf8/j;->n:Lf8/j;

    iput-object v1, p0, Lf8/g2;->t:Lf8/j;

    iput-object v0, p0, Lf8/g2;->u:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lf8/g2;

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

    sget-object p0, Lf8/l2;->P:Lf8/x3;

    const-class v0, Lf8/k2;

    const-class v1, Lf8/g2;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final R()Lf8/k2;
    .locals 5

    new-instance v0, Lf8/k2;

    invoke-direct {v0, p0}, Lf8/y3;-><init>(Lf8/l3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lf8/k2;->v:B

    iget v1, p0, Lf8/g2;->n:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lf8/g2;->o:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lf8/g2;->o:Ljava/util/List;

    iget v2, p0, Lf8/g2;->n:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lf8/g2;->n:I

    :cond_0
    iget-object v2, p0, Lf8/g2;->o:Ljava/util/List;

    iput-object v2, v0, Lf8/k2;->o:Ljava/util/List;

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lf8/g2;->p:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/k2;->p:Ljava/io/Serializable;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lf8/g2;->q:J

    iput-wide v3, v0, Lf8/k2;->q:J

    or-int/lit8 v2, v2, 0x2

    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lf8/g2;->r:J

    iput-wide v3, v0, Lf8/k2;->r:J

    or-int/lit8 v2, v2, 0x4

    :cond_3
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    iget-wide v3, p0, Lf8/g2;->s:D

    iput-wide v3, v0, Lf8/k2;->s:D

    or-int/lit8 v2, v2, 0x8

    :cond_4
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x10

    :cond_5
    iget-object v3, p0, Lf8/g2;->t:Lf8/j;

    iput-object v3, v0, Lf8/k2;->t:Lf8/j;

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    or-int/lit8 v2, v2, 0x20

    :cond_6
    iget-object v1, p0, Lf8/g2;->u:Ljava/io/Serializable;

    iput-object v1, v0, Lf8/k2;->u:Ljava/io/Serializable;

    iput v2, v0, Lf8/k2;->n:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final S(Lf8/k2;)V
    .locals 3

    sget-object v0, Lf8/k2;->w:Lf8/k2;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lf8/k2;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lf8/g2;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lf8/k2;->o:Ljava/util/List;

    iput-object v0, p0, Lf8/g2;->o:Ljava/util/List;

    iget v0, p0, Lf8/g2;->n:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lf8/g2;->n:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lf8/g2;->n:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/g2;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/g2;->o:Ljava/util/List;

    iget v0, p0, Lf8/g2;->n:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf8/g2;->n:I

    :cond_2
    iget-object v0, p0, Lf8/g2;->o:Ljava/util/List;

    iget-object v1, p1, Lf8/k2;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_3
    iget v0, p1, Lf8/k2;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lf8/g2;->n:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf8/g2;->n:I

    iget-object v0, p1, Lf8/k2;->p:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/g2;->p:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_4
    invoke-virtual {p1}, Lf8/k2;->A()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p1, Lf8/k2;->q:J

    iget v2, p0, Lf8/g2;->n:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lf8/g2;->n:I

    iput-wide v0, p0, Lf8/g2;->q:J

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_5
    invoke-virtual {p1}, Lf8/k2;->z()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, p1, Lf8/k2;->r:J

    iget v2, p0, Lf8/g2;->n:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lf8/g2;->n:I

    iput-wide v0, p0, Lf8/g2;->r:J

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_6
    invoke-virtual {p1}, Lf8/k2;->y()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-wide v0, p1, Lf8/k2;->s:D

    iget v2, p0, Lf8/g2;->n:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lf8/g2;->n:I

    iput-wide v0, p0, Lf8/g2;->s:D

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_7
    invoke-virtual {p1}, Lf8/k2;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lf8/k2;->t:Lf8/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lf8/g2;->n:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lf8/g2;->n:I

    iput-object v0, p0, Lf8/g2;->t:Lf8/j;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_8
    invoke-virtual {p1}, Lf8/k2;->x()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lf8/g2;->n:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lf8/g2;->n:I

    iget-object v0, p1, Lf8/k2;->u:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/g2;->u:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_9
    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lf8/g2;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final T(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lf8/k2;->x:Lf8/f2;

    invoke-virtual {v1, p1, p2}, Lf8/f2;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/k2;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lf8/g2;->S(Lf8/k2;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lf8/k2;
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

    invoke-virtual {p0, v0}, Lf8/g2;->S(Lf8/k2;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/k2;->w:Lf8/k2;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lf8/g2;->R()Lf8/k2;

    move-result-object p0

    invoke-virtual {p0}, Lf8/k2;->p()Z

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

    check-cast p0, Lf8/g2;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lf8/l2;->O:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/g2;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lf8/g2;->R()Lf8/k2;

    move-result-object p0

    invoke-virtual {p0}, Lf8/k2;->p()Z

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

    invoke-virtual {p0}, Lf8/g2;->R()Lf8/k2;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/k2;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/k2;

    invoke-virtual {p0, p1}, Lf8/g2;->S(Lf8/k2;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/g2;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/k2;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/k2;

    invoke-virtual {p0, p1}, Lf8/g2;->S(Lf8/k2;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
