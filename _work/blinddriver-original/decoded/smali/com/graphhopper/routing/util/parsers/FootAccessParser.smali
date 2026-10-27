.class public Lcom/graphhopper/routing/util/parsers/FootAccessParser;
.super Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field final allowedHighwayTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field protected sidewalkValues:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V
    .locals 2

    .line 4
    sget-object v0, Lcom/graphhopper/routing/util/TransportationMode;->FOOT:Lcom/graphhopper/routing/util/TransportationMode;

    invoke-static {v0}, Lcom/graphhopper/routing/util/parsers/OSMRoadAccessParser;->toOSMRestrictions(Lcom/graphhopper/routing/util/TransportationMode;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Ljava/util/List;)V

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->allowedHighwayTags:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->sidewalkValues:Ljava/util/HashSet;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->routeMap:Ljava/util/Map;

    .line 8
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->sidewalkValues:Ljava/util/HashSet;

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->sidewalkValues:Ljava/util/HashSet;

    const-string v1, "both"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->sidewalkValues:Ljava/util/HashSet;

    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->sidewalkValues:Ljava/util/HashSet;

    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v1, "fence"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v0, "footway"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    const-string v0, "path"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    const-string v0, "steps"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v0, "pedestrian"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v0, "living_street"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v0, "track"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    const-string v0, "residential"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    const-string v0, "service"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v0, "platform"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    const-string v0, "trunk"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v0, "trunk_link"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    const-string v0, "primary"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v0, "primary_link"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v0, "secondary"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v0, "secondary_link"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v0, "tertiary"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    const-string v0, "tertiary_link"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    const-string v0, "cycleway"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v0, "unclassified"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v0, "road"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v0, "bridleway"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->routeMap:Ljava/util/Map;

    sget-object v0, Lcom/graphhopper/routing/ev/RouteNetwork;->INTERNATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    sget-object v1, Lcom/graphhopper/routing/util/PriorityCode;->UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

    .line 35
    invoke-static {v1, p1, v0}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 36
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->routeMap:Ljava/util/Map;

    sget-object v0, Lcom/graphhopper/routing/ev/RouteNetwork;->NATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 37
    invoke-static {v1, p1, v0}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 38
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->routeMap:Ljava/util/Map;

    sget-object v0, Lcom/graphhopper/routing/ev/RouteNetwork;->REGIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 39
    invoke-static {v1, p1, v0}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    .line 40
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->routeMap:Ljava/util/Map;

    sget-object p1, Lcom/graphhopper/routing/ev/RouteNetwork;->LOCAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 41
    invoke-static {v1, p0, p1}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)V
    .locals 1

    .line 1
    const-string v0, "foot"

    invoke-static {v0}, Lcom/graphhopper/routing/ev/VehicleAccess;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/util/parsers/FootAccessParser;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V

    .line 2
    const-string p1, "block_private"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->blockPrivate(Z)V

    .line 3
    const-string p1, "block_fords"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->blockFords(Z)V

    return-void
.end method


# virtual methods
.method public getAccess(Lcom/graphhopper/reader/ReaderWay;)Lcom/graphhopper/routing/util/WayAccess;
    .locals 8

    const-string v0, "highway"

    invoke-virtual {p1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    invoke-static {p1}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "foot"

    invoke-virtual {p1, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/graphhopper/routing/util/WayAccess;->FERRY:Lcom/graphhopper/routing/util/WayAccess;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const-string v2, "railway"

    const-string v3, "platform"

    invoke-virtual {p1, v2, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    :cond_2
    const-string v2, "man_made"

    const-string v3, "pier"

    invoke-virtual {p1, v2, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    :cond_3
    invoke-virtual {v1}, Lcom/graphhopper/routing/util/WayAccess;->canSkip()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p1, v2, p0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/util/List;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    return-object v0

    :cond_6
    const-string v1, "via_ferrata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_7
    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/graphhopper/reader/ReaderElement;->getFirstIndex(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_b

    iget-object v3, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_9

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    array-length v4, v3

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_b

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    iget-object v7, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-static {p1, v1, v6, v7}, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->hasPermissiveTemporalRestriction(Lcom/graphhopper/reader/ReaderWay;ILjava/util/List;Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_a

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    const-string v1, "sidewalk"

    iget-object v3, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->sidewalkValues:Ljava/util/HashSet;

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_c
    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->allowedHighwayTags:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_d
    const-string v1, "motorroad"

    const-string v3, "yes"

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_e
    invoke-virtual {p0}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->isBlockFords()Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "ford"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_f
    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_10
    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V
    .locals 7

    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/util/parsers/FootAccessParser;->getAccess(Lcom/graphhopper/reader/ReaderWay;)Lcom/graphhopper/routing/util/WayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/WayAccess;->canSkip()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->ONEWAYS:Ljava/util/Collection;

    const-string v1, "oneway:foot"

    invoke-virtual {p3, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v2

    const-string v3, "foot:forward"

    const-string v4, "foot:backward"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_2

    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {p3, v4, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v6, [Ljava/lang/String;

    invoke-virtual {p3, v3, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "oneway"

    invoke-virtual {p3, v2, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "highway"

    const-string v2, "steps"

    invoke-virtual {p3, v0, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0, v6, p1, p2, v5}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0, v5, p1, p2, v5}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    goto :goto_3

    :cond_2
    :goto_0
    const-string v0, "-1"

    invoke-virtual {p3, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "yes"

    invoke-virtual {p3, v4, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "no"

    invoke-virtual {p3, v3, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v5

    :goto_2
    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v1, v0, p1, p2, v5}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    :goto_3
    const-string v0, "gh:barrier_edge"

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "node_tags"

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p3, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->handleBarrierEdge(ILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/util/Map;)V

    :cond_5
    :goto_4
    return-void
.end method
