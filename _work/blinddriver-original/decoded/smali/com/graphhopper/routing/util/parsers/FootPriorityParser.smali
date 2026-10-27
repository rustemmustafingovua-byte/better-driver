.class public Lcom/graphhopper/routing/util/parsers/FootPriorityParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field final avoidHighwayTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/util/PriorityCode;",
            ">;"
        }
    .end annotation
.end field

.field protected footRouteEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RouteNetwork;",
            ">;"
        }
    .end annotation
.end field

.field protected final priorityWayEncoder:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

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

.field final safeHighwayTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected sidewalksNoValues:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/DecimalEncodedValue;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RouteNetwork;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->safeHighwayTags:Ljava/util/Set;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    .line 7
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->sidewalksNoValues:Ljava/util/HashSet;

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->routeMap:Ljava/util/Map;

    .line 9
    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->footRouteEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    .line 10
    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->priorityWayEncoder:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    .line 11
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->sidewalksNoValues:Ljava/util/HashSet;

    const-string p2, "no"

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->sidewalksNoValues:Ljava/util/HashSet;

    const-string p2, "none"

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->sidewalksNoValues:Ljava/util/HashSet;

    const-string p2, "separate"

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    const-string p1, "footway"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    const-string p1, "path"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    const-string p1, "steps"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    const-string p1, "pedestrian"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    const-string p1, "living_street"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    const-string p1, "track"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    const-string p1, "residential"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    const-string p1, "service"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    const-string p1, "platform"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object p1, Lcom/graphhopper/routing/util/PriorityCode;->REACH_DESTINATION:Lcom/graphhopper/routing/util/PriorityCode;

    const-string p2, "motorway"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string p2, "motorway_link"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string p2, "trunk"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string p2, "trunk_link"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object p1, Lcom/graphhopper/routing/util/PriorityCode;->BAD:Lcom/graphhopper/routing/util/PriorityCode;

    const-string p2, "primary"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string p2, "primary_link"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string p2, "secondary"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string p2, "secondary_link"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object p1, Lcom/graphhopper/routing/util/PriorityCode;->AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    const-string p2, "tertiary"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string p2, "tertiary_link"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->INTERNATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    sget-object v0, Lcom/graphhopper/routing/util/PriorityCode;->UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

    .line 34
    invoke-static {v0, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 35
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->NATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 36
    invoke-static {v0, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 37
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->REGIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 38
    invoke-static {v0, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 39
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p1, Lcom/graphhopper/routing/ev/RouteNetwork;->LOCAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 40
    invoke-static {v0, p0, p1}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
    .locals 3

    .line 1
    const-string v0, "foot"

    invoke-static {v0}, Lcom/graphhopper/routing/ev/VehiclePriority;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v0

    sget-object v1, Lcom/graphhopper/routing/ev/FootNetwork;->KEY:Ljava/lang/String;

    const-class v2, Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 2
    invoke-interface {p1, v1, v2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V

    return-void
.end method


# virtual methods
.method public collect(Lcom/graphhopper/reader/ReaderWay;Ljava/util/TreeMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/reader/ReaderWay;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Double;",
            "Lcom/graphhopper/routing/util/PriorityCode;",
            ">;)V"
        }
    .end annotation

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "highway"

    invoke-virtual {p1, v2}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "foot"

    const-string v4, "designated"

    invoke-virtual {p1, v3, v4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p2, v0, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v5, "use_sidepath"

    invoke-virtual {p1, v3, v5}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->VERY_BAD:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p2, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeed(Lcom/graphhopper/reader/ReaderWay;Z)D

    move-result-wide v5

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeed(Lcom/graphhopper/reader/ReaderWay;Z)D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->safeHighwayTags:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "sidewalk"

    if-nez v0, :cond_9

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, v5, v7

    if-eqz v0, :cond_2

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    cmpg-double v7, v5, v7

    if-gtz v7, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    cmpl-double v0, v5, v7

    if-gtz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/util/PriorityCode;

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->sidewalksNoValues:Ljava/util/HashSet;

    invoke-virtual {p1, v3, p0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_6

    if-nez v0, :cond_5

    sget-object v0, Lcom/graphhopper/routing/util/PriorityCode;->BAD:Lcom/graphhopper/routing/util/PriorityCode;

    :cond_5
    invoke-virtual {p2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/graphhopper/routing/util/PriorityCode;->better()Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/PriorityCode;->better()Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->sidewalksNoValues:Ljava/util/HashSet;

    invoke-virtual {p1, v3, p0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p2, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    :goto_1
    sget-object v0, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tunnel"

    sget-object v2, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->INTENDED:Ljava/util/Collection;

    invoke-virtual {p1, v0, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->sidewalksNoValues:Ljava/util/HashSet;

    invoke-virtual {p1, v3, p0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p2, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p2, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_2
    const-string p0, "official"

    const-string v0, "bicycle"

    invoke-virtual {p1, v0, p0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    invoke-virtual {p1, v0, v4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_3

    :cond_c
    return-void

    :cond_d
    :goto_3
    const-wide/high16 p0, 0x4046000000000000L    # 44.0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/util/PriorityCode;->SLIGHT_AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p2, p0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public handlePriority(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/Integer;)I
    .locals 3

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    sget-object v1, Lcom/graphhopper/routing/util/PriorityCode;->UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v0, p2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-wide v1, 0x405b800000000000L    # 110.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/graphhopper/routing/util/PriorityCode;->valueOf(I)Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->collect(Lcom/graphhopper/reader/ReaderWay;Ljava/util/TreeMap;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/PriorityCode;->getValue()I

    move-result p0

    return p0
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 11

    const-string v1, "highway"

    invoke-virtual {p3, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->routeMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->footRouteEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1, p2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->getEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/Enum;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v1, :cond_1

    invoke-static {p3}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->priorityWayEncoder:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-virtual {p0, p3, v2}, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->handlePriority(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Lcom/graphhopper/routing/util/PriorityCode;->getValue(I)D

    move-result-wide v9

    const/4 v6, 0x0

    move v7, p1

    move-object v8, p2

    invoke-interface/range {v5 .. v10}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->priorityWayEncoder:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-virtual {p0, p3, v2}, Lcom/graphhopper/routing/util/parsers/FootPriorityParser;->handlePriority(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Lcom/graphhopper/routing/util/PriorityCode;->getValue(I)D

    move-result-wide v9

    const/4 v6, 0x0

    move v7, p1

    move-object v8, p2

    invoke-interface/range {v5 .. v10}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void
.end method
