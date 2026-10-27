.class public Lcom/graphhopper/routing/util/parsers/CarAccessParser;
.super Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field protected final highwayValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field protected final trackTypeValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/PMap;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            "Lcom/graphhopper/util/PMap;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    .line 6
    invoke-direct {v0, v2, v3}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Ljava/util/List;)V

    .line 7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/graphhopper/routing/util/parsers/CarAccessParser;->trackTypeValues:Ljava/util/Set;

    .line 8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/graphhopper/routing/util/parsers/CarAccessParser;->highwayValues:Ljava/util/Set;

    move-object/from16 v4, p2

    .line 9
    iput-object v4, v0, Lcom/graphhopper/routing/util/parsers/CarAccessParser;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    .line 10
    iget-object v4, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    const-string v5, "agricultural"

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v4, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    const-string v5, "forestry"

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v4, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    const-string v5, "delivery"

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v4, "block_private"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->blockPrivate(Z)V

    .line 14
    const-string v4, "block_fords"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->blockFords(Z)V

    .line 15
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v4, "kissing_gate"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v4, "fence"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v4, "bollard"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v4, "stile"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v4, "turnstile"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v4, "cycle_barrier"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v4, "motorcycle_barrier"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v4, "block"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v4, "bus_trap"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v4, "sump_buster"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v1, "jersey_barrier"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v19, "track"

    const-string v20, "pedestrian"

    const-string v4, "motorway"

    const-string v5, "motorway_link"

    const-string v6, "trunk"

    const-string v7, "trunk_link"

    const-string v8, "primary"

    const-string v9, "primary_link"

    const-string v10, "secondary"

    const-string v11, "secondary_link"

    const-string v12, "tertiary"

    const-string v13, "tertiary_link"

    const-string v14, "unclassified"

    const-string v15, "residential"

    const-string v16, "living_street"

    const-string v17, "service"

    const-string v18, "road"

    filled-new-array/range {v4 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 27
    const-string v0, "grade3"

    const/4 v1, 0x0

    const-string v3, "grade1"

    const-string v4, "grade2"

    filled-new-array {v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)V
    .locals 2

    .line 1
    const-string v0, "car"

    .line 2
    invoke-static {v0}, Lcom/graphhopper/routing/ev/VehicleAccess;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v0

    const-string v1, "roundabout"

    .line 3
    invoke-interface {p1, v1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p1

    sget-object v1, Lcom/graphhopper/routing/util/TransportationMode;->CAR:Lcom/graphhopper/routing/util/TransportationMode;

    .line 4
    invoke-static {v1}, Lcom/graphhopper/routing/util/parsers/OSMRoadAccessParser;->toOSMRestrictions(Lcom/graphhopper/routing/util/TransportationMode;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/graphhopper/routing/util/parsers/CarAccessParser;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/PMap;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAccess(Lcom/graphhopper/reader/ReaderWay;)Lcom/graphhopper/routing/util/WayAccess;
    .locals 8

    const-string v0, "highway"

    invoke-virtual {p1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/graphhopper/reader/ReaderElement;->getFirstIndex(Ljava/util/List;)I

    move-result v1

    const-string v2, ""

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    const-string v3, "yes"

    const/4 v4, 0x0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "foot"

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bicycle"

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "hgv"

    invoke-virtual {p1, v0, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->FERRY:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_4
    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_5
    const-string v5, "pedestrian"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    iget-object v7, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-static {p1, v5, v6, v7}, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->hasPermissiveTemporalRestriction(Lcom/graphhopper/reader/ReaderWay;ILjava/util/List;Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_6
    const-string v5, "service"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "emergency_access"

    invoke-virtual {p1, v5}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_7
    const-string v5, "track"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/graphhopper/routing/util/parsers/CarAccessParser;->trackTypeValues:Ljava/util/Set;

    const-string v6, "tracktype"

    invoke-virtual {p1, v6}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_8
    iget-object v5, p0, Lcom/graphhopper/routing/util/parsers/CarAccessParser;->highwayValues:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_9
    const-string v5, "impassable"

    invoke-virtual {p1, v5, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "status"

    invoke-virtual {p1, v3, v5}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    if-ltz v1, :cond_e

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_c

    aget-object v6, v2, v5

    iget-object v7, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_c
    array-length v3, v2

    move v5, v4

    :goto_3
    if-ge v5, v3, :cond_e

    aget-object v6, v2, v5

    iget-object v7, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    iget-object v7, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-static {p1, v1, v6, v7}, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->hasPermissiveTemporalRestriction(Lcom/graphhopper/reader/ReaderWay;ILjava/util/List;Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_d

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->isBlockFords()Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "ford"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_f
    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_10
    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_11
    :goto_4
    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V
    .locals 4

    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/util/parsers/CarAccessParser;->getAccess(Lcom/graphhopper/reader/ReaderWay;)Lcom/graphhopper/routing/util/WayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/WayAccess;->canSkip()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/graphhopper/routing/util/WayAccess;->isFerry()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/CarAccessParser;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0, v1, p1, p2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z

    move-result v0

    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/util/parsers/CarAccessParser;->isOneway(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0, v2, p1, p2, v2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/util/parsers/CarAccessParser;->isForwardOneway(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    :cond_3
    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/util/parsers/CarAccessParser;->isBackwardOneway(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0, v2, p1, p2, v2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0, v2, p1, p2, v2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    :cond_5
    :goto_1
    const-string v0, "gh:barrier_edge"

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "node_tags"

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p3, v0, v2}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->handleBarrierEdge(ILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/util/Map;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public isBackwardOneway(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 2

    const-string v0, "oneway"

    const-string v1, "-1"

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vehicle:forward"

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motor_vehicle:forward"

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p1, v0, p0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isForwardOneway(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 2

    const-string v0, "oneway"

    const-string v1, "-1"

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vehicle:forward"

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "motor_vehicle:forward"

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p1, v0, p0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOneway(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 2

    const-string v0, "oneway"

    sget-object v1, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->ONEWAYS:Ljava/util/Collection;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vehicle:backward"

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vehicle:forward"

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motor_vehicle:backward"

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "motor_vehicle:forward"

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p1, v0, p0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
