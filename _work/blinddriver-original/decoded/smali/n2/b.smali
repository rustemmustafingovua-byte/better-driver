.class public final Ln2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld1/c0;

.field public final b:Ln2/e;

.field public final c:Lk/h0;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Le3/a;

.field public h:J

.field public final i:Lc2/l0;

.field public final j:Ll1/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld1/c0;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld1/c0;-><init>(IB)V

    const/16 v1, 0xc0

    new-array v2, v1, [J

    iput-object v2, v0, Ld1/c0;->c:Ljava/lang/Object;

    new-array v1, v1, [J

    iput-object v1, v0, Ld1/c0;->d:Ljava/lang/Object;

    iput-object v0, p0, Ln2/b;->a:Ld1/c0;

    new-instance v0, Ln2/e;

    invoke-direct {v0}, Ln2/e;-><init>()V

    iput-object v0, p0, Ln2/b;->b:Ln2/e;

    new-instance v0, Lk/h0;

    invoke-direct {v0}, Lk/h0;-><init>()V

    iput-object v0, p0, Ln2/b;->c:Lk/h0;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ln2/b;->h:J

    new-instance v0, Lc2/l0;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Ln2/b;->i:Lc2/l0;

    new-instance v0, Ll1/a;

    invoke-direct {v0}, Ll1/a;-><init>()V

    iput-object v0, p0, Ln2/b;->j:Ll1/a;

    return-void
.end method

.method public static f(Le2/g0;)J
    .locals 5

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object v0, p0, Le2/c1;->d:Le2/h1;

    iget-object p0, p0, Le2/c1;->c:Le2/s;

    const-wide/16 v1, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    iget-object v3, p0, Le2/h1;->W:Le2/p1;

    if-eqz v3, :cond_0

    check-cast v3, Lf2/r1;

    invoke-virtual {v3}, Lf2/r1;->b()[F

    move-result-object v3

    invoke-static {v3}, Lm1/v;->r([F)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide v0, 0x7fffffff7fffffffL

    return-wide v0

    :cond_0
    iget-wide v3, p0, Le2/h1;->K:J

    invoke-static {v1, v2, v3, v4}, Lb3/j;->c(JJ)J

    move-result-wide v1

    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static h(Le2/g0;)V
    .locals 5

    iget-boolean v0, p0, Le2/g0;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->d:Le2/h1;

    iget-object v0, v0, Le2/h1;->W:Le2/p1;

    if-eqz v0, :cond_0

    check-cast v0, Lf2/r1;

    invoke-virtual {v0}, Lf2/r1;->b()[F

    move-result-object v0

    invoke-static {v0}, Lm1/v;->r([F)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/g0;->n:Z

    iget-boolean v1, p0, Le2/g0;->r:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Ln2/b;->f(Le2/g0;)J

    move-result-wide v1

    iput-wide v1, p0, Le2/g0;->q:J

    iput-boolean v0, p0, Le2/g0;->r:Z

    :cond_1
    iget-wide v1, p0, Le2/g0;->q:J

    const-wide v3, 0x7fffffff7fffffffL

    invoke-static {v1, v2, v3, v4}, Lb3/j;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v1, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v2, v1, v0

    check-cast v2, Le2/g0;

    invoke-static {v2}, Ln2/b;->h(Le2/g0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Ln2/b;->g:Le3/a;

    if-eqz v1, :cond_0

    sget-object v2, Lf1/b;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-object v1, v0, Ln2/b;->g:Le3/a;

    :cond_0
    sget-object v1, Lf1/b;->a:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-boolean v1, v0, Ln2/b;->d:Z

    const/4 v2, 0x1

    const/4 v11, 0x0

    if-nez v1, :cond_2

    iget-boolean v3, v0, Ln2/b;->e:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v12, v11

    goto :goto_1

    :cond_2
    :goto_0
    move v12, v2

    :goto_1
    iget-object v15, v0, Ln2/b;->a:Ld1/c0;

    move v3, v2

    iget-object v2, v0, Ln2/b;->b:Ln2/e;

    if-eqz v1, :cond_a

    iput-boolean v11, v0, Ln2/b;->d:Z

    iget-object v1, v0, Ln2/b;->c:Lk/h0;

    iget-object v4, v1, Lk/h0;->a:[Ljava/lang/Object;

    iget v1, v1, Lk/h0;->b:I

    move v5, v11

    :goto_2
    if-ge v5, v1, :cond_3

    aget-object v6, v4, v5

    check-cast v6, Li9/a;

    invoke-interface {v6}, Li9/a;->invoke()Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, v15, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, [J

    iget v4, v15, Ld1/c0;->b:I

    move v5, v11

    :goto_3
    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ge v5, v6, :cond_9

    if-ge v5, v4, :cond_9

    add-int/lit8 v6, v5, 0x2

    aget-wide v6, v1, v6

    const/16 v8, 0x3c

    move/from16 v16, v3

    move/from16 v17, v4

    shr-long v3, v6, v8

    long-to-int v3, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_8

    aget-wide v3, v1, v5

    add-int/lit8 v8, v5, 0x1

    const-wide/16 v28, 0x0

    aget-wide v13, v1, v8

    long-to-int v6, v6

    const v7, 0x1ffffff

    and-int/2addr v6, v7

    iget-object v7, v2, Ln2/e;->a:Lk/x;

    invoke-virtual {v7, v6}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln2/d;

    :goto_4
    if-eqz v6, :cond_7

    iget-object v7, v6, Ln2/d;->d:Ln2/d;

    move/from16 v30, v12

    iget-wide v11, v6, Ln2/d;->g:J

    sub-long v18, v9, v11

    cmp-long v8, v18, v28

    if-gez v8, :cond_5

    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v8, v11, v18

    if-nez v8, :cond_4

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    move/from16 v8, v16

    :goto_6
    iput-wide v3, v6, Ln2/d;->e:J

    iput-wide v13, v6, Ln2/d;->f:J

    if-eqz v8, :cond_6

    iput-wide v9, v6, Ln2/d;->g:J

    iget-wide v11, v2, Ln2/e;->d:J

    move-wide/from16 v19, v3

    iget-wide v3, v2, Ln2/e;->e:J

    iget-object v8, v2, Ln2/e;->g:[F

    move-wide/from16 v25, v3

    move-object/from16 v18, v6

    move-object/from16 v27, v8

    move-wide/from16 v23, v11

    move-wide/from16 v21, v13

    invoke-virtual/range {v18 .. v27}, Ln2/d;->a(JJJJ[F)V

    goto :goto_7

    :cond_6
    move-wide/from16 v19, v3

    move-wide/from16 v21, v13

    :goto_7
    move-object v6, v7

    move-wide/from16 v3, v19

    move-wide/from16 v13, v21

    move/from16 v12, v30

    const/4 v11, 0x0

    goto :goto_4

    :cond_7
    :goto_8
    move/from16 v30, v12

    goto :goto_9

    :cond_8
    const-wide/16 v28, 0x0

    goto :goto_8

    :goto_9
    add-int/lit8 v5, v5, 0x3

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v12, v30

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_9
    move/from16 v30, v12

    const-wide/16 v28, 0x0

    iget-object v1, v15, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, [J

    iget v3, v15, Ld1/c0;->b:I

    const/4 v4, 0x0

    :goto_a
    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_b

    if-ge v4, v3, :cond_b

    add-int/lit8 v5, v4, 0x2

    aget-wide v6, v1, v5

    const-wide v11, -0x1000000000000001L    # -3.1050361846014175E231

    and-long/2addr v6, v11

    aput-wide v6, v1, v5

    add-int/lit8 v4, v4, 0x3

    goto :goto_a

    :cond_a
    move/from16 v30, v12

    const-wide/16 v28, 0x0

    :cond_b
    iget-boolean v1, v0, Ln2/b;->e:Z

    const/16 v16, 0x7

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    iput-boolean v1, v0, Ln2/b;->e:Z

    iget-wide v4, v2, Ln2/e;->d:J

    iget-wide v6, v2, Ln2/e;->e:J

    iget-object v8, v2, Ln2/e;->g:[F

    iget-object v1, v2, Ln2/e;->a:Lk/x;

    const-wide/16 v19, 0x80

    iget-object v11, v1, Lk/k;->c:[Ljava/lang/Object;

    iget-object v1, v1, Lk/k;->a:[J

    array-length v12, v1

    add-int/lit8 v12, v12, -0x2

    if-ltz v12, :cond_f

    const/4 v13, 0x0

    const/16 v14, 0x8

    const-wide/16 v21, 0xff

    :goto_b
    move-wide/from16 v23, v4

    aget-wide v3, v1, v13

    move v5, v14

    move-object/from16 v25, v15

    not-long v14, v3

    shl-long v14, v14, v16

    and-long/2addr v14, v3

    and-long v14, v14, v17

    cmp-long v14, v14, v17

    if-eqz v14, :cond_e

    sub-int v14, v13, v12

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    rsub-int/lit8 v14, v14, 0x8

    move-wide/from16 v26, v3

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v14, :cond_d

    and-long v3, v26, v21

    cmp-long v3, v3, v19

    if-gez v3, :cond_c

    shl-int/lit8 v3, v13, 0x3

    add-int/2addr v3, v15

    aget-object v3, v11, v3

    check-cast v3, Ln2/d;

    :goto_d
    if-eqz v3, :cond_c

    move-object/from16 v31, v1

    move v1, v5

    move-wide/from16 v4, v23

    invoke-virtual/range {v2 .. v10}, Ln2/e;->a(Ln2/d;JJ[FJ)V

    iget-object v3, v3, Ln2/d;->d:Ln2/d;

    move v5, v1

    move-object/from16 v1, v31

    goto :goto_d

    :cond_c
    move-object/from16 v31, v1

    move v1, v5

    move-wide/from16 v4, v23

    shr-long v26, v26, v1

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v23, v4

    move v5, v1

    move-object/from16 v1, v31

    goto :goto_c

    :cond_d
    move-object/from16 v31, v1

    move v1, v5

    move-wide/from16 v4, v23

    if-ne v14, v1, :cond_11

    goto :goto_e

    :cond_e
    move-object/from16 v31, v1

    move v1, v5

    move-wide/from16 v4, v23

    :goto_e
    if-eq v13, v12, :cond_11

    add-int/lit8 v13, v13, 0x1

    move v14, v1

    move-object/from16 v15, v25

    move-object/from16 v1, v31

    goto :goto_b

    :cond_f
    move-object/from16 v25, v15

    const/16 v1, 0x8

    goto :goto_f

    :cond_10
    move-object/from16 v25, v15

    const/16 v1, 0x8

    const-wide/16 v19, 0x80

    :goto_f
    const-wide/16 v21, 0xff

    :cond_11
    if-eqz v30, :cond_12

    iget-wide v4, v2, Ln2/e;->d:J

    iget-wide v6, v2, Ln2/e;->e:J

    iget-object v8, v2, Ln2/e;->g:[F

    iget-object v3, v2, Ln2/e;->b:Ln2/d;

    if-eqz v3, :cond_12

    :goto_10
    if-eqz v3, :cond_12

    iget-object v11, v3, Ln2/d;->b:Lx/d;

    invoke-static {v11}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v11

    invoke-static {v11}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v12

    check-cast v12, Lf2/y;

    invoke-virtual {v12}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v12

    invoke-virtual {v12, v11}, Ln2/b;->b(Le2/g0;)J

    move-result-wide v12

    iget-wide v14, v11, Le2/g0;->p:J

    iput-wide v12, v3, Ln2/d;->e:J

    move-wide/from16 v23, v12

    const/16 v13, 0x20

    shr-long v11, v23, v13

    long-to-int v11, v11

    move v12, v13

    move-wide/from16 v26, v14

    shr-long v13, v26, v12

    long-to-int v13, v13

    add-int/2addr v11, v13

    move v15, v12

    const-wide v30, 0xffffffffL

    and-long v12, v23, v30

    long-to-int v12, v12

    and-long v13, v26, v30

    long-to-int v13, v13

    add-int/2addr v12, v13

    int-to-long v13, v11

    shl-long/2addr v13, v15

    int-to-long v11, v12

    and-long v11, v11, v30

    or-long/2addr v11, v13

    iput-wide v11, v3, Ln2/d;->f:J

    invoke-virtual/range {v2 .. v10}, Ln2/e;->a(Ln2/d;JJ[FJ)V

    iget-object v3, v3, Ln2/d;->d:Ln2/d;

    goto :goto_10

    :cond_12
    iget-boolean v3, v0, Ln2/b;->f:Z

    if-eqz v3, :cond_15

    const/4 v3, 0x0

    iput-boolean v3, v0, Ln2/b;->f:Z

    move-object/from16 v4, v25

    iget-object v5, v4, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v5, [J

    iget v6, v4, Ld1/c0;->b:I

    iget-object v7, v4, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v7, [J

    move v8, v3

    move v11, v8

    :goto_11
    array-length v12, v5

    add-int/lit8 v12, v12, -0x2

    if-ge v8, v12, :cond_14

    array-length v12, v7

    add-int/lit8 v12, v12, -0x2

    if-ge v11, v12, :cond_14

    if-ge v8, v6, :cond_14

    add-int/lit8 v12, v8, 0x2

    aget-wide v13, v5, v12

    sget-wide v23, Ln2/a;->c:J

    cmp-long v13, v13, v23

    if-eqz v13, :cond_13

    aget-wide v13, v5, v8

    aput-wide v13, v7, v11

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v14, v8, 0x1

    aget-wide v14, v5, v14

    aput-wide v14, v7, v13

    add-int/lit8 v13, v11, 0x2

    aget-wide v14, v5, v12

    aput-wide v14, v7, v13

    add-int/lit8 v11, v11, 0x3

    :cond_13
    add-int/lit8 v8, v8, 0x3

    goto :goto_11

    :cond_14
    iput v11, v4, Ld1/c0;->b:I

    iput-object v7, v4, Ld1/c0;->c:Ljava/lang/Object;

    iput-object v5, v4, Ld1/c0;->d:Ljava/lang/Object;

    goto :goto_12

    :cond_15
    const/4 v3, 0x0

    :goto_12
    iget-wide v4, v2, Ln2/e;->c:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_16

    goto :goto_17

    :cond_16
    iget-object v4, v2, Ln2/e;->a:Lk/x;

    iget-object v5, v4, Lk/k;->c:[Ljava/lang/Object;

    iget-object v4, v4, Lk/k;->a:[J

    array-length v6, v4

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_1a

    move v7, v3

    :goto_13
    aget-wide v8, v4, v7

    not-long v10, v8

    shl-long v10, v10, v16

    and-long/2addr v10, v8

    and-long v10, v10, v17

    cmp-long v10, v10, v17

    if-eqz v10, :cond_19

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v10, v10, 0x8

    move-wide v11, v8

    move v8, v3

    :goto_14
    if-ge v8, v10, :cond_18

    and-long v13, v11, v21

    cmp-long v9, v13, v19

    if-gez v9, :cond_17

    shl-int/lit8 v9, v7, 0x3

    add-int/2addr v9, v8

    aget-object v9, v5, v9

    check-cast v9, Ln2/d;

    :goto_15
    if-eqz v9, :cond_17

    iget-object v9, v9, Ln2/d;->d:Ln2/d;

    goto :goto_15

    :cond_17
    shr-long/2addr v11, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_18
    if-ne v10, v1, :cond_1a

    :cond_19
    if-eq v7, v6, :cond_1a

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_1a
    iget-object v1, v2, Ln2/e;->b:Ln2/d;

    if-eqz v1, :cond_1b

    :goto_16
    if-eqz v1, :cond_1b

    iget-object v1, v1, Ln2/d;->d:Ln2/d;

    goto :goto_16

    :cond_1b
    const-wide/16 v3, -0x1

    iput-wide v3, v2, Ln2/e;->c:J

    :goto_17
    iget-wide v1, v2, Ln2/e;->c:J

    cmp-long v1, v1, v28

    if-lez v1, :cond_1c

    invoke-virtual {v0}, Ln2/b;->i()V

    :cond_1c
    return-void
.end method

.method public final b(Le2/g0;)J
    .locals 8

    iget p1, p1, Le2/g0;->m:I

    const v0, 0x1ffffff

    and-int/2addr p1, v0

    iget-object p0, p0, Ln2/b;->a:Ld1/c0;

    iget-object v1, p0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, [J

    iget p0, p0, Ld1/c0;->b:I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    const-wide v4, 0x7fffffffffffffffL

    if-ge v2, v3, :cond_1

    if-ge v2, p0, :cond_1

    add-int/lit8 v3, v2, 0x2

    aget-wide v6, v1, v3

    long-to-int v3, v6

    and-int/2addr v3, v0

    if-ne v3, p1, :cond_0

    aget-wide p0, v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_1
    move-wide p0, v4

    :goto_1
    cmp-long v0, p0, v4

    if-nez v0, :cond_2

    const-wide p0, 0x7fffffff7fffffffL

    return-wide p0

    :cond_2
    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    long-to-int p0, p0

    int-to-long v1, v1

    shl-long v0, v1, v0

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final c(Le2/g0;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iput-boolean v2, v1, Le2/g0;->n:Z

    const-wide v3, 0x7fffffff7fffffffL

    iput-wide v3, v1, Le2/g0;->o:J

    iget-object v5, v1, Le2/g0;->R:Le2/c1;

    iget-object v6, v5, Le2/c1;->d:Le2/h1;

    iget-object v7, v1, Le2/g0;->S:Le2/l0;

    iget-object v7, v7, Le2/l0;->p:Le2/x0;

    invoke-virtual {v7}, Le2/x0;->k0()I

    move-result v8

    invoke-virtual {v7}, Le2/x0;->f0()I

    move-result v7

    int-to-float v8, v8

    int-to-float v7, v7

    iget-object v9, v0, Ln2/b;->j:Ll1/a;

    const/4 v10, 0x0

    iput v10, v9, Ll1/a;->a:F

    iput v10, v9, Ll1/a;->b:F

    iput v8, v9, Ll1/a;->c:F

    iput v7, v9, Ll1/a;->d:F

    :goto_0
    const-wide v7, 0xffffffffL

    const/16 v10, 0x20

    if-eqz v6, :cond_2

    iget-object v11, v6, Le2/h1;->z:Le2/g0;

    iget-object v12, v11, Le2/g0;->R:Le2/c1;

    iget-object v12, v12, Le2/c1;->d:Le2/h1;

    if-ne v6, v12, :cond_0

    iget-boolean v12, v11, Le2/g0;->n:Z

    if-nez v12, :cond_0

    invoke-virtual {v0, v11}, Ln2/b;->b(Le2/g0;)J

    move-result-wide v11

    invoke-static {v11, v12, v3, v4}, Lb3/j;->a(JJ)Z

    move-result v13

    if-nez v13, :cond_0

    shr-long v3, v11, v10

    long-to-int v3, v3

    int-to-float v3, v3

    and-long/2addr v11, v7

    long-to-int v4, v11

    int-to-float v4, v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v11, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v11, v10

    and-long/2addr v3, v7

    or-long/2addr v3, v11

    invoke-virtual {v9, v3, v4}, Ll1/a;->c(J)V

    goto :goto_1

    :cond_0
    iget-object v11, v6, Le2/h1;->W:Le2/p1;

    if-eqz v11, :cond_1

    check-cast v11, Lf2/r1;

    invoke-virtual {v11}, Lf2/r1;->b()[F

    move-result-object v11

    invoke-static {v11}, Lm1/v;->r([F)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {v11, v9}, Lm1/z;->c([FLl1/a;)V

    :cond_1
    iget-wide v11, v6, Le2/h1;->K:J

    shr-long v13, v11, v10

    long-to-int v13, v13

    int-to-float v13, v13

    and-long/2addr v11, v7

    long-to-int v11, v11

    int-to-float v11, v11

    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v14, v11

    shl-long v10, v12, v10

    and-long/2addr v7, v14

    or-long/2addr v7, v10

    invoke-virtual {v9, v7, v8}, Ll1/a;->c(J)V

    iget-object v6, v6, Le2/h1;->B:Le2/h1;

    goto :goto_0

    :cond_2
    :goto_1
    iget v3, v9, Ll1/a;->a:F

    float-to-int v13, v3

    iget v3, v9, Ll1/a;->b:F

    float-to-int v14, v3

    iget v3, v9, Ll1/a;->c:F

    float-to-int v15, v3

    iget v3, v9, Ll1/a;->d:F

    float-to-int v3, v3

    iget v12, v1, Le2/g0;->m:I

    iget-boolean v4, v1, Le2/g0;->s:Z

    iput-boolean v2, v1, Le2/g0;->s:Z

    iget-object v11, v0, Ln2/b;->a:Ld1/c0;

    if-eqz v4, :cond_4

    const v4, 0x1ffffff

    and-int v9, v12, v4

    move/from16 v16, v4

    iget-object v4, v11, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v4, [J

    iget v6, v11, Ld1/c0;->b:I

    move-wide/from16 v17, v7

    const/4 v7, 0x0

    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x2

    if-ge v7, v8, :cond_4

    if-ge v7, v6, :cond_4

    add-int/lit8 v8, v7, 0x2

    move/from16 v19, v10

    move-object/from16 v20, v11

    aget-wide v10, v4, v8

    move/from16 v22, v2

    long-to-int v2, v10

    and-int v2, v2, v16

    if-ne v2, v9, :cond_3

    int-to-long v5, v13

    shl-long v5, v5, v19

    int-to-long v12, v14

    and-long v12, v12, v17

    or-long/2addr v5, v12

    aput-wide v5, v4, v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v5, v15

    shl-long v5, v5, v19

    int-to-long v2, v3

    and-long v2, v2, v17

    or-long/2addr v2, v5

    aput-wide v2, v4, v7

    const/16 v2, 0x3f

    shr-long v2, v10, v2

    const-wide/16 v5, 0x1

    and-long/2addr v2, v5

    const/16 v5, 0x3c

    shl-long/2addr v2, v5

    or-long/2addr v2, v10

    aput-wide v2, v4, v8

    :goto_3
    move/from16 v2, v22

    goto :goto_6

    :cond_3
    add-int/lit8 v7, v7, 0x3

    move/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v2, v22

    goto :goto_2

    :cond_4
    move/from16 v22, v2

    move-object/from16 v20, v11

    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v2, v2, Le2/g0;->m:I

    :goto_4
    move/from16 v17, v2

    goto :goto_5

    :cond_5
    const/4 v2, -0x1

    goto :goto_4

    :goto_5
    const/16 v2, 0x400

    invoke-virtual {v5, v2}, Le2/c1;->d(I)Z

    move-result v18

    const/16 v2, 0x10

    invoke-virtual {v5, v2}, Le2/c1;->d(I)Z

    move-result v19

    iget-object v2, v0, Ln2/b;->b:Ln2/e;

    iget-object v2, v2, Ln2/e;->a:Lk/x;

    invoke-virtual {v2, v12}, Lk/k;->a(I)Z

    move-result v2

    const/16 v21, 0x200

    move/from16 v16, v3

    move-object/from16 v11, v20

    move/from16 v20, v2

    invoke-static/range {v11 .. v21}, Ld1/c0;->h(Ld1/c0;IIIIIIZZZI)V

    goto :goto_3

    :goto_6
    iput-boolean v2, v0, Ln2/b;->d:Z

    invoke-virtual {v1}, Le2/g0;->z()Lt0/b;

    move-result-object v1

    iget-object v2, v1, Lt0/b;->l:[Ljava/lang/Object;

    iget v1, v1, Lt0/b;->n:I

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v1, :cond_7

    aget-object v3, v2, v6

    check-cast v3, Le2/g0;

    invoke-virtual {v3}, Le2/g0;->I()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v3}, Ln2/b;->c(Le2/g0;)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_7
    return-void
.end method

.method public final d(Le2/g0;)V
    .locals 9

    iget-boolean v0, p1, Le2/g0;->s:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln2/b;->d:Z

    iget p1, p1, Le2/g0;->m:I

    const v0, 0x1ffffff

    and-int/2addr p1, v0

    iget-object v1, p0, Ln2/b;->a:Ld1/c0;

    iget-object v2, v1, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v2, [J

    iget v1, v1, Ld1/c0;->b:I

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v3, 0x2

    aget-wide v5, v2, v4

    long-to-int v7, v5

    and-int/2addr v7, v0

    if-ne v7, p1, :cond_0

    const/16 p1, 0x3f

    shr-long v0, v5, p1

    const-wide/16 v7, 0x1

    and-long/2addr v0, v7

    const/16 p1, 0x3c

    shl-long/2addr v0, p1

    or-long/2addr v0, v5

    aput-wide v0, v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ln2/b;->i()V

    return-void
.end method

.method public final e(Le2/g0;Z)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Le2/g0;->I()Z

    move-result v2

    iget-object v3, v1, Le2/g0;->R:Le2/c1;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    const-wide v4, 0x7fffffff7fffffffL

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    iget-boolean v7, v2, Le2/g0;->n:Z

    if-nez v7, :cond_2

    iget-boolean v7, v2, Le2/g0;->r:Z

    if-eqz v7, :cond_1

    iput-boolean v6, v2, Le2/g0;->r:Z

    invoke-static {v2}, Ln2/b;->f(Le2/g0;)J

    move-result-wide v7

    iput-wide v7, v2, Le2/g0;->q:J

    :cond_1
    iget-wide v7, v2, Le2/g0;->q:J

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :goto_0
    iget-object v9, v3, Le2/c1;->d:Le2/h1;

    invoke-static {v7, v8, v4, v5}, Lb3/j;->a(JJ)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v9, Le2/h1;->W:Le2/p1;

    if-eqz v4, :cond_4

    check-cast v4, Lf2/r1;

    invoke-virtual {v4}, Lf2/r1;->b()[F

    move-result-object v4

    invoke-static {v4}, Lm1/v;->r([F)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_d

    :cond_4
    iget-boolean v4, v1, Le2/g0;->n:Z

    if-nez v4, :cond_14

    iget-wide v4, v9, Le2/h1;->K:J

    invoke-static {v7, v8, v4, v5}, Lb3/j;->c(JJ)J

    move-result-wide v4

    iget-object v7, v1, Le2/g0;->S:Le2/l0;

    iget-object v7, v7, Le2/l0;->p:Le2/x0;

    invoke-virtual {v7}, Le2/x0;->k0()I

    move-result v8

    invoke-virtual {v7}, Le2/x0;->f0()I

    move-result v7

    int-to-long v9, v8

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    int-to-long v12, v7

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    or-long/2addr v9, v12

    iget v12, v1, Le2/g0;->m:I

    iget-boolean v13, v1, Le2/g0;->s:Z

    const v16, 0x1ffffff

    iget-object v6, v0, Ln2/b;->a:Ld1/c0;

    move/from16 v18, v11

    if-eqz v13, :cond_f

    move-wide/from16 v19, v14

    if-nez p2, :cond_5

    iget-wide v14, v1, Le2/g0;->o:J

    invoke-static {v4, v5, v14, v15}, Lb3/j;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-wide v13, v1, Le2/g0;->p:J

    invoke-static {v9, v10, v13, v14}, Lb3/l;->a(JJ)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_5
    const/16 v21, 0x3f

    if-eqz v2, :cond_b

    iget v2, v2, Le2/g0;->m:I

    const/16 p2, 0x3c

    const-wide/16 v22, 0x1

    shr-long v13, v4, v18

    long-to-int v13, v13

    and-long v14, v4, v19

    long-to-int v14, v14

    and-int v12, v12, v16

    iget-object v15, v6, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v15, [J

    const/16 v24, 0x19

    iget v3, v6, Ld1/c0;->b:I

    move/from16 v25, v7

    const/4 v11, 0x0

    :goto_1
    array-length v7, v15

    add-int/lit8 v7, v7, -0x2

    if-ge v11, v7, :cond_a

    if-ge v11, v3, :cond_a

    add-int/lit8 v7, v11, 0x2

    move/from16 v26, v8

    aget-wide v7, v15, v7

    long-to-int v7, v7

    and-int v7, v7, v16

    if-ne v7, v2, :cond_9

    aget-wide v7, v15, v11

    move/from16 v27, v13

    move/from16 v28, v14

    shr-long v13, v7, v18

    long-to-int v13, v13

    long-to-int v7, v7

    add-int v13, v13, v27

    add-int v7, v7, v28

    add-int v8, v13, v26

    add-int v14, v7, v25

    add-int/lit8 v11, v11, 0x3

    move/from16 v29, v2

    :goto_2
    array-length v2, v15

    add-int/lit8 v2, v2, -0x2

    if-ge v11, v2, :cond_8

    if-ge v11, v3, :cond_8

    add-int/lit8 v2, v11, 0x2

    move/from16 v17, v2

    move/from16 v30, v3

    aget-wide v2, v15, v17

    move/from16 v31, v11

    long-to-int v11, v2

    and-int v11, v11, v16

    if-ne v11, v12, :cond_7

    aget-wide v11, v15, v31

    move-wide/from16 v32, v2

    shr-long v2, v11, v18

    long-to-int v2, v2

    long-to-int v3, v11

    sub-int v2, v13, v2

    sub-int v3, v7, v3

    int-to-long v11, v13

    shl-long v11, v11, v18

    move-wide/from16 v25, v11

    int-to-long v11, v7

    and-long v11, v11, v19

    or-long v11, v25, v11

    aput-wide v11, v15, v31

    add-int/lit8 v11, v31, 0x1

    int-to-long v7, v8

    shl-long v7, v7, v18

    int-to-long v12, v14

    and-long v12, v12, v19

    or-long/2addr v7, v12

    aput-wide v7, v15, v11

    shr-long v7, v32, v21

    and-long v7, v7, v22

    shl-long v7, v7, p2

    or-long v7, v32, v7

    aput-wide v7, v15, v17

    if-nez v2, :cond_6

    if-eqz v3, :cond_a

    :cond_6
    add-int/lit8 v11, v31, 0x3

    sget-wide v7, Ln2/a;->b:J

    and-long v7, v32, v7

    and-int v11, v11, v16

    int-to-long v11, v11

    shl-long v11, v11, v24

    or-long/2addr v7, v11

    invoke-virtual {v6, v2, v3, v7, v8}, Ld1/c0;->o(IIJ)V

    goto :goto_4

    :cond_7
    add-int/lit8 v11, v31, 0x3

    move/from16 v3, v30

    goto :goto_2

    :cond_8
    move/from16 v30, v3

    move/from16 v31, v11

    move/from16 v11, v31

    goto :goto_3

    :cond_9
    move/from16 v29, v2

    move/from16 v30, v3

    move/from16 v27, v13

    move/from16 v28, v14

    :goto_3
    add-int/lit8 v11, v11, 0x3

    move/from16 v8, v26

    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v2, v29

    move/from16 v3, v30

    goto/16 :goto_1

    :cond_a
    :goto_4
    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_b
    move/from16 v25, v7

    move/from16 v26, v8

    const/16 p2, 0x3c

    const-wide/16 v22, 0x1

    const/16 v24, 0x19

    shr-long v2, v4, v18

    long-to-int v2, v2

    and-long v7, v4, v19

    long-to-int v3, v7

    add-int v8, v2, v26

    add-int v7, v3, v25

    and-int v11, v12, v16

    iget-object v12, v6, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v12, [J

    iget v13, v6, Ld1/c0;->b:I

    const/4 v14, 0x0

    :goto_5
    array-length v15, v12

    add-int/lit8 v15, v15, -0x2

    if-ge v14, v15, :cond_a

    if-ge v14, v13, :cond_a

    add-int/lit8 v15, v14, 0x2

    move-object/from16 v25, v12

    move/from16 v26, v13

    aget-wide v12, v25, v15

    move/from16 v27, v14

    long-to-int v14, v12

    and-int v14, v14, v16

    if-ne v14, v11, :cond_e

    move-wide/from16 v28, v12

    aget-wide v11, v25, v27

    int-to-long v13, v2

    shl-long v13, v13, v18

    move-wide/from16 v30, v13

    int-to-long v13, v3

    and-long v13, v13, v19

    or-long v13, v30, v13

    aput-wide v13, v25, v27

    add-int/lit8 v14, v27, 0x1

    move v13, v2

    move/from16 v30, v3

    int-to-long v2, v8

    shl-long v2, v2, v18

    int-to-long v7, v7

    and-long v7, v7, v19

    or-long/2addr v2, v7

    aput-wide v2, v25, v14

    shr-long v2, v28, v21

    and-long v2, v2, v22

    shl-long v2, v2, p2

    or-long v2, v28, v2

    aput-wide v2, v25, v15

    shr-long v2, v11, v18

    long-to-int v2, v2

    sub-int v2, v13, v2

    long-to-int v3, v11

    sub-int v3, v30, v3

    if-eqz v2, :cond_c

    const/4 v7, 0x1

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :goto_6
    if-eqz v3, :cond_d

    const/16 v17, 0x1

    goto :goto_7

    :cond_d
    const/16 v17, 0x0

    :goto_7
    or-int v7, v7, v17

    if-eqz v7, :cond_a

    add-int/lit8 v14, v27, 0x3

    sget-wide v7, Ln2/a;->b:J

    and-long v7, v28, v7

    and-int v11, v14, v16

    int-to-long v11, v11

    shl-long v11, v11, v24

    or-long/2addr v7, v11

    invoke-virtual {v6, v2, v3, v7, v8}, Ld1/c0;->o(IIJ)V

    goto/16 :goto_4

    :cond_e
    move v13, v2

    move/from16 v30, v3

    add-int/lit8 v14, v27, 0x3

    move-object/from16 v12, v25

    move/from16 v13, v26

    goto :goto_5

    :goto_8
    iput-boolean v7, v0, Ln2/b;->d:Z

    goto/16 :goto_c

    :cond_f
    move/from16 v25, v7

    move/from16 v26, v8

    move-wide/from16 v19, v14

    const/4 v7, 0x1

    iput-boolean v7, v1, Le2/g0;->s:Z

    const/16 v7, 0x400

    invoke-virtual {v3, v7}, Le2/c1;->d(I)Z

    move-result v23

    const/16 v7, 0x10

    invoke-virtual {v3, v7}, Le2/c1;->d(I)Z

    move-result v24

    iget-object v3, v0, Ln2/b;->b:Ln2/e;

    iget-object v3, v3, Ln2/e;->a:Lk/x;

    invoke-virtual {v3, v12}, Lk/k;->a(I)Z

    move-result v3

    if-eqz v2, :cond_12

    iget v2, v2, Le2/g0;->m:I

    shr-long v7, v4, v18

    long-to-int v7, v7

    and-long v13, v4, v19

    long-to-int v8, v13

    move/from16 v11, v18

    and-int v18, v12, v16

    iget-object v12, v6, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v12, [J

    iget v13, v6, Ld1/c0;->b:I

    const/4 v14, 0x0

    :goto_9
    array-length v15, v12

    add-int/lit8 v15, v15, -0x2

    if-ge v14, v15, :cond_11

    if-ge v14, v13, :cond_11

    add-int/lit8 v15, v14, 0x2

    move/from16 p2, v11

    move-object/from16 v17, v12

    aget-wide v11, v17, v15

    long-to-int v11, v11

    and-int v11, v11, v16

    if-ne v11, v2, :cond_10

    aget-wide v11, v17, v14

    move/from16 v21, v2

    move v15, v3

    shr-long v2, v11, p2

    long-to-int v2, v2

    long-to-int v3, v11

    add-int v19, v2, v7

    add-int v20, v3, v8

    add-int v8, v19, v26

    add-int v22, v20, v25

    move-object/from16 v17, v6

    move/from16 v27, v14

    move/from16 v26, v15

    move/from16 v25, v24

    move/from16 v24, v23

    move/from16 v23, v21

    move/from16 v21, v8

    invoke-virtual/range {v17 .. v27}, Ld1/c0;->g(IIIIIIZZZI)V

    goto :goto_a

    :cond_10
    move/from16 v21, v2

    move v15, v3

    move/from16 v27, v14

    move/from16 v2, v16

    move-object/from16 v16, v6

    add-int/lit8 v14, v27, 0x3

    move/from16 v11, p2

    move-object/from16 v12, v17

    move/from16 v16, v2

    move/from16 v2, v21

    goto :goto_9

    :cond_11
    :goto_a
    const/4 v7, 0x1

    goto :goto_b

    :cond_12
    move v15, v3

    move-object/from16 v16, v6

    move/from16 p2, v18

    shr-long v2, v4, p2

    long-to-int v2, v2

    and-long v6, v4, v19

    long-to-int v3, v6

    add-int v20, v2, v26

    add-int v21, v3, v25

    const/16 v22, 0x0

    const/16 v26, 0x220

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v17, v12

    move/from16 v25, v15

    invoke-static/range {v16 .. v26}, Ld1/c0;->h(Ld1/c0;IIIIIIZZZI)V

    goto :goto_a

    :goto_b
    iput-boolean v7, v0, Ln2/b;->d:Z

    :cond_13
    :goto_c
    iput-wide v9, v1, Le2/g0;->p:J

    iput-wide v4, v1, Le2/g0;->o:J

    return-void

    :cond_14
    invoke-virtual/range {p0 .. p1}, Ln2/b;->c(Le2/g0;)V

    invoke-static {v1}, Ln2/b;->h(Le2/g0;)V

    return-void

    :cond_15
    :goto_d
    invoke-virtual/range {p0 .. p1}, Ln2/b;->c(Le2/g0;)V

    return-void
.end method

.method public final g(Le2/g0;)V
    .locals 10

    iget-boolean v0, p1, Le2/g0;->s:Z

    if-eqz v0, :cond_2

    iget v0, p1, Le2/g0;->m:I

    const v1, 0x1ffffff

    and-int/2addr v0, v1

    iget-object v2, p0, Ln2/b;->a:Ld1/c0;

    iget-object v3, v2, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v3, [J

    iget v2, v2, Ld1/c0;->b:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    if-ge v5, v2, :cond_1

    add-int/lit8 v6, v5, 0x2

    aget-wide v8, v3, v6

    long-to-int v8, v8

    and-int/2addr v8, v1

    if-ne v8, v0, :cond_0

    const-wide/16 v0, -0x1

    aput-wide v0, v3, v5

    add-int/2addr v5, v7

    aput-wide v0, v3, v5

    sget-wide v0, Ln2/a;->c:J

    aput-wide v0, v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x3

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v4, p1, Le2/g0;->s:Z

    iput-boolean v7, p0, Ln2/b;->d:Z

    iput-boolean v7, p0, Ln2/b;->f:Z

    :cond_2
    return-void
.end method

.method public final i()V
    .locals 6

    iget-object v0, p0, Ln2/b;->g:Le3/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ln2/b;->b:Ln2/e;

    iget-wide v2, v2, Ln2/e;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Ln2/b;->h:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    return-void

    :cond_2
    if-eqz v0, :cond_3

    sget-object v1, Lf1/b;->a:Landroid/os/Handler;

    sget-object v1, Lf1/b;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    sget-object v0, Lf1/b;->a:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v4, 0x10

    int-to-long v4, v4

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Ln2/b;->h:J

    sub-long/2addr v2, v0

    new-instance v0, Le3/a;

    const/4 v1, 0x2

    iget-object v4, p0, Ln2/b;->i:Lc2/l0;

    invoke-direct {v0, v4, v1}, Le3/a;-><init>(Li9/a;I)V

    sget-object v1, Lf1/b;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v0, p0, Ln2/b;->g:Le3/a;

    return-void
.end method
