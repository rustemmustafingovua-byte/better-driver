.class public abstract Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/Weighting;


# instance fields
.field protected final superWeighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;->superWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No super weighting set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;->superWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;->superWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcMinWeightPerDistance()D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;->superWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0}, Lcom/graphhopper/routing/weighting/Weighting;->calcMinWeightPerDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public calcTurnMillis(III)J
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;->superWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnMillis(III)J

    move-result-wide p0

    return-wide p0
.end method

.method public calcTurnWeight(III)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;->superWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnWeight(III)D

    move-result-wide p0

    return-wide p0
.end method

.method public hasTurnCosts()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;->superWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0}, Lcom/graphhopper/routing/weighting/Weighting;->hasTurnCosts()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/graphhopper/routing/weighting/Weighting;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;->superWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "|"

    invoke-static {v0, v1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
