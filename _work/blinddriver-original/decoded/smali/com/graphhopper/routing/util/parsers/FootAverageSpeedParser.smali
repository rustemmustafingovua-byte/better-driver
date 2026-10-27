.class public Lcom/graphhopper/routing/util/parsers/FootAverageSpeedParser;
.super Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# static fields
.field static final MEAN_SPEED:I = 0x5

.field static final SLOW_SPEED:I = 0x2


# instance fields
.field protected routeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/graphhopper/routing/ev/RouteNetwork;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootAverageSpeedParser;->routeMap:Ljava/util/Map;

    .line 6
    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->INTERNATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    sget-object v0, Lcom/graphhopper/routing/util/PriorityCode;->UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/PriorityCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootAverageSpeedParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->NATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 8
    invoke-static {v0, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 9
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootAverageSpeedParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->REGIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 10
    invoke-static {v0, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 11
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/FootAverageSpeedParser;->routeMap:Ljava/util/Map;

    sget-object p1, Lcom/graphhopper/routing/ev/RouteNetwork;->LOCAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 12
    invoke-static {v0, p0, p1}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
    .locals 2

    .line 1
    const-string v0, "foot"

    invoke-static {v0}, Lcom/graphhopper/routing/ev/VehicleSpeed;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v0

    const-string v1, "ferry_speed"

    .line 2
    invoke-interface {p1, v1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/util/parsers/FootAverageSpeedParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V
    .locals 13

    move-object/from16 v6, p3

    const-string v7, "highway"

    invoke-virtual {v6, v7}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v6}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->ferrySpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1, p2}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide v1

    iget-object v5, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-static {v1, v2, v5}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->minmax(DLcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v1

    move-wide v4, v1

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v1}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    :cond_0
    const-string v0, "railway"

    const-string v1, "platform"

    invoke-virtual {v6, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "man_made"

    const-string v1, "pier"

    invoke-virtual {v6, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v0, "sac_scale"

    invoke-virtual {v6, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    if-eqz v8, :cond_4

    const-string v6, "hiking"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    if-eqz v0, :cond_2

    move-wide v4, v9

    goto :goto_0

    :cond_2
    move-wide v4, v11

    :goto_0
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v1}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-wide v4, v9

    goto :goto_1

    :cond_3
    move-wide v4, v11

    :goto_1
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void

    :cond_4
    const-string v8, "steps"

    invoke-virtual {v6, v7, v8}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    if-eqz v0, :cond_5

    move-wide v4, v11

    goto :goto_2

    :cond_5
    move-wide v4, v9

    :goto_2
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v1}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v6, v7, v8}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-wide v4, v11

    goto :goto_3

    :cond_6
    move-wide v4, v9

    :goto_3
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    :cond_7
    :goto_4
    return-void
.end method
