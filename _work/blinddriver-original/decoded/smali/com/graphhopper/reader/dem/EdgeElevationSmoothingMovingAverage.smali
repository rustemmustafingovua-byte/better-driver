.class public Lcom/graphhopper/reader/dem/EdgeElevationSmoothingMovingAverage;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/util/PointList;Ln5/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/dem/EdgeElevationSmoothingMovingAverage;->lambda$smooth$0(Lcom/graphhopper/util/PointList;Ln5/b;)V

    return-void
.end method

.method private static synthetic lambda$smooth$0(Lcom/graphhopper/util/PointList;Ln5/b;)V
    .locals 3

    iget v0, p1, Ln5/b;->b:I

    iget-wide v1, p1, Ln5/b;->c:D

    invoke-virtual {p0, v0, v1, v2}, Lcom/graphhopper/util/PointList;->setElevation(ID)V

    return-void
.end method

.method public static smooth(Lcom/graphhopper/util/PointList;D)V
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    new-array v1, v1, [D

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-gt v4, v5, :cond_1

    sget-object v6, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {v0, v4}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v7

    invoke-virtual {v0, v4}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v9

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v11

    invoke-virtual {v0, v5}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v13

    invoke-virtual/range {v6 .. v14}, Lcom/graphhopper/util/DistancePlaneProjection;->calcDist(DDDD)D

    move-result-wide v6

    aput-wide v6, v1, v4

    move v4, v5

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/carrotsearch/hppc/a0;

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x3

    invoke-static {}, Lcom/carrotsearch/hppc/t;->b()Lcom/carrotsearch/hppc/u;

    move-result-object v6

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v6, v4, Lcom/carrotsearch/hppc/a0;->s:Lcom/carrotsearch/hppc/u;

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    invoke-static {v6, v7}, Lcom/carrotsearch/hppc/t;->a(D)V

    iget v8, v4, Lcom/carrotsearch/hppc/a0;->q:I

    if-gt v5, v8, :cond_2

    iget-object v8, v4, Lcom/carrotsearch/hppc/a0;->l:[I

    if-nez v8, :cond_4

    :cond_2
    iget-object v8, v4, Lcom/carrotsearch/hppc/a0;->l:[I

    iget-object v9, v4, Lcom/carrotsearch/hppc/a0;->m:[D

    invoke-static {v6, v7, v5}, Lcom/carrotsearch/hppc/t;->d(DI)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/carrotsearch/hppc/a0;->a(I)V

    if-eqz v8, :cond_4

    iget v5, v4, Lcom/carrotsearch/hppc/a0;->o:I

    iget-boolean v10, v4, Lcom/carrotsearch/hppc/a0;->r:Z

    add-int/2addr v5, v10

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v8, v9}, Lcom/carrotsearch/hppc/a0;->g([I[D)V

    :cond_4
    :goto_1
    move v5, v3

    :goto_2
    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    if-gt v5, v8, :cond_12

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v10, p1, v8

    add-int/lit8 v12, v5, -0x1

    const-wide/16 v13, 0x0

    move v15, v12

    move-wide/from16 v16, v13

    :goto_3
    if-ltz v15, :cond_5

    aget-wide v18, v1, v15

    add-double v16, v16, v18

    cmpl-double v18, v16, v10

    if-lez v18, :cond_6

    :cond_5
    move-wide/from16 v18, v8

    move-wide/from16 v8, v16

    goto :goto_4

    :cond_6
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    :goto_4
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    move v10, v5

    move-wide v15, v13

    :goto_5
    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v11

    sub-int/2addr v11, v3

    if-ge v10, v11, :cond_7

    aget-wide v20, v1, v10

    add-double v15, v15, v20

    cmpl-double v11, v15, v8

    if-lez v11, :cond_8

    :cond_7
    move-wide v10, v15

    goto :goto_6

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :goto_6
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    cmpg-double v10, v8, v13

    if-gtz v10, :cond_9

    goto/16 :goto_d

    :cond_9
    move-wide v10, v13

    move-wide v15, v10

    :goto_7
    if-ltz v12, :cond_b

    aget-wide v20, v1, v12

    sub-double v22, v8, v10

    add-double v10, v10, v20

    cmpg-double v17, v22, v20

    if-gez v17, :cond_a

    invoke-virtual {v0, v12}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v10

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v0, v12}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v24

    sub-double v10, v10, v24

    invoke-virtual {v0, v12}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v24

    div-double v20, v22, v20

    mul-double v20, v20, v10

    add-double v20, v20, v24

    invoke-virtual {v0, v12}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v10

    add-double v10, v10, v20

    mul-double v10, v10, v22

    div-double v10, v10, v18

    add-double/2addr v15, v10

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v22

    invoke-virtual {v0, v12}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v24

    add-double v24, v24, v22

    mul-double v24, v24, v20

    div-double v24, v24, v18

    add-double v15, v24, v15

    add-int/lit8 v12, v12, -0x1

    const/4 v2, 0x2

    goto :goto_7

    :cond_b
    :goto_8
    move v2, v5

    :goto_9
    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v10

    sub-int/2addr v10, v3

    if-ge v2, v10, :cond_d

    aget-wide v10, v1, v2

    sub-double v20, v8, v13

    add-double/2addr v13, v10

    cmpg-double v12, v20, v10

    if-gez v12, :cond_c

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v0, v12}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v12

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v22

    sub-double v12, v12, v22

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v22

    div-double v10, v20, v10

    mul-double/2addr v10, v12

    add-double v10, v10, v22

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v12

    add-double/2addr v12, v10

    mul-double v12, v12, v20

    div-double v12, v12, v18

    add-double/2addr v15, v12

    goto :goto_a

    :cond_c
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v0, v12}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v20

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v22

    add-double v22, v22, v20

    mul-double v22, v22, v10

    div-double v22, v22, v18

    add-double v15, v22, v15

    move v2, v12

    goto :goto_9

    :cond_d
    :goto_a
    mul-double v8, v8, v18

    div-double/2addr v15, v8

    iget v2, v4, Lcom/carrotsearch/hppc/a0;->p:I

    if-nez v5, :cond_e

    iput-boolean v3, v4, Lcom/carrotsearch/hppc/a0;->r:Z

    iget-object v8, v4, Lcom/carrotsearch/hppc/a0;->m:[D

    add-int/lit8 v2, v2, 0x1

    aget-wide v9, v8, v2

    aput-wide v15, v8, v2

    goto :goto_d

    :cond_e
    iget-object v8, v4, Lcom/carrotsearch/hppc/a0;->l:[I

    iget v9, v4, Lcom/carrotsearch/hppc/a0;->n:I

    xor-int/2addr v9, v5

    invoke-static {v9}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result v9

    :goto_b
    and-int/2addr v9, v2

    aget v10, v8, v9

    if-eqz v10, :cond_10

    if-ne v10, v5, :cond_f

    iget-object v2, v4, Lcom/carrotsearch/hppc/a0;->m:[D

    aget-wide v10, v2, v9

    aput-wide v15, v2, v9

    goto :goto_d

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_10
    iget v2, v4, Lcom/carrotsearch/hppc/a0;->o:I

    iget v10, v4, Lcom/carrotsearch/hppc/a0;->q:I

    if-ne v2, v10, :cond_11

    iget-object v8, v4, Lcom/carrotsearch/hppc/a0;->l:[I

    iget-object v10, v4, Lcom/carrotsearch/hppc/a0;->m:[D

    iget v11, v4, Lcom/carrotsearch/hppc/a0;->p:I

    add-int/2addr v11, v3

    iget-boolean v12, v4, Lcom/carrotsearch/hppc/a0;->r:Z

    add-int/2addr v2, v12

    invoke-static {v11, v6, v7, v2}, Lcom/carrotsearch/hppc/t;->i(IDI)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/carrotsearch/hppc/a0;->a(I)V

    aput v5, v8, v9

    aput-wide v15, v10, v9

    invoke-virtual {v4, v8, v10}, Lcom/carrotsearch/hppc/a0;->g([I[D)V

    goto :goto_c

    :cond_11
    aput v5, v8, v9

    iget-object v2, v4, Lcom/carrotsearch/hppc/a0;->m:[D

    aput-wide v15, v2, v9

    :goto_c
    iget v2, v4, Lcom/carrotsearch/hppc/a0;->o:I

    add-int/2addr v2, v3

    iput v2, v4, Lcom/carrotsearch/hppc/a0;->o:I

    :goto_d
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_12
    new-instance v1, Lcom/graphhopper/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/graphhopper/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {v4, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
