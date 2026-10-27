.class public Lcom/graphhopper/reader/dem/ElevationInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EPSILON:D = 1.0E-5

.field public static final EPSILON2:D = 1.0000000000000002E-10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateElevationBasedOnPointList(DDLcom/graphhopper/util/PointList;)D
    .locals 25

    move-object/from16 v0, p5

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v10

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v12

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v14

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v16

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v18

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v20

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v21}, Lcom/graphhopper/reader/dem/ElevationInterpolator;->calculateElevationBasedOnTwoPoints(DDDDDDDD)D

    move-result-wide v0

    return-wide v0

    :cond_1
    const/4 v5, 0x3

    if-ne v1, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v7

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v9

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v11

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v13

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v15

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v17

    invoke-virtual {v0, v4}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v19

    invoke-virtual {v0, v4}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v21

    invoke-virtual {v0, v4}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v23

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-virtual/range {v2 .. v24}, Lcom/graphhopper/reader/dem/ElevationInterpolator;->calculateElevationBasedOnThreePoints(DDDDDDDDDDD)D

    move-result-wide v0

    return-wide v0

    :cond_2
    new-array v3, v1, [D

    new-array v4, v1, [D

    const-wide/16 v5, 0x0

    move v7, v2

    move-wide v8, v5

    :goto_0
    if-ge v7, v1, :cond_4

    invoke-virtual {v0, v7}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v10

    invoke-virtual {v0, v7}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v12

    sub-double v10, v10, p1

    sub-double v12, v12, p3

    mul-double/2addr v10, v10

    mul-double/2addr v12, v12

    add-double/2addr v12, v10

    invoke-virtual {v0, v7}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v10

    aput-wide v10, v4, v7

    const-wide v14, 0x3ddb7cdfd9d7bdbcL    # 1.0000000000000002E-10

    cmpg-double v14, v12, v14

    if-gez v14, :cond_3

    return-wide v10

    :cond_3
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v12

    aput-wide v10, v3, v7

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ge v2, v1, :cond_5

    aget-wide v10, v4, v2

    aget-wide v12, v3, v2

    mul-double/2addr v10, v12

    div-double/2addr v10, v8

    add-double/2addr v5, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->round2(D)D

    move-result-wide v0

    return-wide v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one point is required in the pointList."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public calculateElevationBasedOnThreePoints(DDDDDDDDDDD)D
    .locals 35

    sub-double v0, p11, p5

    sub-double v2, p13, p7

    sub-double v4, p15, p9

    sub-double v6, p17, p5

    sub-double v8, p19, p7

    sub-double v10, p21, p9

    mul-double v12, v2, v10

    mul-double v14, v4, v8

    sub-double/2addr v12, v14

    mul-double v14, v4, v6

    mul-double v16, v0, v10

    sub-double v14, v14, v16

    mul-double v16, v0, v8

    mul-double v18, v2, v6

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide v20, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v18, v18, v20

    if-gez v18, :cond_2

    sub-double v12, p17, p11

    sub-double v14, p19, p13

    sub-double v16, p21, p15

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v2, v0

    mul-double/2addr v4, v4

    add-double/2addr v4, v2

    mul-double/2addr v6, v6

    mul-double/2addr v8, v8

    add-double/2addr v8, v6

    mul-double/2addr v10, v10

    add-double/2addr v10, v8

    mul-double/2addr v12, v12

    mul-double/2addr v14, v14

    add-double/2addr v14, v12

    mul-double v16, v16, v16

    add-double v16, v16, v14

    cmpl-double v0, v16, v4

    if-lez v0, :cond_0

    cmpl-double v0, v16, v10

    if-lez v0, :cond_0

    move-object/from16 v18, p0

    move-wide/from16 v19, p1

    move-wide/from16 v21, p3

    move-wide/from16 v23, p11

    move-wide/from16 v25, p13

    move-wide/from16 v27, p15

    move-wide/from16 v29, p17

    move-wide/from16 v31, p19

    move-wide/from16 v33, p21

    invoke-virtual/range {v18 .. v34}, Lcom/graphhopper/reader/dem/ElevationInterpolator;->calculateElevationBasedOnTwoPoints(DDDDDDDD)D

    move-result-wide v0

    return-wide v0

    :cond_0
    cmpl-double v0, v10, v4

    if-lez v0, :cond_1

    cmpl-double v0, v10, v16

    if-lez v0, :cond_1

    move-object/from16 v18, p0

    move-wide/from16 v19, p1

    move-wide/from16 v21, p3

    move-wide/from16 v23, p5

    move-wide/from16 v25, p7

    move-wide/from16 v27, p9

    move-wide/from16 v29, p17

    move-wide/from16 v31, p19

    move-wide/from16 v33, p21

    invoke-virtual/range {v18 .. v34}, Lcom/graphhopper/reader/dem/ElevationInterpolator;->calculateElevationBasedOnTwoPoints(DDDDDDDD)D

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual/range {p0 .. p16}, Lcom/graphhopper/reader/dem/ElevationInterpolator;->calculateElevationBasedOnTwoPoints(DDDDDDDD)D

    move-result-wide v0

    return-wide v0

    :cond_2
    mul-double v0, v12, p5

    mul-double v2, v14, p7

    add-double/2addr v2, v0

    mul-double v0, v16, p9

    add-double/2addr v0, v2

    mul-double v12, v12, p1

    sub-double/2addr v0, v12

    mul-double v14, v14, p3

    sub-double/2addr v0, v14

    div-double v0, v0, v16

    invoke-static {v0, v1}, Lcom/graphhopper/util/Helper;->round2(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public calculateElevationBasedOnTwoPoints(DDDDDDDD)D
    .locals 2

    sub-double/2addr p5, p1

    sub-double v0, p7, p3

    sub-double p0, p11, p1

    sub-double p2, p13, p3

    mul-double/2addr v0, v0

    mul-double/2addr p5, p5

    add-double/2addr p5, v0

    invoke-static {p5, p6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    mul-double/2addr p2, p2

    mul-double/2addr p0, p0

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    add-double p2, p4, p0

    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double p6, p2, v0

    if-gez p6, :cond_1

    cmpg-double p0, p4, p0

    if-gtz p0, :cond_0

    return-wide p9

    :cond_0
    return-wide p15

    :cond_1
    sub-double p0, p15, p9

    mul-double/2addr p0, p4

    div-double/2addr p0, p2

    add-double/2addr p0, p9

    invoke-static {p0, p1}, Lcom/graphhopper/util/Helper;->round2(D)D

    move-result-wide p0

    return-wide p0
.end method
