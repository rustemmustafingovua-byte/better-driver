.class public final Ld1/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li9/c;

.field public b:Ljava/lang/Object;

.field public c:Lk/d0;

.field public d:I

.field public final e:Lk/m0;

.field public final f:Lk/m0;

.field public final g:Lk/n0;

.field public final h:Lt0/b;

.field public final i:Ld1/z;

.field public j:Z

.field public k:I

.field public final l:Lk/m0;

.field public final m:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Li9/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/a0;->a:Li9/c;

    const/4 p1, -0x1

    iput p1, p0, Ld1/a0;->d:I

    invoke-static {}, Lr5/u0;->i()Lk/m0;

    move-result-object p1

    iput-object p1, p0, Ld1/a0;->e:Lk/m0;

    new-instance p1, Lk/m0;

    invoke-direct {p1}, Lk/m0;-><init>()V

    iput-object p1, p0, Ld1/a0;->f:Lk/m0;

    new-instance p1, Lk/n0;

    invoke-direct {p1}, Lk/n0;-><init>()V

    iput-object p1, p0, Ld1/a0;->g:Lk/n0;

    new-instance p1, Lt0/b;

    const/16 v0, 0x10

    new-array v0, v0, [Lr0/d0;

    invoke-direct {p1, v0}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Ld1/a0;->h:Lt0/b;

    new-instance p1, Ld1/z;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Ld1/z;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Ld1/a0;->i:Ld1/z;

    invoke-static {}, Lr5/u0;->i()Lk/m0;

    move-result-object p1

    iput-object p1, p0, Ld1/a0;->l:Lk/m0;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ld1/a0;->m:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Z
    .locals 45

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Lr0/e;->r:Lr0/e;

    instance-of v3, v0, Lt0/d;

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>"

    iget-object v5, v1, Ld1/a0;->h:Lt0/b;

    const/4 v11, 0x2

    const-wide/16 v16, 0x80

    iget-object v7, v1, Ld1/a0;->l:Lk/m0;

    const-wide/16 v18, 0xff

    iget-object v8, v1, Ld1/a0;->m:Ljava/util/HashMap;

    iget-object v9, v1, Ld1/a0;->e:Lk/m0;

    const/16 v20, 0x7

    iget-object v10, v1, Ld1/a0;->g:Lk/n0;

    if-eqz v3, :cond_23

    check-cast v0, Lt0/d;

    iget-object v0, v0, Lt0/d;->l:Lk/n0;

    iget-object v3, v0, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v0, v0, Lk/n0;->a:[J

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    array-length v12, v0

    sub-int/2addr v12, v11

    if-ltz v12, :cond_21

    const/4 v13, 0x0

    const/16 v23, 0x0

    :goto_0
    const/16 v24, 0x8

    aget-wide v14, v0, v13

    move-object/from16 v27, v7

    not-long v6, v14

    shl-long v6, v6, v20

    and-long/2addr v6, v14

    and-long v6, v6, v21

    cmp-long v6, v6, v21

    if-eqz v6, :cond_20

    sub-int v6, v13, v12

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1f

    and-long v28, v14, v18

    cmp-long v28, v28, v16

    if-gez v28, :cond_1e

    shl-int/lit8 v28, v13, 0x3

    add-int v28, v28, v7

    aget-object v11, v3, v28

    move-object/from16 v28, v0

    instance-of v0, v11, Ld1/i0;

    if-eqz v0, :cond_0

    move-object v0, v11

    check-cast v0, Ld1/i0;

    move-object/from16 v30, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ld1/i0;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_14

    :cond_0
    move-object/from16 v30, v2

    :cond_1
    iget-boolean v0, v1, Ld1/a0;->j:Z

    if-nez v0, :cond_18

    move-object/from16 v2, v27

    invoke-virtual {v2, v11}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, v1, Ld1/a0;->j:Z

    :try_start_0
    invoke-virtual {v2, v11}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_16

    move-object/from16 v27, v3

    :try_start_1
    instance-of v3, v0, Lk/n0;

    if-eqz v3, :cond_f

    check-cast v0, Lk/n0;

    iget-object v3, v0, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v0, v0, Lk/n0;->a:[J

    move-object/from16 p1, v3

    array-length v3, v0

    const/16 v29, 0x2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_d

    move-object/from16 v31, v0

    move-wide/from16 v32, v14

    const/4 v0, 0x0

    :goto_2
    aget-wide v14, v31, v0

    move/from16 v34, v12

    move/from16 v35, v13

    not-long v12, v14

    shl-long v12, v12, v20

    and-long/2addr v12, v14

    and-long v12, v12, v21

    cmp-long v12, v12, v21

    if-eqz v12, :cond_c

    sub-int v12, v0, v3

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_b

    and-long v36, v14, v18

    cmp-long v36, v36, v16

    if-gez v36, :cond_a

    shl-int/lit8 v36, v0, 0x3

    add-int v36, v36, v13

    aget-object v36, p1, v36

    move/from16 v37, v7

    move-object/from16 v7, v36

    check-cast v7, Lr0/d0;

    invoke-static {v7, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v36, v13

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-wide/from16 v38, v14

    iget-object v14, v7, Lr0/d0;->n:Lr0/m2;

    if-nez v14, :cond_2

    move-object/from16 v14, v30

    :cond_2
    invoke-virtual {v7}, Lr0/d0;->h()Lr0/c0;

    move-result-object v15

    iget-object v15, v15, Lr0/c0;->f:Ljava/lang/Object;

    invoke-interface {v14, v15, v13}, Lr0/m2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v9, v7}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    instance-of v13, v7, Lk/n0;

    if-eqz v13, :cond_7

    check-cast v7, Lk/n0;

    iget-object v13, v7, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v7, v7, Lk/n0;->a:[J

    array-length v14, v7

    const/16 v29, 0x2

    add-int/lit8 v14, v14, -0x2

    if-ltz v14, :cond_6

    move/from16 v40, v6

    move-object/from16 v41, v7

    const/4 v15, 0x0

    :goto_4
    aget-wide v6, v41, v15

    move-object/from16 v42, v2

    not-long v1, v6

    shl-long v1, v1, v20

    and-long/2addr v1, v6

    and-long v1, v1, v21

    cmp-long v1, v1, v21

    if-eqz v1, :cond_5

    sub-int v1, v15, v14

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_4

    and-long v43, v6, v18

    cmp-long v43, v43, v16

    if-gez v43, :cond_3

    shl-int/lit8 v23, v15, 0x3

    add-int v23, v23, v2

    move/from16 v43, v2

    aget-object v2, v13, v23

    invoke-virtual {v10, v2}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/16 v23, 0x1

    goto :goto_6

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_f

    :cond_3
    move/from16 v43, v2

    :goto_6
    shr-long v6, v6, v24

    add-int/lit8 v2, v43, 0x1

    goto :goto_5

    :cond_4
    move/from16 v2, v24

    if-ne v1, v2, :cond_9

    :cond_5
    if-eq v15, v14, :cond_9

    add-int/lit8 v15, v15, 0x1

    const/16 v24, 0x8

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    goto :goto_4

    :cond_6
    move-object/from16 v42, v2

    move/from16 v40, v6

    goto :goto_7

    :cond_7
    move-object/from16 v42, v2

    move/from16 v40, v6

    invoke-virtual {v10, v7}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/16 v23, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v42, v2

    move/from16 v40, v6

    invoke-virtual {v5, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_7
    const/16 v2, 0x8

    goto :goto_8

    :cond_a
    move-object/from16 v42, v2

    move/from16 v40, v6

    move/from16 v37, v7

    move/from16 v36, v13

    move-wide/from16 v38, v14

    goto :goto_7

    :goto_8
    shr-long v14, v38, v2

    add-int/lit8 v13, v36, 0x1

    move-object/from16 v1, p0

    move/from16 v24, v2

    move/from16 v7, v37

    move/from16 v6, v40

    move-object/from16 v2, v42

    goto/16 :goto_3

    :cond_b
    move-object/from16 v42, v2

    move/from16 v40, v6

    move/from16 v37, v7

    move/from16 v2, v24

    if-ne v12, v2, :cond_e

    goto :goto_9

    :cond_c
    move-object/from16 v42, v2

    move/from16 v40, v6

    move/from16 v37, v7

    :goto_9
    if-eq v0, v3, :cond_e

    add-int/lit8 v0, v0, 0x1

    const/16 v24, 0x8

    move-object/from16 v1, p0

    move/from16 v12, v34

    move/from16 v13, v35

    move/from16 v7, v37

    move/from16 v6, v40

    move-object/from16 v2, v42

    goto/16 :goto_2

    :cond_d
    move-object/from16 v42, v2

    goto/16 :goto_d

    :cond_e
    :goto_a
    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_e

    :cond_f
    move-object/from16 v42, v2

    move/from16 v40, v6

    move/from16 v37, v7

    move/from16 v34, v12

    move/from16 v35, v13

    move-wide/from16 v32, v14

    check-cast v0, Lr0/d0;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lr0/d0;->n:Lr0/m2;

    if-nez v2, :cond_10

    move-object/from16 v2, v30

    :cond_10
    invoke-virtual {v0}, Lr0/d0;->h()Lr0/c0;

    move-result-object v3

    iget-object v3, v3, Lr0/c0;->f:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lr0/m2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v9, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v1, v0, Lk/n0;

    if-eqz v1, :cond_14

    check-cast v0, Lk/n0;

    iget-object v1, v0, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v0, v0, Lk/n0;->a:[J

    array-length v2, v0

    const/16 v29, 0x2

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_e

    const/4 v3, 0x0

    :goto_b
    aget-wide v6, v0, v3

    not-long v12, v6

    shl-long v12, v12, v20

    and-long/2addr v12, v6

    and-long v12, v12, v21

    cmp-long v12, v12, v21

    if-eqz v12, :cond_13

    sub-int v12, v3, v2

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v14, v12, 0x8

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v14, :cond_12

    and-long v38, v6, v18

    cmp-long v13, v38, v16

    if-gez v13, :cond_11

    shl-int/lit8 v13, v3, 0x3

    add-int/2addr v13, v12

    aget-object v13, v1, v13

    invoke-virtual {v10, v13}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/16 v23, 0x1

    :cond_11
    const/16 v13, 0x8

    shr-long/2addr v6, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_12
    const/16 v13, 0x8

    if-ne v14, v13, :cond_e

    :cond_13
    if-eq v3, v2, :cond_e

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_14
    invoke-virtual {v10, v0}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/16 v23, 0x1

    goto :goto_a

    :cond_15
    invoke-virtual {v5, v0}, Lt0/b;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_a

    :cond_16
    move-object/from16 v42, v2

    move-object/from16 v27, v3

    :goto_d
    move/from16 v40, v6

    move/from16 v37, v7

    move/from16 v34, v12

    move/from16 v35, v13

    move-wide/from16 v32, v14

    goto/16 :goto_a

    :goto_e
    iput-boolean v2, v1, Ld1/a0;->j:Z

    goto :goto_10

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :goto_f
    iput-boolean v2, v1, Ld1/a0;->j:Z

    throw v0

    :cond_17
    move-object/from16 v42, v2

    move-object/from16 v27, v3

    move/from16 v40, v6

    move/from16 v37, v7

    move/from16 v34, v12

    move/from16 v35, v13

    move-wide/from16 v32, v14

    goto :goto_10

    :cond_18
    move-object/from16 v42, v27

    move/from16 v40, v6

    move/from16 v37, v7

    move/from16 v34, v12

    move/from16 v35, v13

    move-wide/from16 v32, v14

    move-object/from16 v27, v3

    :goto_10
    invoke-virtual {v9, v11}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    instance-of v2, v0, Lk/n0;

    if-eqz v2, :cond_1c

    check-cast v0, Lk/n0;

    iget-object v2, v0, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v0, v0, Lk/n0;->a:[J

    array-length v3, v0

    const/16 v29, 0x2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_1d

    const/4 v6, 0x0

    :goto_11
    aget-wide v11, v0, v6

    not-long v13, v11

    shl-long v13, v13, v20

    and-long/2addr v13, v11

    and-long v13, v13, v21

    cmp-long v7, v13, v21

    if-eqz v7, :cond_1b

    sub-int v7, v6, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v14, v7, 0x8

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v14, :cond_1a

    and-long v38, v11, v18

    cmp-long v13, v38, v16

    if-gez v13, :cond_19

    shl-int/lit8 v13, v6, 0x3

    add-int/2addr v13, v7

    aget-object v13, v2, v13

    invoke-virtual {v10, v13}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/16 v23, 0x1

    :cond_19
    const/16 v13, 0x8

    shr-long/2addr v11, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_1a
    const/16 v13, 0x8

    if-ne v14, v13, :cond_1d

    :cond_1b
    if-eq v6, v3, :cond_1d

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_1c
    invoke-virtual {v10, v0}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/16 v23, 0x1

    :cond_1d
    :goto_13
    const/16 v2, 0x8

    goto :goto_15

    :cond_1e
    move-object/from16 v28, v0

    move-object/from16 v30, v2

    :goto_14
    move/from16 v40, v6

    move/from16 v37, v7

    move/from16 v34, v12

    move/from16 v35, v13

    move-wide/from16 v32, v14

    move-object/from16 v42, v27

    move-object/from16 v27, v3

    goto :goto_13

    :goto_15
    shr-long v14, v32, v2

    add-int/lit8 v7, v37, 0x1

    move/from16 v24, v2

    move-object/from16 v3, v27

    move-object/from16 v0, v28

    move-object/from16 v2, v30

    move/from16 v12, v34

    move/from16 v13, v35

    move/from16 v6, v40

    move-object/from16 v27, v42

    const/4 v11, 0x2

    goto/16 :goto_1

    :cond_1f
    move-object/from16 v28, v0

    move-object/from16 v30, v2

    move v14, v6

    move/from16 v34, v12

    move/from16 v35, v13

    move/from16 v2, v24

    move-object/from16 v42, v27

    move-object/from16 v27, v3

    if-ne v14, v2, :cond_22

    move/from16 v12, v34

    move/from16 v6, v35

    goto :goto_16

    :cond_20
    move-object/from16 v28, v0

    move-object/from16 v30, v2

    move-object/from16 v42, v27

    move-object/from16 v27, v3

    move v6, v13

    :goto_16
    if-eq v6, v12, :cond_22

    add-int/lit8 v13, v6, 0x1

    move-object/from16 v3, v27

    move-object/from16 v0, v28

    move-object/from16 v2, v30

    move-object/from16 v7, v42

    const/4 v11, 0x2

    goto/16 :goto_0

    :cond_21
    const/16 v23, 0x0

    :cond_22
    :goto_17
    const/4 v3, 0x0

    goto/16 :goto_30

    :cond_23
    move-object/from16 v30, v2

    move-object/from16 v42, v7

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Ld1/i0;

    if-eqz v6, :cond_24

    move-object v6, v3

    check-cast v6, Ld1/i0;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ld1/i0;->e(I)Z

    move-result v6

    if-nez v6, :cond_24

    move-object/from16 p1, v0

    move-object/from16 v28, v4

    move-object v15, v8

    const/4 v3, 0x0

    goto/16 :goto_2f

    :cond_24
    iget-boolean v6, v1, Ld1/a0;->j:Z

    if-nez v6, :cond_3d

    move-object/from16 v6, v42

    invoke-virtual {v6, v3}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v7, 0x1

    iput-boolean v7, v1, Ld1/a0;->j:Z

    :try_start_2
    invoke-virtual {v6, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3b

    instance-of v12, v11, Lk/n0;

    if-eqz v12, :cond_31

    check-cast v11, Lk/n0;

    iget-object v12, v11, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v11, v11, Lk/n0;->a:[J

    array-length v13, v11

    const/16 v29, 0x2

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_3b

    move v14, v2

    move-object v15, v8

    const/4 v2, 0x0

    :goto_19
    aget-wide v7, v11, v2

    move-object/from16 v27, v11

    move-object/from16 v23, v12

    not-long v11, v7

    shl-long v11, v11, v20

    and-long/2addr v11, v7

    and-long v11, v11, v21

    cmp-long v11, v11, v21

    if-eqz v11, :cond_30

    sub-int v11, v2, v13

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move-wide/from16 v31, v7

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v11, :cond_2e

    and-long v33, v31, v18

    cmp-long v8, v33, v16

    if-gez v8, :cond_2d

    shl-int/lit8 v8, v2, 0x3

    add-int/2addr v8, v7

    aget-object v8, v23, v8

    check-cast v8, Lr0/d0;

    invoke-static {v8, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 p1, v0

    iget-object v0, v8, Lr0/d0;->n:Lr0/m2;

    if-nez v0, :cond_25

    move-object/from16 v0, v30

    :cond_25
    move-object/from16 v28, v4

    invoke-virtual {v8}, Lr0/d0;->h()Lr0/c0;

    move-result-object v4

    iget-object v4, v4, Lr0/c0;->f:Ljava/lang/Object;

    invoke-interface {v0, v4, v12}, Lr0/m2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {v9, v8}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    instance-of v4, v0, Lk/n0;

    if-eqz v4, :cond_29

    check-cast v0, Lk/n0;

    iget-object v4, v0, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v0, v0, Lk/n0;->a:[J

    array-length v8, v0

    const/16 v29, 0x2

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_2a

    move-object/from16 v42, v6

    move/from16 v33, v7

    const/4 v12, 0x0

    :goto_1b
    aget-wide v6, v0, v12

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    not-long v3, v6

    shl-long v3, v3, v20

    and-long/2addr v3, v6

    and-long v3, v3, v21

    cmp-long v3, v3, v21

    if-eqz v3, :cond_28

    sub-int v3, v12, v8

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_27

    and-long v36, v6, v18

    cmp-long v36, v36, v16

    if-gez v36, :cond_26

    shl-int/lit8 v14, v12, 0x3

    add-int/2addr v14, v4

    aget-object v14, v35, v14

    invoke-virtual {v10, v14}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    :cond_26
    move-object/from16 v36, v0

    const/16 v0, 0x8

    goto :goto_1d

    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_2b

    :goto_1d
    shr-long/2addr v6, v0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v36

    goto :goto_1c

    :cond_27
    move-object/from16 v36, v0

    const/16 v0, 0x8

    if-ne v3, v0, :cond_2b

    goto :goto_1e

    :cond_28
    move-object/from16 v36, v0

    :goto_1e
    if-eq v12, v8, :cond_2b

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    move-object/from16 v0, v36

    goto :goto_1b

    :cond_29
    move-object/from16 v34, v3

    move-object/from16 v42, v6

    move/from16 v33, v7

    invoke-virtual {v10, v0}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_1f

    :cond_2a
    move-object/from16 v34, v3

    move-object/from16 v42, v6

    move/from16 v33, v7

    :cond_2b
    move v0, v14

    :goto_1f
    move v14, v0

    goto :goto_20

    :cond_2c
    move-object/from16 v34, v3

    move-object/from16 v42, v6

    move/from16 v33, v7

    invoke-virtual {v5, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :goto_20
    const/16 v0, 0x8

    goto :goto_21

    :cond_2d
    move-object/from16 p1, v0

    move-object/from16 v34, v3

    move-object/from16 v28, v4

    move-object/from16 v42, v6

    move/from16 v33, v7

    goto :goto_20

    :goto_21
    shr-long v31, v31, v0

    add-int/lit8 v7, v33, 0x1

    move-object/from16 v0, p1

    move-object/from16 v4, v28

    move-object/from16 v3, v34

    move-object/from16 v6, v42

    goto/16 :goto_1a

    :cond_2e
    move-object/from16 p1, v0

    move-object/from16 v34, v3

    move-object/from16 v28, v4

    move-object/from16 v42, v6

    const/16 v0, 0x8

    if-ne v11, v0, :cond_2f

    goto :goto_22

    :cond_2f
    move v2, v14

    goto :goto_23

    :cond_30
    move-object/from16 p1, v0

    move-object/from16 v34, v3

    move-object/from16 v28, v4

    move-object/from16 v42, v6

    :goto_22
    if-eq v2, v13, :cond_2f

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v12, v23

    move-object/from16 v11, v27

    move-object/from16 v4, v28

    move-object/from16 v3, v34

    move-object/from16 v6, v42

    goto/16 :goto_19

    :goto_23
    const/4 v3, 0x0

    goto/16 :goto_29

    :cond_31
    move-object/from16 p1, v0

    move-object/from16 v34, v3

    move-object/from16 v28, v4

    move-object/from16 v42, v6

    move-object v15, v8

    check-cast v11, Lr0/d0;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v11, Lr0/d0;->n:Lr0/m2;

    if-nez v3, :cond_32

    move-object/from16 v3, v30

    :cond_32
    invoke-virtual {v11}, Lr0/d0;->h()Lr0/c0;

    move-result-object v4

    iget-object v4, v4, Lr0/c0;->f:Ljava/lang/Object;

    invoke-interface {v3, v4, v0}, Lr0/m2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {v9, v11}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_39

    instance-of v3, v0, Lk/n0;

    if-eqz v3, :cond_38

    check-cast v0, Lk/n0;

    iget-object v3, v0, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v0, v0, Lk/n0;->a:[J

    array-length v4, v0

    const/16 v29, 0x2

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_39

    move v6, v2

    const/4 v2, 0x0

    :goto_24
    aget-wide v7, v0, v2

    not-long v11, v7

    shl-long v11, v11, v20

    and-long/2addr v11, v7

    and-long v11, v11, v21

    cmp-long v11, v11, v21

    if-eqz v11, :cond_36

    sub-int v11, v2, v4

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v14, v11, 0x8

    move-wide v11, v7

    const/4 v7, 0x0

    :goto_25
    if-ge v7, v14, :cond_34

    and-long v31, v11, v18

    cmp-long v8, v31, v16

    if-gez v8, :cond_33

    shl-int/lit8 v6, v2, 0x3

    add-int/2addr v6, v7

    aget-object v6, v3, v6

    invoke-virtual {v10, v6}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :cond_33
    const/16 v13, 0x8

    shr-long/2addr v11, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_34
    const/16 v13, 0x8

    if-ne v14, v13, :cond_35

    goto :goto_26

    :cond_35
    move v0, v6

    goto :goto_28

    :cond_36
    :goto_26
    if-eq v2, v4, :cond_37

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_37
    move v2, v6

    goto :goto_27

    :cond_38
    invoke-virtual {v10, v0}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_28

    :cond_39
    :goto_27
    move v0, v2

    :goto_28
    move v2, v0

    goto/16 :goto_23

    :cond_3a
    invoke-virtual {v5, v11}, Lt0/b;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_23

    :cond_3b
    move-object/from16 p1, v0

    move-object/from16 v34, v3

    move-object/from16 v28, v4

    move-object/from16 v42, v6

    move-object v15, v8

    goto/16 :goto_23

    :goto_29
    iput-boolean v3, v1, Ld1/a0;->j:Z

    :goto_2a
    move v0, v2

    move-object/from16 v2, v34

    goto :goto_2c

    :goto_2b
    iput-boolean v3, v1, Ld1/a0;->j:Z

    throw v0

    :cond_3c
    move-object/from16 v42, v6

    :cond_3d
    move-object/from16 p1, v0

    move-object/from16 v34, v3

    move-object/from16 v28, v4

    move-object v15, v8

    const/4 v3, 0x0

    goto :goto_2a

    :goto_2c
    invoke-virtual {v9, v2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_42

    instance-of v4, v2, Lk/n0;

    if-eqz v4, :cond_41

    check-cast v2, Lk/n0;

    iget-object v4, v2, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v2, v2, Lk/n0;->a:[J

    array-length v6, v2

    const/16 v29, 0x2

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_42

    move v7, v3

    :goto_2d
    aget-wide v11, v2, v7

    not-long v13, v11

    shl-long v13, v13, v20

    and-long/2addr v13, v11

    and-long v13, v13, v21

    cmp-long v8, v13, v21

    if-eqz v8, :cond_40

    sub-int v8, v7, v6

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v14, v8, 0x8

    move v8, v3

    :goto_2e
    if-ge v8, v14, :cond_3f

    and-long v26, v11, v18

    cmp-long v13, v26, v16

    if-gez v13, :cond_3e

    shl-int/lit8 v0, v7, 0x3

    add-int/2addr v0, v8

    aget-object v0, v4, v0

    invoke-virtual {v10, v0}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_3e
    const/16 v13, 0x8

    shr-long/2addr v11, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_3f
    const/16 v13, 0x8

    if-ne v14, v13, :cond_42

    :cond_40
    if-eq v7, v6, :cond_42

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_41
    invoke-virtual {v10, v2}, Lk/n0;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_42
    move v2, v0

    :goto_2f
    move-object/from16 v0, p1

    move-object v8, v15

    move-object/from16 v4, v28

    goto/16 :goto_18

    :cond_43
    move/from16 v23, v2

    goto/16 :goto_17

    :goto_30
    iget-boolean v0, v1, Ld1/a0;->j:Z

    if-nez v0, :cond_4e

    iget v0, v5, Lt0/b;->n:I

    if-eqz v0, :cond_4e

    iget-object v2, v5, Lt0/b;->l:[Ljava/lang/Object;

    move v4, v3

    :goto_31
    if-ge v4, v0, :cond_4d

    aget-object v6, v2, v4

    check-cast v6, Lr0/d0;

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v7

    invoke-virtual {v7}, Ld1/g;->g()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v9, v6}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4b

    instance-of v10, v8, Lk/n0;

    iget-object v11, v1, Ld1/a0;->f:Lk/m0;

    if-eqz v10, :cond_49

    check-cast v8, Lk/n0;

    iget-object v10, v8, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v8, v8, Lk/n0;->a:[J

    array-length v12, v8

    const/16 v29, 0x2

    add-int/lit8 v12, v12, -0x2

    if-ltz v12, :cond_48

    move v13, v3

    :goto_32
    aget-wide v14, v8, v13

    move/from16 v25, v4

    not-long v3, v14

    shl-long v3, v3, v20

    and-long/2addr v3, v14

    and-long v3, v3, v21

    cmp-long v3, v3, v21

    if-eqz v3, :cond_47

    sub-int v3, v13, v12

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v24, 0x8

    rsub-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_46

    and-long v27, v14, v18

    cmp-long v27, v27, v16

    if-gez v27, :cond_45

    shl-int/lit8 v27, v13, 0x3

    add-int v27, v27, v4

    move/from16 v28, v0

    aget-object v0, v10, v27

    invoke-virtual {v11, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lk/d0;

    move-object/from16 v30, v2

    if-nez v27, :cond_44

    new-instance v2, Lk/d0;

    invoke-direct {v2}, Lk/d0;-><init>()V

    invoke-virtual {v11, v0, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_34

    :cond_44
    move-object/from16 v2, v27

    :goto_34
    invoke-virtual {v1, v6, v7, v0, v2}, Ld1/a0;->b(Ljava/lang/Object;ILjava/lang/Object;Lk/d0;)V

    :goto_35
    const/16 v2, 0x8

    goto :goto_36

    :cond_45
    move/from16 v28, v0

    move-object/from16 v30, v2

    goto :goto_35

    :goto_36
    shr-long/2addr v14, v2

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v28

    move-object/from16 v2, v30

    goto :goto_33

    :cond_46
    move/from16 v28, v0

    move-object/from16 v30, v2

    const/16 v2, 0x8

    if-ne v3, v2, :cond_4c

    goto :goto_37

    :cond_47
    move/from16 v28, v0

    move-object/from16 v30, v2

    const/16 v2, 0x8

    :goto_37
    if-eq v13, v12, :cond_4c

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v25

    move/from16 v0, v28

    move-object/from16 v2, v30

    const/4 v3, 0x0

    goto :goto_32

    :cond_48
    move/from16 v28, v0

    move-object/from16 v30, v2

    move/from16 v25, v4

    const/16 v2, 0x8

    goto :goto_38

    :cond_49
    move/from16 v28, v0

    move-object/from16 v30, v2

    move/from16 v25, v4

    const/16 v2, 0x8

    const/16 v29, 0x2

    invoke-virtual {v11, v8}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/d0;

    if-nez v0, :cond_4a

    new-instance v0, Lk/d0;

    invoke-direct {v0}, Lk/d0;-><init>()V

    invoke-virtual {v11, v8, v0}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    invoke-virtual {v1, v6, v7, v8, v0}, Ld1/a0;->b(Ljava/lang/Object;ILjava/lang/Object;Lk/d0;)V

    goto :goto_38

    :cond_4b
    move/from16 v28, v0

    move-object/from16 v30, v2

    move/from16 v25, v4

    const/16 v2, 0x8

    const/16 v29, 0x2

    :cond_4c
    :goto_38
    add-int/lit8 v4, v25, 0x1

    move/from16 v0, v28

    move-object/from16 v2, v30

    const/4 v3, 0x0

    goto/16 :goto_31

    :cond_4d
    invoke-virtual {v5}, Lt0/b;->g()V

    :cond_4e
    return v23
.end method

.method public final b(Ljava/lang/Object;ILjava/lang/Object;Lk/d0;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    iget v4, v0, Ld1/a0;->k:I

    if-lez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v3, v1}, Lk/d0;->c(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    not-int v4, v4

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    iget-object v6, v3, Lk/d0;->c:[I

    aget v6, v6, v4

    :goto_0
    iget-object v7, v3, Lk/d0;->b:[Ljava/lang/Object;

    aput-object v1, v7, v4

    iget-object v3, v3, Lk/d0;->c:[I

    aput v2, v3, v4

    instance-of v3, v1, Lr0/d0;

    const/4 v4, 0x2

    if-eqz v3, :cond_6

    if-eq v6, v2, :cond_6

    move-object v2, v1

    check-cast v2, Lr0/d0;

    invoke-virtual {v2}, Lr0/d0;->h()Lr0/c0;

    move-result-object v2

    iget-object v3, v0, Ld1/a0;->m:Ljava/util/HashMap;

    iget-object v7, v2, Lr0/c0;->f:Ljava/lang/Object;

    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lr0/c0;->e:Lk/d0;

    iget-object v3, v0, Ld1/a0;->l:Lk/m0;

    invoke-static {v3, v1}, Lr5/u0;->s(Lk/m0;Ljava/lang/Object;)V

    iget-object v7, v2, Lk/d0;->b:[Ljava/lang/Object;

    iget-object v2, v2, Lk/d0;->a:[J

    array-length v8, v2

    sub-int/2addr v8, v4

    if-ltz v8, :cond_6

    const/4 v10, 0x0

    :goto_1
    aget-wide v11, v2, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_5

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_4

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_3

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v16, v7, v16

    move-object/from16 v9, v16

    check-cast v9, Ld1/h0;

    instance-of v5, v9, Ld1/i0;

    if-eqz v5, :cond_2

    move-object v5, v9

    check-cast v5, Ld1/i0;

    invoke-virtual {v5, v4}, Ld1/i0;->f(I)V

    :cond_2
    invoke-static {v3, v9, v1}, Lr5/u0;->e(Lk/m0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    shr-long/2addr v11, v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    if-ne v13, v14, :cond_6

    :cond_5
    if-eq v10, v8, :cond_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, -0x1

    if-ne v6, v2, :cond_8

    instance-of v2, v1, Ld1/i0;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Ld1/i0;

    invoke-virtual {v2, v4}, Ld1/i0;->f(I)V

    :cond_7
    iget-object v0, v0, Ld1/a0;->e:Lk/m0;

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lr5/u0;->e(Lk/m0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ld1/a0;->e:Lk/m0;

    invoke-static {v0, p2, p1}, Lr5/u0;->r(Lk/m0;Ljava/lang/Object;Ljava/lang/Object;)Z

    instance-of p1, p2, Lr0/d0;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p2}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ld1/a0;->l:Lk/m0;

    invoke-static {p1, p2}, Lr5/u0;->s(Lk/m0;Ljava/lang/Object;)V

    iget-object p0, p0, Ld1/a0;->m:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Ld1/a0;->f:Lk/m0;

    iget-object v2, v1, Lk/m0;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_9

    const/4 v5, 0x0

    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_8

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_7

    const-wide/16 v14, 0xff

    and-long v16, v6, v14

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    shl-int/lit8 v16, v5, 0x3

    add-int v4, v16, v13

    move/from16 v16, v10

    iget-object v10, v1, Lk/m0;->b:[Ljava/lang/Object;

    aget-object v10, v10, v4

    move-wide/from16 v20, v11

    iget-object v11, v1, Lk/m0;->c:[Ljava/lang/Object;

    aget-object v11, v11, v4

    check-cast v11, Lk/d0;

    const-string v12, "null cannot be cast to non-null type androidx.compose.ui.node.OwnerScope"

    invoke-static {v10, v12}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v10

    check-cast v12, Le2/r1;

    invoke-interface {v12}, Le2/r1;->p()Z

    move-result v12

    if-nez v12, :cond_3

    move-wide/from16 v22, v14

    iget-object v14, v11, Lk/d0;->b:[Ljava/lang/Object;

    iget-object v15, v11, Lk/d0;->c:[I

    iget-object v11, v11, Lk/d0;->a:[J

    move/from16 v24, v9

    array-length v9, v11

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_3

    move-object/from16 v25, v2

    move-wide/from16 v26, v6

    const/4 v2, 0x0

    :goto_2
    aget-wide v6, v11, v2

    move-object/from16 v29, v11

    move/from16 v28, v12

    not-long v11, v6

    shl-long v11, v11, v16

    and-long/2addr v11, v6

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_2

    sub-int v11, v2, v9

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_1

    and-long v30, v6, v22

    cmp-long v30, v30, v18

    if-gez v30, :cond_0

    shl-int/lit8 v30, v2, 0x3

    add-int v30, v30, v12

    move-wide/from16 v31, v6

    aget-object v6, v14, v30

    aget v7, v15, v30

    invoke-virtual {v0, v10, v6}, Ld1/a0;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    move-wide/from16 v31, v6

    :goto_4
    shr-long v6, v31, v24

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_1
    move/from16 v6, v24

    if-ne v11, v6, :cond_4

    :cond_2
    if-eq v2, v9, :cond_4

    add-int/lit8 v2, v2, 0x1

    move/from16 v12, v28

    move-object/from16 v11, v29

    const/16 v24, 0x8

    goto :goto_2

    :cond_3
    move-object/from16 v25, v2

    move-wide/from16 v26, v6

    move/from16 v28, v12

    :cond_4
    if-nez v28, :cond_5

    invoke-virtual {v1, v4}, Lk/m0;->l(I)Ljava/lang/Object;

    :cond_5
    const/16 v6, 0x8

    goto :goto_5

    :cond_6
    move-object/from16 v25, v2

    move-wide/from16 v26, v6

    move/from16 v16, v10

    move-wide/from16 v20, v11

    move v6, v9

    :goto_5
    shr-long v9, v26, v6

    add-int/lit8 v13, v13, 0x1

    move-wide v11, v9

    move v9, v6

    move-wide v6, v11

    move/from16 v10, v16

    move-wide/from16 v11, v20

    move-object/from16 v2, v25

    goto/16 :goto_1

    :cond_7
    move-object/from16 v25, v2

    move v6, v9

    if-ne v8, v6, :cond_9

    goto :goto_6

    :cond_8
    move-object/from16 v25, v2

    :goto_6
    if-eq v5, v3, :cond_9

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v25

    goto/16 :goto_0

    :cond_9
    return-void
.end method
