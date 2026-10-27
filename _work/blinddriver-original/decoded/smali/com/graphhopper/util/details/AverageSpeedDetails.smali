.class public Lcom/graphhopper/util/details/AverageSpeedDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private decimalValue:Ljava/lang/Double;

.field private final precision:D

.field private prevEdgeId:I

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 2

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/graphhopper/util/details/AverageSpeedDetails;-><init>(Lcom/graphhopper/routing/weighting/Weighting;D)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/weighting/Weighting;D)V
    .locals 1

    .line 2
    const-string v0, "average_speed"

    invoke-direct {p0, v0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->prevEdgeId:I

    .line 4
    iput-object p1, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    .line 5
    iput-wide p2, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->precision:D

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->decimalValue:Ljava/lang/Double;

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 9

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v0

    iget-object v2, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget v3, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->prevEdgeId:I

    const/4 v4, 0x0

    invoke-static {v2, p1, v4, v3}, Lcom/graphhopper/util/GHUtility;->calcMillisWithTurnMillis(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)J

    move-result-wide v2

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v0, v5

    const/4 v6, 0x1

    if-ltz v5, :cond_3

    const-wide/16 v7, 0x1

    cmp-long v5, v2, v7

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, v2

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p1

    iput p1, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->prevEdgeId:I

    iget-object p1, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->decimalValue:Ljava/lang/Double;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v7, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->precision:D

    cmpl-double p1, v2, v7

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->precision:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->precision:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->decimalValue:Ljava/lang/Double;

    return v6

    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p1

    iput p1, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->prevEdgeId:I

    iget-object p0, p0, Lcom/graphhopper/util/details/AverageSpeedDetails;->decimalValue:Ljava/lang/Double;

    if-eqz p0, :cond_4

    return v4

    :cond_4
    return v6
.end method
