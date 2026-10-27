.class public abstract Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;
.super Lcom/graphhopper/routing/AbstractBidirCHAlgo;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final innerExplorer:Lcom/graphhopper/util/EdgeExplorer;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;)V
    .locals 2

    sget-object v0, Lcom/graphhopper/routing/util/TraversalMode;->EDGE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/routing/util/TraversalMode;)V

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->isEdgeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object v0

    invoke-interface {v0}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;->innerExplorer:Lcom/graphhopper/util/EdgeExplorer;

    new-instance v0, Lcom/graphhopper/routing/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/graphhopper/routing/b;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;I)V

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->setPathExtractorSupplier(Ljava/util/function/Supplier;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Edge-based CH algorithms only work with edge-based CH graphs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lcom/graphhopper/storage/RoutingCHGraph;)Lcom/graphhopper/routing/BidirPathExtractor;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;->lambda$new$0(Lcom/graphhopper/storage/RoutingCHGraph;)Lcom/graphhopper/routing/BidirPathExtractor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;->lambda$postInitFrom$1(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;->lambda$postInitTo$2(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(Lcom/graphhopper/storage/RoutingCHGraph;)Lcom/graphhopper/routing/BidirPathExtractor;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    return-object v0
.end method

.method private synthetic lambda$postInitFrom$1(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyFirst()I

    move-result p1

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p1

    iget p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromOutEdge:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$postInitTo$2(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyLast()I

    move-result p1

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

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
.method public accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->levelEdgeFilter:Lcom/graphhopper/storage/CHEdgeFilter;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/graphhopper/storage/CHEdgeFilter;->accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getIncomingEdge(Lcom/graphhopper/routing/SPTEntry;)I
    .locals 0

    check-cast p1, Lcom/graphhopper/routing/ch/CHEntry;

    iget p0, p1, Lcom/graphhopper/routing/ch/CHEntry;->incEdge:I

    return p0
.end method

.method public postInitFrom()V
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromOutEdge:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/graphhopper/storage/CHEdgeFilter;->ALL_EDGES:Lcom/graphhopper/storage/CHEdgeFilter;

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdgesFromUsingFilter(Lcom/graphhopper/storage/CHEdgeFilter;)V

    return-void

    :cond_0
    new-instance v0, Lcom/graphhopper/routing/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/c;-><init>(Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;I)V

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdgesFromUsingFilter(Lcom/graphhopper/storage/CHEdgeFilter;)V

    return-void
.end method

.method public postInitTo()V
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/graphhopper/storage/CHEdgeFilter;->ALL_EDGES:Lcom/graphhopper/storage/CHEdgeFilter;

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdgesToUsingFilter(Lcom/graphhopper/storage/CHEdgeFilter;)V

    return-void

    :cond_0
    new-instance v0, Lcom/graphhopper/routing/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/c;-><init>(Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;I)V

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->fillEdgesToUsingFilter(Lcom/graphhopper/storage/CHEdgeFilter;)V

    return-void
.end method

.method public updateBestPath(DLcom/graphhopper/routing/SPTEntry;IIZ)V
    .locals 6

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->from:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->to:I

    :goto_0
    if-eqz p6, :cond_1

    iget p2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromOutEdge:I

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    :goto_1
    const/4 p5, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x2

    if-eqz p6, :cond_2

    iget v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromOutEdge:I

    if-eq v2, v1, :cond_3

    :goto_2
    move p5, v0

    goto :goto_3

    :cond_2
    iget v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    if-eq v2, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    iget v0, p3, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    if-ne v0, p1, :cond_7

    if-eqz p5, :cond_4

    if-ne p4, p2, :cond_7

    :cond_4
    invoke-virtual {p3}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    cmpg-double p2, v0, v2

    if-gez p2, :cond_7

    const-wide/16 p4, 0x0

    if-eqz p6, :cond_5

    new-instance p2, Lcom/graphhopper/routing/ch/CHEntry;

    invoke-direct {p2, p1, p4, p5}, Lcom/graphhopper/routing/ch/CHEntry;-><init>(ID)V

    goto :goto_4

    :cond_5
    move-object p2, p3

    :goto_4
    iput-object p2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

    if-eqz p6, :cond_6

    move-object p2, p3

    goto :goto_5

    :cond_6
    new-instance p2, Lcom/graphhopper/routing/ch/CHEntry;

    invoke-direct {p2, p1, p4, p5}, Lcom/graphhopper/routing/ch/CHEntry;-><init>(ID)V

    :goto_5
    iput-object p2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

    invoke-virtual {p3}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    return-void

    :cond_7
    iget-object p1, p0, Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;->innerExplorer:Lcom/graphhopper/util/EdgeExplorer;

    iget p2, p3, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-interface {p1, p2}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p1

    :cond_8
    :goto_6
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p2

    iget-object p5, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {p5, p1, p6}, Lcom/graphhopper/routing/util/TraversalMode;->createTraversalId(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result p5

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapOther:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v0, p5}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/graphhopper/routing/SPTEntry;

    if-nez p5, :cond_9

    goto :goto_6

    :cond_9
    if-eqz p6, :cond_a

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v1

    invoke-interface {v0, p2, v1, p4}, Lcom/graphhopper/storage/RoutingCHGraph;->getTurnWeight(III)D

    move-result-wide v0

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v1

    invoke-interface {v0, p4, v1, p2}, Lcom/graphhopper/storage/RoutingCHGraph;->getTurnWeight(III)D

    move-result-wide v0

    :goto_7
    invoke-virtual {p3}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v2

    invoke-virtual {p5}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v4

    add-double/2addr v4, v2

    add-double/2addr v4, v0

    iget-wide v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    cmpg-double p2, v4, v0

    if-gez p2, :cond_8

    if-eqz p6, :cond_b

    move-object p2, p5

    goto :goto_8

    :cond_b
    move-object p2, p3

    :goto_8
    iput-object p2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

    if-eqz p6, :cond_c

    move-object p5, p3

    :cond_c
    iput-object p5, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

    iput-wide v4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    goto :goto_6

    :cond_d
    return-void
.end method
