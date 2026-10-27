.class public Lcom/graphhopper/reader/osm/OSMReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lnc/b;

.field private static final WAY_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private areaIndex:Lcom/graphhopper/routing/util/AreaIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/util/AreaIndex<",
            "Lcom/graphhopper/routing/util/CustomArea;",
            ">;"
        }
    .end annotation
.end field

.field private final baseGraph:Lcom/graphhopper/storage/BaseGraph;

.field private bugCounter:I

.field private final config:Lcom/graphhopper/routing/OSMReaderConfig;

.field private countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

.field private final distCalc:Lcom/graphhopper/util/DistanceCalc;

.field private final edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

.field private eleProvider:Lcom/graphhopper/reader/dem/ElevationProvider;

.field private final nodeAccess:Lcom/graphhopper/storage/NodeAccess;

.field private osmDataDate:Ljava/util/Date;

.field private osmFile:Ljava/io/File;

.field private final osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

.field private osmWayIdToRelationFlagsMap:Lcom/graphhopper/coll/GHLongLongHashMap;

.field private restrictedWaysToEdgesMap:Lcom/graphhopper/reader/osm/WayToEdgesMap;

.field private restrictionRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/ReaderRelation;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictionSetter:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

.field private final simplifyAlgo:Lcom/graphhopper/util/RamerDouglasPeucker;

.field private final tempRelFlags:Lcom/graphhopper/storage/IntsRef;

.field private final turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

.field private zeroCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/reader/osm/OSMReader;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/OSMReader;->LOGGER:Lnc/b;

    const-string v0, "; *"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/OSMReader;->WAY_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/OSMParsers;Lcom/graphhopper/routing/OSMReaderConfig;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    iput-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->distCalc:Lcom/graphhopper/util/DistanceCalc;

    sget-object v0, Lcom/graphhopper/reader/dem/ElevationProvider;->NOOP:Lcom/graphhopper/reader/dem/ElevationProvider;

    iput-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->eleProvider:Lcom/graphhopper/reader/dem/ElevationProvider;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

    new-instance v0, Lcom/graphhopper/util/RamerDouglasPeucker;

    invoke-direct {v0}, Lcom/graphhopper/util/RamerDouglasPeucker;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->simplifyAlgo:Lcom/graphhopper/util/RamerDouglasPeucker;

    const/4 v1, 0x0

    iput v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->bugCounter:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->zeroCounter:J

    new-instance v1, Lcom/graphhopper/coll/GHLongLongHashMap;

    const/16 v2, 0xc8

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-direct {v1, v2, v3, v4}, Lcom/graphhopper/coll/GHLongLongHashMap;-><init>(ID)V

    iput-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmWayIdToRelationFlagsMap:Lcom/graphhopper/coll/GHLongLongHashMap;

    new-instance v1, Lcom/graphhopper/reader/osm/WayToEdgesMap;

    invoke-direct {v1}, Lcom/graphhopper/reader/osm/WayToEdgesMap;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictedWaysToEdgesMap:Lcom/graphhopper/reader/osm/WayToEdgesMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictionRelations:Ljava/util/List;

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMReader;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getEdgeAccess()Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move-result-object v1

    iput-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    iput-object p3, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v1

    iput-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

    new-instance v1, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    invoke-virtual {p2}, Lcom/graphhopper/routing/util/OSMParsers;->getRestrictionTagParsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/graphhopper/reader/osm/a;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/graphhopper/reader/osm/a;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v2}, Lwa/h;->w(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;-><init>(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)V

    iput-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictionSetter:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    invoke-virtual {p3}, Lcom/graphhopper/routing/OSMReaderConfig;->getMaxWayPointDistance()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/util/RamerDouglasPeucker;->setMaxDistance(D)Lcom/graphhopper/util/RamerDouglasPeucker;

    invoke-virtual {p3}, Lcom/graphhopper/routing/OSMReaderConfig;->getElevationMaxWayPointDistance()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/util/RamerDouglasPeucker;->setElevationMaxDistance(D)Lcom/graphhopper/util/RamerDouglasPeucker;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMReader;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-virtual {p2}, Lcom/graphhopper/routing/util/OSMParsers;->createRelationFlags()Lcom/graphhopper/storage/IntsRef;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMReader;->tempRelFlags:Lcom/graphhopper/storage/IntsRef;

    iget p0, p1, Lcom/graphhopper/storage/IntsRef;->length:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OSMReader cannot use relation flags with != 2 integers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/graphhopper/reader/ReaderRelation$Member;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/OSMReader;->lambda$warnOfRestriction$1(Lcom/graphhopper/reader/ReaderRelation$Member;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addRestrictionsToGraph()V
    .locals 14

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/graphhopper/util/StopWatch;->started()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictionRelations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictionRelations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/reader/ReaderRelation;

    :try_start_0
    iget-object v4, p0, Lcom/graphhopper/reader/osm/OSMReader;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v5, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictedWaysToEdgesMap:Lcom/graphhopper/reader/osm/WayToEdgesMap;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/graphhopper/reader/osm/g;

    invoke-direct {v6, v5}, Lcom/graphhopper/reader/osm/g;-><init>(Lcom/graphhopper/reader/osm/WayToEdgesMap;)V

    invoke-static {v4, v3, v6}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->buildRestrictionTopologyForGraph(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/reader/ReaderRelation;Ljava/util/function/LongFunction;)Lcom/graphhopper/reader/osm/Triple;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/graphhopper/reader/osm/OSMRestrictionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v3, v4}, Lcom/graphhopper/reader/osm/OSMReader;->warnOfRestriction(Lcom/graphhopper/reader/ReaderRelation;Lcom/graphhopper/reader/osm/OSMRestrictionException;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :cond_2
    :goto_1
    if-ge v6, v4, :cond_7

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/graphhopper/reader/osm/Triple;

    :try_start_1
    new-instance v8, Lcom/carrotsearch/hppc/j;

    iget-object v9, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

    invoke-virtual {v9}, Lcom/graphhopper/routing/util/OSMParsers;->getRestrictionTagParsers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Lcom/carrotsearch/hppc/j;-><init>(J)V

    const/4 v9, 0x0

    move v10, v5

    :goto_2
    iget-object v11, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

    invoke-virtual {v11}, Lcom/graphhopper/routing/util/OSMParsers;->getRestrictionTagParsers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v11, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

    invoke-virtual {v11}, Lcom/graphhopper/routing/util/OSMParsers;->getRestrictionTagParsers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/graphhopper/reader/osm/RestrictionTagParser;

    iget-object v12, v7, Lcom/graphhopper/reader/osm/Triple;->first:Ljava/lang/Object;

    check-cast v12, Lcom/graphhopper/reader/ReaderRelation;

    invoke-virtual {v12}, Lcom/graphhopper/reader/ReaderElement;->getTags()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->parseRestrictionTags(Ljava/util/Map;)Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_4

    :cond_3
    iget-object v12, v7, Lcom/graphhopper/reader/osm/Triple;->second:Ljava/lang/Object;

    check-cast v12, Lcom/graphhopper/reader/osm/RestrictionTopology;

    invoke-virtual {v11}, Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;->getRestriction()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->checkIfTopologyIsCompatibleWithRestriction(Lcom/graphhopper/reader/osm/RestrictionTopology;Ljava/lang/String;)V

    if-eqz v9, :cond_5

    invoke-virtual {v11}, Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;->getRestrictionType()Lcom/graphhopper/reader/osm/RestrictionType;

    move-result-object v12

    if-ne v12, v9, :cond_4

    goto :goto_3

    :cond_4
    new-instance v8, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string v9, "has different restriction type for different vehicles."

    invoke-direct {v8, v9}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_1
    move-exception v8

    goto :goto_5

    :cond_5
    :goto_3
    invoke-virtual {v11}, Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;->getRestrictionType()Lcom/graphhopper/reader/osm/RestrictionType;

    move-result-object v9

    int-to-long v11, v10

    invoke-virtual {v8, v11, v12}, Lcom/carrotsearch/hppc/j;->h(J)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v8}, Lcom/carrotsearch/hppc/j;->a()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    iget-object v10, p0, Lcom/graphhopper/reader/osm/OSMReader;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v11, v7, Lcom/graphhopper/reader/osm/Triple;->second:Ljava/lang/Object;

    check-cast v11, Lcom/graphhopper/reader/osm/RestrictionTopology;

    invoke-static {v10, v11, v9}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->buildRestrictionsForOSMRestriction(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/reader/osm/RestrictionTopology;Lcom/graphhopper/reader/osm/RestrictionType;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v10, Lcom/graphhopper/reader/osm/b;

    invoke-direct {v10, v3, v8}, Lcom/graphhopper/reader/osm/b;-><init>(Ljava/util/ArrayList;Lcom/carrotsearch/hppc/j;)V

    invoke-interface {v9, v10}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Lcom/graphhopper/reader/osm/OSMRestrictionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :goto_5
    iget-object v7, v7, Lcom/graphhopper/reader/osm/Triple;->first:Ljava/lang/Object;

    check-cast v7, Lcom/graphhopper/reader/ReaderRelation;

    invoke-static {v7, v8}, Lcom/graphhopper/reader/osm/OSMReader;->warnOfRestriction(Lcom/graphhopper/reader/ReaderRelation;Lcom/graphhopper/reader/osm/OSMRestrictionException;)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictionSetter:Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->setRestrictions(Ljava/util/List;Ljava/util/List;)V

    sget-object v1, Lcom/graphhopper/reader/osm/OSMReader;->LOGGER:Lnc/b;

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/storage/TurnCostStorage;->getTurnCostsCount()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->getTimeString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Finished adding turn restrictions. total turn cost entries: {}, took: {}"

    invoke-interface {v1, v2, p0, v0}, Lnc/b;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;Lcom/carrotsearch/hppc/j;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/reader/osm/OSMReader;->lambda$addRestrictionsToGraph$0(Ljava/util/List;Lcom/carrotsearch/hppc/j;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)V

    return-void
.end method

.method private calcDistance(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;)D
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/reader/ReaderWay;->getNodes()Lcom/carrotsearch/hppc/t0;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v2, Lcom/carrotsearch/hppc/t0;->l:[J

    aget-wide v3, v4, v3

    invoke-interface {v1, v3, v4}, Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;->getCoordinate(J)Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v4, v3, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    xor-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    :goto_0
    iget v9, v2, Lcom/carrotsearch/hppc/t0;->m:I

    if-ge v6, v9, :cond_4

    iget-object v9, v2, Lcom/carrotsearch/hppc/t0;->l:[J

    aget-wide v9, v9, v6

    invoke-interface {v1, v9, v10}, Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;->getCoordinate(J)Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v9

    if-nez v9, :cond_1

    :goto_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_1
    iget-wide v10, v9, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eq v10, v5, :cond_3

    if-nez v4, :cond_2

    iget-object v11, v0, Lcom/graphhopper/reader/osm/OSMReader;->distCalc:Lcom/graphhopper/util/DistanceCalc;

    iget-wide v12, v3, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v14, v3, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-object v10, v2

    iget-wide v1, v3, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    move-wide/from16 v16, v1

    iget-wide v1, v9, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    move-wide/from16 v18, v1

    iget-wide v1, v9, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide/from16 v20, v1

    iget-wide v1, v9, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    move-wide/from16 v22, v1

    invoke-interface/range {v11 .. v23}, Lcom/graphhopper/util/DistanceCalc;->calcDist3D(DDDDDD)D

    move-result-wide v1

    goto :goto_2

    :cond_2
    move-object v10, v2

    iget-object v11, v0, Lcom/graphhopper/reader/osm/OSMReader;->distCalc:Lcom/graphhopper/util/DistanceCalc;

    iget-wide v12, v3, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v14, v3, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    iget-wide v1, v9, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    move-wide/from16 v16, v1

    iget-wide v0, v9, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide/from16 v18, v0

    invoke-interface/range {v11 .. v19}, Lcom/graphhopper/util/DistanceCalc;->calcDist(DDDD)D

    move-result-wide v1

    :goto_2
    add-double/2addr v7, v1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v9

    move-object v2, v10

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v1

    const-string v3, "There should be elevation data for either all points or no points at all. OSM way: "

    invoke-static {v1, v2, v3}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-wide v7
.end method

.method private checkCoordinates(ILcom/graphhopper/util/shapes/GHPoint;)V
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v0, p1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v0, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v1, p1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "Suspicious coordinates for node "

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ","

    const-string v1, ") vs. ("

    invoke-static {p2, p1, v3, v4, v1}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    const-string p1, ")"

    invoke-static {p2, p0, p1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkDistance(Lcom/graphhopper/util/EdgeIteratorState;)V
    .locals 10

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->distCalc:Lcom/graphhopper/util/DistanceCalc;

    sget-object v2, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p1, v2}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/graphhopper/util/DistanceCalc;->calcDistance(Lcom/graphhopper/util/PointList;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_2

    const-wide v4, 0x413e848000000000L    # 2000000.0

    cmpl-double p0, v0, v4

    if-lez p0, :cond_0

    sget-object p0, Lcom/graphhopper/reader/osm/OSMReader;->LOGGER:Lnc/b;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Very long edge detected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " dist: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnc/b;->l(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v6, v8

    if-gtz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Suspicious distance for edge: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " vs. "

    const-string v0, ", difference: "

    invoke-static {v6, p1, v2, v3, v0}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Infinite edge distance should never occur, as we are supposed to limit each distance to the maximum distance we can store, #435"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fixWayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/graphhopper/reader/osm/OSMReader;->WAY_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/search/KVStorage;->cutString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isFerry(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 0

    invoke-static {p1}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$addRestrictionsToGraph$0(Ljava/util/List;Lcom/carrotsearch/hppc/j;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)V
    .locals 0

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->copyEncBits(Lcom/carrotsearch/hppc/j;)Lcom/carrotsearch/hppc/j;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$warnOfRestriction$1(Lcom/graphhopper/reader/ReaderRelation$Member;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRef()J

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private releaseEverythingExceptRestrictionData()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->eleProvider:Lcom/graphhopper/reader/dem/ElevationProvider;

    invoke-interface {v0}, Lcom/graphhopper/reader/dem/ElevationProvider;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmWayIdToRelationFlagsMap:Lcom/graphhopper/coll/GHLongLongHashMap;

    return-void
.end method

.method private releaseRestrictionData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictedWaysToEdgesMap:Lcom/graphhopper/reader/osm/WayToEdgesMap;

    iput-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictionRelations:Ljava/util/List;

    return-void
.end method

.method private static warnOfRestriction(Lcom/graphhopper/reader/ReaderRelation;Lcom/graphhopper/reader/osm/OSMRestrictionException;)V
    .locals 6

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;->isWithoutWarning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderElement;->getTags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "graphhopper:via_node"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/reader/osm/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/graphhopper/reader/osm/a;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/graphhopper/util/GHUtility;->OSM_WARNING_LOGGER:Lnc/b;

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderElement;->getTags()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Restriction relation "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". tags: "

    const-string v2, ", members: "

    invoke-static {v4, p1, p0, v2, v0}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ". Relation ignored."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lnc/b;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptWay(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderWay;->getNodes()Lcom/carrotsearch/hppc/t0;

    move-result-object v0

    iget v0, v0, Lcom/carrotsearch/hppc/t0;->m:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->hasTags()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/OSMParsers;->acceptWay(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p0

    return p0
.end method

.method public addEdge(IILcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/graphhopper/util/PointList;",
            "Lcom/graphhopper/reader/ReaderWay;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    move/from16 v1, p2

    if-ltz p1, :cond_f

    if-ltz v1, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/graphhopper/util/PointList;->getDimension()I

    move-result v2

    iget-object v3, p0, Lcom/graphhopper/reader/osm/OSMReader;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v3}, Lcom/graphhopper/util/PointAccess;->getDimension()I

    move-result v3

    if-ne v2, v3, :cond_e

    invoke-virtual/range {p3 .. p3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v2}, Lcom/graphhopper/routing/OSMReaderConfig;->getLongEdgeSamplingDistance()D

    move-result-wide v2

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v2}, Lcom/graphhopper/routing/OSMReaderConfig;->getLongEdgeSamplingDistance()D

    move-result-wide v2

    iget-object v4, p0, Lcom/graphhopper/reader/osm/OSMReader;->distCalc:Lcom/graphhopper/util/DistanceCalc;

    iget-object v5, p0, Lcom/graphhopper/reader/osm/OSMReader;->eleProvider:Lcom/graphhopper/reader/dem/ElevationProvider;

    move-object/from16 v6, p3

    invoke-static {v6, v2, v3, v4, v5}, Lcom/graphhopper/reader/dem/EdgeSampling;->sample(Lcom/graphhopper/util/PointList;DLcom/graphhopper/util/DistanceCalc;Lcom/graphhopper/reader/dem/ElevationProvider;)Lcom/graphhopper/util/PointList;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    move-object v2, v6

    :goto_0
    iget-object v3, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v3}, Lcom/graphhopper/routing/OSMReaderConfig;->getElevationSmoothing()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ramer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v3}, Lcom/graphhopper/routing/OSMReaderConfig;->getElevationSmoothingRamerMax()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v2, v3, v4}, Lcom/graphhopper/reader/dem/EdgeElevationSmoothingRamer;->smooth(Lcom/graphhopper/util/PointList;D)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v3}, Lcom/graphhopper/routing/OSMReaderConfig;->getElevationSmoothing()Ljava/lang/String;

    move-result-object v3

    const-string v4, "moving_average"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v3}, Lcom/graphhopper/routing/OSMReaderConfig;->getSmoothElevationAverageWindowSize()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/graphhopper/reader/dem/EdgeElevationSmoothingMovingAverage;->smooth(Lcom/graphhopper/util/PointList;D)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v3}, Lcom/graphhopper/routing/OSMReaderConfig;->getElevationSmoothing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move-object v3, v2

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {p0}, Lcom/graphhopper/routing/OSMReaderConfig;->getElevationSmoothing()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unsupported elevation smoothing algorithm: \'"

    const-string v2, "\'"

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    move-object/from16 v6, p3

    move-object v3, v6

    :goto_2
    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v2}, Lcom/graphhopper/routing/OSMReaderConfig;->getMaxWayPointDistance()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    const/4 v8, 0x2

    if-lez v2, :cond_5

    invoke-virtual {v3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    if-le v2, v8, :cond_5

    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMReader;->simplifyAlgo:Lcom/graphhopper/util/RamerDouglasPeucker;

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/RamerDouglasPeucker;->simplify(Lcom/graphhopper/util/PointList;)I

    :cond_5
    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMReader;->distCalc:Lcom/graphhopper/util/DistanceCalc;

    invoke-interface {v2, v3}, Lcom/graphhopper/util/DistanceCalc;->calcDistance(Lcom/graphhopper/util/PointList;)D

    move-result-wide v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, v4, v6

    if-gez v2, :cond_6

    iget-wide v4, p0, Lcom/graphhopper/reader/osm/OSMReader;->zeroCounter:J

    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    iput-wide v4, p0, Lcom/graphhopper/reader/osm/OSMReader;->zeroCounter:J

    move-wide v4, v6

    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-string v6, "Bug in OSM or GraphHopper ("

    if-eqz v2, :cond_7

    sget-object v2, Lcom/graphhopper/reader/osm/OSMReader;->LOGGER:Lnc/b;

    iget v7, p0, Lcom/graphhopper/reader/osm/OSMReader;->bugCounter:I

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lcom/graphhopper/reader/osm/OSMReader;->bugCounter:I

    invoke-virtual/range {p4 .. p4}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "). Illegal tower node distance "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " reset to 1m, osm way "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lnc/b;->l(Ljava/lang/String;)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_7
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    const-wide v9, 0x4140624dd2b020c5L    # 2147483.646

    if-nez v2, :cond_9

    cmpl-double v2, v4, v9

    if-lez v2, :cond_8

    goto :goto_3

    :cond_8
    move-wide v5, v4

    goto :goto_4

    :cond_9
    :goto_3
    sget-object v2, Lcom/graphhopper/reader/osm/OSMReader;->LOGGER:Lnc/b;

    iget v7, p0, Lcom/graphhopper/reader/osm/OSMReader;->bugCounter:I

    add-int/lit8 v11, v7, 0x1

    iput v11, p0, Lcom/graphhopper/reader/osm/OSMReader;->bugCounter:I

    invoke-virtual/range {p4 .. p4}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "). Too big tower node distance "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " reset to large value, osm way "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lnc/b;->l(Ljava/lang/String;)V

    move-wide v5, v9

    :goto_4
    iget v2, p0, Lcom/graphhopper/reader/osm/OSMReader;->bugCounter:I

    const/16 v4, 0x1e

    if-gt v2, v4, :cond_c

    move-object v2, p0

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/graphhopper/reader/osm/OSMReader;->setArtificialWayTags(Lcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;DLjava/util/List;)V

    invoke-virtual {v4}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v9

    invoke-virtual {p0, v9, v10}, Lcom/graphhopper/reader/osm/OSMReader;->getRelFlagsMap(J)Lcom/graphhopper/storage/IntsRef;

    move-result-object v7

    iget-object v9, p0, Lcom/graphhopper/reader/osm/OSMReader;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v9, p1, v1}, Lcom/graphhopper/storage/BaseGraph;->edge(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v9

    invoke-interface {v9, v5, v6}, Lcom/graphhopper/util/EdgeIteratorState;->setDistance(D)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v5

    iget-object v6, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

    invoke-interface {v5}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v9

    iget-object v10, p0, Lcom/graphhopper/reader/osm/OSMReader;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {v6, v9, v10, v4, v7}, Lcom/graphhopper/routing/util/OSMParsers;->handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V

    const-string v6, "key_values"

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v4, v6, v7}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-interface {v5, v6}, Lcom/graphhopper/util/EdgeIteratorState;->setKeyValues(Ljava/util/Map;)Lcom/graphhopper/util/EdgeIteratorState;

    :cond_a
    invoke-virtual {v3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v6

    if-le v6, v8, :cond_b

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/graphhopper/util/PointList;->get(I)Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/graphhopper/reader/osm/OSMReader;->checkCoordinates(ILcom/graphhopper/util/shapes/GHPoint;)V

    invoke-virtual {v3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    invoke-virtual {v3, v0}, Lcom/graphhopper/util/PointList;->get(I)Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/graphhopper/reader/osm/OSMReader;->checkCoordinates(ILcom/graphhopper/util/shapes/GHPoint;)V

    invoke-virtual {v3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {v3, v7, v0, v6}, Lcom/graphhopper/util/PointList;->shallowCopy(IIZ)Lcom/graphhopper/util/PointList;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/graphhopper/util/EdgeIteratorState;->setWayGeometry(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/util/EdgeIteratorState;

    :cond_b
    invoke-direct {p0, v5}, Lcom/graphhopper/reader/osm/OSMReader;->checkDistance(Lcom/graphhopper/util/EdgeIteratorState;)V

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictedWaysToEdgesMap:Lcom/graphhopper/reader/osm/WayToEdgesMap;

    invoke-virtual {v4}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v0

    invoke-interface {v5}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/graphhopper/reader/osm/WayToEdgesMap;->putIfReserved(JI)V

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->bugCounter:I

    const-string v1, "Too many bugs in OSM or GraphHopper encountered "

    invoke-static {p0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v6, p3

    new-instance p0, Ljava/lang/AssertionError;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v6}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    const-string v2, "there should be as many maps of node tags as there are points. node tags: "

    const-string v3, ", points: "

    invoke-static {v2, v0, v3, v1}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_e
    move-object/from16 v6, p3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v6}, Lcom/graphhopper/util/PointList;->getDimension()I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p0}, Lcom/graphhopper/util/PointAccess;->getDimension()I

    move-result p0

    const-string v2, "Dimension does not match for pointList vs. nodeAccess "

    const-string v3, " <-> "

    invoke-static {v2, v1, v3, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_f
    move-object/from16 v6, p3

    new-instance p0, Ljava/lang/AssertionError;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "->"

    const-string v4, ", points:"

    const-string v5, "to or from index is invalid for this edge "

    invoke-static {v5, p1, v3, v1, v4}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public getDataDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmDataDate:Ljava/util/Date;

    return-object p0
.end method

.method public getElevation(Lcom/graphhopper/reader/ReaderNode;)D
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->eleProvider:Lcom/graphhopper/reader/dem/ElevationProvider;

    invoke-interface {v0, p1}, Lcom/graphhopper/reader/dem/ElevationProvider;->getEle(Lcom/graphhopper/reader/ReaderNode;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {p0}, Lcom/graphhopper/routing/OSMReaderConfig;->getDefaultElevation()D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public getRelFlagsMap(J)Lcom/graphhopper/storage/IntsRef;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmWayIdToRelationFlagsMap:Lcom/graphhopper/coll/GHLongLongHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/carrotsearch/hppc/c1;->get(J)J

    move-result-wide p1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->tempRelFlags:Lcom/graphhopper/storage/IntsRef;

    iget-object v0, p0, Lcom/graphhopper/storage/IntsRef;->ints:[I

    const/4 v1, 0x0

    long-to-int v2, p1

    aput v2, v0, v1

    const/16 v1, 0x20

    shr-long/2addr p1, v1

    long-to-int p1, p1

    const/4 p2, 0x1

    aput p1, v0, p2

    return-object p0
.end method

.method public isBarrierNode(Lcom/graphhopper/reader/ReaderNode;)Z
    .locals 2

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/String;

    const-string v1, "barrier"

    invoke-virtual {p1, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ford"

    new-array v1, p0, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCalculateWayDistance(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMReader;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p0

    return p0
.end method

.method public preprocessRelations(Lcom/graphhopper/reader/ReaderRelation;)V
    .locals 5

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderRelation;->isMetaRelation()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "type"

    const-string v1, "route"

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderRelation;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/reader/ReaderRelation$Member;

    invoke-virtual {v1}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v2

    sget-object v3, Lcom/graphhopper/reader/ReaderElement$Type;->WAY:Lcom/graphhopper/reader/ReaderElement$Type;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRef()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/graphhopper/reader/osm/OSMReader;->getRelFlagsMap(J)Lcom/graphhopper/storage/IntsRef;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

    invoke-virtual {v3, p1, v2}, Lcom/graphhopper/routing/util/OSMParsers;->handleRelationTags(Lcom/graphhopper/reader/ReaderRelation;Lcom/graphhopper/storage/IntsRef;)Lcom/graphhopper/storage/IntsRef;

    move-result-object v2

    invoke-virtual {v1}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRef()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Lcom/graphhopper/reader/osm/OSMReader;->putRelFlagsMap(JLcom/graphhopper/storage/IntsRef;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->getRestrictedWayIds(Lcom/graphhopper/reader/ReaderRelation;)[J

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object p1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictedWaysToEdgesMap:Lcom/graphhopper/reader/osm/WayToEdgesMap;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/graphhopper/reader/osm/f;

    invoke-direct {v0, p0}, Lcom/graphhopper/reader/osm/f;-><init>(Lcom/graphhopper/reader/osm/WayToEdgesMap;)V

    invoke-interface {p1, v0}, Ljava/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public preprocessWay(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;)V
    .locals 10

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v1}, Lcom/graphhopper/routing/OSMReaderConfig;->isParseWayNames()Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v1}, Lcom/graphhopper/routing/OSMReaderConfig;->getPreferredLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v1}, Lcom/graphhopper/routing/OSMReaderConfig;->getPreferredLanguage()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "name:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/reader/osm/OSMReader;->fixWayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, "name"

    if-eqz v4, :cond_1

    invoke-virtual {p1, v5}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/reader/osm/OSMReader;->fixWayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-direct {v4, v1}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;)V

    const-string v1, "street_name"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "ref"

    invoke-virtual {p1, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/reader/osm/OSMReader;->fixWayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-direct {v4, v1}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;)V

    const-string v1, "street_ref"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/String;

    const-string v6, "destination:ref"

    invoke-virtual {p1, v6, v4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    const-string v7, "street_destination_ref"

    if-eqz v4, :cond_4

    new-instance v4, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-virtual {p1, v6}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/graphhopper/reader/osm/OSMReader;->fixWayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v4, "destination:ref:forward"

    invoke-virtual {p1, v4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/graphhopper/reader/osm/OSMReader;->fixWayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "destination:ref:backward"

    invoke-virtual {p1, v6}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/graphhopper/reader/osm/OSMReader;->fixWayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    :cond_5
    new-instance v8, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v4, v3

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v6, v3

    :cond_7
    invoke-direct {v8, v4, v6}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_1
    new-array v4, v1, [Ljava/lang/String;

    const-string v6, "destination"

    invoke-virtual {p1, v6, v4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    const-string v7, "street_destination"

    if-eqz v4, :cond_9

    new-instance v4, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-virtual {p1, v6}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/graphhopper/reader/osm/OSMReader;->fixWayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    const-string v4, "destination:forward"

    invoke-virtual {p1, v4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/graphhopper/reader/osm/OSMReader;->fixWayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "destination:backward"

    invoke-virtual {p1, v6}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/graphhopper/reader/osm/OSMReader;->fixWayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    :cond_a
    new-instance v8, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v4, v3

    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    move-object v6, v3

    :cond_c
    invoke-direct {v8, v4, v6}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_2
    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderWay;->getNodes()Lcom/carrotsearch/hppc/t0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "motorway"

    const-string v7, "highway"

    invoke-virtual {p1, v7, v6}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "motorway_link"

    invoke-virtual {p1, v7, v6}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_e
    iget-object v4, v4, Lcom/carrotsearch/hppc/t0;->l:[J

    aget-wide v8, v4, v1

    invoke-interface {p3, v8, v9}, Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;->getTags(J)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, v5, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-interface {p3, v7, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const-string v4, "motorway_junction"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    new-instance p3, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-direct {p3, v1}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getTags()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    const/4 v1, 0x1

    if-le p3, v1, :cond_14

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getTags()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_10
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ":conditional"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "maxspeed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "maxweight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bicycle"

    const-string v6, "bike"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/graphhopper/search/KVStorage;->cutString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v7, 0x3a

    const/16 v8, 0x5f

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "forward"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "backward"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    if-ne v5, v6, :cond_11

    new-instance v5, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-direct {v5, v4}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_11
    new-instance v7, Lcom/graphhopper/search/KVStorage$KValue;

    if-eqz v5, :cond_12

    move-object v5, v4

    goto :goto_4

    :cond_12
    move-object v5, v3

    :goto_4
    if-eqz v6, :cond_13

    goto :goto_5

    :cond_13
    move-object v4, v3

    :goto_5
    invoke-direct {v7, v5, v4}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_14
    const-string p3, "key_values"

    invoke-virtual {p1, p3, v0}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/osm/OSMReader;->isCalculateWayDistance(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p3

    if-nez p3, :cond_15

    goto :goto_6

    :cond_15
    invoke-direct {p0, p1, p2}, Lcom/graphhopper/reader/osm/OSMReader;->calcDistance(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lcom/graphhopper/reader/osm/OSMReader;->LOGGER:Lnc/b;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Could not determine distance for OSM way: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnc/b;->l(Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v0, "way_distance"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x408f400000000000L    # 1000.0

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMReader;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-wide v3, 0x411e848000000000L    # 500000.0

    cmpl-double p0, p2, v3

    if-lez p0, :cond_17

    sget-object p0, Lcom/graphhopper/util/GHUtility;->OSM_WARNING_LOGGER:Lnc/b;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v3

    div-double/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const-string p3, "Long ferry OSM way without duration tag: "

    const-string v0, ", distance: "

    invoke-static {p3, v3, v4, v0}, La6/q;->o(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " km"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnc/b;->l(Ljava/lang/String;)V

    :cond_17
    :goto_6
    return-void

    :cond_18
    :try_start_0
    invoke-static {v0}, Lcom/graphhopper/reader/osm/OSMReaderUtility;->parseDuration(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-double v1, p2, v1

    long-to-double v3, v3

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    div-double/2addr v3, v5

    div-double v5, v3, v5

    div-double/2addr v1, v5

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double p0, v1, v5

    if-gez p0, :cond_19

    sget-object p0, Lcom/graphhopper/util/GHUtility;->OSM_WARNING_LOGGER:Lnc/b;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "Unrealistic low speed calculated from duration. Maybe the duration is too long, or it is applied to a way that only represents a part of the connection? OSM way: "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ". duration="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (= "

    const-string v1, " minutes), distance="

    invoke-static {p1, v0, v3, v4, v1}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " m"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnc/b;->l(Ljava/lang/String;)V

    return-void

    :cond_19
    const-string p0, "speed_from_duration"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    sget-object p0, Lcom/graphhopper/util/GHUtility;->OSM_WARNING_LOGGER:Lnc/b;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse duration tag \'"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in OSM way: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnc/b;->l(Ljava/lang/String;)V

    return-void
.end method

.method public processRelation(Lcom/graphhopper/reader/ReaderRelation;Ljava/util/function/LongToIntFunction;)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->isTurnRestriction(Lcom/graphhopper/reader/ReaderRelation;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->getViaNodeIfViaNodeRestriction(Lcom/graphhopper/reader/ReaderRelation;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-interface {p2, v0, v1}, Ljava/util/function/LongToIntFunction;->applyAsInt(J)I

    move-result p2

    if-ltz p2, :cond_1

    const-string v0, "graphhopper:via_node"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictionRelations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->restrictionRelations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public putRelFlagsMap(JLcom/graphhopper/storage/IntsRef;)V
    .locals 6

    iget-object p3, p3, Lcom/graphhopper/storage/IntsRef;->ints:[I

    const/4 v0, 0x1

    aget v0, p3, v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const/4 v2, 0x0

    aget p3, p3, v2

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmWayIdToRelationFlagsMap:Lcom/graphhopper/coll/GHLongLongHashMap;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/carrotsearch/hppc/c1;->put(JJ)J

    return-void
.end method

.method public readGraph()V
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmFile:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMReader;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;-><init>(Lcom/graphhopper/util/PointAccess;Lcom/graphhopper/storage/Directory;)V

    new-instance v1, Lcom/graphhopper/reader/osm/c;

    invoke-direct {v1, p0}, Lcom/graphhopper/reader/osm/c;-><init>(Lcom/graphhopper/reader/osm/OSMReader;)V

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->setElevationProvider(Ljava/util/function/ToDoubleFunction;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/reader/osm/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/graphhopper/reader/osm/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->setWayFilter(Ljava/util/function/Predicate;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/reader/osm/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/graphhopper/reader/osm/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->setSplitNodeFilter(Ljava/util/function/Predicate;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/reader/osm/e;

    invoke-direct {v1, p0}, Lcom/graphhopper/reader/osm/e;-><init>(Lcom/graphhopper/reader/osm/OSMReader;)V

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->setWayPreprocessor(Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/reader/osm/s;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/graphhopper/reader/osm/s;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->setRelationPreprocessor(Ljava/util/function/Consumer;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/reader/osm/e;

    invoke-direct {v1, p0}, Lcom/graphhopper/reader/osm/e;-><init>(Lcom/graphhopper/reader/osm/OSMReader;)V

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->setRelationProcessor(Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/reader/osm/e;

    invoke-direct {v1, p0}, Lcom/graphhopper/reader/osm/e;-><init>(Lcom/graphhopper/reader/osm/OSMReader;)V

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->setEdgeHandler(Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->config:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v1}, Lcom/graphhopper/routing/OSMReaderConfig;->getWorkerThreads()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->setWorkerThreads(I)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->build()Lcom/graphhopper/reader/osm/WaySegmentParser;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->readOSM(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmDataDate:Ljava/util/Date;

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/reader/osm/OSMReader;->releaseEverythingExceptRestrictionData()V

    invoke-direct {p0}, Lcom/graphhopper/reader/osm/OSMReader;->addRestrictionsToGraph()V

    invoke-direct {p0}, Lcom/graphhopper/reader/osm/OSMReader;->releaseRestrictionData()V

    sget-object v0, Lcom/graphhopper/reader/osm/OSMReader;->LOGGER:Lnc/b;

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMReader;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/reader/osm/OSMReader;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v3}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/graphhopper/reader/osm/OSMReader;->zeroCounter:J

    invoke-static {v4, v5}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Finished reading OSM file: {}, nodes: {}, edges: {}, zero distance edges: {}"

    invoke-interface {v0, v1, p0}, Lnc/b;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Graph after reading OSM must not be empty"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "BaseGraph must be initialize before we can read OSM"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Your specified OSM file does not exist:"

    invoke-static {v1, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No OSM file specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tag parsers were not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAreaIndex(Lcom/graphhopper/routing/util/AreaIndex;)Lcom/graphhopper/reader/osm/OSMReader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/util/AreaIndex<",
            "Lcom/graphhopper/routing/util/CustomArea;",
            ">;)",
            "Lcom/graphhopper/reader/osm/OSMReader;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMReader;->areaIndex:Lcom/graphhopper/routing/util/AreaIndex;

    return-object p0
.end method

.method public setArtificialWayTags(Lcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;DLjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/PointList;",
            "Lcom/graphhopper/reader/ReaderWay;",
            "D",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "node_tags"

    move-object/from16 v4, p5

    invoke-virtual {v2, v3, v4}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "edge_distance"

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "point_list"

    invoke-virtual {v2, v3, v1}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "country"

    invoke-virtual {v2, v3}, Lcom/graphhopper/reader/ReaderElement;->removeTag(Ljava/lang/String;)V

    const-string v4, "country_rule"

    invoke-virtual {v2, v4}, Lcom/graphhopper/reader/ReaderElement;->removeTag(Ljava/lang/String;)V

    const-string v5, "custom_areas"

    invoke-virtual {v2, v5}, Lcom/graphhopper/reader/ReaderElement;->removeTag(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/graphhopper/reader/osm/OSMReader;->areaIndex:Lcom/graphhopper/routing/util/AreaIndex;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v6

    if-le v6, v9, :cond_0

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v6

    div-int/2addr v6, v9

    invoke-virtual {v1, v6}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v10

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v6

    div-int/2addr v6, v9

    invoke-virtual {v1, v6}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v12

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v8}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v10

    invoke-virtual {v1, v8}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v12

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v14

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v16

    add-double/2addr v10, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v14

    add-double v12, v12, v16

    div-double/2addr v12, v14

    :goto_0
    iget-object v1, v0, Lcom/graphhopper/reader/osm/OSMReader;->areaIndex:Lcom/graphhopper/routing/util/AreaIndex;

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/graphhopper/routing/util/AreaIndex;->query(DD)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    sget-object v6, Lcom/graphhopper/routing/ev/Country;->MISSING:Lcom/graphhopper/routing/ev/Country;

    sget-object v10, Lcom/graphhopper/routing/ev/State;->MISSING:Lcom/graphhopper/routing/ev/State;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/graphhopper/routing/util/CustomArea;

    invoke-virtual {v14}, Lcom/graphhopper/routing/util/CustomArea;->getProperties()Ljava/util/Map;

    move-result-object v15

    if-nez v15, :cond_2

    move/from16 p3, v8

    goto :goto_3

    :cond_2
    invoke-virtual {v14}, Lcom/graphhopper/routing/util/CustomArea;->getProperties()Ljava/util/Map;

    move-result-object v15

    move/from16 p3, v8

    const-string v8, "ISO3166-2"

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_3

    :goto_3
    move/from16 v8, p3

    goto :goto_2

    :cond_3
    const-string v15, "-"

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v7, v15

    if-eqz v7, :cond_8

    array-length v7, v15

    if-gt v7, v9, :cond_8

    aget-object v7, v15, p3

    invoke-static {v7}, Lcom/graphhopper/routing/ev/Country;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Country;

    move-result-object v7

    if-eqz v7, :cond_7

    move-object/from16 p1, v7

    array-length v7, v15

    if-ne v7, v9, :cond_5

    sget-object v7, Lcom/graphhopper/routing/ev/State;->MISSING:Lcom/graphhopper/routing/ev/State;

    if-eq v10, v7, :cond_4

    invoke-virtual {v14}, Lcom/graphhopper/routing/util/CustomArea;->getArea()D

    move-result-wide v16

    cmpg-double v7, v16, v12

    if-ltz v7, :cond_4

    goto :goto_4

    :cond_4
    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    array-length v7, v15

    const/4 v15, 0x1

    if-ne v7, v15, :cond_6

    sget-object v7, Lcom/graphhopper/routing/ev/State;->MISSING:Lcom/graphhopper/routing/ev/State;

    if-ne v10, v7, :cond_6

    invoke-virtual {v14}, Lcom/graphhopper/routing/util/CustomArea;->getArea()D

    move-result-wide v16

    cmpg-double v7, v16, v12

    if-gez v7, :cond_6

    :goto_5
    invoke-static {v8}, Lcom/graphhopper/routing/ev/State;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/State;

    move-result-object v6

    invoke-virtual {v14}, Lcom/graphhopper/routing/util/CustomArea;->getArea()D

    move-result-wide v7

    move-object v10, v6

    move-wide v12, v7

    move-object/from16 v6, p1

    :cond_6
    move/from16 v8, p3

    move v7, v15

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    aget-object v1, v15, p3

    const-string v2, "Unknown country: "

    invoke-static {v2, v1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid alpha2: "

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v2, v3, v6}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "country_state"

    invoke-virtual {v2, v3, v10}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/graphhopper/reader/osm/OSMReader;->countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v6}, Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;->getCountryRule(Lcom/graphhopper/routing/ev/Country;)Lcom/graphhopper/routing/util/countryrules/CountryRule;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v2, v4, v0}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v2, v5, v1}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCountryRuleFactory(Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;)Lcom/graphhopper/reader/osm/OSMReader;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMReader;->countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

    return-object p0
.end method

.method public setElevationProvider(Lcom/graphhopper/reader/dem/ElevationProvider;)Lcom/graphhopper/reader/osm/OSMReader;
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMReader;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v0}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/graphhopper/reader/dem/ElevationProvider;->NOOP:Lcom/graphhopper/reader/dem/ElevationProvider;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Make sure you graph accepts 3D data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMReader;->eleProvider:Lcom/graphhopper/reader/dem/ElevationProvider;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Use the NOOP elevation provider instead of null or don\'t call setElevationProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFile(Ljava/io/File;)Lcom/graphhopper/reader/osm/OSMReader;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMReader;->osmFile:Ljava/io/File;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
