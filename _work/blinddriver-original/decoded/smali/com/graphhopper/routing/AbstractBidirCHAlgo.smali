.class public abstract Lcom/graphhopper/routing/AbstractBidirCHAlgo;
.super Lcom/graphhopper/routing/AbstractBidirAlgo;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/AbstractBidirCHAlgo$CHLevelEdgeFilter;
    }
.end annotation


# instance fields
.field protected final graph:Lcom/graphhopper/storage/RoutingCHGraph;

.field protected inEdgeExplorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

.field protected levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

.field protected final nodeAccess:Lcom/graphhopper/storage/NodeAccess;

.field protected outEdgeExplorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

.field private pathExtractorSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/graphhopper/routing/BidirPathExtractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/routing/util/TraversalMode;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/graphhopper/routing/AbstractBidirAlgo;-><init>(Lcom/graphhopper/routing/util/TraversalMode;)V

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->hasTurnCosts()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

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
    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object p2

    invoke-interface {p2}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->createOutEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->outEdgeExplorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->createInEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->inEdgeExplorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    new-instance p2, Lcom/graphhopper/routing/AbstractBidirCHAlgo$CHLevelEdgeFilter;

    invoke-direct {p2, p1}, Lcom/graphhopper/routing/AbstractBidirCHAlgo$CHLevelEdgeFilter;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    iput-object p2, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    new-instance p2, Lcom/graphhopper/routing/b;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/graphhopper/routing/b;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;I)V

    iput-object p2, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->pathExtractorSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getNodes()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    const/16 p2, 0xc8

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const p2, 0x249f0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->initCollections(I)V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/AbstractBidirCHAlgo;Lcom/graphhopper/storage/CHEdgeFilter;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->lambda$postInitFrom$1(Lcom/graphhopper/storage/CHEdgeFilter;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/graphhopper/storage/RoutingCHGraph;)Lcom/graphhopper/routing/BidirPathExtractor;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->lambda$new$0(Lcom/graphhopper/storage/RoutingCHGraph;)Lcom/graphhopper/routing/BidirPathExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/graphhopper/routing/AbstractBidirCHAlgo;Lcom/graphhopper/storage/CHEdgeFilter;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->lambda$postInitTo$2(Lcom/graphhopper/storage/CHEdgeFilter;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method private fillEdges(Lcom/graphhopper/routing/SPTEntry;Ljava/util/PriorityQueue;Lcom/carrotsearch/hppc/o0;Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/SPTEntry;",
            "Ljava/util/PriorityQueue<",
            "Lcom/graphhopper/routing/SPTEntry;",
            ">;",
            "Lcom/carrotsearch/hppc/o0;",
            "Lcom/graphhopper/storage/RoutingCHEdgeExplorer;",
            "Z)V"
        }
    .end annotation

    move/from16 v7, p5

    iget v0, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-interface {p4, v0}, Lcom/graphhopper/storage/RoutingCHEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/storage/RoutingCHEdgeIterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Lcom/graphhopper/storage/RoutingCHEdgeIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v8, p1, v7}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v8, p1, v7}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->calcWeight(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v8}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyFirst()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-interface {v8}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyLast()I

    move-result v0

    :goto_1
    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v3

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v0, v8, v7}, Lcom/graphhopper/routing/util/TraversalMode;->createTraversalId(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;Z)I

    move-result v9

    invoke-interface {p3, v9}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/SPTEntry;

    if-nez v0, :cond_3

    invoke-interface {v8}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getEdge()I

    move-result v1

    invoke-interface {v8}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result v2

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->createEntry(IIIDLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;

    move-result-object v1

    invoke-interface {p3, v9, v1}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v6

    cmpl-double v1, v6, v4

    if-lez v1, :cond_8

    invoke-virtual {v0}, Lcom/graphhopper/routing/SPTEntry;->setDeleted()V

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-eqz p5, :cond_5

    iget-object v7, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

    if-ne v0, v7, :cond_4

    :goto_2
    move v10, v6

    goto :goto_3

    :cond_4
    move v10, v1

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

    if-ne v0, v7, :cond_4

    goto :goto_2

    :goto_3
    invoke-interface {v8}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getEdge()I

    move-result v1

    invoke-interface {v8}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result v2

    move-object v0, p0

    move-object v6, p1

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->createEntry(IIIDLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;

    move-result-object v1

    invoke-interface {p3, v9, v1}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_7

    if-eqz p5, :cond_6

    iput-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

    goto :goto_4

    :cond_6
    iput-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

    :cond_7
    :goto_4
    iget-boolean v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->updateBestPath:Z

    if-eqz v2, :cond_8

    move v4, v3

    move-object v3, v1

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move/from16 v6, p5

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/graphhopper/routing/AbstractBidirAlgo;->updateBestPath(DLcom/graphhopper/routing/SPTEntry;IIZ)V

    :cond_8
    move/from16 v7, p5

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/graphhopper/storage/RoutingCHGraph;)Lcom/graphhopper/routing/BidirPathExtractor;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    return-object v0
.end method

.method private synthetic lambda$postInitFrom$1(Lcom/graphhopper/storage/CHEdgeFilter;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/graphhopper/storage/CHEdgeFilter;->accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-interface {p2}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyFirst()I

    move-result p1

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p1

    iget p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromOutEdge:I

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$postInitTo$2(Lcom/graphhopper/storage/CHEdgeFilter;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/graphhopper/storage/CHEdgeFilter;->accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-interface {p2}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyLast()I

    move-result p1

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p1

    iget p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)Z
    .locals 0

    iget-object p3, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {p3}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getEdge()I

    move-result p3

    invoke-virtual {p0, p2}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getIncomingEdge(Lcom/graphhopper/routing/SPTEntry;)I

    move-result p2

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/graphhopper/storage/CHEdgeFilter;->accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

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

.method public calcWeight(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)D
    .locals 1

    .line 5
    invoke-virtual {p0, p2}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getIncomingEdge(Lcom/graphhopper/routing/SPTEntry;)I

    move-result v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->calcWeight(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)D

    move-result-wide p0

    invoke-virtual {p2}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide p2

    add-double/2addr p2, p0

    return-wide p2
.end method

.method public calcWeight(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)D
    .locals 3

    .line 1
    invoke-interface {p1, p2}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getWeight(Z)D

    move-result-wide v0

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyLast()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyFirst()I

    move-result v2

    :goto_0
    invoke-static {v2}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v2

    if-eqz p2, :cond_1

    .line 3
    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result p1

    invoke-interface {p0, v2, p1, p3}, Lcom/graphhopper/storage/RoutingCHGraph;->getTurnWeight(III)D

    move-result-wide p0

    goto :goto_1

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result p1

    invoke-interface {p0, p3, p1, v2}, Lcom/graphhopper/storage/RoutingCHGraph;->getTurnWeight(III)D

    move-result-wide p0

    :goto_1
    add-double/2addr v0, p0

    return-wide v0
.end method

.method public createEmptyPath()Lcom/graphhopper/routing/Path;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/Path;

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/Path;-><init>(Lcom/graphhopper/storage/Graph;)V

    return-object v0
.end method

.method public abstract createEntry(IIIDLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;
.end method

.method public createPathExtractor()Lcom/graphhopper/routing/BidirPathExtractor;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->pathExtractorSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/BidirPathExtractor;

    return-object p0
.end method

.method public extractPath()Lcom/graphhopper/routing/Path;
    .locals 5

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->createPathExtractor()Lcom/graphhopper/routing/BidirPathExtractor;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

    iget-object v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v3, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/graphhopper/routing/BidirPathExtractor;->extract(Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;D)Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->createEmptyPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0
.end method

.method public fillEdgesFrom()Z
    .locals 9

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

    iget-object v4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-object v5, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetFrom:Ljava/util/PriorityQueue;

    iget-object v6, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    iget-object v7, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->outEdgeExplorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdges(Lcom/graphhopper/routing/SPTEntry;Ljava/util/PriorityQueue;Lcom/carrotsearch/hppc/o0;Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Z)V

    return v2
.end method

.method public fillEdgesFromUsingFilter(Lcom/graphhopper/storage/CHEdgeFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdgesFrom()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    return-void
.end method

.method public fillEdgesTo()Z
    .locals 9

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

    iget-object v4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-object v5, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetTo:Ljava/util/PriorityQueue;

    iget-object v6, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    iget-object v7, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->inEdgeExplorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdges(Lcom/graphhopper/routing/SPTEntry;Ljava/util/PriorityQueue;Lcom/carrotsearch/hppc/o0;Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Z)V

    return v2
.end method

.method public fillEdgesToUsingFilter(Lcom/graphhopper/storage/CHEdgeFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdgesTo()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    return-void
.end method

.method public finished()Z
    .locals 6

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v2, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    iget-wide v4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v2, p0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getInEdgeWeight(Lcom/graphhopper/routing/SPTEntry;)D
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public initCollections(I)V
    .locals 1

    const/16 v0, 0x7d0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-super {p0, p1}, Lcom/graphhopper/routing/AbstractBidirAlgo;->initCollections(I)V

    return-void
.end method

.method public postInitFrom()V
    .locals 3

    iget v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromOutEdge:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdgesFromUsingFilter(Lcom/graphhopper/storage/CHEdgeFilter;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    new-instance v1, Lcom/graphhopper/routing/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/graphhopper/routing/a;-><init>(Lcom/graphhopper/routing/AbstractBidirCHAlgo;Lcom/graphhopper/storage/CHEdgeFilter;I)V

    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdgesFromUsingFilter(Lcom/graphhopper/storage/CHEdgeFilter;)V

    return-void
.end method

.method public postInitTo()V
    .locals 3

    iget v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdgesToUsingFilter(Lcom/graphhopper/storage/CHEdgeFilter;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    new-instance v1, Lcom/graphhopper/routing/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/graphhopper/routing/a;-><init>(Lcom/graphhopper/routing/AbstractBidirCHAlgo;Lcom/graphhopper/storage/CHEdgeFilter;I)V

    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdgesToUsingFilter(Lcom/graphhopper/storage/CHEdgeFilter;)V

    return-void
.end method

.method public setPathExtractorSupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/graphhopper/routing/BidirPathExtractor;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->pathExtractorSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "|"

    invoke-static {v0, v1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateEntry(Lcom/graphhopper/routing/SPTEntry;IIIDLcom/graphhopper/routing/SPTEntry;Z)V
    .locals 0

    iput p2, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iput-wide p5, p1, Lcom/graphhopper/routing/SPTEntry;->weight:D

    iput-object p7, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    return-void
.end method
