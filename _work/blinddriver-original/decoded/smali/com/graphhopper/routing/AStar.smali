.class public Lcom/graphhopper/routing/AStar;
.super Lcom/graphhopper/routing/AbstractRoutingAlgorithm;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/AStar$AStarEntry;
    }
.end annotation


# instance fields
.field private currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

.field private fromHeap:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/graphhopper/routing/AStar$AStarEntry;",
            ">;"
        }
    .end annotation
.end field

.field private fromMap:Lcom/graphhopper/coll/GHIntObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/coll/GHIntObjectHashMap<",
            "Lcom/graphhopper/routing/AStar$AStarEntry;",
            ">;"
        }
    .end annotation
.end field

.field private fromOutEdge:I

.field private to:I

.field private toInEdge:I

.field private visitedNodes:I

.field private weightApprox:Lcom/graphhopper/routing/weighting/WeightApproximator;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    const/4 p3, -0x1

    iput p3, p0, Lcom/graphhopper/routing/AStar;->to:I

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    const/16 p3, 0xc8

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 p3, 0x7d0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AStar;->initCollections(I)V

    new-instance p1, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    iget-object p3, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-direct {p1, p3, p2}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;-><init>(Lcom/graphhopper/storage/NodeAccess;Lcom/graphhopper/routing/weighting/Weighting;)V

    sget-object p2, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {p1, p2}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->setDistanceCalc(Lcom/graphhopper/util/DistanceCalc;)Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AStar;->setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStar;

    return-void
.end method

.method private finished()Z
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    iget v1, v0, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    iget v2, p0, Lcom/graphhopper/routing/AStar;->to:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/graphhopper/routing/AStar;->toInEdge:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    iget v3, v0, Lcom/graphhopper/routing/SPTEntry;->edge:I

    if-ne v3, v1, :cond_2

    :cond_0
    iget p0, p0, Lcom/graphhopper/routing/AStar;->fromOutEdge:I

    if-eq p0, v2, :cond_1

    iget p0, v0, Lcom/graphhopper/routing/SPTEntry;->edge:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private runAlgo()V
    .locals 14

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/graphhopper/routing/AStar;->fromHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/graphhopper/routing/AStar;->fromHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/AStar$AStarEntry;

    iput-object v0, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    invoke-virtual {v0}, Lcom/graphhopper/routing/SPTEntry;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/graphhopper/routing/AStar;->visitedNodes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphhopper/routing/AStar;->visitedNodes:I

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->isMaxVisitedNodesExceeded()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/graphhopper/routing/AStar;->finished()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->isTimeoutExceeded()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    iget v0, v0, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {v1, v0}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    iget v1, v1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->accept(Lcom/graphhopper/util/EdgeIteratorState;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    iget v1, v1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/graphhopper/routing/AStar;->fromOutEdge:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    iget v2, p0, Lcom/graphhopper/routing/AStar;->fromOutEdge:I

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v2, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    iget v2, v2, Lcom/graphhopper/routing/SPTEntry;->edge:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/graphhopper/util/GHUtility;->calcWeightWithTurnWeight(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)D

    move-result-wide v1

    iget-object v4, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    iget-wide v4, v4, Lcom/graphhopper/routing/AStar$AStarEntry;->weightOfVisitedPath:D

    add-double v11, v1, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v1, v0, v3}, Lcom/graphhopper/routing/util/TraversalMode;->createTraversalId(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/AStar;->fromMap:Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-virtual {v2, v1}, Lcom/carrotsearch/hppc/n0;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/routing/AStar$AStarEntry;

    if-eqz v2, :cond_6

    iget-wide v3, v2, Lcom/graphhopper/routing/AStar$AStarEntry;->weightOfVisitedPath:D

    cmpl-double v3, v3, v11

    if-lez v3, :cond_3

    :cond_6
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v8

    iget-object v3, p0, Lcom/graphhopper/routing/AStar;->weightApprox:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {v3, v8}, Lcom/graphhopper/routing/weighting/WeightApproximator;->approximate(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    add-double v9, v11, v3

    if-nez v2, :cond_8

    new-instance v6, Lcom/graphhopper/routing/AStar$AStarEntry;

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v7

    iget-object v13, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    invoke-direct/range {v6 .. v13}, Lcom/graphhopper/routing/AStar$AStarEntry;-><init>(IIDDLcom/graphhopper/routing/SPTEntry;)V

    iget-object v2, p0, Lcom/graphhopper/routing/AStar;->fromMap:Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-virtual {v2, v1, v6}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Lcom/graphhopper/routing/SPTEntry;->setDeleted()V

    new-instance v6, Lcom/graphhopper/routing/AStar$AStarEntry;

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v7

    iget-object v13, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    invoke-direct/range {v6 .. v13}, Lcom/graphhopper/routing/AStar$AStarEntry;-><init>(IIDDLcom/graphhopper/routing/SPTEntry;)V

    iget-object v2, p0, Lcom/graphhopper/routing/AStar;->fromMap:Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-virtual {v2, v1, v6}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v2, p0, Lcom/graphhopper/routing/AStar;->fromHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, v6, v1}, Lcom/graphhopper/routing/AStar;->updateBestPath(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;I)V

    goto/16 :goto_1

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public calcPath(II)Lcom/graphhopper/routing/Path;
    .locals 1

    const/4 v0, -0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/graphhopper/routing/AStar;->calcPath(IIII)Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0
.end method

.method public calcPath(IIII)Lcom/graphhopper/routing/Path;
    .locals 7

    const/4 v0, -0x2

    if-ne p3, v0, :cond_0

    if-eq p4, v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    :cond_1
    iput p3, p0, Lcom/graphhopper/routing/AStar;->fromOutEdge:I

    .line 4
    iput p4, p0, Lcom/graphhopper/routing/AStar;->toInEdge:I

    .line 5
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->checkAlreadyRun()V

    .line 6
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->setupFinishTime()V

    .line 7
    iput p2, p0, Lcom/graphhopper/routing/AStar;->to:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    if-ne p4, v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p3, p0, Lcom/graphhopper/routing/AStar;->weightApprox:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {p3, p2}, Lcom/graphhopper/routing/weighting/WeightApproximator;->setTo(I)V

    .line 9
    iget-object p2, p0, Lcom/graphhopper/routing/AStar;->weightApprox:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {p2, p1}, Lcom/graphhopper/routing/weighting/WeightApproximator;->approximate(I)D

    move-result-wide p2

    .line 10
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/graphhopper/routing/AStar;->extractPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0

    .line 12
    :cond_3
    new-instance v0, Lcom/graphhopper/routing/AStar$AStarEntry;

    const-wide/16 v1, 0x0

    add-double v3, p2, v1

    const-wide/16 v5, 0x0

    const/4 v1, -0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/AStar$AStarEntry;-><init>(IIDD)V

    .line 13
    iget-object p1, p0, Lcom/graphhopper/routing/AStar;->fromHeap:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {p1}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/graphhopper/routing/AStar;->fromMap:Lcom/graphhopper/coll/GHIntObjectHashMap;

    iget-object p2, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    invoke-virtual {p1, v2, p2}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/graphhopper/routing/AStar;->runAlgo()V

    .line 17
    invoke-virtual {p0}, Lcom/graphhopper/routing/AStar;->extractPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0

    .line 18
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/AStar;->extractPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0

    .line 19
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Restricting the start/target edges is only possible for edge-based graph traversal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public extractPath()Lcom/graphhopper/routing/Path;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/graphhopper/routing/AStar;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v2, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    invoke-static {v0, v1, v2}, Lcom/graphhopper/routing/PathExtractor;->extractPath(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/SPTEntry;)Lcom/graphhopper/routing/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/routing/AStar;->currEdge:Lcom/graphhopper/routing/AStar$AStarEntry;

    invoke-virtual {p0}, Lcom/graphhopper/routing/AStar$AStarEntry;->getWeightOfVisitedPath()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/routing/Path;->setWeight(D)Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->createEmptyPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/AStar;->weightApprox:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "astar|"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVisitedNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/AStar;->visitedNodes:I

    return p0
.end method

.method public initCollections(I)V
    .locals 1

    new-instance v0, Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-direct {v0}, Lcom/graphhopper/coll/GHIntObjectHashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/AStar;->fromMap:Lcom/graphhopper/coll/GHIntObjectHashMap;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0, p1}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/AStar;->fromHeap:Ljava/util/PriorityQueue;

    return-void
.end method

.method public setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStar;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/AStar;->weightApprox:Lcom/graphhopper/routing/weighting/WeightApproximator;

    return-object p0
.end method

.method public updateBestPath(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;I)V
    .locals 0

    return-void
.end method
