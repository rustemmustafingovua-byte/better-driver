.class public abstract Le2/p0;
.super Lc2/f1;
.source "SourceFile"

# interfaces
.implements Le2/z0;
.implements Lc2/t0;


# instance fields
.field public q:Le2/m0;

.field public r:Li9/c;

.field public s:Le2/u1;

.field public t:Z

.field public u:Z

.field public v:Z

.field public final w:Lc2/o0;

.field public x:Le2/y1;

.field public y:Lk/m0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lc2/f1;-><init>()V

    new-instance v0, Lc2/o0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lc2/o0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Le2/p0;->w:Lc2/o0;

    return-void
.end method

.method public static G0(Le2/h1;)V
    .locals 1

    iget-object v0, p0, Le2/h1;->A:Le2/h1;

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le2/h1;->z:Le2/g0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget-object p0, p0, Le2/x0;->I:Le2/h0;

    invoke-virtual {p0}, Le2/h0;->f()V

    return-void

    :cond_1
    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    invoke-virtual {p0}, Le2/x0;->i()Le2/a;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Le2/x0;

    iget-object p0, p0, Le2/x0;->I:Le2/h0;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Le2/h0;->f()V

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract A0()Z
.end method

.method public abstract B0()Le2/g0;
.end method

.method public abstract C0()Lc2/s0;
.end method

.method public abstract D0()Le2/p0;
.end method

.method public abstract E0()J
.end method

.method public final F0()Le2/m0;
    .locals 1

    iget-object v0, p0, Le2/p0;->q:Le2/m0;

    if-nez v0, :cond_0

    new-instance v0, Le2/m0;

    invoke-direct {v0, p0}, Le2/m0;-><init>(Le2/p0;)V

    iput-object v0, p0, Le2/p0;->q:Le2/m0;

    :cond_0
    return-object v0
.end method

.method public final H0(Lk/n0;)V
    .locals 13

    iget-object v0, p1, Lk/n0;->b:[Ljava/lang/Object;

    iget-object p1, p1, Lk/n0;->a:[J

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_2

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    aget-object v9, v0, v9

    check-cast v9, Le2/g2;

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le2/g0;

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Le2/p0;->T()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9, v2}, Le2/g0;->U(Z)V

    goto :goto_2

    :cond_0
    invoke-virtual {v9, v2}, Le2/g0;->W(Z)V

    :cond_1
    :goto_2
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v7, :cond_4

    :cond_3
    if-eq v3, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public abstract I0()V
.end method

.method public final J(Z)V
    .locals 4

    invoke-virtual {p0}, Le2/p0;->D0()Le2/p0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le2/p0;->B0()Le2/g0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Le2/p0;->B0()Le2/g0;

    move-result-object v2

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean p1, p0, Le2/p0;->t:Z

    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Le2/g0;->S:Le2/l0;

    iget-object v2, v2, Le2/l0;->d:Le2/c0;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    sget-object v3, Le2/c0;->n:Le2/c0;

    if-eq v2, v3, :cond_5

    if-eqz v0, :cond_3

    iget-object v0, v0, Le2/g0;->S:Le2/l0;

    iget-object v1, v0, Le2/l0;->d:Le2/c0;

    :cond_3
    sget-object v0, Le2/c0;->o:Le2/c0;

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_2
    iput-boolean p1, p0, Le2/p0;->t:Z

    return-void
.end method

.method public T()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d0(Lc2/a;)I
    .locals 3

    invoke-virtual {p0}, Le2/p0;->A0()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Le2/p0;->t0(Lc2/a;)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    instance-of p1, p1, Lc2/v1;

    if-eqz p1, :cond_2

    iget-wide p0, p0, Lc2/f1;->p:J

    const/16 v1, 0x20

    shr-long/2addr p0, v1

    :goto_1
    long-to-int p0, p0

    goto :goto_2

    :cond_2
    iget-wide p0, p0, Lc2/f1;->p:J

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    goto :goto_1

    :goto_2
    add-int/2addr v0, p0

    return v0
.end method

.method public final s0(Le2/g0;Lc2/m;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Le2/p0;->y:Lk/m0;

    const/4 v7, 0x7

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v10, 0x8

    if-eqz v2, :cond_a

    iget-object v12, v2, Lk/m0;->c:[Ljava/lang/Object;

    iget-object v2, v2, Lk/m0;->a:[J

    array-length v13, v2

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_a

    const/4 v14, 0x0

    const-wide/16 v15, 0x80

    :goto_0
    aget-wide v3, v2, v14

    const-wide/16 v17, 0xff

    not-long v5, v3

    shl-long/2addr v5, v7

    and-long/2addr v5, v3

    and-long/2addr v5, v8

    cmp-long v5, v5, v8

    if-eqz v5, :cond_9

    sub-int v5, v14, v13

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    rsub-int/lit8 v5, v5, 0x8

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_8

    and-long v19, v3, v17

    cmp-long v19, v19, v15

    if-gez v19, :cond_7

    shl-int/lit8 v19, v14, 0x3

    add-int v19, v19, v6

    aget-object v19, v12, v19

    move/from16 v20, v7

    move-object/from16 v7, v19

    check-cast v7, Lk/n0;

    move-wide/from16 v21, v8

    iget-object v8, v7, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v9, v7, Lk/n0;->a:[J

    array-length v11, v9

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_5

    move-wide/from16 v23, v15

    const/4 v15, 0x0

    move/from16 v16, v10

    :goto_2
    move/from16 v25, v11

    aget-wide v10, v9, v15

    move-object/from16 v26, v2

    move-wide/from16 v27, v3

    not-long v2, v10

    shl-long v2, v2, v20

    and-long/2addr v2, v10

    and-long v2, v2, v21

    cmp-long v2, v2, v21

    if-eqz v2, :cond_4

    sub-int v2, v15, v25

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    and-long v29, v10, v17

    cmp-long v4, v29, v23

    if-gez v4, :cond_2

    shl-int/lit8 v4, v15, 0x3

    add-int/2addr v4, v3

    aget-object v29, v8, v4

    check-cast v29, Le2/g2;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Le2/g0;

    move/from16 v30, v3

    if-eqz v29, :cond_0

    invoke-virtual/range {v29 .. v29}, Le2/g0;->H()Z

    move-result v3

    move/from16 v29, v6

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    goto :goto_4

    :cond_0
    move/from16 v29, v6

    :cond_1
    invoke-virtual {v7, v4}, Lk/n0;->m(I)V

    goto :goto_4

    :cond_2
    move/from16 v30, v3

    move/from16 v29, v6

    :goto_4
    shr-long v10, v10, v16

    add-int/lit8 v3, v30, 0x1

    move/from16 v6, v29

    goto :goto_3

    :cond_3
    move/from16 v29, v6

    move/from16 v3, v16

    if-ne v2, v3, :cond_6

    :goto_5
    move/from16 v11, v25

    goto :goto_6

    :cond_4
    move/from16 v29, v6

    goto :goto_5

    :goto_6
    if-eq v15, v11, :cond_6

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v26

    move-wide/from16 v3, v27

    move/from16 v6, v29

    const/16 v16, 0x8

    goto :goto_2

    :cond_5
    move-object/from16 v26, v2

    move-wide/from16 v27, v3

    move/from16 v29, v6

    move-wide/from16 v23, v15

    :cond_6
    const/16 v3, 0x8

    goto :goto_7

    :cond_7
    move-object/from16 v26, v2

    move-wide/from16 v27, v3

    move/from16 v29, v6

    move/from16 v20, v7

    move-wide/from16 v21, v8

    move-wide/from16 v23, v15

    move v3, v10

    :goto_7
    shr-long v6, v27, v3

    add-int/lit8 v2, v29, 0x1

    move v10, v3

    move-wide v3, v6

    move/from16 v7, v20

    move-wide/from16 v8, v21

    move-wide/from16 v15, v23

    move v6, v2

    move-object/from16 v2, v26

    goto/16 :goto_1

    :cond_8
    move-object/from16 v26, v2

    move/from16 v20, v7

    move-wide/from16 v21, v8

    move v3, v10

    move-wide/from16 v23, v15

    if-ne v5, v3, :cond_b

    goto :goto_8

    :cond_9
    move-object/from16 v26, v2

    move/from16 v20, v7

    move-wide/from16 v21, v8

    move-wide/from16 v23, v15

    :goto_8
    if-eq v14, v13, :cond_b

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v20

    move-wide/from16 v8, v21

    move-wide/from16 v15, v23

    move-object/from16 v2, v26

    const/16 v10, 0x8

    goto/16 :goto_0

    :cond_a
    move/from16 v20, v7

    move-wide/from16 v21, v8

    const-wide/16 v17, 0xff

    const-wide/16 v23, 0x80

    :cond_b
    iget-object v2, v0, Le2/p0;->y:Lk/m0;

    if-eqz v2, :cond_f

    iget-object v3, v2, Lk/m0;->a:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_f

    const/4 v5, 0x0

    :goto_9
    aget-wide v6, v3, v5

    not-long v8, v6

    shl-long v8, v8, v20

    and-long/2addr v8, v6

    and-long v8, v8, v21

    cmp-long v8, v8, v21

    if-eqz v8, :cond_e

    sub-int v8, v5, v4

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v16, 0x8

    rsub-int/lit8 v10, v8, 0x8

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v10, :cond_d

    and-long v11, v6, v17

    cmp-long v9, v11, v23

    if-gez v9, :cond_c

    shl-int/lit8 v9, v5, 0x3

    add-int/2addr v9, v8

    iget-object v11, v2, Lk/m0;->b:[Ljava/lang/Object;

    aget-object v11, v11, v9

    iget-object v12, v2, Lk/m0;->c:[Ljava/lang/Object;

    aget-object v12, v12, v9

    check-cast v12, Lk/n0;

    check-cast v11, Lc2/m;

    invoke-virtual {v12}, Lk/n0;->g()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v2, v9}, Lk/m0;->l(I)Ljava/lang/Object;

    :cond_c
    const/16 v9, 0x8

    shr-long/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_d
    const/16 v9, 0x8

    if-ne v10, v9, :cond_f

    goto :goto_b

    :cond_e
    const/16 v9, 0x8

    :goto_b
    if-eq v5, v4, :cond_f

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_f
    iget-object v2, v0, Le2/p0;->y:Lk/m0;

    if-nez v2, :cond_10

    new-instance v2, Lk/m0;

    invoke-direct {v2}, Lk/m0;-><init>()V

    iput-object v2, v0, Le2/p0;->y:Lk/m0;

    :cond_10
    invoke-virtual {v2, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Lk/n0;

    invoke-direct {v0}, Lk/n0;-><init>()V

    invoke-virtual {v2, v1, v0}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    check-cast v0, Lk/n0;

    new-instance v1, Le2/g2;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lk/n0;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract t0(Lc2/a;)I
.end method

.method public final v0(Le2/u1;JJ)V
    .locals 22

    move-object/from16 v1, p0

    iget-object v7, v1, Le2/p0;->y:Lk/m0;

    iget-object v0, v1, Le2/p0;->x:Le2/y1;

    if-nez v0, :cond_0

    new-instance v0, Le2/y1;

    invoke-direct {v0}, Le2/y1;-><init>()V

    iput-object v0, v1, Le2/p0;->x:Le2/y1;

    :cond_0
    move-object v8, v0

    invoke-virtual {v1}, Le2/p0;->B0()Le2/g0;

    move-result-object v0

    iget-object v0, v0, Le2/g0;->z:Le2/q1;

    if-eqz v0, :cond_1

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object v9

    if-eqz v9, :cond_1

    sget-object v10, Le2/d;->n:Le2/d;

    new-instance v0, Le2/n0;

    move-object/from16 v6, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Le2/n0;-><init>(Le2/p0;JJLe2/u1;)V

    iget-object v1, v9, Le2/s1;->a:Ld1/b0;

    invoke-virtual {v1, v6, v10, v0}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Le2/p0;->T()Z

    move-result v0

    iget-object v1, v8, Le2/y1;->e:Lk/n0;

    iget-object v2, v8, Le2/y1;->f:Lk/n0;

    iget v3, v8, Le2/y1;->a:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    iget-object v6, v8, Le2/y1;->d:[B

    aget-byte v6, v6, v5

    const/4 v9, 0x3

    if-ne v6, v9, :cond_2

    iget-object v6, v8, Le2/y1;->b:[Lc2/m;

    aget-object v6, v6, v5

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lk/n0;->j(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    iget-object v6, v8, Le2/y1;->b:[Lc2/m;

    aget-object v6, v6, v5

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/n0;

    if-eqz v6, :cond_3

    invoke-virtual {v1, v6}, Lk/n0;->k(Lk/n0;)V

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget v3, v8, Le2/y1;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x2

    if-ge v5, v3, :cond_7

    iget-object v9, v8, Le2/y1;->d:[B

    aget-byte v10, v9, v5

    if-ne v10, v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    if-lez v6, :cond_6

    sub-int v10, v5, v6

    iget-object v11, v8, Le2/y1;->b:[Lc2/m;

    aget-object v12, v11, v5

    aput-object v12, v11, v10

    :cond_6
    :goto_3
    aput-byte v7, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    iget v3, v8, Le2/y1;->a:I

    sub-int v5, v3, v6

    :goto_4
    const/4 v9, 0x0

    if-ge v5, v3, :cond_8

    iget-object v10, v8, Le2/y1;->b:[Lc2/m;

    aput-object v9, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    iget v3, v8, Le2/y1;->a:I

    sub-int/2addr v3, v6

    iput v3, v8, Le2/y1;->a:I

    invoke-virtual/range {p0 .. p0}, Le2/p0;->D0()Le2/p0;

    move-result-object v3

    iget-object v5, v2, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v6, v2, Lk/n0;->a:[J

    array-length v8, v6

    sub-int/2addr v8, v7

    const/4 v14, 0x7

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move/from16 p1, v7

    const/16 v7, 0x8

    if-ltz v8, :cond_11

    const-wide/16 p3, 0x80

    const/4 v9, 0x0

    :goto_5
    aget-wide v10, v6, v9

    const-wide/16 v17, 0xff

    not-long v12, v10

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    and-long/2addr v12, v15

    cmp-long v12, v12, v15

    if-eqz v12, :cond_10

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_f

    and-long v19, v10, v17

    cmp-long v19, v19, p3

    if-gez v19, :cond_d

    shl-int/lit8 v19, v9, 0x3

    add-int v19, v19, v13

    aget-object v19, v5, v19

    move/from16 p5, v14

    move-object/from16 v14, v19

    check-cast v14, Lc2/m;

    move-wide/from16 v19, v15

    if-nez v3, :cond_9

    move-object/from16 v15, p0

    goto :goto_7

    :cond_9
    move-object v15, v3

    :goto_7
    move/from16 v21, v7

    move-object v4, v15

    :goto_8
    iget-object v7, v4, Le2/p0;->x:Le2/y1;

    if-eqz v7, :cond_a

    iget-object v7, v7, Le2/y1;->b:[Lc2/m;

    invoke-static {v7, v14}, Lu8/l;->x0([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v4}, Le2/p0;->D0()Le2/p0;

    move-result-object v7

    if-nez v7, :cond_c

    :goto_9
    iget-object v4, v4, Le2/p0;->y:Lk/m0;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v14}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/n0;

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_e

    invoke-virtual {v15, v4}, Le2/p0;->H0(Lk/n0;)V

    goto :goto_b

    :cond_c
    move-object v4, v7

    goto :goto_8

    :cond_d
    move/from16 v21, v7

    move/from16 p5, v14

    move-wide/from16 v19, v15

    :cond_e
    :goto_b
    shr-long v10, v10, v21

    add-int/lit8 v13, v13, 0x1

    move/from16 v14, p5

    move-wide/from16 v15, v19

    move/from16 v7, v21

    goto :goto_6

    :cond_f
    move v4, v7

    move/from16 p5, v14

    move-wide/from16 v19, v15

    if-ne v12, v4, :cond_12

    goto :goto_c

    :cond_10
    move/from16 p5, v14

    move-wide/from16 v19, v15

    :goto_c
    if-eq v9, v8, :cond_12

    add-int/lit8 v9, v9, 0x1

    move/from16 v14, p5

    move-wide/from16 v15, v19

    const/16 v7, 0x8

    goto/16 :goto_5

    :cond_11
    move/from16 p5, v14

    move-wide/from16 v19, v15

    const-wide/16 p3, 0x80

    const-wide/16 v17, 0xff

    :cond_12
    invoke-virtual {v2}, Lk/n0;->b()V

    iget-object v2, v1, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v3, v1, Lk/n0;->a:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_17

    const/4 v5, 0x0

    :goto_d
    aget-wide v6, v3, v5

    not-long v8, v6

    shl-long v8, v8, p5

    and-long/2addr v8, v6

    and-long v8, v8, v19

    cmp-long v8, v8, v19

    if-eqz v8, :cond_16

    sub-int v8, v5, v4

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v21, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v8, :cond_15

    and-long v10, v6, v17

    cmp-long v10, v10, p3

    if-gez v10, :cond_14

    shl-int/lit8 v10, v5, 0x3

    add-int/2addr v10, v9

    aget-object v10, v2, v10

    check-cast v10, Le2/g2;

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le2/g0;

    if-eqz v10, :cond_14

    if-eqz v0, :cond_13

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Le2/g0;->U(Z)V

    goto :goto_f

    :cond_13
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Le2/g0;->W(Z)V

    :goto_f
    const/16 v10, 0x8

    goto :goto_10

    :cond_14
    const/4 v11, 0x0

    goto :goto_f

    :goto_10
    shr-long/2addr v6, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_15
    const/16 v10, 0x8

    const/4 v11, 0x0

    if-ne v8, v10, :cond_17

    goto :goto_11

    :cond_16
    const/16 v10, 0x8

    const/4 v11, 0x0

    :goto_11
    if-eq v5, v4, :cond_17

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_17
    invoke-virtual {v1}, Lk/n0;->b()V

    return-void
.end method

.method public final w0(Lc2/s0;)V
    .locals 14

    iget-object v0, p0, Le2/p0;->y:Lk/m0;

    iget-boolean v1, p0, Le2/p0;->v:Z

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {p1}, Lc2/s0;->f()Li9/c;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    if-eqz v0, :cond_b

    iget-object p1, v0, Lk/m0;->c:[Ljava/lang/Object;

    iget-object v1, v0, Lk/m0;->a:[J

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_4

    move v4, v2

    :goto_0
    aget-wide v5, v1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v2

    :goto_1
    if-ge v9, v7, :cond_2

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, p1, v10

    check-cast v10, Lk/n0;

    invoke-virtual {p0, v10}, Le2/p0;->H0(Lk/n0;)V

    :cond_1
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    if-ne v7, v8, :cond_4

    :cond_3
    if-eq v4, v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lk/m0;->a()V

    return-void

    :cond_5
    iget-object v0, p0, Le2/p0;->r:Li9/c;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_6

    move v0, v3

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    const-wide/16 v4, 0x0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Le2/p0;->F0()Le2/m0;

    move-result-object v1

    iget-boolean v1, v1, Le2/m0;->l:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Le2/p0;->z0()Lc2/u;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Lc2/u;->A(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lr5/h1;->D(J)J

    move-result-wide v4

    invoke-interface {v0}, Lc2/u;->o()J

    move-result-wide v0

    invoke-virtual {p0}, Le2/p0;->F0()Le2/m0;

    move-result-object v6

    iget-wide v6, v6, Le2/m0;->m:J

    invoke-static {v4, v5, v6, v7}, Lb3/j;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Le2/p0;->F0()Le2/m0;

    move-result-object v6

    iget-wide v6, v6, Le2/m0;->n:J

    invoke-static {v0, v1, v6, v7}, Lb3/l;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    move v2, v3

    :cond_8
    move-wide v3, v4

    move-wide v5, v0

    move v0, v2

    goto :goto_3

    :cond_9
    const-wide v1, 0x7fffffff7fffffffL

    move-wide v5, v4

    move-wide v3, v1

    :goto_3
    if-eqz v0, :cond_b

    iget-object v0, p0, Le2/p0;->s:Le2/u1;

    if-eqz v0, :cond_a

    iput-object p1, v0, Le2/u1;->l:Lc2/s0;

    :goto_4
    move-object v1, p0

    move-object v2, v0

    goto :goto_5

    :cond_a
    new-instance v0, Le2/u1;

    invoke-direct {v0, p1, p0}, Le2/u1;-><init>(Lc2/s0;Le2/p0;)V

    iput-object v0, p0, Le2/p0;->s:Le2/u1;

    goto :goto_4

    :goto_5
    invoke-virtual/range {v1 .. v6}, Le2/p0;->v0(Le2/u1;JJ)V

    invoke-interface {p1}, Lc2/s0;->f()Li9/c;

    move-result-object p0

    iput-object p0, v1, Le2/p0;->r:Li9/c;

    :cond_b
    :goto_6
    return-void
.end method

.method public abstract x0()Le2/p0;
.end method

.method public final y0(IILjava/util/Map;Li9/c;Li9/c;)Lc2/s0;
    .locals 8

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Le2/o0;

    move-object v7, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Le2/o0;-><init>(IILjava/util/Map;Li9/c;Li9/c;Le2/p0;)V

    return-object v1
.end method

.method public abstract z0()Lc2/u;
.end method
