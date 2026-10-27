.class public Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;
.super Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final badSurfaceSpeed:I

.field protected final badSurfaceSpeedMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final defaultSpeedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final trackTypeSpeedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 5

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->trackTypeSpeedMap:Ljava/util/Map;

    .line 6
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->badSurfaceSpeedMap:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->defaultSpeedMap:Ljava/util/Map;

    .line 8
    const-string v1, "cobblestone"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    const-string v1, "unhewn_cobblestone"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    const-string v1, "sett"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v1, "grass_paver"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    const-string v1, "gravel"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v1, "fine_gravel"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    const-string v1, "pebblestone"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    const-string v1, "sand"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v1, "paving_stones"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v1, "dirt"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v1, "earth"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    const-string v1, "ground"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    const-string v1, "wood"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v1, "grass"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    const-string v1, "unpaved"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "compacted"

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x64

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "motorway"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x46

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "motorway_link"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "trunk"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x41

    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "trunk_link"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "primary"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x3c

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "primary_link"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "secondary"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x32

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "secondary_link"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "tertiary"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x28

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "tertiary_link"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x1e

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "unclassified"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v2, "residential"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "living_street"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v2, "pedestrian"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x14

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "service"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "road"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xf

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "track"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v4, "grade1"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "grade2"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "grade3"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iput p2, p0, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->badSurfaceSpeed:I

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
    .locals 2

    .line 1
    const-string v0, "car"

    invoke-static {v0}, Lcom/graphhopper/routing/ev/VehicleSpeed;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v0

    const-string v1, "ferry_speed"

    .line 2
    invoke-interface {p1, v1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V

    return-void
.end method


# virtual methods
.method public applyBadSurfaceSpeed(Lcom/graphhopper/reader/ReaderWay;D)D
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->badSurfaceSpeed:I

    if-lez v0, :cond_1

    int-to-double v0, v0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_1

    const-string v0, "surface"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->badSurfaceSpeedMap:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->badSurfaceSpeed:I

    int-to-double p0, p0

    return-wide p0

    :cond_1
    return-wide p2
.end method

.method public applyMaxSpeed(Lcom/graphhopper/reader/ReaderWay;DZ)D
    .locals 2

    invoke-static {p1, p4}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeed(Lcom/graphhopper/reader/ReaderWay;Z)D

    move-result-wide p0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p4, p0, v0

    if-eqz p4, :cond_0

    const-wide p2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public getSpeed(Lcom/graphhopper/reader/ReaderWay;)D
    .locals 3

    const-string v0, "highway"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->defaultSpeedMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    const-string v2, "track"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tracktype"

    invoke-virtual {p1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->trackTypeSpeedMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    move-object v1, p0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double p0, p0

    return-wide p0
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V
    .locals 8

    invoke-static {p3}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->ferrySpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

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
    return-void

    :cond_1
    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->getSpeed(Lcom/graphhopper/reader/ReaderWay;)D

    move-result-wide v3

    invoke-virtual {p0, p3, v3, v4}, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->applyBadSurfaceSpeed(Lcom/graphhopper/reader/ReaderWay;D)D

    move-result-wide v6

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v6, v7, v2}, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->applyMaxSpeed(Lcom/graphhopper/reader/ReaderWay;DZ)D

    move-result-wide v4

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v6, v7, v1}, Lcom/graphhopper/routing/util/parsers/CarAverageSpeedParser;->applyMaxSpeed(Lcom/graphhopper/reader/ReaderWay;DZ)D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void
.end method
