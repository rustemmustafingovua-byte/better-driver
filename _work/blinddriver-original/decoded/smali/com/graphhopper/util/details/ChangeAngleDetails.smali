.class public Lcom/graphhopper/util/details/ChangeAngleDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private changeAngle:Ljava/lang/Double;

.field private final orientationEv:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field private prevAzimuth:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 1

    const-string v0, "change_angle"

    invoke-direct {p0, v0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->orientationEv:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->changeAngle:Ljava/lang/Double;

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 8

    iget-object v0, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->prevAzimuth:Ljava/lang/Double;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->orientationEv:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->prevAzimuth:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lcom/graphhopper/routing/weighting/custom/CustomWeightingHelper;->calcChangeAngle(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v0, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->changeAngle:Ljava/lang/Double;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->orientationEv:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->prevAzimuth:Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->changeAngle:Ljava/lang/Double;

    return v1

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->orientationEv:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->prevAzimuth:Ljava/lang/Double;

    iget-object p0, p0, Lcom/graphhopper/util/details/ChangeAngleDetails;->changeAngle:Ljava/lang/Double;

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
