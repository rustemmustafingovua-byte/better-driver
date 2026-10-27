.class public final Lf8/a1;
.super Lf8/n3;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljava/io/Serializable;

.field public D:Ljava/io/Serializable;

.field public E:Ljava/io/Serializable;

.field public F:Ljava/io/Serializable;

.field public G:Ljava/io/Serializable;

.field public H:Ljava/io/Serializable;

.field public I:Ljava/io/Serializable;

.field public J:Ljava/util/List;

.field public o:I

.field public p:Ljava/io/Serializable;

.field public q:Ljava/io/Serializable;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public v:Ljava/io/Serializable;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf8/l3;-><init>(Lf8/m3;)V

    const-string v0, ""

    iput-object v0, p0, Lf8/a1;->p:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->q:Ljava/io/Serializable;

    const/4 v1, 0x1

    iput v1, p0, Lf8/a1;->u:I

    iput-object v0, p0, Lf8/a1;->v:Ljava/io/Serializable;

    iput-boolean v1, p0, Lf8/a1;->B:Z

    iput-object v0, p0, Lf8/a1;->C:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->D:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->E:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->F:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->G:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->H:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->I:Ljava/io/Serializable;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lf8/a1;->J:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A(Lf8/i5;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p0

    check-cast p0, Lf8/a1;

    return-object p0
.end method

.method public final E(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/n3;->U(Lf8/v2;Ljava/lang/Object;)V

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

    sget-object p0, Lf8/l2;->z:Lf8/x3;

    const-class v0, Lf8/c1;

    const-class v1, Lf8/a1;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final Q(Lf8/i5;)Lf8/l3;
    .locals 0

    iput-object p1, p0, Lf8/l3;->m:Lf8/i5;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-object p0
.end method

.method public final W()Lf8/c1;
    .locals 5

    new-instance v0, Lf8/c1;

    invoke-direct {v0, p0}, Lf8/o3;-><init>(Lf8/n3;)V

    const/4 v1, -0x1

    iput-byte v1, v0, Lf8/c1;->K:B

    iget v1, p0, Lf8/a1;->o:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lf8/a1;->p:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/c1;->p:Ljava/io/Serializable;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    :cond_1
    iget-object v3, p0, Lf8/a1;->q:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/c1;->q:Ljava/io/Serializable;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lf8/a1;->r:Z

    iput-boolean v3, v0, Lf8/c1;->r:Z

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lf8/a1;->s:Z

    iput-boolean v3, v0, Lf8/c1;->s:Z

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lf8/a1;->t:Z

    iput-boolean v3, v0, Lf8/c1;->t:Z

    or-int/lit8 v2, v2, 0x10

    :cond_4
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x20

    :cond_5
    iget v3, p0, Lf8/a1;->u:I

    iput v3, v0, Lf8/c1;->u:I

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x40

    :cond_6
    iget-object v3, p0, Lf8/a1;->v:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/c1;->v:Ljava/io/Serializable;

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lf8/a1;->w:Z

    iput-boolean v3, v0, Lf8/c1;->w:Z

    or-int/lit16 v2, v2, 0x80

    :cond_7
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lf8/a1;->x:Z

    iput-boolean v3, v0, Lf8/c1;->x:Z

    or-int/lit16 v2, v2, 0x100

    :cond_8
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lf8/a1;->y:Z

    iput-boolean v3, v0, Lf8/c1;->y:Z

    or-int/lit16 v2, v2, 0x200

    :cond_9
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lf8/a1;->z:Z

    iput-boolean v3, v0, Lf8/c1;->z:Z

    or-int/lit16 v2, v2, 0x400

    :cond_a
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lf8/a1;->A:Z

    iput-boolean v3, v0, Lf8/c1;->A:Z

    or-int/lit16 v2, v2, 0x800

    :cond_b
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_c

    or-int/lit16 v2, v2, 0x1000

    :cond_c
    iget-boolean v3, p0, Lf8/a1;->B:Z

    iput-boolean v3, v0, Lf8/c1;->B:Z

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_d

    or-int/lit16 v2, v2, 0x2000

    :cond_d
    iget-object v3, p0, Lf8/a1;->C:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/c1;->C:Ljava/io/Serializable;

    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_e

    or-int/lit16 v2, v2, 0x4000

    :cond_e
    iget-object v3, p0, Lf8/a1;->D:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/c1;->D:Ljava/io/Serializable;

    const v3, 0x8000

    and-int v4, v1, v3

    if-eqz v4, :cond_f

    or-int/2addr v2, v3

    :cond_f
    iget-object v3, p0, Lf8/a1;->E:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/c1;->E:Ljava/io/Serializable;

    const/high16 v3, 0x10000

    and-int v4, v1, v3

    if-eqz v4, :cond_10

    or-int/2addr v2, v3

    :cond_10
    iget-object v3, p0, Lf8/a1;->F:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/c1;->F:Ljava/io/Serializable;

    const/high16 v3, 0x20000

    and-int v4, v1, v3

    if-eqz v4, :cond_11

    or-int/2addr v2, v3

    :cond_11
    iget-object v3, p0, Lf8/a1;->G:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/c1;->G:Ljava/io/Serializable;

    const/high16 v3, 0x40000

    and-int v4, v1, v3

    if-eqz v4, :cond_12

    or-int/2addr v2, v3

    :cond_12
    iget-object v3, p0, Lf8/a1;->H:Ljava/io/Serializable;

    iput-object v3, v0, Lf8/c1;->H:Ljava/io/Serializable;

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    if-eqz v1, :cond_13

    or-int/2addr v2, v3

    :cond_13
    iget-object v1, p0, Lf8/a1;->I:Ljava/io/Serializable;

    iput-object v1, v0, Lf8/c1;->I:Ljava/io/Serializable;

    iget v1, p0, Lf8/a1;->o:I

    const/high16 v3, 0x100000

    and-int/2addr v1, v3

    if-eqz v1, :cond_14

    iget-object v1, p0, Lf8/a1;->J:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lf8/a1;->J:Ljava/util/List;

    iget v1, p0, Lf8/a1;->o:I

    const v3, -0x100001

    and-int/2addr v1, v3

    iput v1, p0, Lf8/a1;->o:I

    :cond_14
    iget-object v1, p0, Lf8/a1;->J:Ljava/util/List;

    iput-object v1, v0, Lf8/c1;->J:Ljava/util/List;

    iput v2, v0, Lf8/c1;->o:I

    invoke-virtual {p0}, Lf8/l3;->N()V

    return-object v0
.end method

.method public final X(Lf8/c1;)V
    .locals 4

    sget-object v0, Lf8/c1;->L:Lf8/c1;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lf8/c1;->o:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lf8/a1;->o:I

    or-int/2addr v0, v1

    iput v0, p0, Lf8/a1;->o:I

    iget-object v0, p1, Lf8/c1;->p:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->p:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_1
    invoke-virtual {p1}, Lf8/c1;->Q()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget v0, p0, Lf8/a1;->o:I

    or-int/2addr v0, v2

    iput v0, p0, Lf8/a1;->o:I

    iget-object v0, p1, Lf8/c1;->q:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->q:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_2
    invoke-virtual {p1}, Lf8/c1;->P()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lf8/c1;->r:Z

    iget v3, p0, Lf8/a1;->o:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lf8/a1;->o:I

    iput-boolean v0, p0, Lf8/a1;->r:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_3
    invoke-virtual {p1}, Lf8/c1;->N()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lf8/c1;->s:Z

    iget v3, p0, Lf8/a1;->o:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lf8/a1;->o:I

    iput-boolean v0, p0, Lf8/a1;->s:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_4
    invoke-virtual {p1}, Lf8/c1;->R()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lf8/c1;->t:Z

    iget v3, p0, Lf8/a1;->o:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lf8/a1;->o:I

    iput-boolean v0, p0, Lf8/a1;->t:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_5
    invoke-virtual {p1}, Lf8/c1;->T()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p1, Lf8/c1;->u:I

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    sget-object v0, Lf8/b1;->m:Lf8/b1;

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    sget-object v0, Lf8/b1;->o:Lf8/b1;

    goto :goto_0

    :cond_7
    sget-object v0, Lf8/b1;->n:Lf8/b1;

    goto :goto_0

    :cond_8
    sget-object v0, Lf8/b1;->m:Lf8/b1;

    :goto_0
    if-nez v0, :cond_9

    sget-object v0, Lf8/b1;->m:Lf8/b1;

    :cond_9
    iget v1, p0, Lf8/a1;->o:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lf8/a1;->o:I

    iget v0, v0, Lf8/b1;->l:I

    iput v0, p0, Lf8/a1;->u:I

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_a
    invoke-virtual {p1}, Lf8/c1;->M()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lf8/a1;->o:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lf8/a1;->o:I

    iget-object v0, p1, Lf8/c1;->v:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->v:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_b
    invoke-virtual {p1}, Lf8/c1;->J()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p1, Lf8/c1;->w:Z

    iget v1, p0, Lf8/a1;->o:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lf8/a1;->o:I

    iput-boolean v0, p0, Lf8/a1;->w:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_c
    invoke-virtual {p1}, Lf8/c1;->O()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p1, Lf8/c1;->x:Z

    iget v1, p0, Lf8/a1;->o:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lf8/a1;->o:I

    iput-boolean v0, p0, Lf8/a1;->x:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_d
    invoke-virtual {p1}, Lf8/c1;->Y()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p1, Lf8/c1;->y:Z

    iget v1, p0, Lf8/a1;->o:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lf8/a1;->o:I

    iput-boolean v0, p0, Lf8/a1;->y:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_e
    invoke-virtual {p1}, Lf8/c1;->V()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p1, Lf8/c1;->z:Z

    iget v1, p0, Lf8/a1;->o:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lf8/a1;->o:I

    iput-boolean v0, p0, Lf8/a1;->z:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_f
    invoke-virtual {p1}, Lf8/c1;->L()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lf8/c1;->A:Z

    iget v1, p0, Lf8/a1;->o:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lf8/a1;->o:I

    iput-boolean v0, p0, Lf8/a1;->A:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_10
    invoke-virtual {p1}, Lf8/c1;->I()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lf8/c1;->B:Z

    iget v1, p0, Lf8/a1;->o:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lf8/a1;->o:I

    iput-boolean v0, p0, Lf8/a1;->B:Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_11
    invoke-virtual {p1}, Lf8/c1;->S()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lf8/a1;->o:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lf8/a1;->o:I

    iget-object v0, p1, Lf8/c1;->C:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->C:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_12
    invoke-virtual {p1}, Lf8/c1;->K()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lf8/a1;->o:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lf8/a1;->o:I

    iget-object v0, p1, Lf8/c1;->D:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->D:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_13
    invoke-virtual {p1}, Lf8/c1;->a0()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lf8/a1;->o:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lf8/a1;->o:I

    iget-object v0, p1, Lf8/c1;->E:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->E:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_14
    invoke-virtual {p1}, Lf8/c1;->U()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lf8/a1;->o:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lf8/a1;->o:I

    iget-object v0, p1, Lf8/c1;->F:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->F:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_15
    invoke-virtual {p1}, Lf8/c1;->X()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lf8/a1;->o:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lf8/a1;->o:I

    iget-object v0, p1, Lf8/c1;->G:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->G:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_16
    invoke-virtual {p1}, Lf8/c1;->W()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lf8/a1;->o:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lf8/a1;->o:I

    iget-object v0, p1, Lf8/c1;->H:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->H:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_17
    invoke-virtual {p1}, Lf8/c1;->Z()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lf8/a1;->o:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lf8/a1;->o:I

    iget-object v0, p1, Lf8/c1;->I:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/a1;->I:Ljava/io/Serializable;

    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_18
    iget-object v0, p1, Lf8/c1;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lf8/a1;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Lf8/c1;->J:Ljava/util/List;

    iput-object v0, p0, Lf8/a1;->J:Ljava/util/List;

    iget v0, p0, Lf8/a1;->o:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lf8/a1;->o:I

    goto :goto_1

    :cond_19
    iget v0, p0, Lf8/a1;->o:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lf8/a1;->J:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lf8/a1;->J:Ljava/util/List;

    iget v0, p0, Lf8/a1;->o:I

    or-int/2addr v0, v1

    iput v0, p0, Lf8/a1;->o:I

    :cond_1a
    iget-object v0, p0, Lf8/a1;->J:Ljava/util/List;

    iget-object v1, p1, Lf8/c1;->J:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_1b
    invoke-virtual {p0, p1}, Lf8/n3;->T(Lf8/o3;)V

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/l3;->M(Lf8/i5;)Lf8/l3;

    move-result-object p1

    check-cast p1, Lf8/a1;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void
.end method

.method public final Y(Lf8/k;Lf8/h3;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lf8/c1;->M:Lf8/z0;

    invoke-virtual {v1, p1, p2}, Lf8/z0;->a(Lf8/k;Lf8/h3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/c1;
    :try_end_0
    .catch Lf8/h4; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lf8/a1;->X(Lf8/c1;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p1, Lf8/h4;->l:Lf8/o4;

    check-cast p2, Lf8/c1;
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

    invoke-virtual {p0, v0}, Lf8/a1;->X(Lf8/c1;)V

    :cond_0
    throw p1
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/c1;->L:Lf8/c1;

    return-object p0
.end method

.method public final build()Lf8/o4;
    .locals 1

    invoke-virtual {p0}, Lf8/a1;->W()Lf8/c1;

    move-result-object p0

    invoke-virtual {p0}, Lf8/c1;->p()Z

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

    check-cast p0, Lf8/a1;

    return-object p0
.end method

.method public final g(Lf8/v2;Ljava/lang/Object;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/n3;->R(Lf8/v2;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h()Lf8/m2;
    .locals 0

    sget-object p0, Lf8/l2;->y:Lf8/m2;

    return-object p0
.end method

.method public final bridge synthetic k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/a1;->Y(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final r()Lf8/c;
    .locals 1

    invoke-virtual {p0}, Lf8/a1;->W()Lf8/c1;

    move-result-object p0

    invoke-virtual {p0}, Lf8/c1;->p()Z

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

    invoke-virtual {p0}, Lf8/a1;->W()Lf8/c1;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/c1;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/c1;

    invoke-virtual {p0, p1}, Lf8/a1;->X(Lf8/c1;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method

.method public final bridge synthetic v(Lf8/k;Lf8/h3;)Lf8/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf8/a1;->Y(Lf8/k;Lf8/h3;)V

    return-object p0
.end method

.method public final x(Lf8/c;)Lf8/a;
    .locals 1

    instance-of v0, p1, Lf8/c1;

    if-eqz v0, :cond_0

    check-cast p1, Lf8/c1;

    invoke-virtual {p0, p1}, Lf8/a1;->X(Lf8/c1;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/a;->u(Lf8/c;)Lf8/a;

    return-object p0
.end method
