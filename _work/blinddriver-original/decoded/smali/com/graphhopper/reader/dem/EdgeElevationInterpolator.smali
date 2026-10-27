.class public Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final elevationInterpolator:Lcom/graphhopper/reader/dem/ElevationInterpolator;

.field private final graph:Lcom/graphhopper/storage/BaseGraph;

.field private final interpolateKey:Lcom/graphhopper/routing/ev/RoadEnvironment;

.field private final nodeElevationInterpolator:Lcom/graphhopper/reader/dem/NodeElevationInterpolator;

.field protected final roadEnvironmentEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadEnvironment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/RoadEnvironment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadEnvironment;",
            ">;",
            "Lcom/graphhopper/routing/ev/RoadEnvironment;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/graphhopper/reader/dem/ElevationInterpolator;

    invoke-direct {v0}, Lcom/graphhopper/reader/dem/ElevationInterpolator;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->elevationInterpolator:Lcom/graphhopper/reader/dem/ElevationInterpolator;

    iput-object p1, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->graph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p2, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->roadEnvironmentEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iput-object p3, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->interpolateKey:Lcom/graphhopper/routing/ev/RoadEnvironment;

    new-instance p2, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;

    invoke-direct {p2, p1}, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;-><init>(Lcom/graphhopper/storage/BaseGraph;)V

    iput-object p2, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->nodeElevationInterpolator:Lcom/graphhopper/reader/dem/NodeElevationInterpolator;

    return-void
.end method

.method private interpolateEdge(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/coll/GHBitSet;Lcom/graphhopper/util/EdgeExplorer;)V
    .locals 6

    new-instance v4, Lcom/graphhopper/coll/GHIntHashSet;

    invoke-direct {v4}, Lcom/graphhopper/coll/GHIntHashSet;-><init>()V

    new-instance v5, Lcom/graphhopper/coll/GHIntHashSet;

    invoke-direct {v5}, Lcom/graphhopper/coll/GHIntHashSet;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->gatherOuterAndInnerNodeIds(Lcom/graphhopper/util/EdgeExplorer;Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/coll/GHBitSet;Lcom/carrotsearch/hppc/r0;Lcom/graphhopper/coll/GHIntHashSet;)V

    iget-object p0, v0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->nodeElevationInterpolator:Lcom/graphhopper/reader/dem/NodeElevationInterpolator;

    invoke-interface {v4}, Lcom/carrotsearch/hppc/z;->toArray()[I

    move-result-object p1

    invoke-virtual {v5}, Lcom/carrotsearch/hppc/c0;->toArray()[I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->interpolateElevationsOfInnerNodes([I[I)V

    return-void
.end method

.method private interpolateElevationsOfPillarNodes()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object v1

    iget-object v2, v0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v2

    :goto_0
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->isInterpolatableEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v3

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v4

    invoke-interface {v2, v3}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v10

    invoke-interface {v2, v3}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v12

    invoke-interface {v2, v3}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v14

    invoke-interface {v2, v4}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v16

    invoke-interface {v2, v4}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v18

    invoke-interface {v2, v4}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v20

    sget-object v3, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {v1, v3}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v4

    const/4 v5, 0x1

    move v6, v5

    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_0

    invoke-virtual {v3, v6}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v24

    invoke-virtual {v3, v6}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v8

    move v7, v5

    iget-object v5, v0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->elevationInterpolator:Lcom/graphhopper/reader/dem/ElevationInterpolator;

    move/from16 v23, v6

    move v0, v7

    move-wide/from16 v6, v24

    invoke-virtual/range {v5 .. v21}, Lcom/graphhopper/reader/dem/ElevationInterpolator;->calculateElevationBasedOnTwoPoints(DDDDDDDD)D

    move-result-wide v28

    move-object/from16 v22, v3

    move-wide/from16 v26, v8

    invoke-virtual/range {v22 .. v29}, Lcom/graphhopper/util/PointList;->set(IDDD)V

    add-int/lit8 v6, v23, 0x1

    move v5, v0

    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    move v0, v5

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v7, v4}, Lcom/graphhopper/util/PointList;->shallowCopy(IIZ)Lcom/graphhopper/util/PointList;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->setWayGeometry(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/util/EdgeIteratorState;

    :cond_1
    sget-object v0, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDistance(Lcom/graphhopper/util/PointList;)D

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lcom/graphhopper/util/EdgeIteratorState;->setDistance(D)Lcom/graphhopper/util/EdgeIteratorState;

    :cond_2
    move-object/from16 v0, p0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private interpolateElevationsOfTowerNodes()V
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/coll/GHBitSetImpl;

    invoke-interface {v0}, Lcom/graphhopper/routing/util/AllEdgesIterator;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/graphhopper/coll/GHBitSetImpl;-><init>(I)V

    iget-object v2, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object v2

    :goto_0
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->isInterpolatableEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Lcom/graphhopper/coll/GHBitSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v0, v1, v2}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->interpolateEdge(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/coll/GHBitSet;Lcom/graphhopper/util/EdgeExplorer;)V

    :cond_0
    invoke-interface {v1, v3}, Lcom/graphhopper/coll/GHBitSet;->add(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->interpolateElevationsOfTowerNodes()V

    invoke-direct {p0}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->interpolateElevationsOfPillarNodes()V

    return-void
.end method

.method public gatherOuterAndInnerNodeIds(Lcom/graphhopper/util/EdgeExplorer;Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/coll/GHBitSet;Lcom/carrotsearch/hppc/r0;Lcom/graphhopper/coll/GHIntHashSet;)V
    .locals 1

    new-instance v0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;

    invoke-direct {v0, p0, p3, p5, p4}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;-><init>(Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;Lcom/graphhopper/coll/GHBitSet;Lcom/graphhopper/coll/GHIntHashSet;Lcom/carrotsearch/hppc/r0;)V

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/graphhopper/util/BreadthFirstSearch;->start(Lcom/graphhopper/util/EdgeExplorer;I)V

    return-void
.end method

.method public getGraph()Lcom/graphhopper/storage/BaseGraph;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->graph:Lcom/graphhopper/storage/BaseGraph;

    return-object p0
.end method

.method public isInterpolatableEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->roadEnvironmentEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object p1

    iget-object p0, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->interpolateKey:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
