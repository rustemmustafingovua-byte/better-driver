.class public Lcom/graphhopper/util/details/WeightDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private edgeId:I

.field private weight:Ljava/lang/Double;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 1

    const-string v0, "weight"

    invoke-direct {p0, v0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/util/details/WeightDetails;->edgeId:I

    iput-object p1, p0, Lcom/graphhopper/util/details/WeightDetails;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/details/WeightDetails;->weight:Ljava/lang/Double;

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 3

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v0

    iget v1, p0, Lcom/graphhopper/util/details/WeightDetails;->edgeId:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v0

    iput v0, p0, Lcom/graphhopper/util/details/WeightDetails;->edgeId:I

    iget-object v1, p0, Lcom/graphhopper/util/details/WeightDetails;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static {v1, p1, v2, v0}, Lcom/graphhopper/util/GHUtility;->calcWeightWithTurnWeight(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/details/WeightDetails;->weight:Ljava/lang/Double;

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method
