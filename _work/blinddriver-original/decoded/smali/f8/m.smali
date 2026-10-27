.class public final Lf8/m;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:Ljava/io/Serializable;

.field public p:Ljava/util/List;

.field public q:Ljava/util/List;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Ljava/util/List;

.field public u:Ljava/util/List;

.field public v:Lf8/f1;

.field public w:Ljava/util/List;

.field public x:Lf8/k4;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    const-string v0, ""

    iput-object v0, p0, Lf8/m;->o:Ljava/io/Serializable;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->p:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->q:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->r:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->s:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->t:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->u:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->w:Ljava/util/List;

    sget-object v0, Lf8/j4;->n:Lf8/j4;

    iput-object v0, p0, Lf8/m;->x:Lf8/k4;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lf8/m;

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

    sget-object p0, Lf8/l2;->d:Lf8/x3;

    const-class v0, Lf8/t;

    const-class v1, Lf8/m;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final R()Lf8/t;
    .locals 4

    new-instance v0, Lf8/t;

    invoke-direct {v0, p0}, Lf8/y3;-><init>(Lf8/l3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lf8/t;->y:B

    iget v1, p0, Lf8/m;->n:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lf8/m;->o:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/t;->o:Ljava/io/Serializable;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lf8/m;->p:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lf8/m;->p:Ljava/util/List;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lf8/m;->n:I

    :cond_1
    iget-object v3, p0, Lf8/m;->p:Ljava/util/List;

    iput-object v3, v0, Lf8/t;->p:Ljava/util/List;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lf8/m;->q:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lf8/m;->q:Ljava/util/List;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lf8/m;->n:I

    :cond_2
    iget-object v3, p0, Lf8/m;->q:Ljava/util/List;

    iput-object v3, v0, Lf8/t;->q:Ljava/util/List;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    iget-object v3, p0, Lf8/m;->r:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lf8/m;->r:Ljava/util/List;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lf8/m;->n:I

    :cond_3
    iget-object v3, p0, Lf8/m;->r:Ljava/util/List;

    iput-object v3, v0, Lf8/t;->r:Ljava/util/List;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    iget-object v3, p0, Lf8/m;->s:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lf8/m;->s:Ljava/util/List;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lf8/m;->n:I

    :cond_4
    iget-object v3, p0, Lf8/m;->s:Ljava/util/List;

    iput-object v3, v0, Lf8/t;->s:Ljava/util/List;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    iget-object v3, p0, Lf8/m;->t:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lf8/m;->t:Ljava/util/List;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lf8/m;->n:I

    :cond_5
    iget-object v3, p0, Lf8/m;->t:Ljava/util/List;

    iput-object v3, v0, Lf8/t;->t:Ljava/util/List;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    iget-object v3, p0, Lf8/m;->u:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lf8/m;->u:Ljava/util/List;

    iget v3, p0, Lf8/m;->n:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lf8/m;->n:I

    :cond_6
    iget-object v3, p0, Lf8/m;->u:Ljava/util/List;

    iput-object v3, v0, Lf8/t;->u:Ljava/util/List;

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, p0, Lf8/m;->v:Lf8/f1;

    iput-object v1, v0, Lf8/t;->v:Lf8/f1;

    or-int/lit8 v2, v2, 0x2

    :cond_7
    iget v1, p0, Lf8/m;->n:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, p0, Lf8/m;->w:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lf8/m;->w:Ljava/util/List;

    iget v1, p0, Lf8/m;->n:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lf8/m;->n:I

    :cond_8
    iget-object v1, p0, Lf8/m;->w:Ljava/util/List;

    iput-object v1, v0, Lf8/t;->w:Ljava/util/List;

    iget v1, p0, Lf8/m;->n:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, p0, Lf8/m;->x:Lf8/k4;

    invoke-interface {v1}, Lf8/k4;->i()Lf8/k4;

    move-result-object v1

    iput-object v1, p0, Lf8/m;->x:Lf8/k4;

    iget v1, p0, Lf8/m;->n:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lf8/m;->n:I

    :cond_9
    iget-object v1, p0, Lf8/m;->x:Lf8/k4;

    iput-object v1, v0, Lf8/t;->x:Lf8/k4;

    iput v2, v0, Lf8/t;->n:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final S(Lf8/c;)Lf8/m;
    .locals 1

    instance-of v0, p1, Lf8/t;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/t;

    invoke-virtual {p0, p1}, Lf8/m;->U(Lf8/t;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final T(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lf8/t;->A:Lf8/l;

    invoke-virtual {v1, p1, p2}, Lf8/l;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/t;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lf8/m;->U(Lf8/t;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lf8/t;
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

    invoke-virtual {p0, v0}, Lf8/m;->U(Lf8/t;)V

    :cond_0
    throw p1
.end method

.method public final U(Lf8/t;)V
    .locals 3

    sget-object v0, Lf8/t;->z:Lf8/t;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lf8/t;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lf8/m;->n:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf8/m;->n:I

    iget-object v0, p1, Lf8/t;->o:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/m;->o:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_1
    iget-object v0, p1, Lf8/t;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lf8/m;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lf8/t;->p:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->p:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lf8/m;->n:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/m;->p:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/m;->p:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf8/m;->n:I

    :cond_3
    iget-object v0, p0, Lf8/m;->p:Ljava/util/List;

    iget-object v1, p1, Lf8/t;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_4
    iget-object v0, p1, Lf8/t;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lf8/m;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lf8/t;->q:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->q:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lf8/m;->n:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/m;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/m;->q:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lf8/m;->n:I

    :cond_6
    iget-object v0, p0, Lf8/m;->q:Ljava/util/List;

    iget-object v1, p1, Lf8/t;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_7
    iget-object v0, p1, Lf8/t;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lf8/m;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lf8/t;->r:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->r:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lf8/m;->n:I

    goto :goto_2

    :cond_8
    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/m;->r:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/m;->r:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lf8/m;->n:I

    :cond_9
    iget-object v0, p0, Lf8/m;->r:Ljava/util/List;

    iget-object v1, p1, Lf8/t;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_a
    iget-object v0, p1, Lf8/t;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lf8/m;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p1, Lf8/t;->s:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->s:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lf8/m;->n:I

    goto :goto_3

    :cond_b
    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/m;->s:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/m;->s:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lf8/m;->n:I

    :cond_c
    iget-object v0, p0, Lf8/m;->s:Ljava/util/List;

    iget-object v1, p1, Lf8/t;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_d
    iget-object v0, p1, Lf8/t;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lf8/m;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lf8/t;->t:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->t:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lf8/m;->n:I

    goto :goto_4

    :cond_e
    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/m;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/m;->t:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lf8/m;->n:I

    :cond_f
    iget-object v0, p0, Lf8/m;->t:Ljava/util/List;

    iget-object v1, p1, Lf8/t;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_10
    iget-object v0, p1, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lf8/m;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lf8/t;->u:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->u:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lf8/m;->n:I

    goto :goto_5

    :cond_11
    iget v0, p0, Lf8/m;->n:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/m;->u:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/m;->u:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lf8/m;->n:I

    :cond_12
    iget-object v0, p0, Lf8/m;->u:Ljava/util/List;

    iget-object v1, p1, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_5
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_13
    invoke-virtual {p1}, Lf8/t;->x()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lf8/t;->w()Lf8/f1;

    move-result-object v0

    iget v1, p0, Lf8/m;->n:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_14

    iget-object v1, p0, Lf8/m;->v:Lf8/f1;

    if-eqz v1, :cond_14

    sget-object v2, Lf8/f1;->v:Lf8/f1;

    if-eq v1, v2, :cond_14

    invoke-virtual {v2}, Lf8/f1;->B()Lf8/e1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lf8/e1;->X(Lf8/f1;)V

    invoke-virtual {v2, v0}, Lf8/e1;->X(Lf8/f1;)V

    invoke-virtual {v2}, Lf8/e1;->W()Lf8/f1;

    move-result-object v0

    iput-object v0, p0, Lf8/m;->v:Lf8/f1;

    goto :goto_6

    :cond_14
    iput-object v0, p0, Lf8/m;->v:Lf8/f1;

    :goto_6
    invoke-virtual {p0}, Lf8/l3;->O()V

    iget v0, p0, Lf8/m;->n:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lf8/m;->n:I

    :cond_15
    iget-object v0, p1, Lf8/t;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lf8/m;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lf8/t;->w:Ljava/util/List;

    iput-object v0, p0, Lf8/m;->w:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lf8/m;->n:I

    goto :goto_7

    :cond_16
    iget v0, p0, Lf8/m;->n:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/m;->w:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/m;->w:Ljava/util/List;

    iget v0, p0, Lf8/m;->n:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lf8/m;->n:I

    :cond_17
    iget-object v0, p0, Lf8/m;->w:Ljava/util/List;

    iget-object v1, p1, Lf8/t;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_7
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_18
    iget-object v0, p1, Lf8/t;->x:Lf8/k4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lf8/m;->x:Lf8/k4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Lf8/t;->x:Lf8/k4;

    iput-object v0, p0, Lf8/m;->x:Lf8/k4;

    iget v0, p0, Lf8/m;->n:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lf8/m;->n:I

    goto :goto_8

    :cond_19
    iget v0, p0, Lf8/m;->n:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1a

    new-instance v0, Lf8/j4;

    iget-object v1, p0, Lf8/m;->x:Lf8/k4;

    invoke-direct {v0, v1}, Lf8/j4;-><init>(Lf8/k4;)V

    iput-object v0, p0, Lf8/m;->x:Lf8/k4;

    iget v0, p0, Lf8/m;->n:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lf8/m;->n:I

    :cond_1a
    iget-object v0, p0, Lf8/m;->x:Lf8/k4;

    iget-object v1, p1, Lf8/t;->x:Lf8/k4;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_8
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_1b
    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lf8/m;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/t;->z:Lf8/t;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lf8/m;->R()Lf8/t;

    move-result-object p0

    invoke-virtual {p0}, Lf8/t;->p()Z

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

    check-cast p0, Lf8/m;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lf8/l2;->c:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/m;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lf8/m;->R()Lf8/t;

    move-result-object p0

    invoke-virtual {p0}, Lf8/t;->p()Z

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

    invoke-virtual {p0}, Lf8/m;->R()Lf8/t;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic u(Lf8/c;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/m;->S(Lf8/c;)Lf8/m;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/m;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final bridge synthetic x(Lf8/c;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/m;->S(Lf8/c;)Lf8/m;

    return-object p0
.end method
