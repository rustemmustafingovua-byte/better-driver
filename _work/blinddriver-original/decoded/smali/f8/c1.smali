.class public final Lf8/c1;
.super Lf8/o3;
.source "SourceFile"


# static fields
.field public static final L:Lf8/c1;

.field public static final M:Lf8/z0;


# instance fields
.field public A:Z

.field public B:Z

.field public volatile C:Ljava/io/Serializable;

.field public volatile D:Ljava/io/Serializable;

.field public volatile E:Ljava/io/Serializable;

.field public volatile F:Ljava/io/Serializable;

.field public volatile G:Ljava/io/Serializable;

.field public volatile H:Ljava/io/Serializable;

.field public volatile I:Ljava/io/Serializable;

.field public J:Ljava/util/List;

.field public K:B

.field public o:I

.field public volatile p:Ljava/io/Serializable;

.field public volatile q:Ljava/io/Serializable;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public volatile v:Ljava/io/Serializable;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/c1;

    invoke-direct {v0}, Lf8/c1;-><init>()V

    sput-object v0, Lf8/c1;->L:Lf8/c1;

    new-instance v0, Lf8/z0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/c1;->M:Lf8/z0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf8/o3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf8/c1;->K:B

    const-string v0, ""

    iput-object v0, p0, Lf8/c1;->p:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/c1;->q:Ljava/io/Serializable;

    const/4 v1, 0x1

    iput v1, p0, Lf8/c1;->u:I

    iput-object v0, p0, Lf8/c1;->v:Ljava/io/Serializable;

    iput-boolean v1, p0, Lf8/c1;->B:Z

    iput-object v0, p0, Lf8/c1;->C:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/c1;->D:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/c1;->E:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/c1;->F:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/c1;->G:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/c1;->H:Ljava/io/Serializable;

    iput-object v0, p0, Lf8/c1;->I:Ljava/io/Serializable;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lf8/c1;->J:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/c1;->q:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/c1;->q:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final B()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/c1;->p:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/c1;->p:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final C()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/c1;->C:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/c1;->C:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final D()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/c1;->F:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/c1;->F:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final E()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/c1;->H:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/c1;->H:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final F()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/c1;->G:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/c1;->G:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final G()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/c1;->I:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/c1;->I:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final H()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/c1;->E:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/c1;->E:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final I()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final J()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final K()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final L()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final M()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final N()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final O()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final P()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Q()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final R()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final S()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final T()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final U()Z
    .locals 1

    iget p0, p0, Lf8/c1;->o:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final V()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final W()Z
    .locals 1

    iget p0, p0, Lf8/c1;->o:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final X()Z
    .locals 1

    iget p0, p0, Lf8/c1;->o:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Y()Z
    .locals 0

    iget p0, p0, Lf8/c1;->o:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Z()Z
    .locals 1

    iget p0, p0, Lf8/c1;->o:I

    const/high16 v0, 0x80000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/c1;->L:Lf8/c1;

    return-object p0
.end method

.method public final a0()Z
    .locals 1

    iget p0, p0, Lf8/c1;->o:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b0()Lf8/a1;
    .locals 1

    sget-object v0, Lf8/c1;->L:Lf8/c1;

    if-ne p0, v0, :cond_0

    new-instance p0, Lf8/a1;

    invoke-direct {p0}, Lf8/a1;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lf8/a1;

    invoke-direct {v0}, Lf8/a1;-><init>()V

    invoke-virtual {v0, p0}, Lf8/a1;->X(Lf8/c1;)V

    return-object v0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lf8/c1;->L:Lf8/c1;

    invoke-virtual {p0}, Lf8/c1;->b0()Lf8/a1;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lf8/c1;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lf8/c1;

    iget v1, p0, Lf8/c1;->o:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lf8/c1;->o:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eq v2, v4, :cond_4

    goto/16 :goto_2

    :cond_4
    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lf8/c1;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/c1;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lf8/c1;->Q()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->Q()Z

    move-result v2

    if-eq v1, v2, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lf8/c1;->Q()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lf8/c1;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/c1;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lf8/c1;->P()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->P()Z

    move-result v2

    if-eq v1, v2, :cond_8

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0}, Lf8/c1;->P()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lf8/c1;->r:Z

    iget-boolean v2, p1, Lf8/c1;->r:Z

    if-eq v1, v2, :cond_9

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lf8/c1;->N()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->N()Z

    move-result v2

    if-eq v1, v2, :cond_a

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Lf8/c1;->N()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lf8/c1;->s:Z

    iget-boolean v2, p1, Lf8/c1;->s:Z

    if-eq v1, v2, :cond_b

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Lf8/c1;->R()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->R()Z

    move-result v2

    if-eq v1, v2, :cond_c

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p0}, Lf8/c1;->R()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lf8/c1;->t:Z

    iget-boolean v2, p1, Lf8/c1;->t:Z

    if-eq v1, v2, :cond_d

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p0}, Lf8/c1;->T()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->T()Z

    move-result v2

    if-eq v1, v2, :cond_e

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p0}, Lf8/c1;->T()Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lf8/c1;->u:I

    iget v2, p1, Lf8/c1;->u:I

    if-eq v1, v2, :cond_f

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p0}, Lf8/c1;->M()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->M()Z

    move-result v2

    if-eq v1, v2, :cond_10

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p0}, Lf8/c1;->M()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lf8/c1;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/c1;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p0}, Lf8/c1;->J()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->J()Z

    move-result v2

    if-eq v1, v2, :cond_12

    goto/16 :goto_2

    :cond_12
    invoke-virtual {p0}, Lf8/c1;->J()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lf8/c1;->w:Z

    iget-boolean v2, p1, Lf8/c1;->w:Z

    if-eq v1, v2, :cond_13

    goto/16 :goto_2

    :cond_13
    invoke-virtual {p0}, Lf8/c1;->O()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->O()Z

    move-result v2

    if-eq v1, v2, :cond_14

    goto/16 :goto_2

    :cond_14
    invoke-virtual {p0}, Lf8/c1;->O()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lf8/c1;->x:Z

    iget-boolean v2, p1, Lf8/c1;->x:Z

    if-eq v1, v2, :cond_15

    goto/16 :goto_2

    :cond_15
    invoke-virtual {p0}, Lf8/c1;->Y()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->Y()Z

    move-result v2

    if-eq v1, v2, :cond_16

    goto/16 :goto_2

    :cond_16
    invoke-virtual {p0}, Lf8/c1;->Y()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lf8/c1;->y:Z

    iget-boolean v2, p1, Lf8/c1;->y:Z

    if-eq v1, v2, :cond_17

    goto/16 :goto_2

    :cond_17
    invoke-virtual {p0}, Lf8/c1;->V()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->V()Z

    move-result v2

    if-eq v1, v2, :cond_18

    goto/16 :goto_2

    :cond_18
    invoke-virtual {p0}, Lf8/c1;->V()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lf8/c1;->z:Z

    iget-boolean v2, p1, Lf8/c1;->z:Z

    if-eq v1, v2, :cond_19

    goto/16 :goto_2

    :cond_19
    invoke-virtual {p0}, Lf8/c1;->L()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->L()Z

    move-result v2

    if-eq v1, v2, :cond_1a

    goto/16 :goto_2

    :cond_1a
    invoke-virtual {p0}, Lf8/c1;->L()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lf8/c1;->A:Z

    iget-boolean v2, p1, Lf8/c1;->A:Z

    if-eq v1, v2, :cond_1b

    goto/16 :goto_2

    :cond_1b
    invoke-virtual {p0}, Lf8/c1;->I()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->I()Z

    move-result v2

    if-eq v1, v2, :cond_1c

    goto/16 :goto_2

    :cond_1c
    invoke-virtual {p0}, Lf8/c1;->I()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lf8/c1;->B:Z

    iget-boolean v2, p1, Lf8/c1;->B:Z

    if-eq v1, v2, :cond_1d

    goto/16 :goto_2

    :cond_1d
    invoke-virtual {p0}, Lf8/c1;->S()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->S()Z

    move-result v2

    if-eq v1, v2, :cond_1e

    goto/16 :goto_2

    :cond_1e
    invoke-virtual {p0}, Lf8/c1;->S()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lf8/c1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/c1;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_2

    :cond_1f
    invoke-virtual {p0}, Lf8/c1;->K()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->K()Z

    move-result v2

    if-eq v1, v2, :cond_20

    goto/16 :goto_2

    :cond_20
    invoke-virtual {p0}, Lf8/c1;->K()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lf8/c1;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/c1;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_2

    :cond_21
    invoke-virtual {p0}, Lf8/c1;->a0()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->a0()Z

    move-result v2

    if-eq v1, v2, :cond_22

    goto/16 :goto_2

    :cond_22
    invoke-virtual {p0}, Lf8/c1;->a0()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lf8/c1;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/c1;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_2

    :cond_23
    invoke-virtual {p0}, Lf8/c1;->U()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->U()Z

    move-result v2

    if-eq v1, v2, :cond_24

    goto/16 :goto_2

    :cond_24
    invoke-virtual {p0}, Lf8/c1;->U()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lf8/c1;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/c1;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_2

    :cond_25
    invoke-virtual {p0}, Lf8/c1;->X()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->X()Z

    move-result v2

    if-eq v1, v2, :cond_26

    goto/16 :goto_2

    :cond_26
    invoke-virtual {p0}, Lf8/c1;->X()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lf8/c1;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/c1;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto/16 :goto_2

    :cond_27
    invoke-virtual {p0}, Lf8/c1;->W()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->W()Z

    move-result v2

    if-eq v1, v2, :cond_28

    goto :goto_2

    :cond_28
    invoke-virtual {p0}, Lf8/c1;->W()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lf8/c1;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/c1;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_2

    :cond_29
    invoke-virtual {p0}, Lf8/c1;->Z()Z

    move-result v1

    invoke-virtual {p1}, Lf8/c1;->Z()Z

    move-result v2

    if-eq v1, v2, :cond_2a

    goto :goto_2

    :cond_2a
    invoke-virtual {p0}, Lf8/c1;->Z()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lf8/c1;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/c1;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_2

    :cond_2b
    iget-object v1, p0, Lf8/c1;->J:Ljava/util/List;

    iget-object v2, p1, Lf8/c1;->J:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_2

    :cond_2c
    iget-object v1, p0, Lf8/y3;->m:Lf8/i5;

    iget-object v2, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {v1, v2}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_2

    :cond_2d
    iget-object p0, p0, Lf8/o3;->n:Lf8/k3;

    invoke-virtual {p0}, Lf8/k3;->f()Ljava/util/Map;

    move-result-object p0

    iget-object p1, p1, Lf8/o3;->n:Lf8/k3;

    invoke-virtual {p1}, Lf8/k3;->f()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    :goto_2
    return v3

    :cond_2e
    :goto_3
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lf8/c1;->b0()Lf8/a1;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lf8/l2;->y:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lf8/c1;->o:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/c1;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lf8/c1;->Q()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/c1;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lf8/c1;->P()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/c1;->r:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lf8/c1;->N()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x14

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/c1;->s:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lf8/c1;->R()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x1b

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/c1;->t:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lf8/c1;->T()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x9

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lf8/c1;->u:I

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lf8/c1;->M()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xb

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/c1;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lf8/c1;->J()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x10

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/c1;->w:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-virtual {p0}, Lf8/c1;->O()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x11

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/c1;->x:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    invoke-virtual {p0}, Lf8/c1;->Y()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x12

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/c1;->y:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    invoke-virtual {p0}, Lf8/c1;->V()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x2a

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/c1;->z:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    invoke-virtual {p0}, Lf8/c1;->L()Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x17

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/c1;->A:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    invoke-virtual {p0}, Lf8/c1;->I()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x1f

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/c1;->B:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    invoke-virtual {p0}, Lf8/c1;->S()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x24

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/c1;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    invoke-virtual {p0}, Lf8/c1;->K()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0, v4, v4, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/c1;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    invoke-virtual {p0}, Lf8/c1;->a0()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x27

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/c1;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    invoke-virtual {p0}, Lf8/c1;->U()Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x28

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/c1;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    invoke-virtual {p0}, Lf8/c1;->X()Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x29

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/c1;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    invoke-virtual {p0}, Lf8/c1;->W()Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x2c

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/c1;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    invoke-virtual {p0}, Lf8/c1;->Z()Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v1, 0x2d

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/c1;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lf8/c1;->J:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    const/16 v1, 0x3e7

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget-object v1, p0, Lf8/c1;->J:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-object v1, p0, Lf8/o3;->n:Lf8/k3;

    invoke-virtual {v1}, Lf8/k3;->f()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lf8/c;->c(ILjava/util/Map;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lf8/y3;->m:Lf8/i5;

    iget-object v1, v1, Lf8/i5;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lf8/c;->l:I

    return v1
.end method

.method public final i()Lf8/i5;
    .locals 0

    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method

.method public final p()Z
    .locals 4

    iget-byte v0, p0, Lf8/c1;->K:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lf8/c1;->J:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lf8/c1;->J:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/k2;

    invoke-virtual {v3}, Lf8/k2;->p()Z

    move-result v3

    if-nez v3, :cond_2

    iput-byte v2, p0, Lf8/c1;->K:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lf8/o3;->v()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lf8/c1;->K:B

    return v2

    :cond_4
    iput-byte v1, p0, Lf8/c1;->K:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lf8/l2;->z:Lf8/x3;

    const-class v0, Lf8/c1;

    const-class v1, Lf8/a1;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final y()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/c1;->D:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/c1;->D:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final z()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/c1;->v:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/c1;->v:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method
