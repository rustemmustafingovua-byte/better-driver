.class public final Lxb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public final b:I

.field public c:I

.field public final d:Lpb/h;

.field public e:[I

.field public f:[D

.field public g:[D

.field public h:[Ljava/lang/Object;

.field public volatile i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxb/a;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lxb/a;->c:I

    new-instance v1, Lpb/h;

    invoke-direct {v1}, Lpb/h;-><init>()V

    iput-object v1, p0, Lxb/a;->d:Lpb/h;

    iput-boolean v0, p0, Lxb/a;->i:Z

    const/16 v0, 0x10

    iput v0, p0, Lxb/a;->b:I

    return-void
.end method

.method public static b([DILpb/h;)Z
    .locals 6

    iget-wide v0, p2, Lpb/h;->m:D

    aget-wide v2, p0, p1

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    iget-wide v2, p2, Lpb/h;->o:D

    add-int/lit8 v0, p1, 0x1

    aget-wide v4, p0, v0

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_1

    iget-wide v2, p2, Lpb/h;->l:D

    add-int/lit8 v0, p1, 0x2

    aget-wide v4, p0, v0

    cmpl-double v0, v2, v4

    if-gtz v0, :cond_1

    iget-wide v2, p2, Lpb/h;->n:D

    add-int/lit8 p1, p1, 0x3

    aget-wide p0, p0, p1

    cmpl-double p0, v2, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    xor-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lxb/a;->i:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lxb/a;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lxb/a;->c()V

    invoke-virtual {p0}, Lxb/a;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxb/a;->i:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 50

    move-object/from16 v0, p0

    iget-object v1, v0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v10, v0, Lxb/a;->b:I

    if-gt v1, v10, :cond_0

    goto/16 :goto_11

    :cond_0
    const/16 v1, 0xc

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    iget-object v2, v0, Lxb/a;->d:Lpb/h;

    iget-wide v5, v2, Lpb/h;->l:D

    invoke-virtual {v2}, Lpb/h;->i()Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/16 v12, 0x0

    goto :goto_0

    :cond_1
    iget-wide v12, v2, Lpb/h;->m:D

    iget-wide v14, v2, Lpb/h;->l:D

    sub-double/2addr v12, v14

    :goto_0
    int-to-double v14, v1

    div-double/2addr v12, v14

    move-wide/from16 v16, v3

    iget-wide v3, v2, Lpb/h;->n:D

    invoke-virtual {v2}, Lpb/h;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v8, 0x0

    goto :goto_1

    :cond_2
    iget-wide v8, v2, Lpb/h;->o:D

    iget-wide v1, v2, Lpb/h;->n:D

    sub-double/2addr v8, v1

    :goto_1
    div-double/2addr v8, v14

    iget-object v1, v0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, v0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v19, v11

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    const/16 v20, 0x2

    const/16 v21, 0x4

    if-ge v11, v7, :cond_5

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v14, v22

    check-cast v14, Lxb/b;

    add-int/lit8 v22, v15, 0x1

    iget-object v14, v14, Lxb/b;->a:Lpb/h;

    invoke-virtual {v14}, Lpb/h;->i()Z

    move-result v23

    if-eqz v23, :cond_3

    move-wide/from16 v23, v3

    move-object v4, v2

    const-wide/16 v2, 0x0

    goto :goto_3

    :cond_3
    move-wide/from16 v23, v3

    move-object v4, v2

    iget-wide v2, v14, Lpb/h;->m:D

    move-wide/from16 v25, v2

    iget-wide v2, v14, Lpb/h;->l:D

    sub-double v2, v25, v2

    :goto_3
    div-double v2, v2, v16

    move-wide/from16 v25, v2

    iget-wide v2, v14, Lpb/h;->l:D

    add-double v2, v25, v2

    sub-double/2addr v2, v5

    div-double/2addr v2, v12

    double-to-int v2, v2

    invoke-virtual {v14}, Lpb/h;->i()Z

    move-result v3

    if-eqz v3, :cond_4

    move/from16 v25, v2

    const-wide/16 v2, 0x0

    goto :goto_4

    :cond_4
    move/from16 v25, v2

    iget-wide v2, v14, Lpb/h;->o:D

    move-wide/from16 v26, v2

    iget-wide v2, v14, Lpb/h;->n:D

    sub-double v2, v26, v2

    :goto_4
    div-double v2, v2, v16

    move-wide/from16 v26, v2

    iget-wide v2, v14, Lpb/h;->n:D

    add-double v2, v26, v2

    sub-double v2, v2, v23

    div-double/2addr v2, v8

    double-to-int v2, v2

    shl-int/lit8 v3, v25, 0x4

    shl-int/lit8 v14, v2, 0x4

    move/from16 v26, v2

    xor-int v2, v3, v14

    move/from16 v27, v3

    int-to-long v2, v2

    const-wide/32 v28, 0xffff

    xor-long v30, v2, v28

    or-int v25, v25, v26

    shl-int/lit8 v25, v25, 0x4

    const v26, 0xffff

    move-wide/from16 v32, v2

    xor-int v2, v25, v26

    int-to-long v2, v2

    xor-int v14, v14, v26

    and-int v14, v27, v14

    move-wide/from16 v25, v2

    int-to-long v2, v14

    shr-long v34, v30, v19

    or-long v34, v32, v34

    shr-long v36, v32, v19

    xor-long v36, v36, v32

    shr-long v38, v25, v19

    shr-long v40, v2, v19

    and-long v30, v30, v40

    xor-long v30, v38, v30

    xor-long v25, v30, v25

    and-long v30, v32, v38

    xor-long v30, v30, v40

    xor-long v2, v30, v2

    shr-long v30, v34, v20

    and-long v30, v34, v30

    shr-long v38, v36, v20

    and-long v40, v36, v38

    xor-long v30, v30, v40

    and-long v38, v34, v38

    xor-long v40, v34, v36

    shr-long v42, v40, v20

    and-long v42, v36, v42

    xor-long v38, v38, v42

    shr-long v42, v25, v20

    and-long v34, v34, v42

    shr-long v44, v2, v20

    and-long v46, v36, v44

    xor-long v34, v34, v46

    xor-long v25, v25, v34

    and-long v34, v36, v42

    and-long v36, v40, v44

    xor-long v34, v34, v36

    xor-long v2, v2, v34

    shr-long v34, v30, v21

    and-long v34, v30, v34

    shr-long v36, v38, v21

    and-long v40, v38, v36

    xor-long v34, v34, v40

    and-long v36, v30, v36

    xor-long v40, v30, v38

    shr-long v42, v40, v21

    and-long v42, v38, v42

    xor-long v36, v36, v42

    shr-long v42, v25, v21

    and-long v30, v30, v42

    shr-long v44, v2, v21

    and-long v46, v38, v44

    xor-long v30, v30, v46

    xor-long v25, v25, v30

    and-long v30, v38, v42

    and-long v38, v40, v44

    xor-long v30, v30, v38

    xor-long v2, v2, v30

    const/16 v14, 0x8

    shr-long v30, v25, v14

    and-long v38, v34, v30

    shr-long v40, v2, v14

    and-long v42, v36, v40

    xor-long v38, v38, v42

    xor-long v25, v25, v38

    and-long v30, v36, v30

    xor-long v34, v34, v36

    and-long v34, v34, v40

    xor-long v30, v30, v34

    xor-long v2, v2, v30

    shr-long v30, v25, v19

    xor-long v25, v25, v30

    shr-long v30, v2, v19

    xor-long v2, v2, v30

    or-long v25, v32, v25

    xor-long v25, v25, v28

    or-long v2, v2, v25

    shl-long v25, v32, v14

    or-long v25, v32, v25

    const-wide/32 v27, 0xff00ff

    and-long v25, v25, v27

    shl-long v29, v25, v21

    or-long v25, v25, v29

    const-wide/32 v29, 0xf0f0f0f

    and-long v25, v25, v29

    shl-long v31, v25, v20

    or-long v25, v25, v31

    const-wide/32 v31, 0x33333333

    and-long v25, v25, v31

    shl-long v33, v25, v19

    or-long v25, v25, v33

    const-wide/32 v33, 0x55555555

    and-long v25, v25, v33

    shl-long v35, v2, v14

    or-long v2, v2, v35

    and-long v2, v2, v27

    shl-long v27, v2, v21

    or-long v2, v2, v27

    and-long v2, v2, v29

    shl-long v20, v2, v20

    or-long v2, v2, v20

    and-long v2, v2, v31

    shl-long v20, v2, v19

    or-long v2, v2, v20

    and-long v2, v2, v33

    shl-long v2, v2, v19

    or-long v2, v2, v25

    shr-long/2addr v2, v14

    long-to-int v2, v2

    aput v2, v1, v15

    move-object v2, v4

    move/from16 v15, v22

    move-wide/from16 v3, v23

    goto/16 :goto_2

    :cond_5
    iget-object v2, v0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lxb/a;->g([III)V

    iget v1, v0, Lxb/a;->c:I

    const/16 v2, 0xa

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    add-int/lit8 v5, v4, 0x1

    array-length v6, v2

    if-gt v5, v6, :cond_6

    goto :goto_6

    :cond_6
    array-length v6, v2

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    :goto_6
    aput v3, v2, v4

    div-int v6, v1, v10

    mul-int v7, v6, v10

    if-ne v7, v1, :cond_7

    :goto_7
    move v1, v6

    goto :goto_8

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :goto_8
    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v3, v6

    move/from16 v6, v19

    if-gt v1, v6, :cond_10

    new-array v1, v5, [I

    const/4 v11, 0x0

    invoke-static {v2, v11, v1, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v0, Lxb/a;->e:[I

    aget v1, v1, v4

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v1, 0x4

    new-array v2, v2, [D

    move v3, v11

    :goto_9
    if-ge v3, v1, :cond_8

    mul-int/lit8 v4, v3, 0x4

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    aput-wide v5, v2, v4

    add-int/lit8 v7, v4, 0x1

    aput-wide v5, v2, v7

    add-int/lit8 v5, v4, 0x2

    const-wide v6, -0x10000000000001L

    aput-wide v6, v2, v5

    add-int/lit8 v4, v4, 0x3

    aput-wide v6, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_8
    iput-object v2, v0, Lxb/a;->f:[D

    iget-object v1, v0, Lxb/a;->e:[I

    const/16 v19, 0x1

    aget v12, v1, v19

    move v1, v11

    :goto_a
    if-ge v1, v12, :cond_b

    mul-int v2, v10, v1

    div-int/lit8 v13, v2, 0x4

    move v14, v11

    :goto_b
    if-gt v14, v10, :cond_a

    add-int v2, v13, v14

    iget-object v3, v0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_9

    goto :goto_c

    :cond_9
    iget-object v3, v0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxb/b;

    iget-object v2, v2, Lxb/b;->a:Lpb/h;

    iget-wide v3, v2, Lpb/h;->l:D

    move-wide v6, v3

    iget-wide v4, v2, Lpb/h;->n:D

    move-wide v8, v6

    iget-wide v6, v2, Lpb/h;->m:D

    iget-wide v2, v2, Lpb/h;->o:D

    move-wide/from16 v48, v8

    move-wide v8, v2

    move-wide/from16 v2, v48

    invoke-virtual/range {v0 .. v9}, Lxb/a;->h(IDDDD)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_a
    :goto_c
    add-int/lit8 v1, v1, 0x4

    goto :goto_a

    :cond_b
    const/4 v6, 0x1

    :goto_d
    iget-object v1, v0, Lxb/a;->e:[I

    array-length v2, v1

    const/16 v19, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ge v6, v2, :cond_f

    aget v12, v1, v6

    add-int/lit8 v2, v6, -0x1

    aget v13, v1, v2

    add-int/lit8 v14, v6, 0x1

    aget v1, v1, v14

    sub-int v15, v1, v12

    move v1, v11

    :goto_e
    if-ge v1, v15, :cond_e

    mul-int v2, v10, v1

    add-int v16, v2, v13

    move v2, v1

    add-int v1, v12, v2

    move v3, v11

    :goto_f
    if-gt v3, v10, :cond_c

    mul-int/lit8 v4, v3, 0x4

    add-int v4, v4, v16

    if-lt v4, v12, :cond_d

    :cond_c
    move/from16 v17, v2

    goto :goto_10

    :cond_d
    iget-object v5, v0, Lxb/a;->f:[D

    move v6, v2

    move v7, v3

    aget-wide v2, v5, v4

    add-int/lit8 v8, v4, 0x1

    aget-wide v8, v5, v8

    add-int/lit8 v17, v4, 0x2

    aget-wide v17, v5, v17

    add-int/lit8 v4, v4, 0x3

    aget-wide v4, v5, v4

    move-wide/from16 v48, v8

    move-wide v8, v4

    move-wide/from16 v4, v48

    move-wide/from16 v48, v17

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v6, v48

    invoke-virtual/range {v0 .. v9}, Lxb/a;->h(IDDDD)V

    add-int/lit8 v3, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    goto :goto_f

    :goto_10
    add-int/lit8 v1, v17, 0x4

    move-object/from16 v0, p0

    goto :goto_e

    :cond_e
    move-object/from16 v0, p0

    move v6, v14

    goto :goto_d

    :cond_f
    :goto_11
    return-void

    :cond_10
    move-object/from16 v0, p0

    move v4, v5

    move/from16 v19, v6

    goto/16 :goto_5
.end method

.method public final d()V
    .locals 12

    iget-object v0, p0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [D

    iput-object v0, p0, Lxb/a;->g:[D

    iget-object v0, p0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lxb/a;->h:[Ljava/lang/Object;

    iget-object v0, p0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lxb/b;

    iget-object v6, v5, Lxb/b;->a:Lpb/h;

    iget-object v7, p0, Lxb/a;->g:[D

    add-int/lit8 v8, v2, 0x1

    iget-wide v9, v6, Lpb/h;->l:D

    aput-wide v9, v7, v2

    add-int/lit8 v9, v2, 0x2

    iget-wide v10, v6, Lpb/h;->n:D

    aput-wide v10, v7, v8

    add-int/lit8 v8, v2, 0x3

    iget-wide v10, v6, Lpb/h;->m:D

    aput-wide v10, v7, v9

    add-int/lit8 v2, v2, 0x4

    iget-wide v9, v6, Lpb/h;->o:D

    aput-wide v9, v7, v8

    iget-object v6, p0, Lxb/a;->h:[Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x1

    iget-object v5, v5, Lxb/b;->b:Lwb/a;

    aput-object v5, v6, v3

    move v3, v7

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lxb/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public final e(ILpb/h;Lc5/o;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lxb/a;->b:I

    if-ge v0, v1, :cond_2

    add-int v1, p1, v0

    iget v2, p0, Lxb/a;->c:I

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lxb/a;->g:[D

    mul-int/lit8 v3, v1, 0x4

    invoke-static {v2, v3, p2}, Lxb/a;->b([DILpb/h;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lxb/a;->h:[Ljava/lang/Object;

    aget-object v1, v2, v1

    iget-object v2, p3, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final f(IILpb/h;Lc5/o;)V
    .locals 6

    iget-object v0, p0, Lxb/a;->e:[I

    aget v0, v0, p1

    add-int/2addr v0, p2

    iget-object v1, p0, Lxb/a;->f:[D

    invoke-static {v1, v0, p3}, Lxb/a;->b([DILpb/h;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lxb/a;->b:I

    if-nez p1, :cond_1

    div-int/lit8 p2, p2, 0x4

    mul-int/2addr p2, v0

    invoke-virtual {p0, p2, p3, p4}, Lxb/a;->e(ILpb/h;Lc5/o;)V

    return-void

    :cond_1
    mul-int/2addr p2, v0

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lxb/a;->e:[I

    aget v3, v2, v1

    aget p1, v2, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    mul-int/lit8 v4, v2, 0x4

    add-int/2addr v4, p2

    add-int v5, v3, v4

    if-lt v5, p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v4, p3, p4}, Lxb/a;->f(IILpb/h;Lc5/o;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final g([III)V
    .locals 6

    iget v0, p0, Lxb/a;->b:I

    div-int v1, p2, v0

    div-int v0, p3, v0

    if-ge v1, v0, :cond_3

    add-int v0, p2, p3

    shr-int/lit8 v0, v0, 0x1

    aget v0, p1, v0

    add-int/lit8 v1, p2, -0x1

    add-int/lit8 v2, p3, 0x1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    aget v3, p1, v1

    if-lt v3, v0, :cond_0

    :goto_1
    add-int/lit8 v3, v2, -0x1

    aget v4, p1, v3

    if-gt v4, v0, :cond_2

    if-lt v1, v3, :cond_1

    invoke-virtual {p0, p1, p2, v3}, Lxb/a;->g([III)V

    invoke-virtual {p0, p1, v2, p3}, Lxb/a;->g([III)V

    return-void

    :cond_1
    iget-object v2, p0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxb/b;

    iget-object v4, p0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lxb/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    aget v2, p1, v1

    aget v4, p1, v3

    aput v4, p1, v1

    aput v2, p1, v3

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final h(IDDDD)V
    .locals 2

    iget-object p0, p0, Lxb/a;->f:[D

    aget-wide v0, p0, p1

    cmpg-double v0, p2, v0

    if-gez v0, :cond_0

    aput-wide p2, p0, p1

    :cond_0
    add-int/lit8 p2, p1, 0x1

    aget-wide v0, p0, p2

    cmpg-double p3, p4, v0

    if-gez p3, :cond_1

    aput-wide p4, p0, p2

    :cond_1
    add-int/lit8 p2, p1, 0x2

    aget-wide p3, p0, p2

    cmpl-double p3, p6, p3

    if-lez p3, :cond_2

    aput-wide p6, p0, p2

    :cond_2
    add-int/lit8 p1, p1, 0x3

    aget-wide p2, p0, p1

    cmpl-double p2, p8, p2

    if-lez p2, :cond_3

    aput-wide p8, p0, p1

    :cond_3
    return-void
.end method
