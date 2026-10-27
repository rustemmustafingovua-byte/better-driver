.class public abstract Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;
.super Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# static fields
.field private static final FWDONEWAYS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPP_LANES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESTRICTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allowedHighways:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "opposite_lane"

    const-string v2, "opposite_track"

    const-string v3, "opposite"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->OPP_LANES:Ljava/util/Set;

    const-string v0, "bicycle"

    const-string v1, "access"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->RESTRICTIONS:Ljava/util/List;

    const-string v0, "true"

    const-string v1, "1"

    const-string v2, "yes"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->FWDONEWAYS:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V
    .locals 26

    move-object/from16 v0, p0

    sget-object v1, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->RESTRICTIONS:Ljava/util/List;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Ljava/util/List;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->allowedHighways:Ljava/util/Set;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iget-object v2, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    const-string v3, "agricultural"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    const-string v3, "forestry"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    const-string v3, "delivery"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string v2, "fence"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v24, "tertiary"

    const-string v25, "tertiary_link"

    const-string v3, "living_street"

    const-string v4, "steps"

    const-string v5, "cycleway"

    const-string v6, "path"

    const-string v7, "footway"

    const-string v8, "platform"

    const-string v9, "pedestrian"

    const-string v10, "track"

    const-string v11, "service"

    const-string v12, "residential"

    const-string v13, "unclassified"

    const-string v14, "road"

    const-string v15, "bridleway"

    const-string v16, "motorway"

    const-string v17, "motorway_link"

    const-string v18, "trunk"

    const-string v19, "trunk_link"

    const-string v20, "primary"

    const-string v21, "primary_link"

    const-string v22, "secondary"

    const-string v23, "secondary_link"

    filled-new-array/range {v3 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getAccess(Lcom/graphhopper/reader/ReaderWay;)Lcom/graphhopper/routing/util/WayAccess;
    .locals 8

    const-string v0, "highway"

    invoke-virtual {p1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bicycle"

    const/4 v2, 0x0

    if-nez v0, :cond_7

    sget-object v0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    invoke-static {p1}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "foot"

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/graphhopper/routing/util/WayAccess;->FERRY:Lcom/graphhopper/routing/util/WayAccess;

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    const-string v2, "railway"

    const-string v3, "platform"

    invoke-virtual {p1, v2, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    :cond_3
    const-string v2, "man_made"

    const-string v3, "pier"

    invoke-virtual {p1, v2, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    :cond_4
    invoke-virtual {v1}, Lcom/graphhopper/routing/util/WayAccess;->canSkip()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p1, v2, p0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/util/List;Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    return-object v0

    :cond_7
    iget-object v3, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->allowedHighways:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_8
    const-string v3, "dismount"

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_9
    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/graphhopper/reader/ReaderElement;->getFirstIndex(Ljava/util/List;)I

    move-result v1

    if-ltz v1, :cond_d

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
    if-ge v5, v4, :cond_b

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    array-length v4, v3

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_d

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictionKeys:Ljava/util/List;

    iget-object v7, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-static {p1, v1, v6, v7}, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->hasPermissiveTemporalRestriction(Lcom/graphhopper/reader/ReaderWay;ILjava/util/List;Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_c

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    const-string v1, "motorway"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "motorway_link"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    const-string v1, "motorroad"

    const-string v3, "yes"

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->isBlockFords()Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "ford"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    :cond_10
    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_11
    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0

    :cond_12
    :goto_4
    sget-object p0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    return-object p0
.end method

.method public handleAccess(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V
    .locals 12

    sget-object v0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->ONEWAYS:Ljava/util/Collection;

    const-string v1, "oneway"

    invoke-virtual {p3, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v2

    const-string v3, "vehicle:forward"

    const-string v4, "oneway:bicycle"

    const-string v5, "bicycle:backward"

    const/4 v6, 0x0

    const-string v7, "cycleway:right:oneway"

    const-string v8, "cycleway:left:oneway"

    const-string v9, "bicycle:forward"

    const/4 v10, 0x1

    const-string v11, "-1"

    if-eqz v2, :cond_0

    invoke-virtual {p3, v1, v11}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-virtual {p3, v5, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    invoke-virtual {p3, v1, v11}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-virtual {p3, v9, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    invoke-virtual {p3, v4, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->FWDONEWAYS:Ljava/util/Collection;

    invoke-virtual {p3, v8, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3, v7, v11}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    invoke-virtual {p3, v7, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3, v8, v11}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    const-string v0, "vehicle:backward"

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p3, v0, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-virtual {p3, v9, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p3, v3, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->allowedValues:Ljava/util/Set;

    invoke-virtual {p3, v5, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p3, v9, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p3, v5, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0, v6, p1, p2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    :goto_0
    const-string v0, "no"

    invoke-virtual {p3, v4, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    new-array v2, v6, [Ljava/lang/String;

    const-string v5, "cycleway:both"

    invoke-virtual {p3, v5, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p3, v5, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    sget-object v2, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->OPP_LANES:Ljava/util/Set;

    const-string v5, "cycleway"

    invoke-virtual {p3, v5, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "cycleway:left"

    invoke-virtual {p3, v5, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "cycleway:right"

    invoke-virtual {p3, v5, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p3, v8, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p3, v7, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p3, v1, v11}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p3, v4, v11}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p3, v8, v11}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p3, v7, v11}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p3, v3, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-virtual {p3, v9, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_a

    :cond_9
    move v6, v10

    :cond_a
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p0, v6, p1, p2, v10}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-void

    :cond_b
    iget-object p3, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p3, v10, p1, p2, v10}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p0, v6, p1, p2, v10}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-void
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->getAccess(Lcom/graphhopper/reader/ReaderWay;)Lcom/graphhopper/routing/util/WayAccess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/WayAccess;->canSkip()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/graphhopper/routing/util/WayAccess;->isFerry()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {v0, v2, p1, p2, v2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;->handleAccess(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V

    :goto_0
    const-string v0, "gh:barrier_edge"

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "node_tags"

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p3, v0, v2}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->handleBarrierEdge(ILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method
