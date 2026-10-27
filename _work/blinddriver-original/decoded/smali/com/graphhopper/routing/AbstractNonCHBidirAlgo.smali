.class public abstract Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;
.super Lcom/graphhopper/routing/AbstractBidirAlgo;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;


# instance fields
.field protected additionalEdgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

.field protected edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

.field protected final graph:Lcom/graphhopper/storage/Graph;

.field protected final nodeAccess:Lcom/graphhopper/storage/NodeAccess;

.field protected final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/graphhopper/routing/AbstractBidirAlgo;-><init>(Lcom/graphhopper/routing/util/TraversalMode;)V

    iput-object p2, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p2}, Lcom/graphhopper/routing/weighting/Weighting;->hasTurnCosts()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Weightings supporting turn costs cannot be used with node-based traversal mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    const/16 p2, 0xc8

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const p2, 0x249f0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AbstractBidirAlgo;->initCollections(I)V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->lambda$postInitTo$1(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->lambda$postInitFrom$0(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method private fillEdges(Lcom/graphhopper/routing/SPTEntry;Ljava/util/PriorityQueue;Lcom/carrotsearch/hppc/o0;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/SPTEntry;",
            "Ljava/util/PriorityQueue<",
            "Lcom/graphhopper/routing/SPTEntry;",
            ">;",
            "Lcom/carrotsearch/hppc/o0;",
            "Z)V"
        }
    .end annotation

    move v5, p4

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    iget v2, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-interface {v1, v2}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->accept(Lcom/graphhopper/util/EdgeIteratorState;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1, p4}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->calcWeight(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v6, v1, p4}, Lcom/graphhopper/routing/util/TraversalMode;->createTraversalId(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v6

    invoke-interface {p3, v6}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/graphhopper/routing/SPTEntry;

    if-nez v7, :cond_3

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->createEntry(Lcom/graphhopper/util/EdgeIteratorState;DLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;

    move-result-object v2

    invoke-interface {p3, v6, v2}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move v5, p4

    move-object v8, v1

    :cond_2
    :goto_1
    move-object v3, v2

    goto :goto_4

    :cond_3
    invoke-virtual {v7}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v4

    cmpl-double v4, v4, v2

    if-lez v4, :cond_9

    invoke-virtual {v7}, Lcom/graphhopper/routing/SPTEntry;->setDeleted()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p4, :cond_5

    iget-object v8, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

    if-ne v7, v8, :cond_4

    :goto_2
    move-object v0, p0

    move-object v4, p1

    move v7, v5

    move v5, p4

    goto :goto_3

    :cond_4
    move-object v0, p0

    move v5, p4

    move v7, v4

    move-object v4, p1

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

    if-ne v7, v8, :cond_4

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->createEntry(Lcom/graphhopper/util/EdgeIteratorState;DLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;

    move-result-object v2

    move-object v8, v1

    invoke-interface {p3, v6, v2}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_2

    if-eqz v5, :cond_6

    iput-object v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

    goto :goto_1

    :cond_6
    iput-object v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

    goto :goto_1

    :goto_4
    iget-boolean v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->updateBestPath:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v1}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v1, v8, p4}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v1

    goto :goto_5

    :cond_7
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_5
    const/4 v4, -0x1

    move v0, v6

    move v6, v5

    move v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/graphhopper/routing/AbstractBidirAlgo;->updateBestPath(DLcom/graphhopper/routing/SPTEntry;IIZ)V

    :cond_8
    move v5, p4

    move-object v1, v8

    goto/16 :goto_0

    :cond_9
    move v5, p4

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private synthetic lambda$postInitFrom$0(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p1

    iget p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromOutEdge:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$postInitTo$1(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p1

    iget p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public accept(Lcom/graphhopper/util/EdgeIteratorState;I)Z
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->additionalEdgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/util/EdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public calcWeight(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)D
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget v0, p2, Lcom/graphhopper/routing/SPTEntry;->edge:I

    invoke-static {p0, p1, p3, v0}, Lcom/graphhopper/util/GHUtility;->calcWeightWithTurnWeight(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)D

    move-result-wide p0

    invoke-virtual {p2}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide p2

    add-double/2addr p2, p0

    return-wide p2
.end method

.method public createEmptyPath()Lcom/graphhopper/routing/Path;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/Path;

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/Path;-><init>(Lcom/graphhopper/storage/Graph;)V

    return-object v0
.end method

.method public abstract createEntry(Lcom/graphhopper/util/EdgeIteratorState;DLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;
.end method

.method public createPathExtractor(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/DefaultBidirPathExtractor;
    .locals 0

    new-instance p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V

    return-object p0
.end method

.method public extractPath()Lcom/graphhopper/routing/Path;
    .locals 5

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->createPathExtractor(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/DefaultBidirPathExtractor;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

    iget-object v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v3, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->extract(Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;D)Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->createEmptyPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0
.end method

.method public fillEdgesFrom()Z
    .locals 5

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetFrom:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetFrom:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/SPTEntry;

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    invoke-virtual {v0}, Lcom/graphhopper/routing/SPTEntry;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->visitedCountFrom:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->visitedCountFrom:I

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromEntryCanBeSkipped()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->fwdSearchCanBeStopped()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapOther:Lcom/carrotsearch/hppc/o0;

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-object v3, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetFrom:Ljava/util/PriorityQueue;

    iget-object v4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->fillEdges(Lcom/graphhopper/routing/SPTEntry;Ljava/util/PriorityQueue;Lcom/carrotsearch/hppc/o0;Z)V

    return v2
.end method

.method public fillEdgesFromUsingFilter(Lcom/graphhopper/routing/util/EdgeFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->additionalEdgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->fillEdgesFrom()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->additionalEdgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    return-void
.end method

.method public fillEdgesTo()Z
    .locals 4

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetTo:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetTo:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/SPTEntry;

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    invoke-virtual {v0}, Lcom/graphhopper/routing/SPTEntry;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->visitedCountTo:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->visitedCountTo:I

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->toEntryCanBeSkipped()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->bwdSearchCanBeStopped()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapOther:Lcom/carrotsearch/hppc/o0;

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetTo:Ljava/util/PriorityQueue;

    iget-object v3, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->fillEdges(Lcom/graphhopper/routing/SPTEntry;Ljava/util/PriorityQueue;Lcom/carrotsearch/hppc/o0;Z)V

    return v2
.end method

.method public fillEdgesToUsingFilter(Lcom/graphhopper/routing/util/EdgeFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->additionalEdgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->fillEdgesTo()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->additionalEdgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    return-void
.end method

.method public getInEdgeWeight(Lcom/graphhopper/routing/SPTEntry;)D
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    iget v1, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget p1, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-interface {p0, v1, p1}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public postInitFrom()V
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromOutEdge:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->fillEdgesFrom()Z

    return-void

    :cond_0
    new-instance v0, Lcom/graphhopper/routing/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/d;-><init>(Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;I)V

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->fillEdgesFromUsingFilter(Lcom/graphhopper/routing/util/EdgeFilter;)V

    return-void
.end method

.method public postInitTo()V
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->fillEdgesTo()Z

    return-void

    :cond_0
    new-instance v0, Lcom/graphhopper/routing/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/d;-><init>(Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;I)V

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->fillEdgesToUsingFilter(Lcom/graphhopper/routing/util/EdgeFilter;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "|"

    invoke-static {v0, v1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
