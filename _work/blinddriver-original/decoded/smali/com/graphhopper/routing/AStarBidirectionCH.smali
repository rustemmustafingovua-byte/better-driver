.class public Lcom/graphhopper/routing/AStarBidirectionCH;
.super Lcom/graphhopper/routing/AbstractBidirCHAlgo;
.source "SourceFile"


# instance fields
.field private weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;)V
    .locals 2

    sget-object v0, Lcom/graphhopper/routing/util/TraversalMode;->NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/routing/util/TraversalMode;)V

    new-instance v0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;-><init>(Lcom/graphhopper/storage/NodeAccess;Lcom/graphhopper/routing/weighting/Weighting;)V

    sget-object p1, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->setDistanceCalc(Lcom/graphhopper/util/DistanceCalc;)Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AStarBidirectionCH;->setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStarBidirectionCH;

    return-void
.end method


# virtual methods
.method public calcWeight(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)D
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->calcWeight(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public createEntry(IIIDLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/AStarBidirectionCH;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-virtual {p0, p2, p7}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->approximate(IZ)D

    move-result-wide v0

    add-double/2addr v0, p4

    new-instance p0, Lcom/graphhopper/routing/AStar$AStarEntry;

    move-object p7, p6

    move-wide p5, p4

    move-wide p3, v0

    invoke-direct/range {p0 .. p7}, Lcom/graphhopper/routing/AStar$AStarEntry;-><init>(IIDDLcom/graphhopper/routing/SPTEntry;)V

    return-object p0
.end method

.method public createStartEntry(IDZ)Lcom/graphhopper/routing/SPTEntry;
    .locals 9

    iget-object p0, p0, Lcom/graphhopper/routing/AStarBidirectionCH;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-virtual {p0, p1, p4}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->approximate(IZ)D

    move-result-wide v0

    add-double v5, v0, p2

    new-instance v2, Lcom/graphhopper/routing/AStar$AStarEntry;

    const/4 v3, -0x1

    move v4, p1

    move-wide v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/graphhopper/routing/AStar$AStarEntry;-><init>(IIDD)V

    return-object v2
.end method

.method public getApproximation()Lcom/graphhopper/routing/weighting/WeightApproximator;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AStarBidirectionCH;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-virtual {p0}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->getApproximation()Lcom/graphhopper/routing/weighting/WeightApproximator;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "astarbi|ch"

    return-object p0
.end method

.method public init(IDID)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/AStarBidirectionCH;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-virtual {v0, p1, p4}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->setFromTo(II)V

    invoke-super/range {p0 .. p6}, Lcom/graphhopper/routing/AbstractBidirAlgo;->init(IDID)V

    return-void
.end method

.method public setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStarBidirectionCH;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;-><init>(Lcom/graphhopper/routing/weighting/WeightApproximator;)V

    iput-object v0, p0, Lcom/graphhopper/routing/AStarBidirectionCH;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    return-object p0
.end method

.method public updateEntry(Lcom/graphhopper/routing/SPTEntry;IIIDLcom/graphhopper/routing/SPTEntry;Z)V
    .locals 0

    iput p2, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget-object p0, p0, Lcom/graphhopper/routing/AStarBidirectionCH;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-virtual {p0, p3, p8}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->approximate(IZ)D

    move-result-wide p2

    add-double/2addr p2, p5

    iput-wide p2, p1, Lcom/graphhopper/routing/SPTEntry;->weight:D

    move-object p0, p1

    check-cast p0, Lcom/graphhopper/routing/AStar$AStarEntry;

    iput-wide p5, p0, Lcom/graphhopper/routing/AStar$AStarEntry;->weightOfVisitedPath:D

    iput-object p7, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    return-void
.end method
