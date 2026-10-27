.class public Lcom/graphhopper/routing/AStarBidirection;
.super Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;
.source "SourceFile"


# instance fields
.field stoppingCriterionOffset:D

.field private weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    new-instance p1, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    iget-object p3, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-direct {p1, p3, p2}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;-><init>(Lcom/graphhopper/storage/NodeAccess;Lcom/graphhopper/routing/weighting/Weighting;)V

    sget-object p2, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {p1, p2}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->setDistanceCalc(Lcom/graphhopper/util/DistanceCalc;)Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AStarBidirection;->setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStarBidirection;

    return-void
.end method


# virtual methods
.method public calcWeight(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)D
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->calcWeight(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public createEntry(Lcom/graphhopper/util/EdgeIteratorState;DLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;
    .locals 8

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    iget-object p0, p0, Lcom/graphhopper/routing/AStarBidirection;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-virtual {p0, v2, p5}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->approximate(IZ)D

    move-result-wide v0

    add-double v3, v0, p2

    new-instance v0, Lcom/graphhopper/routing/AStar$AStarEntry;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/graphhopper/routing/AStar$AStarEntry;-><init>(IIDDLcom/graphhopper/routing/SPTEntry;)V

    return-object v0
.end method

.method public createStartEntry(IDZ)Lcom/graphhopper/routing/SPTEntry;
    .locals 9

    iget-object p0, p0, Lcom/graphhopper/routing/AStarBidirection;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

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

.method public finished()Z
    .locals 8

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v2, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v4, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    iget-wide v6, p0, Lcom/graphhopper/routing/AStarBidirection;->stoppingCriterionOffset:D

    add-double/2addr v4, v6

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public getApproximation()Lcom/graphhopper/routing/weighting/WeightApproximator;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AStarBidirection;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-virtual {p0}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->getApproximation()Lcom/graphhopper/routing/weighting/WeightApproximator;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/AStarBidirection;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "astarbi|"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(IDID)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/AStarBidirection;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-virtual {v0, p1, p4}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->setFromTo(II)V

    iget-object v0, p0, Lcom/graphhopper/routing/AStarBidirection;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    const/4 v1, 0x1

    invoke-virtual {v0, p4, v1}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->approximate(IZ)D

    move-result-wide v0

    iget-object v2, p0, Lcom/graphhopper/routing/AStarBidirection;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-virtual {v2}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->getSlack()D

    move-result-wide v2

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/graphhopper/routing/AStarBidirection;->stoppingCriterionOffset:D

    invoke-super/range {p0 .. p6}, Lcom/graphhopper/routing/AbstractBidirAlgo;->init(IDID)V

    return-void
.end method

.method public setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStarBidirection;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;-><init>(Lcom/graphhopper/routing/weighting/WeightApproximator;)V

    iput-object v0, p0, Lcom/graphhopper/routing/AStarBidirection;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    return-object p0
.end method

.method public setToDataStructures(Lcom/graphhopper/routing/AbstractBidirAlgo;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
