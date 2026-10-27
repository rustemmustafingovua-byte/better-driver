.class public Lcom/graphhopper/routing/weighting/SpeedWeighting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/Weighting;


# instance fields
.field private final speedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field private final turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/graphhopper/routing/weighting/TurnCostProvider;->NO_TURN_COST_PROVIDER:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/weighting/SpeedWeighting;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/weighting/TurnCostProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/storage/TurnCostStorage;D)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting;->speedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-object p1, p0

    .line 4
    new-instance p0, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    invoke-direct/range {p0 .. p5}, Lcom/graphhopper/routing/weighting/SpeedWeighting$1;-><init>(Lcom/graphhopper/routing/weighting/SpeedWeighting;Lcom/graphhopper/storage/TurnCostStorage;Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)V

    iput-object p0, p1, Lcom/graphhopper/routing/weighting/SpeedWeighting;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "u-turn costs must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This SpeedWeighting constructor expects turnCostEnc and turnCostStorage to be != null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/weighting/TurnCostProvider;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting;->speedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    .line 9
    iput-object p2, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    return-void
.end method


# virtual methods
.method public calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/weighting/SpeedWeighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0
.end method

.method public calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 4

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting;->speedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    if-eqz p2, :cond_0

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_1

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_1
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public calcMinWeightPerDistance()D
    .locals 4

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting;->speedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMaxStorableDecimal()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public calcTurnMillis(III)J
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/TurnCostProvider;->calcTurnMillis(III)J

    move-result-wide p0

    return-wide p0
.end method

.method public calcTurnWeight(III)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/TurnCostProvider;->calcTurnWeight(III)D

    move-result-wide p0

    return-wide p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "speed"

    return-object p0
.end method

.method public hasTurnCosts()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/SpeedWeighting;->turnCostProvider:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    sget-object v0, Lcom/graphhopper/routing/weighting/TurnCostProvider;->NO_TURN_COST_PROVIDER:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
