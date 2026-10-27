.class public Lcom/graphhopper/util/DistanceCalcEarth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/DistanceCalc;


# static fields
.field public static final C:D = 4.003017359204114E7

.field public static final DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

.field public static final KM_MILE:D = 1.609344

.field public static final METERS_PER_DEGREE:D = 111194.92664455873

.field public static final R:D = 6371000.0

.field public static final R_EQ:D = 6378137.0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphhopper/util/DistanceCalcEarth;

    invoke-direct {v0}, Lcom/graphhopper/util/DistanceCalcEarth;-><init>()V

    sput-object v0, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcDistance(Lcom/graphhopper/util/PointList;Z)D
    .locals 1

    .line 2
    sget-object v0, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/util/DistanceCalcEarth;->internCalcDistance(Lcom/graphhopper/util/PointList;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method private internCalcDistance(Lcom/graphhopper/util/PointList;Z)D
    .locals 19

    move-object/from16 v0, p1

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v1

    move-wide v9, v7

    move-wide v11, v9

    :goto_0
    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    if-ge v5, v1, :cond_3

    if-lez v5, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0, v5}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v13

    invoke-virtual {v0, v5}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v15

    invoke-virtual {v0, v5}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v17

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v18}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDist3D(DDDDDD)D

    move-result-wide v1

    move-wide v15, v11

    :goto_1
    add-double/2addr v3, v1

    goto :goto_2

    :cond_0
    move-wide v15, v11

    invoke-virtual {v0, v5}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v11

    invoke-virtual {v0, v5}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v13

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v14}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDist(DDDD)D

    move-result-wide v1

    goto :goto_1

    :cond_1
    move-wide v15, v11

    :goto_2
    invoke-virtual {v0, v5}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v7

    invoke-virtual {v0, v5}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v9

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v5}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v1

    move-wide v11, v1

    goto :goto_3

    :cond_2
    move-wide v11, v15

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-wide v3
.end method


# virtual methods
.method public calcCircumference(D)D
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide v0, 0x4183167eecbc8011L    # 4.003017359204114E7

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public calcCrossingPointToEdge(DDDDDD)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 21

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-object/from16 v10, p0

    invoke-virtual {v10, v4, v5, v8, v9}, Lcom/graphhopper/util/DistanceCalcEarth;->calcShrinkFactor(DD)D

    move-result-wide v10

    mul-double v12, v6, v10

    mul-double v14, p11, v10

    mul-double v16, v2, v10

    sub-double/2addr v14, v12

    sub-double/2addr v8, v4

    const-wide/16 v18, 0x0

    cmpl-double v20, v8, v18

    if-nez v20, :cond_0

    new-instance v0, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object v0

    :cond_0
    cmpl-double v2, v14, v18

    if-nez v2, :cond_1

    new-instance v2, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-direct {v2, v0, v1, v6, v7}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object v2

    :cond_1
    mul-double v2, v14, v14

    mul-double v6, v8, v8

    add-double/2addr v6, v2

    sub-double v16, v16, v12

    mul-double v16, v16, v14

    sub-double/2addr v0, v4

    mul-double/2addr v0, v8

    add-double v0, v0, v16

    div-double/2addr v0, v6

    mul-double/2addr v14, v0

    add-double/2addr v14, v12

    mul-double/2addr v0, v8

    add-double/2addr v0, v4

    new-instance v2, Lcom/graphhopper/util/shapes/GHPoint;

    div-double/2addr v14, v10

    invoke-direct {v2, v0, v1, v14, v15}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object v2
.end method

.method public calcDenormalizedDist(D)D
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    const-wide v0, 0x41684dae00000000L    # 1.2742E7

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public calcDist(DDDD)D
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lcom/graphhopper/util/DistanceCalcEarth;->calcNormalizedDist(DDDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    const-wide p2, 0x41684dae00000000L    # 1.2742E7

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public calcDist3D(DDDDDD)D
    .locals 1

    invoke-virtual {p0, p5, p6, p11, p12}, Lcom/graphhopper/util/DistanceCalcEarth;->hasElevationDiff(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-double/2addr p11, p5

    :goto_0
    move-wide p5, p7

    move-wide p7, p9

    goto :goto_1

    :cond_0
    const-wide/16 p11, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p8}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDist(DDDD)D

    move-result-wide p0

    mul-double/2addr p11, p11

    mul-double/2addr p0, p0

    add-double/2addr p0, p11

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcDistance(Lcom/graphhopper/util/PointList;)D
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/util/DistanceCalcEarth;->internCalcDistance(Lcom/graphhopper/util/PointList;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcNormalizedDist(D)D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v0

    const-wide v0, 0x41584dae00000000L    # 6371000.0

    div-double/2addr p1, v0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, p0

    return-wide p0
.end method

.method public calcNormalizedDist(DDDD)D
    .locals 4

    sub-double v0, p5, p1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sub-double/2addr p7, p3

    .line 3
    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    div-double/2addr p3, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double/2addr v0, v0

    mul-double/2addr p3, p3

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, p3

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr p2, p0

    add-double/2addr p2, v0

    return-wide p2
.end method

.method public calcNormalizedEdgeDistance(DDDDDD)D
    .locals 16

    move-wide/from16 v1, p5

    move-wide/from16 v3, p9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/graphhopper/util/DistanceCalcEarth;->calcShrinkFactor(DD)D

    move-result-wide v5

    mul-double v7, p7, v5

    mul-double v9, p11, v5

    mul-double v11, p3, v5

    sub-double/2addr v9, v7

    sub-double/2addr v3, v1

    const-wide/16 v13, 0x0

    cmpl-double v15, v3, v13

    if-nez v15, :cond_0

    move-wide/from16 v7, p3

    move-wide/from16 v5, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/util/DistanceCalcEarth;->calcNormalizedDist(DDDD)D

    move-result-wide v0

    return-wide v0

    :cond_0
    cmpl-double v0, v9, v13

    if-nez v0, :cond_1

    move-wide/from16 v5, p1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v7, p3

    move-wide/from16 v3, p7

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/util/DistanceCalcEarth;->calcNormalizedDist(DDDD)D

    move-result-wide v0

    return-wide v0

    :cond_1
    mul-double v0, v9, v9

    mul-double v13, v3, v3

    add-double/2addr v13, v0

    sub-double/2addr v11, v7

    mul-double/2addr v11, v9

    sub-double v0, p1, p5

    mul-double/2addr v0, v3

    add-double/2addr v0, v11

    div-double/2addr v0, v13

    mul-double/2addr v9, v0

    add-double/2addr v9, v7

    mul-double/2addr v0, v3

    add-double v1, v0, p5

    div-double v3, v9, v5

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/util/DistanceCalcEarth;->calcNormalizedDist(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public calcNormalizedEdgeDistance3D(DDDDDDDDD)D
    .locals 25

    move-object/from16 v0, p0

    move-wide/from16 v5, p7

    move-wide/from16 v9, p13

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static/range {p17 .. p18}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    :goto_0
    move-wide/from16 v7, p9

    move-wide/from16 v11, p15

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0, v5, v6, v9, v10}, Lcom/graphhopper/util/DistanceCalcEarth;->calcShrinkFactor(DD)D

    move-result-wide v1

    mul-double v3, p9, v1

    const-wide v7, 0x40fb25aed3893eacL    # 111194.92664455873

    div-double v11, p11, v7

    mul-double v13, p15, v1

    div-double v15, p17, v7

    mul-double v17, p3, v1

    div-double v19, p5, v7

    sub-double/2addr v13, v3

    sub-double/2addr v9, v5

    sub-double/2addr v15, v11

    mul-double v21, v13, v13

    mul-double v23, v9, v9

    add-double v23, v23, v21

    mul-double v21, v15, v15

    add-double v21, v21, v23

    sub-double v17, v17, v3

    mul-double v17, v17, v13

    move-wide/from16 p9, p1

    move-wide/from16 p11, v5

    move-wide/from16 p13, v9

    move-wide/from16 p15, v17

    invoke-static/range {p9 .. p16}, Lm/a;->b(DDDD)D

    move-result-wide v5

    sub-double v19, v19, v11

    mul-double v19, v19, v15

    add-double v19, v19, v5

    div-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v19, 0x0

    :cond_1
    mul-double v13, v13, v19

    add-double/2addr v13, v3

    mul-double v9, v9, v19

    add-double v9, v9, p7

    mul-double v19, v19, v15

    add-double v19, v19, v11

    mul-double v19, v19, v7

    div-double/2addr v13, v1

    move-wide/from16 p12, p1

    move-wide/from16 p14, p3

    move-object/from16 p7, v0

    move-wide/from16 p8, v9

    move-wide/from16 p10, v13

    invoke-virtual/range {p7 .. p15}, Lcom/graphhopper/util/DistanceCalcEarth;->calcNormalizedDist(DDDD)D

    move-result-wide v0

    move-object/from16 v2, p7

    sub-double v3, p5, v19

    invoke-virtual {v2, v3, v4}, Lcom/graphhopper/util/DistanceCalcEarth;->calcNormalizedDist(D)D

    move-result-wide v2

    add-double/2addr v2, v0

    return-wide v2

    :cond_2
    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p7

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v12}, Lcom/graphhopper/util/DistanceCalcEarth;->calcNormalizedEdgeDistance(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public calcShrinkFactor(DD)D
    .locals 0

    add-double/2addr p1, p3

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public createBBox(DDD)Lcom/graphhopper/util/shapes/BBox;
    .locals 19

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-lez v6, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/graphhopper/util/DistanceCalcEarth;->calcCircumference(D)D

    move-result-wide v6

    div-double/2addr v6, v4

    const-wide v8, 0x4076800000000000L    # 360.0

    div-double v6, v8, v6

    const-wide v10, 0x4183167eecbc8011L    # 4.003017359204114E7

    div-double/2addr v10, v4

    div-double/2addr v8, v10

    new-instance v10, Lcom/graphhopper/util/shapes/BBox;

    sub-double v11, v2, v6

    add-double v13, v2, v6

    sub-double v15, v0, v8

    add-double v17, v0, v8

    invoke-direct/range {v10 .. v18}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    return-object v10

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Distance must not be zero or negative! "

    const-string v8, " lat,lon:"

    invoke-static {v4, v5, v7, v8}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public hasElevationDiff(DD)Z
    .locals 0

    cmpl-double p0, p1, p3

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public intermediatePoint(DDDDD)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 20

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    sub-double v8, v4, v0

    sub-double v10, v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v8

    mul-double v18, v12, v14

    mul-double v18, v18, v10

    mul-double v18, v18, v10

    add-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v18, v10, v18

    move-wide/from16 p7, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    mul-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/16 v16, 0x0

    cmpl-double v16, v8, v16

    if-nez v16, :cond_0

    new-instance v0, Lcom/graphhopper/util/shapes/GHPoint;

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object v0

    :cond_0
    sub-double v16, p7, p1

    mul-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    div-double v16, v16, v10

    mul-double v8, v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double/2addr v8, v10

    mul-double v12, v12, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    mul-double/2addr v14, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v14

    add-double v10, v18, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v14

    add-double/2addr v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    add-double/2addr v2, v0

    mul-double v0, v10, v10

    mul-double v4, v6, v6

    add-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    new-instance v4, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object v4
.end method

.method public isCrossBoundary(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x4072c00000000000L    # 300.0

    cmpl-double p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDateLineCrossOver(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x4066800000000000L    # 180.0

    cmpl-double p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public projectCoordinate(DDDD)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 6

    const-wide v0, 0x41584dae00000000L    # 6371000.0

    div-double/2addr p5, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p7

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-static {p7, p8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-static {p7, p8}, Ljava/lang/Math;->sin(D)D

    move-result-wide p7

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, p7

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p7

    mul-double/2addr p7, v2

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, p0

    sub-double/2addr p4, v2

    invoke-static {p7, p8, p4, p5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    add-double/2addr p0, p2

    const-wide p2, 0x4022d97c7f3321d2L    # 9.42477796076938

    add-double/2addr p0, p2

    const-wide p2, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr p0, p2

    const-wide p2, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    new-instance p4, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-direct {p4, p2, p3, p0, p1}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object p4
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EXACT"

    return-object p0
.end method

.method public validEdgeDistance(DDDDDD)Z
    .locals 14

    move-wide/from16 v0, p5

    move-wide/from16 v2, p9

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/graphhopper/util/DistanceCalcEarth;->calcShrinkFactor(DD)D

    move-result-wide v4

    mul-double v6, p7, v4

    mul-double v8, p11, v4

    mul-double v4, v4, p3

    sub-double v10, v4, v6

    sub-double v12, p1, v0

    sub-double v6, v8, v6

    sub-double v0, v2, v0

    mul-double/2addr v10, v6

    mul-double/2addr v12, v0

    add-double/2addr v12, v10

    sub-double/2addr v8, v4

    sub-double/2addr v2, p1

    mul-double/2addr v8, v6

    mul-double/2addr v2, v0

    add-double/2addr v2, v8

    const-wide/16 v0, 0x0

    cmpl-double p0, v12, v0

    if-lez p0, :cond_0

    cmpl-double p0, v2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
