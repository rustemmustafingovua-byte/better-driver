.class public Lcom/graphhopper/util/RamerDouglasPeucker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private approx:Z

.field private calc:Lcom/graphhopper/util/DistanceCalc;

.field private elevationMaxDistance:D

.field private maxDistance:D

.field private normedMaxDist:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/RamerDouglasPeucker;->setApproximation(Z)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/util/RamerDouglasPeucker;->setMaxDistance(D)Lcom/graphhopper/util/RamerDouglasPeucker;

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/util/RamerDouglasPeucker;->setElevationMaxDistance(D)Lcom/graphhopper/util/RamerDouglasPeucker;

    return-void
.end method

.method public static removeNaN(Lcom/graphhopper/util/PointList;)V
    .locals 9

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v3

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v5

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/graphhopper/util/PointList;->set(IDDD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move-object v1, p0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object p0, v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    invoke-virtual {v1, v2}, Lcom/graphhopper/util/PointList;->trimToSize(I)V

    return-void
.end method


# virtual methods
.method public setApproximation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/util/RamerDouglasPeucker;->approx:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    iput-object p1, p0, Lcom/graphhopper/util/RamerDouglasPeucker;->calc:Lcom/graphhopper/util/DistanceCalc;

    return-void

    :cond_0
    sget-object p1, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    iput-object p1, p0, Lcom/graphhopper/util/RamerDouglasPeucker;->calc:Lcom/graphhopper/util/DistanceCalc;

    return-void
.end method

.method public setElevationMaxDistance(D)Lcom/graphhopper/util/RamerDouglasPeucker;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/util/RamerDouglasPeucker;->elevationMaxDistance:D

    return-object p0
.end method

.method public setMaxDistance(D)Lcom/graphhopper/util/RamerDouglasPeucker;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/util/RamerDouglasPeucker;->calc:Lcom/graphhopper/util/DistanceCalc;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedDist(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/util/RamerDouglasPeucker;->normedMaxDist:D

    iput-wide p1, p0, Lcom/graphhopper/util/RamerDouglasPeucker;->maxDistance:D

    return-object p0
.end method

.method public simplify(Lcom/graphhopper/util/PointList;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/graphhopper/util/RamerDouglasPeucker;->simplify(Lcom/graphhopper/util/PointList;II)I

    move-result p0

    return p0
.end method

.method public simplify(Lcom/graphhopper/util/PointList;II)I
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/graphhopper/util/RamerDouglasPeucker;->simplify(Lcom/graphhopper/util/PointList;IIZ)I

    move-result p0

    return p0
.end method

.method public simplify(Lcom/graphhopper/util/PointList;IIZ)I
    .locals 5

    sub-int v0, p3, p2

    .line 3
    iget-boolean v1, p0, Lcom/graphhopper/util/RamerDouglasPeucker;->approx:Z

    if-eqz v1, :cond_0

    .line 4
    div-int/lit16 v0, v0, 0x1f4

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit16 v3, p2, 0x1f4

    .line 5
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, p1, p2, v4}, Lcom/graphhopper/util/RamerDouglasPeucker;->subSimplify(Lcom/graphhopper/util/PointList;II)I

    move-result p2

    add-int/2addr v2, p2

    add-int/lit8 v1, v1, 0x1

    move p2, v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/util/RamerDouglasPeucker;->subSimplify(Lcom/graphhopper/util/PointList;II)I

    move-result v2

    :cond_1
    if-lez v2, :cond_2

    if-eqz p4, :cond_2

    .line 7
    invoke-static {p1}, Lcom/graphhopper/util/RamerDouglasPeucker;->removeNaN(Lcom/graphhopper/util/PointList;)V

    :cond_2
    return v2
.end method

.method public subSimplify(Lcom/graphhopper/util/PointList;II)I
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v8, p3

    sub-int v3, v8, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    return v5

    :cond_0
    iget-wide v3, v0, Lcom/graphhopper/util/RamerDouglasPeucker;->maxDistance:D

    iget-wide v6, v0, Lcom/graphhopper/util/RamerDouglasPeucker;->elevationMaxDistance:D

    div-double/2addr v3, v6

    invoke-virtual/range {p1 .. p2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v14

    invoke-virtual/range {p1 .. p2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v16

    invoke-virtual/range {p1 .. p2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v6

    invoke-virtual {v1, v8}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v18

    invoke-virtual {v1, v8}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v20

    invoke-virtual {v1, v8}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v28

    add-int/lit8 v30, v2, 0x1

    const/4 v9, -0x1

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    move-wide/from16 v31, v10

    move/from16 v10, v30

    :goto_0
    if-ge v10, v8, :cond_4

    invoke-virtual {v1, v10}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-eqz v13, :cond_1

    move-wide/from16 v34, v6

    move v6, v9

    move v5, v10

    goto/16 :goto_2

    :cond_1
    move-wide/from16 v22, v11

    invoke-virtual {v1, v10}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v12

    invoke-virtual {v1, v10}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v24

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v11

    move-wide/from16 v34, v6

    if-eqz v11, :cond_2

    iget-wide v5, v0, Lcom/graphhopper/util/RamerDouglasPeucker;->elevationMaxDistance:D

    const-wide v26, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v5, v5, v26

    if-gez v5, :cond_2

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v9

    iget-object v9, v0, Lcom/graphhopper/util/RamerDouglasPeucker;->calc:Lcom/graphhopper/util/DistanceCalc;

    mul-double v24, v24, v3

    mul-double v6, v34, v3

    mul-double v26, v28, v3

    move-wide/from16 v36, v6

    move v6, v5

    move v5, v10

    move-wide/from16 v10, v22

    move-wide/from16 v22, v18

    move-wide/from16 v18, v16

    move-wide/from16 v16, v14

    move-wide/from16 v14, v24

    move-wide/from16 v24, v20

    move-wide/from16 v20, v36

    invoke-interface/range {v9 .. v27}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedEdgeDistance3D(DDDDDDDDD)D

    move-result-wide v9

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v22

    move-wide/from16 v20, v24

    goto :goto_1

    :cond_2
    move v6, v9

    move v5, v10

    move-wide/from16 v10, v22

    iget-object v9, v0, Lcom/graphhopper/util/RamerDouglasPeucker;->calc:Lcom/graphhopper/util/DistanceCalc;

    invoke-interface/range {v9 .. v21}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedEdgeDistance(DDDDDD)D

    move-result-wide v9

    :goto_1
    cmpg-double v7, v31, v9

    if-gez v7, :cond_3

    move-wide/from16 v31, v9

    move v9, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v6

    :goto_3
    add-int/lit8 v10, v5, 0x1

    move-wide/from16 v6, v34

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    move v6, v9

    if-ltz v6, :cond_7

    iget-wide v3, v0, Lcom/graphhopper/util/RamerDouglasPeucker;->normedMaxDist:D

    cmpg-double v3, v31, v3

    if-gez v3, :cond_6

    move/from16 v1, v30

    const/16 v33, 0x0

    :goto_4
    if-ge v1, v8, :cond_5

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/graphhopper/util/PointList;->set(IDDD)V

    move/from16 v30, v1

    move-object v1, v0

    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v0, v30, 0x1

    move v1, v0

    goto :goto_4

    :cond_5
    return v33

    :cond_6
    invoke-virtual {v0, v1, v2, v6}, Lcom/graphhopper/util/RamerDouglasPeucker;->subSimplify(Lcom/graphhopper/util/PointList;II)I

    move-result v2

    invoke-virtual {v0, v1, v6, v8}, Lcom/graphhopper/util/RamerDouglasPeucker;->subSimplify(Lcom/graphhopper/util/PointList;II)I

    move-result v0

    add-int/2addr v0, v2

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ","

    const-string v3, "]"

    const-string v4, "maximum not found in ["

    invoke-static {v4, v2, v1, v8, v3}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
