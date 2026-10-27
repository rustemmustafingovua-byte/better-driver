.class public final Lf8/x0;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:I

.field public o:Ljava/io/Serializable;

.field public p:Ljava/io/Serializable;

.field public q:Lf8/k4;

.field public r:Lf8/c4;

.field public s:Lf8/c4;

.field public t:Ljava/util/List;

.field public u:Ljava/util/List;

.field public v:Ljava/util/List;

.field public w:Ljava/util/List;

.field public x:Lf8/c1;

.field public y:Lf8/e2;

.field public z:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    const-string v0, ""

    iput-object v0, p0, Lf8/x0;->o:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/x0;->p:Ljava/io/Serializable;

    sget-object v1, Lf8/j4;->n:Lf8/j4;

    iput-object v1, p0, Lf8/x0;->q:Lf8/k4;

    sget-object v1, Lf8/z3;->o:Lf8/z3;

    iput-object v1, p0, Lf8/x0;->r:Lf8/c4;

    iput-object v1, p0, Lf8/x0;->s:Lf8/c4;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lf8/x0;->t:Ljava/util/List;

    iput-object v1, p0, Lf8/x0;->u:Ljava/util/List;

    iput-object v1, p0, Lf8/x0;->v:Ljava/util/List;

    iput-object v1, p0, Lf8/x0;->w:Ljava/util/List;

    iput-object v0, p0, Lf8/x0;->z:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lf8/x0;

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

    sget-object p0, Lf8/l2;->b:Lf8/x3;

    const-class v0, Lf8/y0;

    const-class v1, Lf8/x0;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final R()Lf8/y0;
    .locals 6

    new-instance v0, Lf8/y0;

    invoke-direct {v0, p0}, Lf8/y3;-><init>(Lf8/l3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lf8/y0;->A:B

    iget v1, p0, Lf8/x0;->n:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lf8/x0;->o:Ljava/io/Serializable;

    iput-object v4, v0, Lf8/y0;->o:Ljava/io/Serializable;

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v4, p0, Lf8/x0;->p:Ljava/io/Serializable;

    iput-object v4, v0, Lf8/y0;->p:Ljava/io/Serializable;

    iget v4, p0, Lf8/x0;->n:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lf8/x0;->q:Lf8/k4;

    invoke-interface {v4}, Lf8/k4;->i()Lf8/k4;

    move-result-object v4

    iput-object v4, p0, Lf8/x0;->q:Lf8/k4;

    iget v4, p0, Lf8/x0;->n:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Lf8/x0;->n:I

    :cond_2
    iget-object v4, p0, Lf8/x0;->q:Lf8/k4;

    iput-object v4, v0, Lf8/y0;->q:Lf8/k4;

    iget v4, p0, Lf8/x0;->n:I

    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_3

    iget-object v5, p0, Lf8/x0;->r:Lf8/c4;

    check-cast v5, Lf8/e;

    iput-boolean v3, v5, Lf8/e;->l:Z

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Lf8/x0;->n:I

    :cond_3
    iget-object v4, p0, Lf8/x0;->r:Lf8/c4;

    iput-object v4, v0, Lf8/y0;->r:Lf8/c4;

    iget v4, p0, Lf8/x0;->n:I

    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_4

    iget-object v5, p0, Lf8/x0;->s:Lf8/c4;

    check-cast v5, Lf8/e;

    iput-boolean v3, v5, Lf8/e;->l:Z

    and-int/lit8 v3, v4, -0x11

    iput v3, p0, Lf8/x0;->n:I

    :cond_4
    iget-object v3, p0, Lf8/x0;->s:Lf8/c4;

    iput-object v3, v0, Lf8/y0;->s:Lf8/c4;

    iget v3, p0, Lf8/x0;->n:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    iget-object v3, p0, Lf8/x0;->t:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lf8/x0;->t:Ljava/util/List;

    iget v3, p0, Lf8/x0;->n:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lf8/x0;->n:I

    :cond_5
    iget-object v3, p0, Lf8/x0;->t:Ljava/util/List;

    iput-object v3, v0, Lf8/y0;->t:Ljava/util/List;

    iget v3, p0, Lf8/x0;->n:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    iget-object v3, p0, Lf8/x0;->u:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lf8/x0;->u:Ljava/util/List;

    iget v3, p0, Lf8/x0;->n:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lf8/x0;->n:I

    :cond_6
    iget-object v3, p0, Lf8/x0;->u:Ljava/util/List;

    iput-object v3, v0, Lf8/y0;->u:Ljava/util/List;

    iget v3, p0, Lf8/x0;->n:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_7

    iget-object v3, p0, Lf8/x0;->v:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lf8/x0;->v:Ljava/util/List;

    iget v3, p0, Lf8/x0;->n:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lf8/x0;->n:I

    :cond_7
    iget-object v3, p0, Lf8/x0;->v:Ljava/util/List;

    iput-object v3, v0, Lf8/y0;->v:Ljava/util/List;

    iget v3, p0, Lf8/x0;->n:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_8

    iget-object v3, p0, Lf8/x0;->w:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lf8/x0;->w:Ljava/util/List;

    iget v3, p0, Lf8/x0;->n:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lf8/x0;->n:I

    :cond_8
    iget-object v3, p0, Lf8/x0;->w:Ljava/util/List;

    iput-object v3, v0, Lf8/y0;->w:Ljava/util/List;

    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_9

    iget-object v3, p0, Lf8/x0;->x:Lf8/c1;

    iput-object v3, v0, Lf8/y0;->x:Lf8/c1;

    or-int/lit8 v2, v2, 0x4

    :cond_9
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_a

    iget-object v3, p0, Lf8/x0;->y:Lf8/e2;

    iput-object v3, v0, Lf8/y0;->y:Lf8/e2;

    or-int/lit8 v2, v2, 0x8

    :cond_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    or-int/lit8 v2, v2, 0x10

    :cond_b
    iget-object v1, p0, Lf8/x0;->z:Ljava/io/Serializable;

    iput-object v1, v0, Lf8/y0;->z:Ljava/io/Serializable;

    iput v2, v0, Lf8/y0;->n:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final S(Lf8/y0;)V
    .locals 3

    sget-object v0, Lf8/y0;->B:Lf8/y0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lf8/y0;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf8/x0;->n:I

    iget-object v0, p1, Lf8/y0;->o:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/x0;->o:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_1
    invoke-virtual {p1}, Lf8/y0;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf8/x0;->n:I

    iget-object v0, p1, Lf8/y0;->p:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/x0;->p:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_2
    iget-object v0, p1, Lf8/y0;->q:Lf8/k4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lf8/x0;->q:Lf8/k4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lf8/y0;->q:Lf8/k4;

    iput-object v0, p0, Lf8/x0;->q:Lf8/k4;

    iget v0, p0, Lf8/x0;->n:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lf8/x0;->n:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lf8/x0;->n:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    new-instance v0, Lf8/j4;

    iget-object v1, p0, Lf8/x0;->q:Lf8/k4;

    invoke-direct {v0, v1}, Lf8/j4;-><init>(Lf8/k4;)V

    iput-object v0, p0, Lf8/x0;->q:Lf8/k4;

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lf8/x0;->n:I

    :cond_4
    iget-object v0, p0, Lf8/x0;->q:Lf8/k4;

    iget-object v1, p1, Lf8/y0;->q:Lf8/k4;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_5
    iget-object v0, p1, Lf8/y0;->r:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lf8/x0;->r:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lf8/y0;->r:Lf8/c4;

    iput-object v0, p0, Lf8/x0;->r:Lf8/c4;

    iget v0, p0, Lf8/x0;->n:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lf8/x0;->n:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lf8/x0;->n:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_7

    iget-object v0, p0, Lf8/x0;->r:Lf8/c4;

    invoke-static {v0}, Lf8/y3;->r(Lf8/c4;)Lf8/z3;

    move-result-object v0

    iput-object v0, p0, Lf8/x0;->r:Lf8/c4;

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lf8/x0;->n:I

    :cond_7
    iget-object v0, p0, Lf8/x0;->r:Lf8/c4;

    iget-object v1, p1, Lf8/y0;->r:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_8
    iget-object v0, p1, Lf8/y0;->s:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lf8/x0;->s:Lf8/c4;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lf8/y0;->s:Lf8/c4;

    iput-object v0, p0, Lf8/x0;->s:Lf8/c4;

    iget v0, p0, Lf8/x0;->n:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lf8/x0;->n:I

    goto :goto_2

    :cond_9
    iget v0, p0, Lf8/x0;->n:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_a

    iget-object v0, p0, Lf8/x0;->s:Lf8/c4;

    invoke-static {v0}, Lf8/y3;->r(Lf8/c4;)Lf8/z3;

    move-result-object v0

    iput-object v0, p0, Lf8/x0;->s:Lf8/c4;

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lf8/x0;->n:I

    :cond_a
    iget-object v0, p0, Lf8/x0;->s:Lf8/c4;

    iget-object v1, p1, Lf8/y0;->s:Lf8/c4;

    check-cast v0, Lf8/z3;

    invoke-virtual {v0, v1}, Lf8/z3;->addAll(Ljava/util/Collection;)Z

    :goto_2
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_b
    iget-object v0, p1, Lf8/y0;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lf8/x0;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lf8/y0;->t:Ljava/util/List;

    iput-object v0, p0, Lf8/x0;->t:Ljava/util/List;

    iget v0, p0, Lf8/x0;->n:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lf8/x0;->n:I

    goto :goto_3

    :cond_c
    iget v0, p0, Lf8/x0;->n:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/x0;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/x0;->t:Ljava/util/List;

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lf8/x0;->n:I

    :cond_d
    iget-object v0, p0, Lf8/x0;->t:Ljava/util/List;

    iget-object v1, p1, Lf8/y0;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_e
    iget-object v0, p1, Lf8/y0;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lf8/x0;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p1, Lf8/y0;->u:Ljava/util/List;

    iput-object v0, p0, Lf8/x0;->u:Ljava/util/List;

    iget v0, p0, Lf8/x0;->n:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lf8/x0;->n:I

    goto :goto_4

    :cond_f
    iget v0, p0, Lf8/x0;->n:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/x0;->u:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/x0;->u:Ljava/util/List;

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lf8/x0;->n:I

    :cond_10
    iget-object v0, p0, Lf8/x0;->u:Ljava/util/List;

    iget-object v1, p1, Lf8/y0;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_11
    iget-object v0, p1, Lf8/y0;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lf8/x0;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lf8/y0;->v:Ljava/util/List;

    iput-object v0, p0, Lf8/x0;->v:Ljava/util/List;

    iget v0, p0, Lf8/x0;->n:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lf8/x0;->n:I

    goto :goto_5

    :cond_12
    iget v0, p0, Lf8/x0;->n:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/x0;->v:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/x0;->v:Ljava/util/List;

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lf8/x0;->n:I

    :cond_13
    iget-object v0, p0, Lf8/x0;->v:Ljava/util/List;

    iget-object v1, p1, Lf8/y0;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_5
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_14
    iget-object v0, p1, Lf8/y0;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lf8/x0;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lf8/y0;->w:Ljava/util/List;

    iput-object v0, p0, Lf8/x0;->w:Ljava/util/List;

    iget v0, p0, Lf8/x0;->n:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lf8/x0;->n:I

    goto :goto_6

    :cond_15
    iget v0, p0, Lf8/x0;->n:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf8/x0;->w:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/x0;->w:Ljava/util/List;

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lf8/x0;->n:I

    :cond_16
    iget-object v0, p0, Lf8/x0;->w:Ljava/util/List;

    iget-object v1, p1, Lf8/y0;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_6
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_17
    invoke-virtual {p1}, Lf8/y0;->z()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lf8/y0;->w()Lf8/c1;

    move-result-object v0

    iget v1, p0, Lf8/x0;->n:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_18

    iget-object v1, p0, Lf8/x0;->x:Lf8/c1;

    if-eqz v1, :cond_18

    sget-object v2, Lf8/c1;->L:Lf8/c1;

    if-eq v1, v2, :cond_18

    invoke-virtual {v2}, Lf8/c1;->b0()Lf8/a1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lf8/a1;->X(Lf8/c1;)V

    invoke-virtual {v2, v0}, Lf8/a1;->X(Lf8/c1;)V

    invoke-virtual {v2}, Lf8/a1;->W()Lf8/c1;

    move-result-object v0

    iput-object v0, p0, Lf8/x0;->x:Lf8/c1;

    goto :goto_7

    :cond_18
    iput-object v0, p0, Lf8/x0;->x:Lf8/c1;

    :goto_7
    invoke-virtual {p0}, Lf8/l3;->O()V

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lf8/x0;->n:I

    :cond_19
    invoke-virtual {p1}, Lf8/y0;->B()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lf8/y0;->y:Lf8/e2;

    if-nez v0, :cond_1a

    sget-object v0, Lf8/e2;->p:Lf8/e2;

    :cond_1a
    iget v1, p0, Lf8/x0;->n:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lf8/x0;->y:Lf8/e2;

    if-eqz v1, :cond_1b

    sget-object v2, Lf8/e2;->p:Lf8/e2;

    if-eq v1, v2, :cond_1b

    invoke-virtual {v2}, Lf8/e2;->v()Lf8/a2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lf8/a2;->S(Lf8/e2;)V

    invoke-virtual {v2, v0}, Lf8/a2;->S(Lf8/e2;)V

    invoke-virtual {v2}, Lf8/a2;->R()Lf8/e2;

    move-result-object v0

    iput-object v0, p0, Lf8/x0;->y:Lf8/e2;

    goto :goto_8

    :cond_1b
    iput-object v0, p0, Lf8/x0;->y:Lf8/e2;

    :goto_8
    invoke-virtual {p0}, Lf8/l3;->O()V

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lf8/x0;->n:I

    :cond_1c
    invoke-virtual {p1}, Lf8/y0;->C()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lf8/x0;->n:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lf8/x0;->n:I

    iget-object v0, p1, Lf8/y0;->z:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/x0;->z:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_1d
    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lf8/x0;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final T(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lf8/y0;->C:Lf8/w0;

    invoke-virtual {v1, p1, p2}, Lf8/w0;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/y0;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lf8/x0;->S(Lf8/y0;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lf8/y0;
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

    invoke-virtual {p0, v0}, Lf8/x0;->S(Lf8/y0;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/y0;->B:Lf8/y0;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lf8/x0;->R()Lf8/y0;

    move-result-object p0

    invoke-virtual {p0}, Lf8/y0;->p()Z

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

    check-cast p0, Lf8/x0;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lf8/l2;->a:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/x0;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lf8/x0;->R()Lf8/y0;

    move-result-object p0

    invoke-virtual {p0}, Lf8/y0;->p()Z

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

    invoke-virtual {p0}, Lf8/x0;->R()Lf8/y0;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/y0;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/y0;

    invoke-virtual {p0, p1}, Lf8/x0;->S(Lf8/y0;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/x0;->T(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/y0;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/y0;

    invoke-virtual {p0, p1}, Lf8/x0;->S(Lf8/y0;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
