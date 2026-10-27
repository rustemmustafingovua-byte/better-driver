.class public Lcom/graphhopper/routing/RoundTripRouting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/RoundTripRouting$Params;,
        Lcom/graphhopper/routing/RoundTripRouting$RoundTripCalculator;,
        Lcom/graphhopper/routing/RoundTripRouting$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcPaths(Ljava/util/List;Lcom/graphhopper/routing/FlexiblePathCalculator;)Lcom/graphhopper/routing/RoundTripRouting$Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;",
            "Lcom/graphhopper/routing/FlexiblePathCalculator;",
            ")",
            "Lcom/graphhopper/routing/RoundTripRouting$Result;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/RoundTripRouting$RoundTripCalculator;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/RoundTripRouting$RoundTripCalculator;-><init>(Lcom/graphhopper/routing/FlexiblePathCalculator;)V

    new-instance v1, Lcom/graphhopper/routing/RoundTripRouting$Result;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Lcom/graphhopper/routing/RoundTripRouting$Result;-><init>(I)V

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/storage/index/Snap;

    move v4, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/storage/index/Snap;

    if-ne v5, v2, :cond_0

    invoke-virtual {v5}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lcom/graphhopper/storage/index/Snap;->getClosestEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v5

    invoke-interface {v5}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v5

    :goto_1
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/graphhopper/storage/index/Snap;

    if-ne v6, v2, :cond_1

    invoke-virtual {v6}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result v6

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lcom/graphhopper/storage/index/Snap;->getClosestEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v6

    invoke-interface {v6}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v6

    :goto_2
    invoke-virtual {v0, v5, v6}, Lcom/graphhopper/routing/RoundTripRouting$RoundTripCalculator;->calcPath(II)Lcom/graphhopper/routing/Path;

    move-result-object v7

    if-ne v4, v3, :cond_2

    new-instance v8, Lcom/graphhopper/util/PointList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v7, Lcom/graphhopper/routing/Path;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v10}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v10

    invoke-interface {v10}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    iput-object v8, v1, Lcom/graphhopper/routing/RoundTripRouting$Result;->wayPoints:Lcom/graphhopper/util/PointList;

    iget-object v9, v7, Lcom/graphhopper/routing/Path;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v9}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    :cond_2
    iget-object v5, v1, Lcom/graphhopper/routing/RoundTripRouting$Result;->wayPoints:Lcom/graphhopper/util/PointList;

    iget-object v8, v7, Lcom/graphhopper/routing/Path;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v8}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v8

    invoke-virtual {v5, v8, v6}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    iget-wide v5, v1, Lcom/graphhopper/routing/RoundTripRouting$Result;->visitedNodes:J

    invoke-virtual {p1}, Lcom/graphhopper/routing/FlexiblePathCalculator;->getVisitedNodes()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v5, v8

    iput-wide v5, v1, Lcom/graphhopper/routing/RoundTripRouting$Result;->visitedNodes:J

    iget-object v5, v1, Lcom/graphhopper/routing/RoundTripRouting$Result;->paths:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static generateValidPoint(Lcom/graphhopper/util/shapes/GHPoint;DDLcom/graphhopper/routing/util/EdgeFilter;Lcom/graphhopper/storage/index/LocationIndex;I)Lcom/graphhopper/storage/index/Snap;
    .locals 15

    move/from16 v0, p7

    const/4 v1, 0x0

    move-wide/from16 v7, p1

    :goto_0
    sget-object v2, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    invoke-virtual {p0}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v5

    move-wide/from16 v9, p3

    invoke-virtual/range {v2 .. v10}, Lcom/graphhopper/util/DistanceCalcEarth;->projectCoordinate(DDDD)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v10

    invoke-virtual {v2}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v12

    move-object/from16 v14, p5

    move-object/from16 v9, p6

    invoke-interface/range {v9 .. v14}, Lcom/graphhopper/storage/index/LocationIndex;->findClosest(DDLcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/storage/index/Snap;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const-wide v2, 0x3fee666666666666L    # 0.95

    mul-double/2addr v7, v2

    if-ge v1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find a valid point after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tries, for the point:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static lookup(Ljava/util/List;Lcom/graphhopper/routing/util/EdgeFilter;Lcom/graphhopper/storage/index/LocationIndex;Lcom/graphhopper/routing/RoundTripRouting$Params;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/shapes/GHPoint;",
            ">;",
            "Lcom/graphhopper/routing/util/EdgeFilter;",
            "Lcom/graphhopper/storage/index/LocationIndex;",
            "Lcom/graphhopper/routing/RoundTripRouting$Params;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/shapes/GHPoint;

    new-instance v1, Lcom/graphhopper/routing/util/tour/MultiPointTour;

    new-instance v2, Ljava/util/Random;

    iget-wide v3, p3, Lcom/graphhopper/routing/RoundTripRouting$Params;->seed:J

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    iget-wide v3, p3, Lcom/graphhopper/routing/RoundTripRouting$Params;->distanceInMeter:D

    iget v5, p3, Lcom/graphhopper/routing/RoundTripRouting$Params;->roundTripPointCount:I

    iget-wide v6, p3, Lcom/graphhopper/routing/RoundTripRouting$Params;->initialHeading:D

    invoke-direct/range {v1 .. v7}, Lcom/graphhopper/routing/util/tour/MultiPointTour;-><init>(Ljava/util/Random;DID)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/graphhopper/routing/util/tour/MultiPointTour;->getNumberOfGeneratedPoints()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-wide v5, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v7, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-object v9, p1

    move-object v4, p2

    invoke-interface/range {v4 .. v9}, Lcom/graphhopper/storage/index/LocationIndex;->findClosest(DDLcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;

    move-result-object p1

    move-object v8, v9

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->isValid()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    :goto_0
    invoke-virtual {v1}, Lcom/graphhopper/routing/util/tour/MultiPointTour;->getNumberOfGeneratedPoints()I

    move-result p0

    if-ge v0, p0, :cond_0

    invoke-virtual {v1, v0}, Lcom/graphhopper/routing/util/tour/MultiPointTour;->getHeadingForIteration(I)D

    move-result-wide v6

    move-object v9, v4

    invoke-virtual {v1, v0}, Lcom/graphhopper/routing/util/tour/MultiPointTour;->getDistanceForIteration(I)D

    move-result-wide v4

    iget v10, p3, Lcom/graphhopper/routing/RoundTripRouting$Params;->maxRetries:I

    invoke-static/range {v3 .. v10}, Lcom/graphhopper/routing/RoundTripRouting;->generateValidPoint(Lcom/graphhopper/util/shapes/GHPoint;DDLcom/graphhopper/routing/util/EdgeFilter;Lcom/graphhopper/storage/index/LocationIndex;I)Lcom/graphhopper/storage/index/Snap;

    move-result-object p0

    move-object v4, v9

    invoke-virtual {p0}, Lcom/graphhopper/storage/index/Snap;->getSnappedPoint()Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v3

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_1
    new-instance p1, Lcom/graphhopper/util/exceptions/PointNotFoundException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Cannot find point 0: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/graphhopper/util/exceptions/PointNotFoundException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "For round trip calculation exactly one point is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
