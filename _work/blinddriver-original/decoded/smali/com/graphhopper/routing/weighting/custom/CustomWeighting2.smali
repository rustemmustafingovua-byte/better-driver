.class public Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/Weighting;


# static fields
.field public static final NAME:Ljava/lang/String; = "custom_two"


# instance fields
.field private final distanceInfluence:D

.field private final edgeToPriorityMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

.field private final edgeToSpeedMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

.field private final turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/TurnCostProvider;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/routing/weighting/Weighting;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    invoke-virtual {p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->getEdgeToSpeedMapping()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->edgeToSpeedMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    invoke-virtual {p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->getEdgeToPriorityMapping()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->edgeToPriorityMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    invoke-virtual {p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->getDistanceInfluence()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->distanceInfluence:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Not a valid name for a Weighting: "

    invoke-static {p2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J
    .locals 4

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->edgeToSpeedMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;->get(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v2

    div-double/2addr p0, v0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->edgeToPriorityMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;->get(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    if-ltz p2, :cond_1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double p2, v0, v4

    if-gtz p2, :cond_1

    cmpl-double p2, v0, v2

    if-nez p2, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    iget-wide v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->distanceInfluence:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    return-wide v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid priority: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", must be in [0, 100]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public calcMinWeightPerDistance()D
    .locals 2

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    return-wide v0
.end method

.method public calcTurnMillis(III)J
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/TurnCostProvider;->calcTurnMillis(III)J

    move-result-wide p0

    return-wide p0
.end method

.method public calcTurnWeight(III)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/TurnCostProvider;->calcTurnWeight(III)D

    move-result-wide p0

    return-wide p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "custom_two"

    return-object p0
.end method

.method public hasTurnCosts()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    sget-object v0, Lcom/graphhopper/routing/weighting/TurnCostProvider;->NO_TURN_COST_PROVIDER:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
