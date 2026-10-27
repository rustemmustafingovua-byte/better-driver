.class public Lcom/graphhopper/util/details/DecimalDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private decimalValue:Ljava/lang/Double;

.field private final ev:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field private final infinityJsonValue:Ljava/lang/String;

.field private final precision:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 6

    const/4 v3, 0x0

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/util/details/DecimalDetails;-><init>(Ljava/lang/String;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Ljava/lang/String;D)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Ljava/lang/String;D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/graphhopper/util/details/DecimalDetails;->ev:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    .line 4
    iput-object p3, p0, Lcom/graphhopper/util/details/DecimalDetails;->infinityJsonValue:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lcom/graphhopper/util/details/DecimalDetails;->precision:D

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/util/details/DecimalDetails;->decimalValue:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/util/details/DecimalDetails;->infinityJsonValue:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/util/details/DecimalDetails;->decimalValue:Ljava/lang/Double;

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/util/details/DecimalDetails;->ev:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v0

    iget-object p1, p0, Lcom/graphhopper/util/details/DecimalDetails;->decimalValue:Ljava/lang/Double;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/graphhopper/util/details/DecimalDetails;->precision:D

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lcom/graphhopper/util/details/DecimalDetails;->precision:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/graphhopper/util/details/DecimalDetails;->precision:D

    mul-double/2addr v0, v2

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/details/DecimalDetails;->decimalValue:Ljava/lang/Double;

    const/4 p0, 0x1

    return p0
.end method
