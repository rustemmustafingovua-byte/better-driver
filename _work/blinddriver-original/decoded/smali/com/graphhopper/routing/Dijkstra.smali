.class public Lcom/graphhopper/routing/Dijkstra;
.super Lcom/graphhopper/routing/AbstractRoutingAlgorithm;
.source "SourceFile"


# instance fields
.field protected currEdge:Lcom/graphhopper/routing/SPTEntry;

.field protected fromHeap:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/graphhopper/routing/SPTEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected fromMap:Lcom/carrotsearch/hppc/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation
.end field

.field private to:I

.field private visitedNodes:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/graphhopper/routing/Dijkstra;->to:I

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    const/16 p2, 0xc8

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 p2, 0x7d0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Dijkstra;->initCollections(I)V

    return-void
.end method

.method private extractPath()Lcom/graphhopper/routing/Path;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/routing/Dijkstra;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object p0, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    invoke-static {v0, v1, p0}, Lcom/graphhopper/routing/PathExtractor;->extractPath(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/SPTEntry;)Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->createEmptyPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calcPath(II)Lcom/graphhopper/routing/Path;
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->checkAlreadyRun()V

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->setupFinishTime()V

    iput p2, p0, Lcom/graphhopper/routing/Dijkstra;->to:I

    new-instance p2, Lcom/graphhopper/routing/SPTEntry;

    const-wide/16 v0, 0x0

    invoke-direct {p2, p1, v0, v1}, Lcom/graphhopper/routing/SPTEntry;-><init>(ID)V

    iget-object v0, p0, Lcom/graphhopper/routing/Dijkstra;->fromHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {p2}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/graphhopper/routing/Dijkstra;->fromMap:Lcom/carrotsearch/hppc/o0;

    iget-object v0, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    invoke-interface {p2, p1, v0}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/Dijkstra;->runAlgo()V

    invoke-direct {p0}, Lcom/graphhopper/routing/Dijkstra;->extractPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0
.end method

.method public finished()Z
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    iget v0, v0, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    iget p0, p0, Lcom/graphhopper/routing/Dijkstra;->to:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "dijkstra"

    return-object p0
.end method

.method public getVisitedNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/Dijkstra;->visitedNodes:I

    return p0
.end method

.method public initCollections(I)V
    .locals 1

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0, p1}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/Dijkstra;->fromHeap:Ljava/util/PriorityQueue;

    new-instance v0, Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-direct {v0, p1}, Lcom/graphhopper/coll/GHIntObjectHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/Dijkstra;->fromMap:Lcom/carrotsearch/hppc/o0;

    return-void
.end method

.method public runAlgo()V
    .locals 12

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/graphhopper/routing/Dijkstra;->fromHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/graphhopper/routing/Dijkstra;->fromHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/SPTEntry;

    iput-object v0, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    invoke-virtual {v0}, Lcom/graphhopper/routing/SPTEntry;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/graphhopper/routing/Dijkstra;->visitedNodes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphhopper/routing/Dijkstra;->visitedNodes:I

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->isMaxVisitedNodesExceeded()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/graphhopper/routing/Dijkstra;->finished()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->isTimeoutExceeded()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    iget v0, v0, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {v1, v0}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    iget v1, v1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->accept(Lcom/graphhopper/util/EdgeIteratorState;I)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v2, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    iget v2, v2, Lcom/graphhopper/routing/SPTEntry;->edge:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/graphhopper/util/GHUtility;->calcWeightWithTurnWeight(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)D

    move-result-wide v1

    iget-object v4, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v4, v4, Lcom/graphhopper/routing/SPTEntry;->weight:D

    add-double v9, v1, v4

    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v1, v0, v3}, Lcom/graphhopper/routing/util/TraversalMode;->createTraversalId(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/Dijkstra;->fromMap:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v2, v1}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/routing/SPTEntry;

    if-nez v2, :cond_6

    new-instance v6, Lcom/graphhopper/routing/SPTEntry;

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v7

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v8

    iget-object v11, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    invoke-direct/range {v6 .. v11}, Lcom/graphhopper/routing/SPTEntry;-><init>(IIDLcom/graphhopper/routing/SPTEntry;)V

    iget-object v2, p0, Lcom/graphhopper/routing/Dijkstra;->fromMap:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v2, v1, v6}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/graphhopper/routing/Dijkstra;->fromHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-wide v3, v2, Lcom/graphhopper/routing/SPTEntry;->weight:D

    cmpl-double v3, v3, v9

    if-lez v3, :cond_3

    invoke-virtual {v2}, Lcom/graphhopper/routing/SPTEntry;->setDeleted()V

    new-instance v6, Lcom/graphhopper/routing/SPTEntry;

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v7

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v8

    iget-object v11, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    invoke-direct/range {v6 .. v11}, Lcom/graphhopper/routing/SPTEntry;-><init>(IIDLcom/graphhopper/routing/SPTEntry;)V

    iget-object v2, p0, Lcom/graphhopper/routing/Dijkstra;->fromMap:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v2, v1, v6}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/graphhopper/routing/Dijkstra;->fromHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p0, v0, v6, v1}, Lcom/graphhopper/routing/Dijkstra;->updateBestPath(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;I)V

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method public updateBestPath(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;I)V
    .locals 0

    return-void
.end method
