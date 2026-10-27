.class public Lcom/graphhopper/routing/util/FerrySpeedCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final ferrySpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->ferrySpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-void
.end method

.method public static getSpeed(Lcom/graphhopper/reader/ReaderWay;)D
    .locals 5

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "speed_from_duration"

    invoke-virtual {p0, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide v3, 0x3ff6666666666666L    # 1.4

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    :cond_0
    const-string v1, "edge_distance"

    invoke-virtual {p0, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    const-wide v2, 0x407f400000000000L    # 500.0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    return-wide v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v1

    const-string p0, "No \'edge_distance\' set for edge created for way: "

    invoke-static {v1, v2, p0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFerry(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 4

    const-string v0, "route"

    const-string v1, "ferry"

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "no"

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "shuttle_train"

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static minmax(DLcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 4

    invoke-interface {p2}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getSmallestNonZeroValue()D

    move-result-wide v0

    invoke-interface {p2}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMaxStorableDecimal()D

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 7

    invoke-static {p3}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p3}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->getSpeed(Lcom/graphhopper/reader/ReaderWay;)D

    move-result-wide p3

    iget-object v0, p0, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->ferrySpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-static {p3, p4, v0}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->minmax(DLcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v5

    iget-object v1, p0, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->ferrySpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const/4 v2, 0x0

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    :cond_0
    return-void
.end method
