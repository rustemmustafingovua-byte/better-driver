.class public Lcom/graphhopper/storage/index/LocationIndexTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/index/LocationIndex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/storage/index/LocationIndexTree$EdgeCheck;
    }
.end annotation


# instance fields
.field private final directory:Lcom/graphhopper/storage/Directory;

.field private final equalNormedDelta:D

.field private final graph:Lcom/graphhopper/storage/Graph;

.field private indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

.field private initialized:Z

.field lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

.field private final logger:Lnc/b;

.field private maxRegionSearch:I

.field private minResolutionInMeter:I

.field private final nodeAccess:Lcom/graphhopper/storage/NodeAccess;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/storage/Directory;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->logger:Lnc/b;

    const/4 v0, 0x4

    iput v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->maxRegionSearch:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->minResolutionInMeter:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->initialized:Z

    sget-object v0, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    const-wide v1, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/util/DistancePlaneProjection;->calcNormalizedDist(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->equalNormedDelta:D

    iput-object p1, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iput-object p2, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->directory:Lcom/graphhopper/storage/Directory;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getBounds()Lcom/graphhopper/util/shapes/BBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/util/shapes/BBox;->clone()Lcom/graphhopper/util/shapes/BBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/util/shapes/BBox;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/graphhopper/util/shapes/BBox;

    const-wide/high16 v6, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct/range {v1 .. v9}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    move-object p1, v1

    :cond_0
    new-instance v0, Lcom/graphhopper/storage/index/LineIntIndex;

    const-string v1, "location_index"

    invoke-direct {v0, p1, p2, v1}, Lcom/graphhopper/storage/index/LineIntIndex;-><init>(Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/storage/Directory;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/storage/index/LocationIndexTree;Lcom/carrotsearch/hppc/c0;Lcom/graphhopper/routing/util/EdgeFilter;DDLcom/graphhopper/storage/index/Snap;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/graphhopper/storage/index/LocationIndexTree;->lambda$findClosest$1(Lcom/carrotsearch/hppc/c0;Lcom/graphhopper/routing/util/EdgeFilter;DDLcom/graphhopper/storage/index/Snap;I)V

    return-void
.end method

.method public static synthetic b(Lcom/graphhopper/storage/index/Snap;Lcom/graphhopper/util/EdgeIteratorState;IDILcom/graphhopper/storage/index/Snap$Position;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/graphhopper/storage/index/LocationIndexTree;->lambda$findClosest$0(Lcom/graphhopper/storage/index/Snap;Lcom/graphhopper/util/EdgeIteratorState;IDILcom/graphhopper/storage/index/Snap$Position;)V

    return-void
.end method

.method private static synthetic lambda$findClosest$0(Lcom/graphhopper/storage/index/Snap;Lcom/graphhopper/util/EdgeIteratorState;IDILcom/graphhopper/storage/index/Snap$Position;)V
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/storage/index/Snap;->getQueryDistance()D

    move-result-wide v0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/storage/index/Snap;->setQueryDistance(D)V

    invoke-virtual {p0, p2}, Lcom/graphhopper/storage/index/Snap;->setClosestNode(I)V

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->detach(Z)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/index/Snap;->setClosestEdge(Lcom/graphhopper/util/EdgeIteratorState;)V

    invoke-virtual {p0, p5}, Lcom/graphhopper/storage/index/Snap;->setWayIndex(I)V

    invoke-virtual {p0, p6}, Lcom/graphhopper/storage/index/Snap;->setSnappedPosition(Lcom/graphhopper/storage/index/Snap$Position;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$findClosest$1(Lcom/carrotsearch/hppc/c0;Lcom/graphhopper/routing/util/EdgeFilter;DDLcom/graphhopper/storage/index/Snap;I)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->graph:Lcom/graphhopper/storage/Graph;

    mul-int/lit8 v1, p8, 0x2

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorStateForKey(I)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-virtual {p1, p8}, Lcom/carrotsearch/hppc/c0;->add(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2, v0}, Lcom/graphhopper/routing/util/EdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-wide p1, p3

    move-wide p3, p5

    new-instance p6, Lb0/b3;

    const/4 p5, 0x7

    invoke-direct {p6, p5, p7, v0}, Lb0/b3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object p5, v0

    invoke-virtual/range {p0 .. p6}, Lcom/graphhopper/storage/index/LocationIndexTree;->traverseEdge(DDLcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/storage/index/LocationIndexTree$EdgeCheck;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final calculateRMin(DDI)D
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-object v5, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v5}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getKeyAlgo()Lcom/graphhopper/geohash/SpatialKeyAlgo;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->x(D)I

    move-result v5

    iget-object v6, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v6}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getKeyAlgo()Lcom/graphhopper/geohash/SpatialKeyAlgo;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->y(D)I

    move-result v6

    iget-object v7, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v7}, Lcom/graphhopper/storage/Graph;->getBounds()Lcom/graphhopper/util/shapes/BBox;

    move-result-object v7

    iget-wide v7, v7, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    sub-int v9, v6, p5

    int-to-double v9, v9

    iget-object v11, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v11}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getDeltaLat()D

    move-result-wide v11

    mul-double/2addr v11, v9

    add-double/2addr v11, v7

    iget-object v7, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v7}, Lcom/graphhopper/storage/Graph;->getBounds()Lcom/graphhopper/util/shapes/BBox;

    move-result-object v7

    iget-wide v7, v7, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    add-int v6, v6, p5

    add-int/lit8 v6, v6, 0x1

    int-to-double v9, v6

    iget-object v6, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v6}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getDeltaLat()D

    move-result-wide v13

    mul-double/2addr v13, v9

    add-double/2addr v13, v7

    iget-object v6, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v6}, Lcom/graphhopper/storage/Graph;->getBounds()Lcom/graphhopper/util/shapes/BBox;

    move-result-object v6

    iget-wide v6, v6, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    sub-int v8, v5, p5

    int-to-double v8, v8

    iget-object v10, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v10}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getDeltaLon()D

    move-result-wide v15

    mul-double/2addr v15, v8

    add-double/2addr v15, v6

    iget-object v6, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v6}, Lcom/graphhopper/storage/Graph;->getBounds()Lcom/graphhopper/util/shapes/BBox;

    move-result-object v6

    iget-wide v6, v6, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    add-int v5, v5, p5

    add-int/lit8 v5, v5, 0x1

    int-to-double v8, v5

    iget-object v0, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getDeltaLon()D

    move-result-wide v17

    mul-double v17, v17, v8

    add-double v17, v17, v6

    sub-double v5, v1, v11

    sub-double v7, v13, v1

    sub-double v9, v3, v15

    sub-double v19, v17, v3

    cmpg-double v0, v5, v7

    if-gez v0, :cond_0

    sget-object v0, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    move-wide/from16 v7, p3

    move-wide v5, v11

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/util/DistancePlaneProjection;->calcDist(DDDD)D

    move-result-wide v5

    :goto_0
    move-wide v11, v5

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    move-wide/from16 v7, p3

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide v5, v13

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/util/DistancePlaneProjection;->calcDist(DDDD)D

    move-result-wide v5

    goto :goto_0

    :goto_1
    cmpg-double v0, v9, v19

    if-gez v0, :cond_1

    sget-object v0, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    move-wide/from16 v5, p1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide v7, v15

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/util/DistancePlaneProjection;->calcDist(DDDD)D

    move-result-wide v0

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    move-wide/from16 v5, p1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v7, v17

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/util/DistancePlaneProjection;->calcDist(DDDD)D

    move-result-wide v0

    :goto_2
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public checksum()I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v0}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/routing/util/AllEdgesIterator;->length()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {p0}, Lcom/graphhopper/storage/index/LineIntIndex;->close()V

    return-void
.end method

.method public findClosest(DDLcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/LocationIndexTree;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v8, Lcom/graphhopper/storage/index/Snap;

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/graphhopper/storage/index/Snap;-><init>(DD)V

    new-instance v2, Lcom/carrotsearch/hppc/c0;

    invoke-direct {v2}, Lcom/carrotsearch/hppc/c0;-><init>()V

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    iget v1, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->maxRegionSearch:I

    if-ge v9, v1, :cond_1

    iget-object v10, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    new-instance v6, Lcom/graphhopper/storage/index/b;

    move-object v1, v0

    move-object v0, v6

    move-wide v6, v3

    move-wide/from16 v4, p1

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v8}, Lcom/graphhopper/storage/index/b;-><init>(Lcom/graphhopper/storage/index/LocationIndexTree;Lcom/carrotsearch/hppc/c0;Lcom/graphhopper/routing/util/EdgeFilter;DDLcom/graphhopper/storage/index/Snap;)V

    move-wide/from16 v18, v6

    move-object v7, v2

    move-wide v1, v4

    move-wide/from16 v3, v18

    move-object v6, v0

    move v5, v9

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Lcom/graphhopper/storage/index/LineIntIndex;->findEdgeIdsInNeighborhood(DDILjava/util/function/IntConsumer;)V

    invoke-virtual {v8}, Lcom/graphhopper/storage/index/Snap;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/storage/index/LocationIndexTree;->calculateRMin(DDI)D

    move-result-wide v9

    sget-object v0, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {v8}, Lcom/graphhopper/storage/index/Snap;->getQueryDistance()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/util/DistancePlaneProjection;->calcDenormalizedDist(D)D

    move-result-wide v0

    cmpg-double v0, v0, v9

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v3, p3

    move-object v2, v7

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v8}, Lcom/graphhopper/storage/index/Snap;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v9, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {v8, v9}, Lcom/graphhopper/storage/index/Snap;->calcSnappedPoint(Lcom/graphhopper/util/DistanceCalc;)V

    invoke-virtual {v8}, Lcom/graphhopper/storage/index/Snap;->getSnappedPoint()Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v0

    iget-wide v10, v0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-virtual {v8}, Lcom/graphhopper/storage/index/Snap;->getSnappedPoint()Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v0

    iget-wide v12, v0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide/from16 v14, p1

    move-wide/from16 v16, p3

    invoke-virtual/range {v9 .. v17}, Lcom/graphhopper/util/DistancePlaneProjection;->calcDist(DDDD)D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/graphhopper/storage/index/Snap;->setQueryDistance(D)V

    :cond_2
    return-object v8

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to create a new LocationIndex instance as it is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {p0}, Lcom/graphhopper/storage/index/LineIntIndex;->flush()V

    return-void
.end method

.method public getCapacity()J
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {p0}, Lcom/graphhopper/storage/index/LineIntIndex;->getCapacity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinResolutionInMeter()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->minResolutionInMeter:I

    return p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {p0}, Lcom/graphhopper/storage/index/LineIntIndex;->isClosed()Z

    move-result p0

    return p0
.end method

.method public loadExisting()Z
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/LineIntIndex;->loadExisting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/LineIntIndex;->getChecksum()I

    move-result v0

    invoke-virtual {p0}, Lcom/graphhopper/storage/index/LocationIndexTree;->checksum()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/LineIntIndex;->getMinResolutionInMeter()I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->minResolutionInMeter:I

    iget-object v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v0}, Lcom/graphhopper/storage/Graph;->getBounds()Lcom/graphhopper/util/shapes/BBox;

    move-result-object v0

    iget v1, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->minResolutionInMeter:I

    invoke-static {v0, v1}, Lcom/graphhopper/storage/index/IndexStructureInfo;->create(Lcom/graphhopper/util/shapes/BBox;I)Lcom/graphhopper/storage/index/IndexStructureInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->initialized:Z

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {v1}, Lcom/graphhopper/storage/index/LineIntIndex;->getChecksum()I

    move-result v1

    invoke-virtual {p0}, Lcom/graphhopper/storage/index/LocationIndexTree;->checksum()I

    move-result p0

    const-string v2, "location index was opened with incorrect graph: "

    const-string v3, " vs. "

    invoke-static {v2, v1, v3, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareInMemConstructionIndex(Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/InMemConstructionIndex;
    .locals 20

    move-object/from16 v1, p0

    iget v0, v1, Lcom/graphhopper/storage/index/LocationIndexTree;->minResolutionInMeter:I

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lcom/graphhopper/storage/index/IndexStructureInfo;->create(Lcom/graphhopper/util/shapes/BBox;I)Lcom/graphhopper/storage/index/IndexStructureInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/graphhopper/storage/index/LocationIndexTree;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    new-instance v2, Lcom/graphhopper/storage/index/InMemConstructionIndex;

    invoke-direct {v2, v0}, Lcom/graphhopper/storage/index/InMemConstructionIndex;-><init>(Lcom/graphhopper/storage/index/IndexStructureInfo;)V

    iget-object v0, v1, Lcom/graphhopper/storage/index/LocationIndexTree;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v0}, Lcom/graphhopper/storage/Graph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object v12

    :goto_0
    :try_start_0
    invoke-interface {v12}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/graphhopper/routing/util/EdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v12}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v3

    invoke-interface {v12}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v4

    invoke-interface {v12}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v13

    iget-object v5, v1, Lcom/graphhopper/storage/index/LocationIndexTree;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v5, v4}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v5

    iget-object v7, v1, Lcom/graphhopper/storage/index/LocationIndexTree;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v7, v4}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v7

    sget-object v4, Lcom/graphhopper/util/FetchMode;->PILLAR_ONLY:Lcom/graphhopper/util/FetchMode;

    invoke-interface {v12, v4}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/graphhopper/util/PointList;->size()I

    move-result v15

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v15, :cond_1

    move-wide v10, v5

    move-wide v6, v7

    invoke-virtual {v14, v4}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v8

    move-wide/from16 v16, v10

    invoke-virtual {v14, v4}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v10

    move-wide/from16 v18, v16

    move/from16 v16, v4

    move-wide/from16 v4, v18

    invoke-virtual/range {v2 .. v11}, Lcom/graphhopper/storage/index/InMemConstructionIndex;->addToAllTilesOnLine(IDDDD)V

    add-int/lit8 v4, v16, 0x1

    move-wide v5, v8

    move-wide v7, v10

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-wide v4, v5

    move-wide v6, v7

    iget-object v8, v1, Lcom/graphhopper/storage/index/LocationIndexTree;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v8, v13}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v8

    iget-object v10, v1, Lcom/graphhopper/storage/index/LocationIndexTree;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v10, v13}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v10

    invoke-virtual/range {v2 .. v11}, Lcom/graphhopper/storage/index/InMemConstructionIndex;->addToAllTilesOnLine(IDDDD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v2

    :goto_2
    iget-object v1, v1, Lcom/graphhopper/storage/index/LocationIndexTree;->logger:Lnc/b;

    invoke-interface {v12}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v3

    invoke-interface {v12}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v4

    invoke-interface {v12}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v5

    const-string v6, ", adj:"

    const-string v7, ", edge:"

    const-string v8, "Problem! base:"

    invoke-static {v8, v3, v6, v4, v7}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lnc/b;->r(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v2
.end method

.method public prepareIndex()Lcom/graphhopper/storage/index/LocationIndex;
    .locals 1

    .line 1
    sget-object v0, Lcom/graphhopper/routing/util/EdgeFilter;->ALL_EDGES:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/index/LocationIndexTree;->prepareIndex(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/LocationIndex;

    move-result-object p0

    return-object p0
.end method

.method public prepareIndex(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/LocationIndex;
    .locals 12

    .line 2
    iget-boolean v0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->initialized:Z

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v1}, Lcom/graphhopper/storage/Graph;->getBounds()Lcom/graphhopper/util/shapes/BBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/shapes/BBox;->clone()Lcom/graphhopper/util/shapes/BBox;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/graphhopper/util/shapes/BBox;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    new-instance v3, Lcom/graphhopper/util/shapes/BBox;

    const-wide/high16 v8, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct/range {v3 .. v11}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    move-object v1, v3

    .line 7
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/graphhopper/storage/index/LocationIndexTree;->prepareInMemConstructionIndex(Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/InMemConstructionIndex;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    iget v2, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->minResolutionInMeter:I

    invoke-virtual {v1, v2}, Lcom/graphhopper/storage/index/LineIntIndex;->setMinResolutionInMeter(I)V

    .line 9
    iget-object v1, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {v1, p1}, Lcom/graphhopper/storage/index/LineIntIndex;->store(Lcom/graphhopper/storage/index/InMemConstructionIndex;)V

    .line 10
    iget-object p1, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {p0}, Lcom/graphhopper/storage/index/LocationIndexTree;->checksum()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/graphhopper/storage/index/LineIntIndex;->setChecksum(I)V

    .line 11
    invoke-virtual {p0}, Lcom/graphhopper/storage/index/LocationIndexTree;->flush()V

    .line 12
    iget-object p1, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->logger:Lnc/b;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    .line 13
    invoke-virtual {v1}, Lcom/graphhopper/storage/index/LineIntIndex;->getSize()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    .line 14
    invoke-virtual {v2}, Lcom/graphhopper/storage/index/LineIntIndex;->getLeafs()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->minResolutionInMeter:I

    iget-object v4, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    .line 15
    invoke-virtual {v4}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getEntries()[I

    move-result-object v4

    array-length v4, v4

    .line 16
    invoke-virtual {p0}, Lcom/graphhopper/storage/index/LocationIndexTree;->checksum()I

    move-result v5

    iget-object v6, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    .line 17
    invoke-virtual {v6}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getEntries()[I

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    .line 18
    invoke-virtual {v7}, Lcom/graphhopper/storage/index/LineIntIndex;->getSize()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {v8}, Lcom/graphhopper/storage/index/LineIntIndex;->getLeafs()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "location index created in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "s, size:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", leafs:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", precision:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", depth:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", checksum:"

    const-string v1, ", entries:"

    .line 19
    invoke-static {v8, v4, v0, v5, v1}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 20
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", entriesPerLeaf:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Lnc/b;->k(Ljava/lang/String;)V

    return-object p0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call prepareIndex only once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public query(Lcom/graphhopper/storage/index/LocationIndex$TileFilter;Lcom/graphhopper/storage/index/LocationIndex$Visitor;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->lineIntIndex:Lcom/graphhopper/storage/index/LineIntIndex;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/index/LineIntIndex;->query(Lcom/graphhopper/storage/index/LocationIndex$TileFilter;Lcom/graphhopper/storage/index/LocationIndex$Visitor;)V

    return-void
.end method

.method public setMaxRegionSearch(I)Lcom/graphhopper/storage/index/LocationIndexTree;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->maxRegionSearch:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Region of location index must be at least 1 but was "

    invoke-static {p1, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinResolutionInMeter(I)Lcom/graphhopper/storage/index/LocationIndexTree;
    .locals 0

    iput p1, p0, Lcom/graphhopper/storage/index/LocationIndexTree;->minResolutionInMeter:I

    return-object p0
.end method

.method public setResolution(I)Lcom/graphhopper/storage/index/LocationIndex;
    .locals 0

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/index/LocationIndexTree;->setMinResolutionInMeter(I)Lcom/graphhopper/storage/index/LocationIndexTree;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Negative precision is not allowed!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public traverseEdge(DDLcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/storage/index/LocationIndexTree$EdgeCheck;)V
    .locals 36

    move-object/from16 v0, p0

    invoke-interface/range {p5 .. p5}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v2

    iget-object v1, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v1, v2}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v8

    iget-object v1, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v1, v2}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v10

    sget-object v12, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object v3, v12

    invoke-virtual/range {v3 .. v11}, Lcom/graphhopper/util/DistancePlaneProjection;->calcNormalizedDist(DDDD)D

    move-result-wide v21

    invoke-interface/range {p5 .. p5}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    iget-object v3, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v3, v1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v17

    iget-object v3, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v3, v1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v19

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    invoke-virtual/range {v12 .. v20}, Lcom/graphhopper/util/DistancePlaneProjection;->calcNormalizedDist(DDDD)D

    move-result-wide v3

    sget-object v5, Lcom/graphhopper/util/FetchMode;->PILLAR_AND_ADJ:Lcom/graphhopper/util/FetchMode;

    move-object/from16 v6, p5

    invoke-interface {v6, v5}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/graphhopper/util/PointList;->size()I

    move-result v17

    cmpg-double v5, v21, v3

    if-gez v5, :cond_0

    const/4 v5, 0x0

    sget-object v6, Lcom/graphhopper/storage/index/Snap$Position;->TOWER:Lcom/graphhopper/storage/index/Snap$Position;

    move-object/from16 v1, p6

    move-wide/from16 v3, v21

    invoke-interface/range {v1 .. v6}, Lcom/graphhopper/storage/index/LocationIndexTree$EdgeCheck;->check(IDILcom/graphhopper/storage/index/Snap$Position;)V

    move/from16 v19, v2

    :goto_0
    move/from16 v1, v17

    goto :goto_1

    :cond_0
    sget-object v18, Lcom/graphhopper/storage/index/Snap$Position;->TOWER:Lcom/graphhopper/storage/index/Snap$Position;

    move-object/from16 v13, p6

    move v14, v1

    move-wide v15, v3

    invoke-interface/range {v13 .. v18}, Lcom/graphhopper/storage/index/LocationIndexTree$EdgeCheck;->check(IDILcom/graphhopper/storage/index/Snap$Position;)V

    move/from16 v19, v14

    move-wide/from16 v21, v15

    goto :goto_0

    :goto_1
    iget-wide v2, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->equalNormedDelta:D

    cmpg-double v2, v21, v2

    if-gtz v2, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v2, 0x0

    move-wide/from16 v28, v8

    :goto_2
    if-ge v2, v1, :cond_6

    invoke-virtual {v7, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v32

    invoke-virtual {v7, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v3

    sget-object v12, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {v12, v10, v11, v3, v4}, Lcom/graphhopper/util/DistanceCalcEarth;->isCrossBoundary(DD)Z

    move-result v5

    if-eqz v5, :cond_2

    move-wide/from16 v34, v3

    move v3, v2

    goto :goto_5

    :cond_2
    move-wide/from16 v5, v21

    add-int/lit8 v22, v2, 0x1

    move-wide/from16 v24, p1

    move-wide/from16 v26, p3

    move-wide/from16 v34, v3

    move-wide/from16 v30, v10

    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v35}, Lcom/graphhopper/util/DistanceCalcEarth;->validEdgeDistance(DDDDDD)Z

    move-result v3

    if-eqz v3, :cond_3

    move-wide/from16 v24, p1

    move-wide/from16 v26, p3

    invoke-virtual/range {v23 .. v35}, Lcom/graphhopper/util/DistanceCalcEarth;->calcNormalizedEdgeDistance(DDDDDD)D

    move-result-wide v20

    sget-object v23, Lcom/graphhopper/storage/index/Snap$Position;->EDGE:Lcom/graphhopper/storage/index/Snap$Position;

    move-object/from16 v18, p6

    move/from16 v22, v2

    invoke-interface/range {v18 .. v23}, Lcom/graphhopper/storage/index/LocationIndexTree$EdgeCheck;->check(IDILcom/graphhopper/storage/index/Snap$Position;)V

    move/from16 v3, v22

    :goto_3
    move-wide/from16 v21, v20

    goto :goto_4

    :cond_3
    move v3, v2

    move/from16 v2, v19

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_4

    move-wide/from16 v13, p1

    move-wide/from16 v15, p3

    move-object/from16 v12, v23

    move-wide/from16 v17, v32

    move-wide/from16 v19, v34

    invoke-virtual/range {v12 .. v20}, Lcom/graphhopper/util/DistancePlaneProjection;->calcNormalizedDist(DDDD)D

    move-result-wide v4

    sget-object v23, Lcom/graphhopper/storage/index/Snap$Position;->PILLAR:Lcom/graphhopper/storage/index/Snap$Position;

    move-object/from16 v18, p6

    move/from16 v19, v2

    move-wide/from16 v20, v4

    invoke-interface/range {v18 .. v23}, Lcom/graphhopper/storage/index/LocationIndexTree$EdgeCheck;->check(IDILcom/graphhopper/storage/index/Snap$Position;)V

    goto :goto_3

    :cond_4
    move/from16 v19, v2

    move-wide/from16 v21, v5

    :goto_4
    iget-wide v4, v0, Lcom/graphhopper/storage/index/LocationIndexTree;->equalNormedDelta:D

    cmpg-double v2, v21, v4

    if-gtz v2, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    add-int/lit8 v2, v3, 0x1

    move-wide/from16 v28, v32

    move-wide/from16 v10, v34

    goto :goto_2

    :cond_6
    :goto_6
    return-void
.end method
