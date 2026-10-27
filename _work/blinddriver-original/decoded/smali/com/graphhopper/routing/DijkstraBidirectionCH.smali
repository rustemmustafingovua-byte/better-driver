.class public Lcom/graphhopper/routing/DijkstraBidirectionCH;
.super Lcom/graphhopper/routing/DijkstraBidirectionCHNoSOD;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/DijkstraBidirectionCHNoSOD;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    return-void
.end method

.method private entryIsStallable(Lcom/graphhopper/routing/SPTEntry;Lcom/carrotsearch/hppc/o0;Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/SPTEntry;",
            "Lcom/carrotsearch/hppc/o0;",
            "Lcom/graphhopper/storage/RoutingCHEdgeExplorer;",
            "Z)Z"
        }
    .end annotation

    iget v0, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-interface {p3, v0}, Lcom/graphhopper/storage/RoutingCHEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/storage/RoutingCHEdgeIterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Lcom/graphhopper/storage/RoutingCHEdgeIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getEdge()I

    move-result v0

    iget v1, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/SPTEntry;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    const/4 v2, 0x1

    xor-int/lit8 v3, p4, 0x1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getIncomingEdge(Lcom/graphhopper/routing/SPTEntry;)I

    move-result v4

    invoke-virtual {p0, p3, v3, v4}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->calcWeight(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)D

    move-result-wide v3

    add-double/2addr v3, v0

    iget-wide v0, p1, Lcom/graphhopper/routing/SPTEntry;->weight:D

    sub-double/2addr v3, v0

    const-wide v0, -0x40af9db22d0e5604L    # -0.001

    cmpg-double v0, v3, v0

    if-gez v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public fromEntryCanBeSkipped()Z
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    iget-object v2, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->inEdgeExplorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/graphhopper/routing/DijkstraBidirectionCH;->entryIsStallable(Lcom/graphhopper/routing/SPTEntry;Lcom/carrotsearch/hppc/o0;Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Z)Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "dijkstrabi|ch"

    return-object p0
.end method

.method public toEntryCanBeSkipped()Z
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    iget-object v2, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->outEdgeExplorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/graphhopper/routing/DijkstraBidirectionCH;->entryIsStallable(Lcom/graphhopper/routing/SPTEntry;Lcom/carrotsearch/hppc/o0;Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Z)Z

    move-result p0

    return p0
.end method
