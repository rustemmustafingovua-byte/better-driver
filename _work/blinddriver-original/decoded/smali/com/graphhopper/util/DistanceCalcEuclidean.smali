.class public Lcom/graphhopper/util/DistanceCalcEuclidean;
.super Lcom/graphhopper/util/DistanceCalcEarth;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/util/DistanceCalcEarth;-><init>()V

    return-void
.end method


# virtual methods
.method public calcCircumference(D)D
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported for the 2D Euclidean space"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public calcDenormalizedDist(D)D
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcDist(DDDD)D
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lcom/graphhopper/util/DistanceCalcEuclidean;->calcNormalizedDist(DDDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcDist3D(DDDDDD)D
    .locals 9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/util/DistanceCalcEuclidean;->calcNormalizedDist(DDDD)D

    move-result-wide p1

    sub-double p3, p11, p5

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/util/DistanceCalcEuclidean;->calcNormalizedDist(D)D

    move-result-wide p3

    add-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcNormalizedDist(D)D
    .locals 0

    .line 1
    mul-double/2addr p1, p1

    return-wide p1
.end method

.method public calcNormalizedDist(DDDD)D
    .locals 0

    .line 2
    sub-double/2addr p3, p7

    sub-double/2addr p1, p5

    mul-double/2addr p3, p3

    mul-double/2addr p1, p1

    add-double/2addr p1, p3

    return-wide p1
.end method

.method public calcNormalizedEdgeDistance(DDDDDD)D
    .locals 21

    const-wide/16 v13, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v15, p9

    move-wide/from16 v17, p11

    invoke-virtual/range {v2 .. v20}, Lcom/graphhopper/util/DistanceCalcEuclidean;->calcNormalizedEdgeDistance3D(DDDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public calcNormalizedEdgeDistance3D(DDDDDDDDD)D
    .locals 14

    sub-double v0, p15, p9

    sub-double v6, p13, p7

    sub-double v10, p17, p11

    mul-double v2, v0, v0

    mul-double v4, v6, v6

    add-double/2addr v4, v2

    mul-double v2, v10, v10

    add-double v12, v2, v4

    sub-double v2, p3, p9

    mul-double v8, v2, v0

    move-wide v2, p1

    move-wide/from16 v4, p7

    invoke-static/range {v2 .. v9}, Lm/a;->b(DDDD)D

    move-result-wide v8

    sub-double v2, p5, p11

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    div-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    mul-double/2addr v0, v2

    add-double v0, v0, p9

    mul-double/2addr v6, v2

    add-double v6, v6, p7

    mul-double/2addr v2, v10

    add-double v2, v2, p11

    sub-double v0, v0, p3

    sub-double/2addr v6, p1

    sub-double v2, v2, p5

    mul-double/2addr v0, v0

    mul-double/2addr v6, v6

    add-double/2addr v6, v0

    mul-double/2addr v2, v2

    add-double/2addr v2, v6

    return-wide v2
.end method

.method public calcShrinkFactor(DD)D
    .locals 0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method

.method public createBBox(DDD)Lcom/graphhopper/util/shapes/BBox;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported for the 2D Euclidean space"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public intermediatePoint(DDDDD)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 0

    sub-double/2addr p7, p3

    sub-double/2addr p9, p5

    mul-double/2addr p7, p1

    add-double/2addr p7, p3

    mul-double/2addr p9, p1

    add-double/2addr p9, p5

    new-instance p0, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-direct {p0, p7, p8, p9, p10}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object p0
.end method

.method public isCrossBoundary(DD)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported for the 2D Euclidean space"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDateLineCrossOver(DD)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported for the 2D Euclidean space"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public projectCoordinate(DDDD)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported for the 2D Euclidean space"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "2D"

    return-object p0
.end method
