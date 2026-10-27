.class public Lcom/graphhopper/reader/dem/EdgeSampling;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GREAT_CIRCLE_SEGMENT_LENGTH:D = 27798.73166113968


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sample(Lcom/graphhopper/util/PointList;DLcom/graphhopper/util/DistanceCalc;Lcom/graphhopper/reader/dem/ElevationProvider;)Lcom/graphhopper/util/PointList;
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Lcom/graphhopper/util/PointList;

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v2

    invoke-virtual {v0, v9}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v4

    invoke-virtual {v0, v9}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v6

    move-wide v11, v2

    move-wide v15, v4

    move v2, v9

    :goto_0
    if-ge v2, v8, :cond_7

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v17

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v19

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v21

    if-lez v2, :cond_6

    move-object/from16 v10, p3

    move-wide v13, v15

    move-wide v15, v6

    invoke-interface/range {v10 .. v22}, Lcom/graphhopper/util/DistanceCalc;->calcDist3D(DDDDDD)D

    move-result-wide v3

    move-wide/from16 v5, v19

    div-double v15, v3, p1

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    const-wide v15, 0x40db25aed3893eacL    # 27798.73166113968

    cmpl-double v3, v3, v15

    const/4 v4, 0x1

    move-object/from16 v10, p3

    if-gtz v3, :cond_2

    invoke-interface {v10, v13, v14, v5, v6}, Lcom/graphhopper/util/DistanceCalc;->isCrossBoundary(DD)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v23, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v23, v4

    :goto_2
    move v3, v4

    :goto_3
    if-ge v3, v9, :cond_5

    move-object v4, v1

    int-to-double v0, v3

    move-wide v15, v0

    int-to-double v0, v9

    div-double v0, v15, v0

    if-eqz v23, :cond_3

    move-wide/from16 v19, v5

    move-wide v15, v13

    move-wide v13, v11

    move-wide v11, v0

    invoke-interface/range {v10 .. v20}, Lcom/graphhopper/util/DistanceCalc;->intermediatePoint(DDDDD)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v0

    move-wide v11, v13

    move-wide v5, v15

    invoke-virtual {v0}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v13

    invoke-virtual {v0}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v0

    move-wide/from16 v24, v17

    move-wide/from16 v26, v5

    move v5, v2

    move v6, v3

    move-wide v2, v13

    move-wide/from16 v13, v26

    :goto_4
    move-object/from16 v10, p4

    goto :goto_5

    :cond_3
    move-wide/from16 v19, v5

    move-wide v5, v13

    move-wide v14, v0

    move-wide v12, v11

    move-wide/from16 v10, v17

    move-wide/from16 v16, v12

    invoke-static/range {v10 .. v17}, Lm/a;->b(DDDD)D

    move-result-wide v0

    move-wide/from16 v24, v10

    move-wide v11, v12

    move-wide/from16 v16, v19

    move-wide/from16 v19, v5

    move-wide/from16 v26, v16

    move-wide/from16 v17, v14

    move-wide/from16 v13, v26

    move-wide v15, v5

    invoke-static/range {v13 .. v20}, Lm/a;->b(DDDD)D

    move-result-wide v5

    move-wide/from16 v19, v13

    move-wide v13, v15

    move-wide/from16 v26, v5

    move v5, v2

    move v6, v3

    move-wide v2, v0

    move-wide/from16 v0, v26

    goto :goto_4

    :goto_5
    invoke-interface {v10, v2, v3, v0, v1}, Lcom/graphhopper/reader/dem/ElevationProvider;->getEle(DD)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_4

    move-wide/from16 v26, v15

    move v15, v6

    move-wide/from16 v6, v26

    move-wide/from16 v26, v0

    move-object v1, v4

    move v0, v5

    move-wide/from16 v4, v26

    invoke-virtual/range {v1 .. v7}, Lcom/graphhopper/util/PointList;->add(DDD)V

    goto :goto_6

    :cond_4
    move-object v1, v4

    move v0, v5

    move v15, v6

    :goto_6
    add-int/lit8 v3, v15, 0x1

    move-object/from16 v10, p3

    move v2, v0

    move-wide/from16 v5, v19

    move-wide/from16 v17, v24

    move-object/from16 v0, p0

    goto :goto_3

    :cond_5
    move-wide v4, v5

    :goto_7
    move-object/from16 v10, p4

    move v0, v2

    move-wide/from16 v2, v17

    move-wide/from16 v6, v21

    goto :goto_8

    :cond_6
    move-wide/from16 v4, v19

    goto :goto_7

    :goto_8
    invoke-virtual/range {v1 .. v7}, Lcom/graphhopper/util/PointList;->add(DDD)V

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    add-int/lit8 v2, v0, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v11, v17

    move-wide/from16 v15, v19

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_7
    :goto_9
    return-object v1
.end method
