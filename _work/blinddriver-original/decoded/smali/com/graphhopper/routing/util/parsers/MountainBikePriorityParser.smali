.class public Lcom/graphhopper/routing/util/parsers/MountainBikePriorityParser;
.super Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/DecimalEncodedValue;",
            "Lcom/graphhopper/routing/ev/DecimalEncodedValue;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RouteNetwork;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p2, p1, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V

    .line 6
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->INTERNATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    sget-object p3, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    .line 7
    invoke-static {p3, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 8
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->NATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 9
    invoke-static {p3, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 10
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->REGIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 11
    invoke-static {p3, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 12
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->LOCAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    sget-object p3, Lcom/graphhopper/routing/util/PriorityCode;->BEST:Lcom/graphhopper/routing/util/PriorityCode;

    .line 13
    invoke-static {p3, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 14
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    const-string p2, "road"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    const-string p2, "track"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    const-string p2, "path"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    const-string p2, "service"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    const-string p2, "tertiary"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    const-string p2, "tertiary_link"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    const-string p2, "residential"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    const-string p2, "unclassified"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    const-string p1, "mtb"

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->setSpecificClassBicycle(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
    .locals 4

    .line 1
    const-string v0, "mtb"

    invoke-static {v0}, Lcom/graphhopper/routing/ev/VehicleSpeed;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v1

    .line 2
    invoke-static {v0}, Lcom/graphhopper/routing/ev/VehiclePriority;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v0

    sget-object v2, Lcom/graphhopper/routing/ev/BikeNetwork;->KEY:Ljava/lang/String;

    const-class v3, Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 3
    invoke-interface {p1, v2, v3}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object p1

    .line 4
    invoke-direct {p0, v1, v0, p1}, Lcom/graphhopper/routing/util/parsers/MountainBikePriorityParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V

    return-void
.end method


# virtual methods
.method public collect(Lcom/graphhopper/reader/ReaderWay;DLjava/util/TreeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/reader/ReaderWay;",
            "D",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Double;",
            "Lcom/graphhopper/routing/util/PriorityCode;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->collect(Lcom/graphhopper/reader/ReaderWay;DLjava/util/TreeMap;)V

    const-string p2, "highway"

    invoke-virtual {p1, p2}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "track"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "tracktype"

    invoke-virtual {p1, p2}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "grade1"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->goodSurface:Ljava/util/Set;

    const-string p3, "surface"

    const-string v0, ""

    invoke-virtual {p1, p3, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-wide p0, 0x4056800000000000L    # 90.0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p4, p0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string p0, "grade"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/util/PriorityCode;->VERY_NICE:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p4, p0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    const-wide/high16 p0, 0x4049000000000000L    # 50.0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/util/PriorityCode;->SLIGHT_PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p4, p0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
