.class public Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;
.super Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;
.source "SourceFile"


# instance fields
.field private final useHeuristicForNodeOrder:Z

.field private weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->useHeuristicForNodeOrder:Z

    new-instance v0, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;-><init>(Lcom/graphhopper/storage/NodeAccess;Lcom/graphhopper/routing/weighting/Weighting;)V

    sget-object p1, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->setDistanceCalc(Lcom/graphhopper/util/DistanceCalc;)Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;

    return-void
.end method

.method private getHeapWeight(IZD)D
    .locals 0

    return-wide p3
.end method

.method private getMinCurrFromPathWeight()D
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v1, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    iget-object p0, p0, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    iget v0, v0, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->approximate(IZ)D

    move-result-wide v3

    add-double/2addr v3, v1

    return-wide v3
.end method

.method private getMinCurrToPathWeight()D
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v1, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    iget-object p0, p0, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    iget v0, v0, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->approximate(IZ)D

    move-result-wide v3

    add-double/2addr v3, v1

    return-wide v3
.end method


# virtual methods
.method public bwdSearchCanBeStopped()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public createEntry(IIIDLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;
    .locals 9

    move/from16 v0, p7

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->getHeapWeight(IZD)D

    move-result-wide v4

    new-instance v0, Lcom/graphhopper/routing/ch/AStarCHEntry;

    move v1, p1

    move v3, p2

    move v2, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/graphhopper/routing/ch/AStarCHEntry;-><init>(IIIDDLcom/graphhopper/routing/SPTEntry;)V

    return-object v0
.end method

.method public bridge synthetic createStartEntry(IDZ)Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->createStartEntry(IDZ)Lcom/graphhopper/routing/ch/AStarCHEntry;

    move-result-object p0

    return-object p0
.end method

.method public createStartEntry(IDZ)Lcom/graphhopper/routing/ch/AStarCHEntry;
    .locals 6

    .line 2
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->getHeapWeight(IZD)D

    move-result-wide v2

    .line 3
    new-instance v0, Lcom/graphhopper/routing/ch/AStarCHEntry;

    move v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/ch/AStarCHEntry;-><init>(IDD)V

    return-object v0
.end method

.method public fromEntryCanBeSkipped()Z
    .locals 4

    invoke-direct {p0}, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->getMinCurrFromPathWeight()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public fwdSearchCanBeStopped()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getApproximation()Lcom/graphhopper/routing/weighting/WeightApproximator;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-virtual {p0}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->getApproximation()Lcom/graphhopper/routing/weighting/WeightApproximator;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "astarbi|ch|edge_based|no_sod"

    return-object p0
.end method

.method public init(IDID)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-virtual {v0, p1, p4}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;->setFromTo(II)V

    invoke-super/range {p0 .. p6}, Lcom/graphhopper/routing/AbstractBidirAlgo;->init(IDID)V

    return-void
.end method

.method public setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;-><init>(Lcom/graphhopper/routing/weighting/WeightApproximator;)V

    iput-object v0, p0, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->weightApprox:Lcom/graphhopper/routing/weighting/BalancedWeightApproximator;

    return-object p0
.end method

.method public toEntryCanBeSkipped()Z
    .locals 4

    invoke-direct {p0}, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->getMinCurrToPathWeight()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateEntry(Lcom/graphhopper/routing/SPTEntry;IIIDLcom/graphhopper/routing/SPTEntry;Z)V
    .locals 0

    iput p2, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    move-object p2, p1

    check-cast p2, Lcom/graphhopper/routing/ch/AStarCHEntry;

    iput p4, p2, Lcom/graphhopper/routing/ch/CHEntry;->incEdge:I

    invoke-direct {p0, p3, p8, p5, p6}, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->getHeapWeight(IZD)D

    move-result-wide p3

    iput-wide p3, p1, Lcom/graphhopper/routing/SPTEntry;->weight:D

    iput-wide p5, p2, Lcom/graphhopper/routing/ch/AStarCHEntry;->weightOfVisitedPath:D

    iput-object p7, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    return-void
.end method
