.class public final Lcom/graphhopper/routing/weighting/custom/CustomWeighting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/Weighting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;,
        Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;,
        Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;,
        Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "custom"

.field private static final SPEED_CONV:D = 3.6


# instance fields
.field private final distanceInfluence:D

.field private final edgeToPriorityMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

.field private final edgeToSpeedMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

.field private final headingPenaltySeconds:D

.field private final maxPrioCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

.field private final maxSpeedCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

.field private final turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/TurnCostProvider;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/routing/weighting/Weighting;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    invoke-virtual {p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->getEdgeToSpeedMapping()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->edgeToSpeedMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    invoke-virtual {p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->getMaxSpeedCalc()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->maxSpeedCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

    invoke-virtual {p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->getEdgeToPriorityMapping()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->edgeToPriorityMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    invoke-virtual {p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->getMaxPrioCalc()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->maxPrioCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

    invoke-virtual {p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->getHeadingPenaltySeconds()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->headingPenaltySeconds:D

    invoke-virtual {p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->getDistanceInfluence()D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    iput-wide p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->distanceInfluence:D

    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "distance_influence cannot be negative "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Not a valid name for a Weighting: "

    invoke-static {p2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J
    .locals 2

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->calcSeconds(DLcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->edgeToPriorityMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;->get(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->calcSeconds(DLcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/graphhopper/util/EdgeIteratorState;->UNFAVORED_EDGE:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->headingPenaltySeconds:D

    add-double/2addr v4, p1

    :cond_2
    iget-wide p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->distanceInfluence:D

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_3
    div-double/2addr v4, v0

    add-double/2addr v4, v2

    return-wide v4
.end method

.method public calcMinWeightPerDistance()D
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->maxSpeedCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

    invoke-interface {v0}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;->calcMax()D

    move-result-wide v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->maxPrioCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

    invoke-interface {v0}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;->calcMax()D

    move-result-wide v0

    div-double/2addr v2, v0

    iget-wide v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->distanceInfluence:D

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public calcSeconds(DLcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->edgeToSpeedMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    invoke-interface {p0, p3, p4}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;->get(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmpl-double p0, p3, v0

    if-nez p0, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_0
    cmpg-double p0, p3, v0

    if-ltz p0, :cond_1

    div-double/2addr p1, p3

    const-wide p3, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr p1, p3

    return-wide p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Speed cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public calcTurnMillis(III)J
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/TurnCostProvider;->calcTurnMillis(III)J

    move-result-wide p0

    return-wide p0
.end method

.method public calcTurnWeight(III)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/TurnCostProvider;->calcTurnWeight(III)D

    move-result-wide p0

    return-wide p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "custom"

    return-object p0
.end method

.method public hasTurnCosts()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    sget-object v0, Lcom/graphhopper/routing/weighting/TurnCostProvider;->NO_TURN_COST_PROVIDER:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
