.class public Lcom/graphhopper/routing/util/HeadingEdgeFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/EdgeFilter;


# instance fields
.field private final directedEdgeFilter:Lcom/graphhopper/routing/util/DirectedEdgeFilter;

.field private final heading:D

.field private final pointNearHeading:Lcom/graphhopper/util/shapes/GHPoint;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/util/DirectedEdgeFilter;DLcom/graphhopper/util/shapes/GHPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/HeadingEdgeFilter;->directedEdgeFilter:Lcom/graphhopper/routing/util/DirectedEdgeFilter;

    iput-wide p2, p0, Lcom/graphhopper/routing/util/HeadingEdgeFilter;->heading:D

    iput-object p4, p0, Lcom/graphhopper/routing/util/HeadingEdgeFilter;->pointNearHeading:Lcom/graphhopper/util/shapes/GHPoint;

    return-void
.end method

.method public static getHeadingOfGeometryNearPoint(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/util/shapes/GHPoint;D)D
    .locals 22

    move-object/from16 v0, p1

    sget-object v1, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    sget-object v2, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    move-object/from16 v3, p0

    invoke-interface {v3, v2}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v14

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v4, -0x1

    move-wide/from16 v16, v2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v14}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v14, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v6

    invoke-virtual {v14, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v8

    invoke-virtual {v14, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v10

    invoke-virtual {v14, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v12

    move v5, v2

    iget-wide v2, v0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    move/from16 v19, v4

    move/from16 v18, v5

    iget-wide v4, v0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move/from16 v15, v18

    const/16 p0, 0x1

    move-object/from16 v18, v14

    move/from16 v14, v19

    invoke-interface/range {v1 .. v13}, Lcom/graphhopper/util/DistanceCalc;->validEdgeDistance(DDDDDD)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v4, v0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-interface/range {v1 .. v13}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedEdgeDistance(DDDDDD)D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/graphhopper/util/DistanceCalc;->calcDenormalizedDist(D)D

    move-result-wide v2

    goto :goto_1

    :cond_0
    iget-wide v2, v0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    move-wide v4, v8

    iget-wide v8, v0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide/from16 v20, v6

    move-wide v6, v2

    move-wide/from16 v2, v20

    invoke-interface/range {v1 .. v9}, Lcom/graphhopper/util/DistanceCalc;->calcDist(DDDD)D

    move-result-wide v2

    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/graphhopper/util/PointList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v15, v4, :cond_1

    iget-wide v6, v0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v8, v0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide v4, v10

    move-wide v10, v2

    move-wide v2, v4

    move-wide v4, v12

    invoke-interface/range {v1 .. v9}, Lcom/graphhopper/util/DistanceCalc;->calcDist(DDDD)D

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    goto :goto_2

    :cond_1
    move-wide v10, v2

    :goto_2
    cmpl-double v4, v2, p2

    if-lez v4, :cond_2

    goto :goto_3

    :cond_2
    cmpg-double v4, v2, v16

    if-gez v4, :cond_3

    move-wide/from16 v16, v2

    move v4, v15

    goto :goto_4

    :cond_3
    :goto_3
    move v4, v14

    :goto_4
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v14, v18

    goto :goto_0

    :cond_4
    move-object/from16 v18, v14

    move v14, v4

    if-gez v14, :cond_5

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_5
    add-int/lit8 v4, v14, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v6

    invoke-virtual {v0, v4}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v8

    invoke-virtual {v0, v14}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v10

    invoke-virtual {v0, v14}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v12

    sget-object v5, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    invoke-virtual/range {v5 .. v13}, Lcom/graphhopper/util/AngleCalc;->calcAzimuth(DDDD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public accept(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 10

    iget-object v0, p0, Lcom/graphhopper/routing/util/HeadingEdgeFilter;->pointNearHeading:Lcom/graphhopper/util/shapes/GHPoint;

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    invoke-static {p1, v0, v1, v2}, Lcom/graphhopper/routing/util/HeadingEdgeFilter;->getHeadingOfGeometryNearPoint(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/util/shapes/GHPoint;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-wide v4, p0, Lcom/graphhopper/routing/util/HeadingEdgeFilter;->heading:D

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    cmpg-double v2, v4, v6

    const/4 v4, 0x1

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/graphhopper/routing/util/HeadingEdgeFilter;->directedEdgeFilter:Lcom/graphhopper/routing/util/DirectedEdgeFilter;

    invoke-interface {v2, p1, v3}, Lcom/graphhopper/routing/util/DirectedEdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;Z)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-wide v8, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v8

    const-wide v8, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, v8

    iget-wide v8, p0, Lcom/graphhopper/routing/util/HeadingEdgeFilter;->heading:D

    sub-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_3

    iget-object p0, p0, Lcom/graphhopper/routing/util/HeadingEdgeFilter;->directedEdgeFilter:Lcom/graphhopper/routing/util/DirectedEdgeFilter;

    invoke-interface {p0, p1, v4}, Lcom/graphhopper/routing/util/DirectedEdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return v4

    :cond_3
    return v3
.end method
