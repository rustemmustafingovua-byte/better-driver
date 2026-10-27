.class public Lv4/z;
.super Lv4/t;
.source "SourceFile"


# instance fields
.field public N:Ljava/util/ArrayList;

.field public O:Z

.field public P:I

.field public Q:Z

.field public R:I

.field public S:[Lv4/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv4/t;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv4/z;->O:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv4/z;->Q:Z

    iput v0, p0, Lv4/z;->R:I

    return-void
.end method


# virtual methods
.method public final F()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/t;

    invoke-virtual {v2}, Lv4/t;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final G()Z
    .locals 4

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/t;

    invoke-virtual {v3}, Lv4/t;->G()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final N(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lv4/t;->N(Landroid/view/View;)V

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/t;

    invoke-virtual {v2, p1}, Lv4/t;->N(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final O()V
    .locals 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv4/t;->G:J

    new-instance v0, Lv4/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv4/y;-><init>(Lv4/t;I)V

    :goto_0
    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/t;

    invoke-virtual {v2, v0}, Lv4/t;->a(Lv4/r;)V

    invoke-virtual {v2}, Lv4/t;->O()V

    iget-wide v3, v2, Lv4/t;->G:J

    iget-boolean v5, p0, Lv4/z;->O:Z

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lv4/t;->G:J

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lv4/t;->G:J

    goto :goto_1

    :cond_0
    iget-wide v5, p0, Lv4/t;->G:J

    iput-wide v5, v2, Lv4/t;->I:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lv4/t;->G:J

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final P(Lv4/r;)Lv4/t;
    .locals 0

    invoke-super {p0, p1}, Lv4/t;->P(Lv4/r;)Lv4/t;

    return-object p0
.end method

.method public final Q(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/t;

    invoke-virtual {v1, p1}, Lv4/t;->Q(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lv4/t;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final R(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Lv4/t;->R(Landroid/view/View;)V

    iget-object v0, p0, Lv4/z;->S:[Lv4/t;

    const/4 v1, 0x0

    iput-object v1, p0, Lv4/z;->S:[Lv4/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lv4/t;

    :cond_0
    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv4/t;

    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Lv4/t;->R(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lv4/z;->S:[Lv4/t;

    return-void
.end method

.method public final S()V
    .locals 6

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lv4/t;->Z()V

    invoke-virtual {p0}, Lv4/t;->x()V

    return-void

    :cond_0
    new-instance v0, Lv4/y;

    invoke-direct {v0}, Lv4/y;-><init>()V

    iput-object p0, v0, Lv4/y;->b:Lv4/t;

    iget-object v1, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lv4/t;

    invoke-virtual {v5, v0}, Lv4/t;->a(Lv4/r;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lv4/z;->P:I

    iget-boolean v0, p0, Lv4/z;->O:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lv4/z;->N:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/t;

    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/t;

    new-instance v4, Lv4/y;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Lv4/y;-><init>(Lv4/t;I)V

    invoke-virtual {v1, v4}, Lv4/t;->a(Lv4/r;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv4/t;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lv4/t;->S()V

    return-void

    :cond_3
    iget-object p0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lv4/t;

    invoke-virtual {v1}, Lv4/t;->S()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final T(JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-wide v5, v0, Lv4/t;->G:J

    iget-object v7, v0, Lv4/t;->r:Lv4/z;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_1

    cmp-long v7, v1, v8

    if-gez v7, :cond_0

    cmp-long v7, v3, v8

    if-ltz v7, :cond_11

    :cond_0
    cmp-long v7, v1, v5

    if-lez v7, :cond_1

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    goto/16 :goto_8

    :cond_1
    cmp-long v7, v1, v3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-gez v7, :cond_2

    move v12, v11

    goto :goto_0

    :cond_2
    move v12, v10

    :goto_0
    cmp-long v13, v1, v8

    if-ltz v13, :cond_3

    cmp-long v14, v3, v8

    if-ltz v14, :cond_4

    :cond_3
    cmp-long v14, v1, v5

    if-gtz v14, :cond_5

    cmp-long v14, v3, v5

    if-lez v14, :cond_5

    :cond_4
    iput-boolean v10, v0, Lv4/t;->A:Z

    sget-object v14, Lv4/s;->f:Lc2/c0;

    invoke-virtual {v0, v0, v14, v12}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    :cond_5
    iget-boolean v14, v0, Lv4/z;->O:Z

    if-eqz v14, :cond_7

    :goto_1
    iget-object v7, v0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v10, v7, :cond_6

    iget-object v7, v0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv4/t;

    invoke-virtual {v7, v1, v2, v3, v4}, Lv4/t;->T(JJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    move-wide/from16 v16, v8

    goto/16 :goto_7

    :cond_7
    move v10, v11

    :goto_2
    iget-object v14, v0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v10, v14, :cond_9

    iget-object v14, v0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv4/t;

    iget-wide v14, v14, Lv4/t;->I:J

    cmp-long v14, v14, v3

    if-lez v14, :cond_8

    :goto_3
    sub-int/2addr v10, v11

    goto :goto_4

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_9
    iget-object v10, v0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    goto :goto_3

    :goto_4
    if-ltz v7, :cond_b

    :goto_5
    iget-object v7, v0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v10, v7, :cond_6

    iget-object v7, v0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv4/t;

    iget-wide v14, v7, Lv4/t;->I:J

    move-wide/from16 v16, v8

    sub-long v8, v1, v14

    cmp-long v18, v8, v16

    if-gez v18, :cond_a

    goto :goto_7

    :cond_a
    sub-long v14, v3, v14

    invoke-virtual {v7, v8, v9, v14, v15}, Lv4/t;->T(JJ)V

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v8, v16

    goto :goto_5

    :cond_b
    move-wide/from16 v16, v8

    :goto_6
    if-ltz v10, :cond_d

    iget-object v7, v0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv4/t;

    iget-wide v8, v7, Lv4/t;->I:J

    sub-long v14, v1, v8

    sub-long v8, v3, v8

    invoke-virtual {v7, v14, v15, v8, v9}, Lv4/t;->T(JJ)V

    cmp-long v7, v14, v16

    if-ltz v7, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    :cond_d
    :goto_7
    iget-object v7, v0, Lv4/t;->r:Lv4/z;

    if-eqz v7, :cond_11

    cmp-long v1, v1, v5

    if-lez v1, :cond_e

    cmp-long v2, v3, v5

    if-lez v2, :cond_f

    :cond_e
    if-gez v13, :cond_11

    cmp-long v2, v3, v16

    if-ltz v2, :cond_11

    :cond_f
    if-lez v1, :cond_10

    iput-boolean v11, v0, Lv4/t;->A:Z

    :cond_10
    sget-object v1, Lv4/s;->g:Lc2/c0;

    invoke-virtual {v0, v0, v1, v12}, Lv4/t;->M(Lv4/t;Lv4/s;Z)V

    :cond_11
    :goto_8
    return-void
.end method

.method public final U(Lr5/u0;)V
    .locals 3

    iput-object p1, p0, Lv4/t;->E:Lr5/u0;

    iget v0, p0, Lv4/z;->R:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lv4/z;->R:I

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/t;

    invoke-virtual {v2, p1}, Lv4/t;->U(Lr5/u0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final V()V
    .locals 3

    iget v0, p0, Lv4/z;->R:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv4/z;->R:I

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/t;

    invoke-virtual {v2}, Lv4/t;->V()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final W(Lmb/q;)V
    .locals 2

    invoke-super {p0, p1}, Lv4/t;->W(Lmb/q;)V

    iget v0, p0, Lv4/z;->R:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lv4/z;->R:I

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/t;

    invoke-virtual {v1, p1}, Lv4/t;->W(Lmb/q;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final X()V
    .locals 3

    iget v0, p0, Lv4/z;->R:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lv4/z;->R:I

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/t;

    invoke-virtual {v2}, Lv4/t;->X()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final Y(J)V
    .locals 0

    iput-wide p1, p0, Lv4/t;->m:J

    return-void
.end method

.method public final a0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, Lv4/t;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/t;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lv4/t;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b0(Lv4/t;)V
    .locals 1

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lv4/t;->r:Lv4/z;

    iget v0, p0, Lv4/z;->R:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv4/t;->V()V

    :cond_0
    iget v0, p0, Lv4/z;->R:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lv4/t;->X()V

    :cond_1
    iget v0, p0, Lv4/z;->R:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lv4/t;->F:Lmb/q;

    invoke-virtual {p1, v0}, Lv4/t;->W(Lmb/q;)V

    :cond_2
    iget v0, p0, Lv4/z;->R:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object p0, p0, Lv4/t;->E:Lr5/u0;

    invoke-virtual {p1, p0}, Lv4/t;->U(Lr5/u0;)V

    :cond_3
    return-void
.end method

.method public final c0(I)Lv4/t;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv4/t;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv4/z;->s()Lv4/t;

    move-result-object p0

    return-object p0
.end method

.method public final f(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/t;

    invoke-virtual {v1, p1}, Lv4/t;->f(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lv4/t;->o:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h()V
    .locals 5

    invoke-super {p0}, Lv4/t;->h()V

    iget-object v0, p0, Lv4/z;->S:[Lv4/t;

    const/4 v1, 0x0

    iput-object v1, p0, Lv4/z;->S:[Lv4/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lv4/t;

    :cond_0
    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv4/t;

    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lv4/t;->h()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lv4/z;->S:[Lv4/t;

    return-void
.end method

.method public final i(Lv4/a0;)V
    .locals 5

    iget-object v0, p1, Lv4/a0;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lv4/t;

    invoke-virtual {v3, v0}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lv4/t;->i(Lv4/a0;)V

    iget-object v4, p1, Lv4/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l(Lv4/a0;)V
    .locals 3

    iget-object v0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/t;

    invoke-virtual {v2, p1}, Lv4/t;->l(Lv4/a0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(Lv4/a0;)V
    .locals 5

    iget-object v0, p1, Lv4/a0;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lv4/t;

    invoke-virtual {v3, v0}, Lv4/t;->I(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lv4/t;->o(Lv4/a0;)V

    iget-object v4, p1, Lv4/a0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final s()Lv4/t;
    .locals 5

    invoke-super {p0}, Lv4/t;->s()Lv4/t;

    move-result-object v0

    check-cast v0, Lv4/z;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lv4/z;->N:Ljava/util/ArrayList;

    iget-object v1, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/t;

    invoke-virtual {v3}, Lv4/t;->s()Lv4/t;

    move-result-object v3

    iget-object v4, v0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, Lv4/t;->r:Lv4/z;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final v(Landroid/view/ViewGroup;Lg5/i;Lg5/i;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11

    iget-wide v0, p0, Lv4/t;->m:J

    iget-object v2, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lv4/z;->N:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lv4/t;

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    iget-boolean v4, p0, Lv4/z;->O:Z

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    goto :goto_3

    :cond_1
    :goto_2
    iget-wide v8, v5, Lv4/t;->m:J

    cmp-long v4, v8, v6

    if-lez v4, :cond_2

    add-long/2addr v8, v0

    invoke-virtual {v5, v8, v9}, Lv4/t;->Y(J)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v0, v1}, Lv4/t;->Y(J)V

    goto :goto_1

    :goto_3
    invoke-virtual/range {v5 .. v10}, Lv4/t;->v(Landroid/view/ViewGroup;Lg5/i;Lg5/i;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
