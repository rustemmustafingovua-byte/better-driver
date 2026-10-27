.class public Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;
.super Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;
.source "SourceFile"


# instance fields
.field protected avoidedEdges:Lcom/carrotsearch/hppc/r0;

.field private edgePenaltyFactor:D


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;-><init>(Lcom/graphhopper/routing/weighting/Weighting;)V

    new-instance p1, Lcom/graphhopper/coll/GHIntHashSet;

    invoke-direct {p1}, Lcom/graphhopper/coll/GHIntHashSet;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;->avoidedEdges:Lcom/carrotsearch/hppc/r0;

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;->edgePenaltyFactor:D

    return-void
.end method


# virtual methods
.method public calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;->superWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v0

    iget-object p2, p0, Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;->avoidedEdges:Lcom/carrotsearch/hppc/r0;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;->edgePenaltyFactor:D

    mul-double/2addr v0, p0

    :cond_0
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "avoid_edges"

    return-object p0
.end method

.method public setAvoidedEdges(Lcom/carrotsearch/hppc/r0;)Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;->avoidedEdges:Lcom/carrotsearch/hppc/r0;

    return-object p0
.end method

.method public setEdgePenaltyFactor(D)Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;->edgePenaltyFactor:D

    return-object p0
.end method
