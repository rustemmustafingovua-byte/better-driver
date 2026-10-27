.class public Lcom/graphhopper/GraphHopper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lnc/b;


# instance fields
.field private allowWrites:Z

.field private baseGraph:Lcom/graphhopper/storage/BaseGraph;

.field calcChecksums:Z

.field private chGraphs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/RoutingCHGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

.field private cityAreaRadius:D

.field private cityAreaSensitivity:D

.field private countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

.field private customAreasDirectory:Ljava/lang/String;

.field private final dataAccessConfig:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataAccessDefaultType:Lcom/graphhopper/storage/DAType;

.field private dateRangeParserString:Ljava/lang/String;

.field private defaultSegmentSize:I

.field private eleProvider:Lcom/graphhopper/reader/dem/ElevationProvider;

.field private elevation:Z

.field private encodedValuesString:Ljava/lang/String;

.field protected encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

.field private final fileLockName:Ljava/lang/String;

.field private fullyLoaded:Z

.field private ghLocation:Ljava/lang/String;

.field private importRegistry:Lcom/graphhopper/routing/ev/ImportRegistry;

.field private landmarks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/lm/LandmarkStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

.field private locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

.field private lockFactory:Lcom/graphhopper/storage/LockFactory;

.field private maxRegionSearch:I

.field private maxSpeedCalculator:Lcom/graphhopper/routing/util/MaxSpeedCalculator;

.field private minNetworkSize:I

.field private osmFile:Ljava/lang/String;

.field private osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

.field private final osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

.field private pathBuilderFactory:Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

.field private preciseIndexResolution:I

.field private final profilesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/config/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Lcom/graphhopper/storage/StorableProperties;

.field removeZipped:Z

.field private residentialAreaRadius:D

.field private residentialAreaSensitivity:D

.field private final routerConfig:Lcom/graphhopper/routing/RouterConfig;

.field private sortGraph:Z

.field private subnetworksThreads:I

.field private final trMap:Lcom/graphhopper/util/TranslationMap;

.field private urbanDensityCalculationThreads:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/GraphHopper;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    const-string v0, "gh.lock"

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->fileLockName:Ljava/lang/String;

    new-instance v0, Lcom/graphhopper/util/TranslationMap;

    invoke-direct {v0}, Lcom/graphhopper/util/TranslationMap;-><init>()V

    invoke-virtual {v0}, Lcom/graphhopper/util/TranslationMap;->doImport()Lcom/graphhopper/util/TranslationMap;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->trMap:Lcom/graphhopper/util/TranslationMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/GraphHopper;->removeZipped:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/graphhopper/GraphHopper;->calcChecksums:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/graphhopper/GraphHopper;->countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

    const-string v2, ""

    iput-object v2, p0, Lcom/graphhopper/GraphHopper;->customAreasDirectory:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Lcom/graphhopper/GraphHopper;->defaultSegmentSize:I

    iput-object v2, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    sget-object v3, Lcom/graphhopper/storage/DAType;->RAM_STORE:Lcom/graphhopper/storage/DAType;

    iput-object v3, p0, Lcom/graphhopper/GraphHopper;->dataAccessDefaultType:Lcom/graphhopper/storage/DAType;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/graphhopper/GraphHopper;->dataAccessConfig:Ljava/util/LinkedHashMap;

    iput-boolean v0, p0, Lcom/graphhopper/GraphHopper;->sortGraph:Z

    iput-boolean v1, p0, Lcom/graphhopper/GraphHopper;->elevation:Z

    new-instance v3, Lcom/graphhopper/storage/NativeFSLockFactory;

    invoke-direct {v3}, Lcom/graphhopper/storage/NativeFSLockFactory;-><init>()V

    iput-object v3, p0, Lcom/graphhopper/GraphHopper;->lockFactory:Lcom/graphhopper/storage/LockFactory;

    iput-boolean v0, p0, Lcom/graphhopper/GraphHopper;->allowWrites:Z

    iput-boolean v1, p0, Lcom/graphhopper/GraphHopper;->fullyLoaded:Z

    new-instance v3, Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-direct {v3}, Lcom/graphhopper/routing/OSMReaderConfig;-><init>()V

    iput-object v3, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    new-instance v3, Lcom/graphhopper/routing/RouterConfig;

    invoke-direct {v3}, Lcom/graphhopper/routing/RouterConfig;-><init>()V

    iput-object v3, p0, Lcom/graphhopper/GraphHopper;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    const/16 v3, 0x12c

    iput v3, p0, Lcom/graphhopper/GraphHopper;->preciseIndexResolution:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/graphhopper/GraphHopper;->maxRegionSearch:I

    const/16 v3, 0xc8

    iput v3, p0, Lcom/graphhopper/GraphHopper;->minNetworkSize:I

    iput v0, p0, Lcom/graphhopper/GraphHopper;->subnetworksThreads:I

    const-wide/high16 v3, 0x4079000000000000L    # 400.0

    iput-wide v3, p0, Lcom/graphhopper/GraphHopper;->residentialAreaRadius:D

    const-wide v3, 0x40b7700000000000L    # 6000.0

    iput-wide v3, p0, Lcom/graphhopper/GraphHopper;->residentialAreaSensitivity:D

    const-wide v3, 0x4097700000000000L    # 1500.0

    iput-wide v3, p0, Lcom/graphhopper/GraphHopper;->cityAreaRadius:D

    const-wide v3, 0x408f400000000000L    # 1000.0

    iput-wide v3, p0, Lcom/graphhopper/GraphHopper;->cityAreaSensitivity:D

    iput v1, p0, Lcom/graphhopper/GraphHopper;->urbanDensityCalculationThreads:I

    new-instance v0, Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-direct {v0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    new-instance v0, Lcom/graphhopper/routing/ch/CHPreparationHandler;

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->chGraphs:Ljava/util/Map;

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->landmarks:Ljava/util/Map;

    sget-object v0, Lcom/graphhopper/reader/dem/ElevationProvider;->NOOP:Lcom/graphhopper/reader/dem/ElevationProvider;

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->eleProvider:Lcom/graphhopper/reader/dem/ElevationProvider;

    new-instance v0, Lcom/graphhopper/routing/ev/DefaultImportRegistry;

    invoke-direct {v0}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->importRegistry:Lcom/graphhopper/routing/ev/ImportRegistry;

    new-instance v0, Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

    invoke-direct {v0}, Lcom/graphhopper/util/details/PathDetailsBuilderFactory;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->pathBuilderFactory:Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

    iput-object v2, p0, Lcom/graphhopper/GraphHopper;->dateRangeParserString:Ljava/lang/String;

    iput-object v2, p0, Lcom/graphhopper/GraphHopper;->encodedValuesString:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A(Ljava/lang/String;Lcom/graphhopper/routing/lm/LandmarkStorage;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$loadOrPrepareLM$28(Ljava/lang/String;Lcom/graphhopper/routing/lm/LandmarkStorage;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Ljava/util/Map;Ljava/util/Map$Entry;)Lcom/graphhopper/routing/ev/EncodedValue;
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$buildEncodingManager$2(Ljava/util/Map;Ljava/util/Map$Entry;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValue;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$buildEncodingManager$3(Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValue;)I

    move-result p0

    return p0
.end method

.method public static synthetic D(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$buildOSMParsers$11(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/routing/util/OSMParsers;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/GraphHopper;->lambda$buildOSMParsers$12(Lcom/graphhopper/routing/util/OSMParsers;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic F(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/GraphHopper;->lambda$init$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/graphhopper/storage/CHConfig;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$loadOrPrepareCH$26(Ljava/util/Map;Lcom/graphhopper/storage/CHConfig;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/GraphHopper;->lambda$prepareImport$20(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private buildSubnetworkRemovalJobs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/config/Profile;

    new-instance v3, Lcom/graphhopper/util/PMap;

    invoke-direct {v3}, Lcom/graphhopper/util/PMap;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "u_turn_costs"

    invoke-virtual {v3, v5, v4}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/graphhopper/GraphHopper;->createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v3

    new-instance v4, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-virtual {v2}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/graphhopper/routing/ev/Subnetwork;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/weighting/Weighting;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic c(Ljava/util/List;Lcom/graphhopper/routing/lm/LMConfig;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$loadOrPrepareLM$27(Ljava/util/List;Lcom/graphhopper/routing/lm/LMConfig;)Z

    move-result p0

    return p0
.end method

.method private calcChecksums()V
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/graphhopper/GraphHopper;->calcChecksums:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    iget-object v2, v0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Calculating checksums for {} profiles"

    invoke-interface {v1, v2, v3}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/graphhopper/util/StopWatch;->started()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    iget-object v2, v0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [D

    iget-object v3, v0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [D

    iget-object v4, v0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/graphhopper/g;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lcom/graphhopper/g;-><init>(Lcom/graphhopper/GraphHopper;I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {v4}, Lwa/h;->w(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v5}, Lcom/graphhopper/storage/BaseGraph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_6

    move v6, v8

    :goto_0
    iget-object v9, v0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v9, v5, v8}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    if-eqz v11, :cond_2

    move-wide v9, v12

    :cond_2
    rem-int/lit8 v11, v6, 0x2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-nez v11, :cond_3

    move-wide/from16 v16, v12

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v14

    :goto_1
    mul-double v9, v9, v16

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {v8, v5, v7}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_4

    move-wide/from16 v18, v12

    :cond_4
    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    move-wide v12, v14

    :goto_2
    mul-double v18, v18, v12

    aget-wide v11, v2, v6

    add-double/2addr v11, v9

    aput-wide v11, v2, v6

    aget-wide v8, v3, v6

    add-double v8, v8, v18

    aput-wide v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x0

    goto :goto_0

    :cond_6
    iget-object v4, v0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/config/Profile;

    iget-object v6, v0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    invoke-virtual {v5}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "checksum.fwd."

    invoke-static {v10, v9}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aget-wide v11, v2, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/storage/StorableProperties;

    iget-object v6, v0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    invoke-virtual {v5}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "checksum.bwd."

    invoke-static {v11, v9}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aget-wide v12, v3, v8

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v6, v9, v12}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/storage/StorableProperties;

    sget-object v6, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    invoke-virtual {v5}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v9

    aget-wide v12, v2, v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lnc/b;->k(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    aget-wide v12, v3, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lnc/b;->k(Ljava/lang/String;)V

    add-int/2addr v8, v7

    goto :goto_3

    :cond_7
    sget-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getTimeString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calculating checksums took: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method private calculateUrbanDensity()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v2, "urban_density"

    invoke-virtual {v1, v2}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-class v3, Lcom/graphhopper/routing/ev/UrbanDensity;

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v5

    iget-object v1, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v2, "road_class"

    invoke-virtual {v1, v2}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v3, "road_class_link"

    invoke-virtual {v1, v3}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-class v4, Lcom/graphhopper/routing/ev/RoadClass;

    invoke-virtual {v1, v2, v4}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v6

    iget-object v1, v0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-virtual {v1, v3}, Lcom/graphhopper/routing/util/EncodingManager;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v7

    iget-object v4, v0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-wide v8, v0, Lcom/graphhopper/GraphHopper;->residentialAreaRadius:D

    iget-wide v10, v0, Lcom/graphhopper/GraphHopper;->residentialAreaSensitivity:D

    iget-wide v12, v0, Lcom/graphhopper/GraphHopper;->cityAreaRadius:D

    iget-wide v14, v0, Lcom/graphhopper/GraphHopper;->cityAreaSensitivity:D

    iget v0, v0, Lcom/graphhopper/GraphHopper;->urbanDensityCalculationThreads:I

    move/from16 v16, v0

    invoke-static/range {v4 .. v16}, Lcom/graphhopper/routing/util/UrbanDensityCalculator;->calcUrbanDensity(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;DDDDI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Urban density calculation requires road_class_link"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Urban density calculation requires road_class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private createCHConfigs(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/CHProfile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/CHConfig;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/CHProfile;

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/Profile;

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->hasTurnCosts()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/graphhopper/util/PMap;

    invoke-direct {v3}, Lcom/graphhopper/util/PMap;-><init>()V

    invoke-virtual {p0, v1, v3}, Lcom/graphhopper/GraphHopper;->createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/graphhopper/storage/CHConfig;->edgeBased(Ljava/lang/String;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/storage/CHConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/graphhopper/util/PMap;

    invoke-direct {v3}, Lcom/graphhopper/util/PMap;-><init>()V

    invoke-virtual {p0, v1, v3}, Lcom/graphhopper/GraphHopper;->createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/graphhopper/storage/CHConfig;->nodeBased(Ljava/lang/String;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/storage/CHConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static createElevationProvider(Lcom/graphhopper/GraphHopperConfig;)Lcom/graphhopper/reader/dem/ElevationProvider;
    .locals 7

    const-string v0, "graph.elevation.provider"

    const-string v1, "noop"

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "graph.elevation.calcmean"

    invoke-virtual {p0, v1}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "graph.elevation.cache_dir"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "graph.elevation.cachedir"

    invoke-virtual {p0, v3}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "use graph.elevation.cache_dir not cachedir in configuration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v3, Lcom/graphhopper/reader/dem/ElevationProvider;->NOOP:Lcom/graphhopper/reader/dem/ElevationProvider;

    const-string v4, "hgt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Lcom/graphhopper/reader/dem/HGTProvider;

    invoke-direct {v3, v1}, Lcom/graphhopper/reader/dem/HGTProvider;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v4, "srtm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Lcom/graphhopper/reader/dem/SRTMProvider;

    invoke-direct {v3, v1}, Lcom/graphhopper/reader/dem/SRTMProvider;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v4, "cgiar"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v3, Lcom/graphhopper/reader/dem/CGIARProvider;

    invoke-direct {v3, v1}, Lcom/graphhopper/reader/dem/CGIARProvider;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v4, "gmted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v3, Lcom/graphhopper/reader/dem/GMTEDProvider;

    invoke-direct {v3, v1}, Lcom/graphhopper/reader/dem/GMTEDProvider;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v4, "srtmgl1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v3, Lcom/graphhopper/reader/dem/SRTMGL1Provider;

    invoke-direct {v3, v1}, Lcom/graphhopper/reader/dem/SRTMGL1Provider;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v4, "multi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v3, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;

    invoke-direct {v3, v1}, Lcom/graphhopper/reader/dem/MultiSourceElevationProvider;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v4, "skadi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v3, Lcom/graphhopper/reader/dem/SkadiProvider;

    invoke-direct {v3, v1}, Lcom/graphhopper/reader/dem/SkadiProvider;-><init>(Ljava/lang/String;)V

    :cond_8
    :goto_1
    instance-of v0, v3, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    if-eqz v0, :cond_c

    move-object v0, v3

    check-cast v0, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    const-string v1, "graph.elevation.base_url"

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "graph.elevation.baseurl"

    invoke-virtual {p0, v2}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "use graph.elevation.base_url not baseurl in configuration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    const-string v2, "graph.elevation.dataaccess"

    const-string v4, "MMAP"

    invoke-virtual {p0, v2, v4}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/graphhopper/storage/DAType;->fromString(Ljava/lang/String;)Lcom/graphhopper/storage/DAType;

    move-result-object v2

    const-string v4, "graph.elevation.interpolate"

    invoke-virtual {p0, v4}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "none"

    invoke-virtual {p0, v4, v5}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bilinear"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_3

    :cond_b
    const-string v4, "graph.elevation.calc_mean"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/graphhopper/GraphHopperConfig;->getBool(Ljava/lang/String;Z)Z

    move-result v4

    :goto_3
    const-string v5, "graph.elevation.cgiar.clear"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/graphhopper/GraphHopperConfig;->getBool(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "graph.elevation.clear"

    invoke-virtual {p0, v6, v5}, Lcom/graphhopper/GraphHopperConfig;->getBool(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setAutoRemoveTemporaryFiles(Z)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setInterpolate(Z)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setDAType(Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {v0, v1}, Lcom/graphhopper/reader/dem/TileBasedElevationProvider;->setBaseURL(Ljava/lang/String;)Lcom/graphhopper/reader/dem/TileBasedElevationProvider;

    :cond_c
    return-object v3

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "graph.elevation.calcmean is deprecated, use graph.elevation.interpolate"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createLMConfigs(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/LMProfile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/LMConfig;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/LMProfile;

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->usesOtherPreparation()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/Profile;

    new-instance v2, Lcom/graphhopper/util/PMap;

    invoke-direct {v2}, Lcom/graphhopper/util/PMap;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/graphhopper/GraphHopper;->createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;Z)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v2

    new-instance v3, Lcom/graphhopper/routing/lm/LMConfig;

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/graphhopper/routing/lm/LMConfig;-><init>(Ljava/lang/String;Lcom/graphhopper/routing/weighting/Weighting;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private createRouter()Lcom/graphhopper/routing/Router;
    .locals 12

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/graphhopper/GraphHopper;->fullyLoaded:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    iget-object v6, p0, Lcom/graphhopper/GraphHopper;->pathBuilderFactory:Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

    iget-object v7, p0, Lcom/graphhopper/GraphHopper;->trMap:Lcom/graphhopper/util/TranslationMap;

    iget-object v8, p0, Lcom/graphhopper/GraphHopper;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->createWeightingFactory()Lcom/graphhopper/routing/WeightingFactory;

    move-result-object v9

    iget-object v10, p0, Lcom/graphhopper/GraphHopper;->chGraphs:Ljava/util/Map;

    iget-object v11, p0, Lcom/graphhopper/GraphHopper;->landmarks:Ljava/util/Map;

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/graphhopper/GraphHopper;->doCreateRouter(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/Map;Lcom/graphhopper/util/details/PathDetailsBuilderFactory;Lcom/graphhopper/util/TranslationMap;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/WeightingFactory;Ljava/util/Map;Ljava/util/Map;)Lcom/graphhopper/routing/Router;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Location index not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to create a new GraphHopper instance as it is already closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Do a successful call to load or importOrLoad before routing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lb/e0;Ljava/util/Map;Ljava/util/LinkedHashSet;Lcom/graphhopper/config/Profile;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/GraphHopper;->lambda$prepareImport$18(Lcom/graphhopper/routing/weighting/custom/NameValidator;Ljava/util/Map;Ljava/util/Set;Lcom/graphhopper/config/Profile;)V

    return-void
.end method

.method public static synthetic e(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$buildOSMParsers$9(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/config/Profile;)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$calcChecksums$25(Lcom/graphhopper/config/Profile;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/GraphHopper;->lambda$init$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getBaseGraphString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object v1

    invoke-interface {v1}, Lcom/graphhopper/storage/Directory;->getDefaultType()Lcom/graphhopper/storage/DAType;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v2

    invoke-interface {v2}, Lcom/graphhopper/util/PointAccess;->getDimension()I

    move-result v2

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v3}, Lcom/graphhopper/storage/BaseGraph;->getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v3}, Lcom/graphhopper/storage/BaseGraph;->getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "no_turn_cost"

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->getVersionsString()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "D|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCHProfileVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "graph.profiles.ch."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".version"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/StorableProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLMProfileVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "graph.profiles.lm."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".version"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/StorableProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getProfilesString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/graphhopper/g;-><init>(Lcom/graphhopper/GraphHopper;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getRestrictionVehicleTypesByProfile(Ljava/util/Collection;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/graphhopper/config/Profile;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/Profile;

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->hasTurnCosts()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getTurnCostsConfig()Lcom/graphhopper/util/TurnCostsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/TurnCostsConfig;->getVehicleTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getVersionsString()Ljava/lang/String;
    .locals 0

    const-string p0, "nodes:9,edges:24,geometry:7,location_index:5,string_index:2,nodesCH:0,shortcuts:9"

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/GraphHopper;->lambda$parseEncodedValueString$13(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/graphhopper/GraphHopper;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$prepareImport$15(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/graphhopper/config/Profile;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/GraphHopper;->lambda$createSubnetworkEncodedValues$6(Lcom/graphhopper/config/Profile;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/graphhopper/util/JsonFeatureCollection;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/GraphHopper;->lambda$readCustomAreas$22(Lcom/graphhopper/util/JsonFeatureCollection;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/GraphHopper;->lambda$prepareImport$19(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$buildEncodingManager$2(Ljava/util/Map;Ljava/util/Map$Entry;)Lcom/graphhopper/routing/ev/EncodedValue;
    .locals 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/ev/ImportUnit;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ev/ImportUnit;->getCreateEncodedValue()Ljava/util/function/Function;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Lcom/graphhopper/util/PMap;

    invoke-direct {v1}, Lcom/graphhopper/util/PMap;-><init>()V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/PMap;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/EncodedValue;

    return-object p0
.end method

.method private static synthetic lambda$buildEncodingManager$3(Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValue;)I
    .locals 0

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$buildEncodingManager$4(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$buildEncodingManager$5(Lcom/graphhopper/routing/util/EncodingManager$Builder;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/TurnRestriction;->create(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/EncodingManager$Builder;->addTurnCostEncodedValue(Lcom/graphhopper/routing/ev/EncodedValue;)Lcom/graphhopper/routing/util/EncodingManager$Builder;

    return-void
.end method

.method private synthetic lambda$buildOSMParsers$10(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/util/parsers/OSMMtbNetworkTagParser;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    sget-object v1, Lcom/graphhopper/routing/ev/MtbNetwork;->KEY:Ljava/lang/String;

    const-class v2, Lcom/graphhopper/routing/ev/RouteNetwork;

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/routing/util/parsers/OSMMtbNetworkTagParser;-><init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)V

    return-object v0
.end method

.method private synthetic lambda$buildOSMParsers$11(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/util/parsers/OSMFootNetworkTagParser;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    sget-object v1, Lcom/graphhopper/routing/ev/FootNetwork;->KEY:Ljava/lang/String;

    const-class v2, Lcom/graphhopper/routing/ev/RouteNetwork;

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/routing/util/parsers/OSMFootNetworkTagParser;-><init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)V

    return-object v0
.end method

.method private synthetic lambda$buildOSMParsers$12(Lcom/graphhopper/routing/util/OSMParsers;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    new-instance v0, Lcom/graphhopper/reader/osm/RestrictionTagParser;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-static {p2}, Lcom/graphhopper/routing/ev/TurnRestriction;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/graphhopper/routing/util/EncodingManager;->getTurnBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p0

    invoke-direct {v0, p3, p0}, Lcom/graphhopper/reader/osm/RestrictionTagParser;-><init>(Ljava/util/List;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V

    invoke-virtual {p1, v0}, Lcom/graphhopper/routing/util/OSMParsers;->addRestrictionTagParser(Lcom/graphhopper/reader/osm/RestrictionTagParser;)Lcom/graphhopper/routing/util/OSMParsers;

    return-void
.end method

.method private static synthetic lambda$buildOSMParsers$7(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/ev/ImportUnit;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$buildOSMParsers$8(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/graphhopper/routing/ev/ImportUnit;)V
    .locals 1

    invoke-virtual {p4}, Lcom/graphhopper/routing/ev/ImportUnit;->getCreateTagParser()Ljava/util/function/BiFunction;

    move-result-object p4

    if-eqz p4, :cond_1

    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/util/PMap;

    const-string p3, "date_range_parser_day"

    invoke-virtual {p1, p3}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->dateRangeParserString:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-interface {p4, p0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/util/parsers/TagParser;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$buildOSMParsers$9(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/util/parsers/OSMBikeNetworkTagParser;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    sget-object v1, Lcom/graphhopper/routing/ev/BikeNetwork;->KEY:Ljava/lang/String;

    const-class v2, Lcom/graphhopper/routing/ev/RouteNetwork;

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/routing/util/parsers/OSMBikeNetworkTagParser;-><init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)V

    return-object v0
.end method

.method private synthetic lambda$calcChecksums$25(Lcom/graphhopper/config/Profile;)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 1

    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/GraphHopper;->createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createSubnetworkEncodedValues$6(Lcom/graphhopper/config/Profile;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/ev/Subnetwork;->create(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getProfilesString$23(Lcom/graphhopper/config/Profile;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/graphhopper/GraphHopper;->getProfileHash(Lcom/graphhopper/config/Profile;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$init$0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "foot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "hike"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method private static synthetic lambda$init$1(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mtb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bike"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method private static synthetic lambda$loadOrPrepareCH$26(Ljava/util/Map;Lcom/graphhopper/storage/CHConfig;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/graphhopper/storage/CHConfig;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$loadOrPrepareLM$27(Ljava/util/List;Lcom/graphhopper/routing/lm/LMConfig;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$loadOrPrepareLM$28(Ljava/lang/String;Lcom/graphhopper/routing/lm/LandmarkStorage;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getLMConfig()Lcom/graphhopper/routing/lm/LMConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/routing/lm/LMConfig;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$loadOrPrepareLM$29(Ljava/lang/String;Lcom/graphhopper/routing/lm/PrepareLandmarks;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/graphhopper/routing/lm/PrepareLandmarks;->getLandmarkStorage()Lcom/graphhopper/routing/lm/LandmarkStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getLMConfig()Lcom/graphhopper/routing/lm/LMConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/routing/lm/LMConfig;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$loadOrPrepareLM$30(Lcom/graphhopper/config/LMProfile;Lcom/graphhopper/routing/lm/LandmarkStorage;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->landmarks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$parseEncodedValueString$13(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_1
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method private static synthetic lambda$parseEncodedValueString$14(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Lcom/graphhopper/util/PMap;

    invoke-direct {v1, p1}, Lcom/graphhopper/util/PMap;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "duplicate encoded value in config graph.encoded_values: "

    invoke-static {p1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$postProcessing$24(Lcom/graphhopper/config/Profile;)Z
    .locals 1

    const-string v0, "custom"

    invoke-virtual {p0}, Lcom/graphhopper/config/Profile;->getWeighting()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$prepareImport$15(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->importRegistry:Lcom/graphhopper/routing/ev/ImportRegistry;

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/ev/ImportRegistry;->createImportUnit(Ljava/lang/String;)Lcom/graphhopper/routing/ev/ImportUnit;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$prepareImport$16(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method private static synthetic lambda$prepareImport$17(Ljava/util/Map;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p1, Lcom/graphhopper/util/PMap;

    invoke-direct {p1}, Lcom/graphhopper/util/PMap;-><init>()V

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$prepareImport$18(Lcom/graphhopper/routing/weighting/custom/NameValidator;Ljava/util/Map;Ljava/util/Set;Lcom/graphhopper/config/Profile;)V
    .locals 2

    invoke-virtual {p3}, Lcom/graphhopper/config/Profile;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object p3

    new-instance v0, Lc2/c0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc2/c0;-><init>(I)V

    invoke-static {p3, p0, v0}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->findVariablesForEncodedValuesString(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/weighting/custom/NameValidator;Lcom/graphhopper/routing/weighting/custom/ClassHelper;)Ljava/util/List;

    move-result-object p0

    new-instance p3, Lcom/graphhopper/e;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p1, p2}, Lcom/graphhopper/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$prepareImport$19(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "="

    invoke-static {v0, v1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$prepareImport$20(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/PMap;

    invoke-virtual {v1}, Lcom/graphhopper/util/PMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/PMap;

    invoke-virtual {p0}, Lcom/graphhopper/util/PMap;->toMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/graphhopper/d;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v1, "|"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$readCustomAreas$22(Lcom/graphhopper/util/JsonFeatureCollection;)Ljava/util/stream/Stream;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$resolveCustomAreas$31(Lcom/graphhopper/util/JsonFeatureCollection;Lb6/c0;Ljava/nio/file/Path;)V
    .locals 1

    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p2}, Lb6/c0;->p(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-virtual {p1}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_0

    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/UncheckedIOException;

    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method private static lambda$sortGraphAlongHilbertCurve$21(Lcom/carrotsearch/hppc/t0;II)I
    .locals 2

    iget-object p0, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    aget-wide v0, p0, p1

    aget-wide p0, p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static latLonToHilbertIndex(DDI)J
    .locals 6

    const-wide v0, 0x4066800000000000L    # 180.0

    add-double/2addr p2, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr p2, v2

    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double/2addr v2, p0

    div-double/2addr v2, v0

    const-wide/16 p0, 0x1

    shl-long v0, p0, p4

    long-to-double v4, v0

    mul-double/2addr p2, v4

    double-to-long p2, p2

    mul-double/2addr v2, v4

    double-to-long v2, v2

    sub-long/2addr v0, p0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-static {p4, p0, p1, p2, p3}, Lcom/graphhopper/GraphHopper;->xy2d(IJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic m(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/config/LMProfile;Lcom/graphhopper/routing/lm/LandmarkStorage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/GraphHopper;->lambda$loadOrPrepareLM$30(Lcom/graphhopper/config/LMProfile;Lcom/graphhopper/routing/lm/LandmarkStorage;)V

    return-void
.end method

.method public static synthetic n(Ljava/lang/String;Lcom/graphhopper/routing/lm/PrepareLandmarks;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$loadOrPrepareLM$29(Ljava/lang/String;Lcom/graphhopper/routing/lm/PrepareLandmarks;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/GraphHopper;->lambda$prepareImport$16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$buildOSMParsers$10(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;

    move-result-object p0

    return-object p0
.end method

.method public static parseEncodedValueString(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/util/PMap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/graphhopper/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/graphhopper/b;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/graphhopper/c;

    invoke-direct {v1, v2, v0}, Lcom/graphhopper/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private printInfo()V
    .locals 7

    sget-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    sget-object v1, Lcom/graphhopper/util/Constants;->VERSION:Ljava/lang/String;

    sget-object v2, Lcom/graphhopper/util/Constants;->BUILD_DATE:Ljava/lang/String;

    invoke-static {}, Lcom/graphhopper/util/Constants;->getVersions()Ljava/lang/String;

    move-result-object v3

    const-string v4, "|"

    const-string v5, " ("

    const-string v6, "version "

    invoke-static {v6, v1, v4, v2, v5}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->getBaseGraphString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->toDetailsString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "graph "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", details:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lnc/b;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic q(Lcom/graphhopper/util/JsonFeatureCollection;Lb6/c0;Ljava/nio/file/Path;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/GraphHopper;->lambda$resolveCustomAreas$31(Lcom/graphhopper/util/JsonFeatureCollection;Lb6/c0;Ljava/nio/file/Path;)V

    return-void
.end method

.method public static synthetic r(Ljava/util/Map;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/GraphHopper;->lambda$prepareImport$17(Ljava/util/Map;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method private readCustomAreas()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/CustomArea;",
            ">;"
        }
    .end annotation

    new-instance v0, Lb6/c0;

    invoke-direct {v0}, Lb6/c0;-><init>()V

    new-instance v1, Lk5/a;

    invoke-direct {v1}, Lk5/a;-><init>()V

    invoke-virtual {v0, v1}, Lb6/c0;->s(Lb6/a0;)V

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->customAreasDirectory:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, "*.{geojson,json}"

    invoke-static {p0, v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v3}, Lb6/c0;->p(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :try_start_6
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :goto_2
    if-eqz p0, :cond_2

    :try_start_7
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static resolveCustomAreas(Ljava/lang/String;)Lcom/graphhopper/util/JsonFeatureCollection;
    .locals 7

    const-string v0, "Will make "

    new-instance v1, Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-direct {v1}, Lcom/graphhopper/util/JsonFeatureCollection;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lb6/c0;

    invoke-direct {v2}, Lb6/c0;-><init>()V

    new-instance v3, Lk5/a;

    invoke-direct {v3}, Lk5/a;-><init>()V

    invoke-virtual {v2, v3}, Lb6/c0;->s(Lb6/a0;)V

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p0, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    const-string v5, "*.{geojson,json}"

    invoke-static {v4, v5}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v4}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/graphhopper/d;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/graphhopper/d;-><init>(I)V

    invoke-static {v5}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/graphhopper/e;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v1, v2}, Lcom/graphhopper/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    sget-object v2, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    invoke-virtual {v1}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " areas available to all custom profiles. Found in "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lnc/b;->k(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception p0

    if-eqz v4, :cond_0

    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_1
    return-object v1
.end method

.method public static resolveCustomModelFiles(Ljava/lang/String;Ljava/util/List;Lcom/graphhopper/util/JsonFeatureCollection;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/Profile;",
            ">;",
            "Lcom/graphhopper/util/JsonFeatureCollection;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/Profile;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/graphhopper/jackson/Jackson;->newObjectMapper()Lb6/c0;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/config/Profile;

    const-string v4, "custom"

    invoke-virtual {v3}, Lcom/graphhopper/config/Profile;->getWeighting()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/graphhopper/config/Profile;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v4

    const-string v5, "custom_model"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/graphhopper/util/PMap;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/graphhopper/util/CustomModel;

    const-string v7, "custom_model_files"

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/graphhopper/config/Profile;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v6

    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v6, v7, v8}, Lcom/graphhopper/util/PMap;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-virtual {v0, v4}, Lb6/c0;->w(Ljava/lang/Object;)[B

    move-result-object v6

    iget-object v7, v0, Lb6/c0;->l:Ls5/d;

    invoke-virtual {v7, v6}, Ls5/d;->e(Ljava/lang/Object;)Lw5/c;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ls5/d;->f(Lw5/c;Z)Lw5/d;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ly5/a;

    invoke-direct {v10, v8, v6, v9}, Ly5/a;-><init>(Lw5/d;[BI)V

    iget v11, v7, Ls5/d;->o:I

    iget-object v12, v7, Ls5/d;->r:Ls5/o;

    iget-object v13, v7, Ls5/d;->m:Lz5/b;

    iget-object v14, v7, Ls5/d;->l:Lz5/e;

    iget v15, v7, Ls5/d;->n:I

    invoke-virtual/range {v10 .. v15}, Ly5/a;->a(ILs5/o;Lz5/b;Lz5/e;I)Ly5/c;

    move-result-object v6

    iget-object v7, v0, Lb6/c0;->m:Lt6/p;

    invoke-virtual {v7, v5}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Lb6/c0;->j(Lb6/l;Ls5/k;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/util/CustomModel;

    invoke-virtual {v3, v5}, Lcom/graphhopper/config/Profile;->setCustomModel(Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/config/Profile;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v11, p0

    move-object/from16 v4, p2

    goto/16 :goto_5

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, " for profile "

    const-string v5, ". If you are trying to load from a file, use \'custom_model_files\' instead."

    const-string v6, "Cannot load custom_model from "

    invoke-static {v6, v2, v4, v3, v5}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do not use custom_model_files and custom_model together"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v3}, Lcom/graphhopper/config/Profile;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v4

    const-string v8, "custom_model_file"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Lcom/graphhopper/util/PMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/graphhopper/config/Profile;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Lcom/graphhopper/util/PMap;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v5, Lcom/graphhopper/util/CustomModel;

    invoke-direct {v5}, Lcom/graphhopper/util/CustomModel;-><init>()V

    invoke-virtual {v3, v5}, Lcom/graphhopper/config/Profile;->setCustomModel(Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/config/Profile;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/graphhopper/util/CustomModel;

    invoke-direct {v6}, Lcom/graphhopper/util/CustomModel;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    :try_start_1
    const-class v8, Lcom/graphhopper/util/GHUtility;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/com/graphhopper/custom_models/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/String;

    move-object/from16 v11, p0

    invoke-static {v11, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    if-eqz v8, :cond_5

    new-array v9, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v9}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v9}, Lcom/graphhopper/util/Helper;->readJSONFileWithoutComments(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom model file name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is already used for built-in profiles. Use another name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {v10}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/graphhopper/util/Helper;->readJSONFileWithoutComments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v0, v5, v8}, Lb6/c0;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/graphhopper/util/CustomModel;

    invoke-static {v6, v8}, Lcom/graphhopper/util/CustomModel;->merge(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/util/CustomModel;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :goto_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot load custom_model from location "

    const-string v4, ", profile:"

    invoke-static {v3, v7, v4, v2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Yaml is no longer supported, see #2672. Use JSON with optional comments //"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use custom_models.directory for the custom_model_files parent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v11, p0

    invoke-virtual {v3, v6}, Lcom/graphhopper/config/Profile;->setCustomModel(Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/config/Profile;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p2

    move-object v5, v6

    :goto_5
    invoke-virtual {v5, v4}, Lcom/graphhopper/util/CustomModel;->addAreas(Lcom/graphhopper/util/JsonFeatureCollection;)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing \'custom_model\' or \'custom_model_files\' field in profile \'"

    const-string v3, "\'. To use default specify custom_model_files: []"

    invoke-static {v2, v1, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Since 8.0 you must use a custom_model_files array instead of custom_model_file string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-object v1
.end method

.method public static synthetic s(Lcom/graphhopper/GraphHopper;Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/String;Lcom/graphhopper/routing/ev/ImportUnit;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/GraphHopper;->lambda$buildOSMParsers$8(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/graphhopper/routing/ev/ImportUnit;)V

    return-void
.end method

.method private setCHProfileVersion(Ljava/lang/String;I)V
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    const-string v0, "graph.profiles.ch."

    const-string v1, ".version"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/storage/StorableProperties;

    return-void
.end method

.method private setFullyLoaded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/GraphHopper;->fullyLoaded:Z

    return-void
.end method

.method private setLMProfileVersion(Ljava/lang/String;I)V
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    const-string v0, "graph.profiles.lm."

    const-string v1, ".version"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/storage/StorableProperties;

    return-void
.end method

.method public static sortGraphAlongHilbertCurve(Lcom/graphhopper/storage/BaseGraph;)V
    .locals 11

    sget-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    const-string v1, "sorting graph along Hilbert curve..."

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    invoke-static {}, Lcom/graphhopper/util/StopWatch;->started()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v1

    new-instance v2, Lcom/carrotsearch/hppc/t0;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/carrotsearch/hppc/t0;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {v1, v5}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v6

    invoke-interface {v1, v5}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v8

    const/16 v10, 0x1f

    invoke-static {v6, v7, v8, v9, v10}, Lcom/graphhopper/GraphHopper;->latLonToHilbertIndex(DDI)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/carrotsearch/hppc/t0;->a(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v1

    new-instance v5, Lb/e0;

    invoke-direct {v5, v2}, Lb/e0;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v5}, Lc6/o;->U(ILq5/b;)[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v5

    new-instance v6, Lcom/carrotsearch/hppc/x;

    invoke-direct {v6, v3}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    new-instance v3, Lcom/carrotsearch/hppc/j;

    int-to-long v7, v5

    invoke-direct {v3, v7, v8}, Lcom/carrotsearch/hppc/j;-><init>(J)V

    array-length v5, v1

    :goto_1
    if-ge v4, v5, :cond_3

    aget v7, v1, v4

    invoke-interface {v2, v7}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v7}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/carrotsearch/hppc/x;->add(I)V

    invoke-interface {v7}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Lcom/carrotsearch/hppc/j;->h(J)V

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v6}, Lcom/graphhopper/util/ArrayUtil;->invert(Lcom/carrotsearch/hppc/x;)Lcom/carrotsearch/hppc/x;

    move-result-object v2

    invoke-static {v1}, Lcom/graphhopper/util/ArrayUtil;->invert([I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object v1

    sget-object v3, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->getTimeString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "calculating sort order took: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lnc/b;->k(Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Lcom/graphhopper/GraphHopper;->sortGraphForGivenOrdering(Lcom/graphhopper/storage/BaseGraph;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)V

    return-void
.end method

.method public static sortGraphForGivenOrdering(Lcom/graphhopper/storage/BaseGraph;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)V
    .locals 4

    invoke-static {p2}, Lcom/graphhopper/util/ArrayUtil;->isPermutation(Lcom/carrotsearch/hppc/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/graphhopper/util/ArrayUtil;->isPermutation(Lcom/carrotsearch/hppc/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    const-string v1, "sort graph for fixed ordering..."

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    new-instance v1, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v1}, Lcom/graphhopper/util/StopWatch;-><init>()V

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/graphhopper/h;

    invoke-direct {v2, p2}, Lcom/graphhopper/h;-><init>(Lcom/carrotsearch/hppc/x;)V

    invoke-virtual {p0, v2}, Lcom/graphhopper/storage/BaseGraph;->sortEdges(Ljava/util/function/IntUnaryOperator;)V

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p2

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getTimeString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sorting {} edges took: {}"

    invoke-interface {v0, v2, p2, v1}, Lnc/b;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lcom/graphhopper/util/StopWatch;

    invoke-direct {p2}, Lcom/graphhopper/util/StopWatch;-><init>()V

    invoke-virtual {p2}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/graphhopper/h;

    invoke-direct {v1, p1}, Lcom/graphhopper/h;-><init>(Lcom/carrotsearch/hppc/x;)V

    invoke-virtual {p0, v1}, Lcom/graphhopper/storage/BaseGraph;->relabelNodes(Ljava/util/function/IntUnaryOperator;)V

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/util/StopWatch;->getTimeString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sorting {} nodes took: {}"

    invoke-interface {v0, p2, p0, p1}, Lnc/b;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "New nodes: not a permutation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "New edges: not a permutation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic t(Ljava/util/LinkedHashMap;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$parseEncodedValueString$14(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/config/Profile;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$getProfilesString$23(Lcom/graphhopper/config/Profile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/graphhopper/routing/util/EncodingManager$Builder;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->lambda$buildEncodingManager$5(Lcom/graphhopper/routing/util/EncodingManager$Builder;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic w(Lcom/graphhopper/config/Profile;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/GraphHopper;->lambda$postProcessing$24(Lcom/graphhopper/config/Profile;)Z

    move-result p0

    return p0
.end method

.method private writeEncodingManagerToProperties()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    invoke-static {v0, p0}, Lcom/graphhopper/routing/util/EncodingManager;->putEncodingManagerIntoProperties(Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/storage/StorableProperties;)V

    return-void
.end method

.method public static synthetic x(Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/GraphHopper;->lambda$buildOSMParsers$7(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static xy2d(IJJ)J
    .locals 22

    const/4 v0, 0x1

    add-int/lit8 v1, p0, -0x1

    const-wide/16 v2, 0x1

    shl-long v4, v2, v1

    const-wide/16 v6, 0x0

    move-wide/from16 v8, p3

    move-wide v10, v4

    move-wide v12, v6

    move-wide/from16 v4, p1

    :goto_0
    cmp-long v1, v10, v6

    if-lez v1, :cond_4

    and-long v14, v4, v10

    cmp-long v1, v14, v6

    const/4 v14, 0x0

    if-lez v1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    move v1, v14

    :goto_1
    and-long v15, v8, v10

    cmp-long v15, v15, v6

    if-lez v15, :cond_1

    move v14, v0

    :cond_1
    mul-long v15, v10, v10

    mul-int/lit8 v17, v1, 0x3

    move-wide/from16 v18, v2

    xor-int v2, v17, v14

    int-to-long v2, v2

    mul-long/2addr v15, v2

    add-long/2addr v12, v15

    if-nez v14, :cond_3

    if-ne v1, v0, :cond_2

    sub-long v1, v10, v18

    sub-long v4, v1, v4

    sub-long v8, v1, v8

    :cond_2
    move-wide/from16 v20, v8

    move-wide v8, v4

    move-wide/from16 v4, v20

    :cond_3
    shr-long/2addr v10, v0

    move-wide/from16 v2, v18

    goto :goto_0

    :cond_4
    return-wide v12
.end method

.method public static synthetic y(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/GraphHopper;->lambda$buildEncodingManager$4(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z(Lcom/carrotsearch/hppc/t0;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/GraphHopper;->lambda$sortGraphAlongHilbertCurve$21(Lcom/carrotsearch/hppc/t0;II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public _getOSMFile()Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->osmFile:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public buildEncodingManager(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/graphhopper/routing/util/EncodingManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/util/PMap;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ev/ImportUnit;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/graphhopper/routing/util/EncodingManager;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/graphhopper/i;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/graphhopper/i;-><init>(ILjava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/graphhopper/b;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lcom/graphhopper/b;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lwa/h;->w(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->createSubnetworkEncodedValues()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/graphhopper/GraphHopper;->getEVSortIndex(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/graphhopper/j;

    invoke-direct {p1, p0}, Lcom/graphhopper/j;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance p0, Lcom/graphhopper/routing/util/EncodingManager$Builder;

    invoke-direct {p0}, Lcom/graphhopper/routing/util/EncodingManager$Builder;-><init>()V

    new-instance p1, Lcom/graphhopper/k;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/graphhopper/k;-><init>(Lcom/graphhopper/routing/util/EncodingManager$Builder;I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/graphhopper/b;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lcom/graphhopper/b;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/graphhopper/k;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/graphhopper/k;-><init>(Lcom/graphhopper/routing/util/EncodingManager$Builder;I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/EncodingManager$Builder;->build()Lcom/graphhopper/routing/util/EncodingManager;

    move-result-object p0

    return-object p0
.end method

.method public buildOSMParsers(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lcom/graphhopper/routing/util/OSMParsers;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/util/PMap;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ev/ImportUnit;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/graphhopper/routing/util/OSMParsers;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/ImportUnitSorter;

    invoke-direct {v0, p2}, Lcom/graphhopper/routing/ev/ImportUnitSorter;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Lcom/graphhopper/routing/ev/ImportUnitSorter;->sort()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/graphhopper/e;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1, p2}, Lcom/graphhopper/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/graphhopper/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/graphhopper/n;-><init>(Lcom/graphhopper/GraphHopper;Ljava/util/Map;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance p1, Lcom/graphhopper/routing/util/OSMParsers;

    invoke-direct {p1}, Lcom/graphhopper/routing/util/OSMParsers;-><init>()V

    new-instance v0, Lcom/graphhopper/o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/graphhopper/o;-><init>(Lcom/graphhopper/routing/util/OSMParsers;I)V

    invoke-interface {p4, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance p4, Lcom/graphhopper/o;

    const/4 v0, 0x1

    invoke-direct {p4, p1, v0}, Lcom/graphhopper/o;-><init>(Lcom/graphhopper/routing/util/OSMParsers;I)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/graphhopper/GraphHopper;->maxSpeedCalculator:Lcom/graphhopper/routing/util/MaxSpeedCalculator;

    if-eqz p2, :cond_0

    iget-object p4, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-virtual {p2, p4}, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->checkEncodedValues(Lcom/graphhopper/routing/util/EncodingManager;)V

    iget-object p2, p0, Lcom/graphhopper/GraphHopper;->maxSpeedCalculator:Lcom/graphhopper/routing/util/MaxSpeedCalculator;

    invoke-virtual {p2}, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->getParser()Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/graphhopper/routing/util/OSMParsers;->addWayTagParser(Lcom/graphhopper/routing/util/parsers/TagParser;)Lcom/graphhopper/routing/util/OSMParsers;

    :cond_0
    iget-object p2, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    sget-object p4, Lcom/graphhopper/routing/ev/BikeNetwork;->KEY:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/graphhopper/g;

    const/4 p4, 0x2

    invoke-direct {p2, p0, p4}, Lcom/graphhopper/g;-><init>(Lcom/graphhopper/GraphHopper;I)V

    invoke-virtual {p1, p2}, Lcom/graphhopper/routing/util/OSMParsers;->addRelationTagParser(Ljava/util/function/Function;)Lcom/graphhopper/routing/util/OSMParsers;

    :cond_1
    iget-object p2, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    sget-object p4, Lcom/graphhopper/routing/ev/MtbNetwork;->KEY:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/graphhopper/g;

    const/4 p4, 0x3

    invoke-direct {p2, p0, p4}, Lcom/graphhopper/g;-><init>(Lcom/graphhopper/GraphHopper;I)V

    invoke-virtual {p1, p2}, Lcom/graphhopper/routing/util/OSMParsers;->addRelationTagParser(Ljava/util/function/Function;)Lcom/graphhopper/routing/util/OSMParsers;

    :cond_2
    iget-object p2, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    sget-object p4, Lcom/graphhopper/routing/ev/FootNetwork;->KEY:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/graphhopper/g;

    const/4 p4, 0x4

    invoke-direct {p2, p0, p4}, Lcom/graphhopper/g;-><init>(Lcom/graphhopper/GraphHopper;I)V

    invoke-virtual {p1, p2}, Lcom/graphhopper/routing/util/OSMParsers;->addRelationTagParser(Ljava/util/function/Function;)Lcom/graphhopper/routing/util/OSMParsers;

    :cond_3
    new-instance p2, Lcom/graphhopper/p;

    invoke-direct {p2, p0, p1}, Lcom/graphhopper/p;-><init>(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/routing/util/OSMParsers;)V

    invoke-interface {p3, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p1
.end method

.method public checkProfilesConsistency()V
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/Profile;

    :try_start_0
    new-instance v2, Lcom/graphhopper/util/PMap;

    invoke-direct {v2}, Lcom/graphhopper/util/PMap;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/GraphHopper;->createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/weighting/Weighting;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getWeighting()Ljava/lang/String;

    move-result-object v2

    const-string v3, "custom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom model for profile \'"

    const-string v2, "\' was empty"

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getWeighting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getWeighting()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\' has a custom model but weighting="

    const-string v3, " was defined"

    const-string v4, "profile \'"

    invoke-static {v4, v0, v2, v1, v3}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v3, "\'.\nProfile: "

    const-string v4, "\nError: "

    const-string v5, "Could not create weighting for profile: \'"

    invoke-static {v5, v2, v3, v1, v4}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    invoke-virtual {v1}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->getCHProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    invoke-virtual {v1}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->getCHProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\'"

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/config/CHProfile;

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CH profile references unknown profile \'"

    invoke-static {v1, v0, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Duplicate CH reference to profile \'"

    invoke-static {v1, v0, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-virtual {v1}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->getLMProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-virtual {v1}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->getLMProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/config/LMProfile;

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/config/LMProfile;

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->usesOtherPreparation()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->getPreparationProfile()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->getPreparationProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LM profile references unknown preparation profile \'"

    invoke-static {v1, v0, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LM profile references unknown profile \'"

    invoke-static {v1, v0, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Multiple LM profiles are using the same profile \'"

    invoke-static {v1, v0, v3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-virtual {p0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->getLMProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/LMProfile;

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->usesOtherPreparation()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getPreparationProfile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getPreparationProfile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\' in LM profile \'"

    const-string v3, "\' cannot be used as preparation_profile"

    const-string v4, "Unknown LM preparation profile \'"

    invoke-static {v4, v0, v2, v1, v3}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_5
    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->usesOtherPreparation()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getPreparationProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/config/LMProfile;

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->usesOtherPreparation()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_4

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getPreparationProfile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\' as preparation_profile for LM profile \'"

    const-string v3, "\', because it uses another profile for preparation itself."

    const-string v4, "Cannot use \'"

    invoke-static {v4, v0, v2, v1, v3}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There has to be at least one profile"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clean()V
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->getGraphHopperLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->getGraphHopperLocation()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->removeDir(Ljava/io/File;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot clean GraphHopper without specified graphHopperLocation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cleanUp()V
    .locals 4

    new-instance v0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v1

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->buildSubnetworkRemovalJobs()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;-><init>(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)V

    iget v1, p0, Lcom/graphhopper/GraphHopper;->minNetworkSize:I

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->setMinNetworkSize(I)Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;

    iget v1, p0, Lcom/graphhopper/GraphHopper;->subnetworksThreads:I

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->setThreads(I)Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;

    invoke-virtual {v0}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->doWork()I

    sget-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nodes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", edges: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lnc/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->close()V

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/graphhopper/storage/StorableProperties;->close()V

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->chGraphs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/graphhopper/f;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->landmarks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/graphhopper/f;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/graphhopper/storage/index/LocationIndex;->close()V

    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->lockFactory:Lcom/graphhopper/storage/LockFactory;

    const-string v0, "gh.lock"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/graphhopper/storage/LockFactory;->forceRemove(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public createBaseGraphAndProperties()V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object v0

    invoke-interface {v0}, Lcom/graphhopper/storage/Directory;->create()Lcom/graphhopper/storage/Directory;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraph;->create(J)Lcom/graphhopper/storage/BaseGraph;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/StorableProperties;->create(J)Lcom/graphhopper/storage/StorableProperties;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->maxSpeedCalculator:Lcom/graphhopper/routing/util/MaxSpeedCalculator;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->createDataAccessForParser(Lcom/graphhopper/storage/Directory;)V

    :cond_0
    return-void
.end method

.method public createLocationIndex(Lcom/graphhopper/storage/Directory;)Lcom/graphhopper/storage/index/LocationIndex;
    .locals 2

    new-instance v0, Lcom/graphhopper/storage/index/LocationIndexTree;

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-direct {v0, v1, p1}, Lcom/graphhopper/storage/index/LocationIndexTree;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/storage/Directory;)V

    iget p1, p0, Lcom/graphhopper/GraphHopper;->preciseIndexResolution:I

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/index/LocationIndexTree;->setResolution(I)Lcom/graphhopper/storage/index/LocationIndex;

    iget p1, p0, Lcom/graphhopper/GraphHopper;->maxRegionSearch:I

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/index/LocationIndexTree;->setMaxRegionSearch(I)Lcom/graphhopper/storage/index/LocationIndexTree;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/LocationIndexTree;->loadExisting()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->ensureWriteAccess()V

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/LocationIndexTree;->prepareIndex()Lcom/graphhopper/storage/index/LocationIndex;

    :cond_0
    return-object v0
.end method

.method public createSubnetworkEncodedValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lwa/h;->w(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/graphhopper/GraphHopper;->createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;Z)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    return-object p0
.end method

.method public final createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;Z)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->createWeightingFactory()Lcom/graphhopper/routing/WeightingFactory;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/WeightingFactory;->createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;Z)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    return-object p0
.end method

.method public createWeightingFactory()Lcom/graphhopper/routing/WeightingFactory;
    .locals 2

    new-instance v0, Lcom/graphhopper/routing/DefaultWeightingFactory;

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v1

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->getEncodingManager()Lcom/graphhopper/routing/util/EncodingManager;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/graphhopper/routing/DefaultWeightingFactory;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/EncodingManager;)V

    return-object v0
.end method

.method public doCreateRouter(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/Map;Lcom/graphhopper/util/details/PathDetailsBuilderFactory;Lcom/graphhopper/util/TranslationMap;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/WeightingFactory;Ljava/util/Map;Ljava/util/Map;)Lcom/graphhopper/routing/Router;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/routing/util/EncodingManager;",
            "Lcom/graphhopper/storage/index/LocationIndex;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/config/Profile;",
            ">;",
            "Lcom/graphhopper/util/details/PathDetailsBuilderFactory;",
            "Lcom/graphhopper/util/TranslationMap;",
            "Lcom/graphhopper/routing/RouterConfig;",
            "Lcom/graphhopper/routing/WeightingFactory;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/RoutingCHGraph;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/lm/LandmarkStorage;",
            ">;)",
            "Lcom/graphhopper/routing/Router;"
        }
    .end annotation

    new-instance p0, Lcom/graphhopper/routing/Router;

    invoke-direct/range {p0 .. p10}, Lcom/graphhopper/routing/Router;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/Map;Lcom/graphhopper/util/details/PathDetailsBuilderFactory;Lcom/graphhopper/util/TranslationMap;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/WeightingFactory;Ljava/util/Map;Ljava/util/Map;)V

    return-object p0
.end method

.method public ensureNotLoaded()V
    .locals 1

    iget-boolean p0, p0, Lcom/graphhopper/GraphHopper;->fullyLoaded:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No configuration changes are possible after loading the graph"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ensureWriteAccess()V
    .locals 1

    iget-boolean p0, p0, Lcom/graphhopper/GraphHopper;->allowWrites:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Writes are not allowed!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 7

    sget-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->getBaseGraphString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->toDetailsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ", details:"

    const-string v5, ", "

    const-string v6, "flushing graph "

    invoke-static {v6, v1, v4, v2, v5}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->flush()V

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    invoke-virtual {v1}, Lcom/graphhopper/storage/StorableProperties;->flush()V

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flushed graph "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->setFullyLoaded()V

    return-void
.end method

.method public getBaseGraph()Lcom/graphhopper/storage/BaseGraph;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GraphHopper storage not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCHGraphs()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/RoutingCHGraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->chGraphs:Ljava/util/Map;

    return-object p0
.end method

.method public final getCHPreparationHandler()Lcom/graphhopper/routing/ch/CHPreparationHandler;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    return-object p0
.end method

.method public getCountryRuleFactory()Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

    return-object p0
.end method

.method public getCustomAreasDirectory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->customAreasDirectory:Ljava/lang/String;

    return-object p0
.end method

.method public getEVSortIndex(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/config/Profile;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getElevationProvider()Lcom/graphhopper/reader/dem/ElevationProvider;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->eleProvider:Lcom/graphhopper/reader/dem/ElevationProvider;

    return-object p0
.end method

.method public getEncodedValuesString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->encodedValuesString:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingManager()Lcom/graphhopper/routing/util/EncodingManager;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "EncodingManager not yet built"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFullyLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/GraphHopper;->fullyLoaded:Z

    return p0
.end method

.method public getGraphHopperLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    return-object p0
.end method

.method public getImportRegistry()Lcom/graphhopper/routing/ev/ImportRegistry;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->importRegistry:Lcom/graphhopper/routing/ev/ImportRegistry;

    return-object p0
.end method

.method public final getLMPreparationHandler()Lcom/graphhopper/routing/lm/LMPreparationHandler;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    return-object p0
.end method

.method public getLandmarks()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/lm/LandmarkStorage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->landmarks:Ljava/util/Map;

    return-object p0
.end method

.method public getLocationIndex()Lcom/graphhopper/storage/index/LocationIndex;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LocationIndex not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNavigationMode(Ljava/lang/String;)Lcom/graphhopper/routing/util/TransportationMode;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/config/Profile;

    if-nez p0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/util/TransportationMode;->CAR:Lcom/graphhopper/routing/util/TransportationMode;

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/graphhopper/config/Profile;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    const-string v0, "navigation_mode"

    invoke-virtual {p0, v0, p1}, Lcom/graphhopper/util/PMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/util/TransportationMode;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/util/TransportationMode;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/graphhopper/routing/util/TransportationMode;->CAR:Lcom/graphhopper/routing/util/TransportationMode;

    return-object p0
.end method

.method public getOSMFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->osmFile:Ljava/lang/String;

    return-object p0
.end method

.method public getOSMParsers()Lcom/graphhopper/routing/util/OSMParsers;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "OSMParsers not yet built"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPathDetailsBuilderFactory()Lcom/graphhopper/util/details/PathDetailsBuilderFactory;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->pathBuilderFactory:Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

    return-object p0
.end method

.method public getProfile(Ljava/lang/String;)Lcom/graphhopper/config/Profile;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/config/Profile;

    return-object p0
.end method

.method public getProfileHash(Lcom/graphhopper/config/Profile;)I
    .locals 0

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getVersion()I

    move-result p0

    return p0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/Profile;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getProperties()Lcom/graphhopper/storage/StorableProperties;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    return-object p0
.end method

.method public getReaderConfig()Lcom/graphhopper/routing/OSMReaderConfig;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    return-object p0
.end method

.method public getRouterConfig()Lcom/graphhopper/routing/RouterConfig;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    return-object p0
.end method

.method public getTranslationMap()Lcom/graphhopper/util/TranslationMap;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->trMap:Lcom/graphhopper/util/TranslationMap;

    return-object p0
.end method

.method public hasElevation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/GraphHopper;->elevation:Z

    return p0
.end method

.method public importAndClose()V
    .locals 4

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->load()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->printInfo()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/graphhopper/GraphHopper;->process(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->printInfo()V

    sget-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Graph already imported into "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->close()V

    return-void
.end method

.method public importOSM()V
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmFile:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/graphhopper/util/GHUtility;->readCountries()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->customAreasDirectory:Ljava/lang/String;

    invoke-static {v1}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    const-string v2, "No custom areas are used, custom_areas.directory not given"

    invoke-interface {v1, v2}, Lnc/b;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->customAreasDirectory:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creating custom area index, reading custom areas from: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnc/b;->k(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->readCustomAreas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    new-instance v1, Lcom/graphhopper/routing/util/AreaIndex;

    invoke-direct {v1, v0}, Lcom/graphhopper/routing/util/AreaIndex;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;->getCountryToRuleMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

    invoke-virtual {v2}, Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;->getCountryToRuleMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "Applying rules for the following countries: {}"

    invoke-interface {v0, v2, v3}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    const-string v2, "No country rules available"

    invoke-interface {v0, v2}, Lnc/b;->k(Ljava/lang/String;)V

    :goto_2
    sget-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->osmFile:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start creating graph from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lnc/b;->k(Ljava/lang/String;)V

    new-instance v2, Lcom/graphhopper/reader/osm/OSMReader;

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v3}, Lcom/graphhopper/storage/BaseGraph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v3

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-direct {v2, v3, v4, v5}, Lcom/graphhopper/reader/osm/OSMReader;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/OSMParsers;Lcom/graphhopper/routing/OSMReaderConfig;)V

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->_getOSMFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/graphhopper/reader/osm/OSMReader;->setFile(Ljava/io/File;)Lcom/graphhopper/reader/osm/OSMReader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/graphhopper/reader/osm/OSMReader;->setAreaIndex(Lcom/graphhopper/routing/util/AreaIndex;)Lcom/graphhopper/reader/osm/OSMReader;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->eleProvider:Lcom/graphhopper/reader/dem/ElevationProvider;

    invoke-virtual {v1, v2}, Lcom/graphhopper/reader/osm/OSMReader;->setElevationProvider(Lcom/graphhopper/reader/dem/ElevationProvider;)Lcom/graphhopper/reader/osm/OSMReader;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

    invoke-virtual {v1, v2}, Lcom/graphhopper/reader/osm/OSMReader;->setCountryRuleFactory(Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;)Lcom/graphhopper/reader/osm/OSMReader;

    move-result-object v1

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->getBaseGraphString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "using "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", memory:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lnc/b;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->createBaseGraphAndProperties()V

    :try_start_0
    invoke-virtual {v1}, Lcom/graphhopper/reader/osm/OSMReader;->readGraph()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/graphhopper/util/Helper;->createFormatter()Ljava/text/DateFormat;

    move-result-object v0

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "datareader.import.date"

    invoke-virtual {v2, v4, v3}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/storage/StorableProperties;

    invoke-virtual {v1}, Lcom/graphhopper/reader/osm/OSMReader;->getDataDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    invoke-virtual {v1}, Lcom/graphhopper/reader/osm/OSMReader;->getDataDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "datareader.data.date"

    invoke-virtual {p0, v1, v0}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/storage/StorableProperties;

    :cond_3
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->getOSMFile()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Cannot read file "

    invoke-static {v2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    const-string v1, "Couldn\'t load from existing folder: "

    const-string v2, " but also cannot use file for DataReader as it wasn\'t specified!"

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public importOrLoad()Lcom/graphhopper/GraphHopper;
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->load()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->printInfo()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/graphhopper/GraphHopper;->process(Z)V

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->printInfo()V

    return-object p0
.end method

.method public importPublicTransit()V
    .locals 0

    return-void
.end method

.method public init(Lcom/graphhopper/GraphHopperConfig;)Lcom/graphhopper/GraphHopper;
    .locals 9

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->ensureNotLoaded()V

    const-string v0, "routing.ch.disabling_allowed"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "routing.lm.disabling_allowed"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "osmreader.osm"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "datareader.file"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->osmFile:Ljava/lang/String;

    :cond_0
    const-string v0, "graph.location"

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->pruneFileEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "-gh"

    invoke-static {v0, v2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If no graph.location is provided you need to specify an OSM file."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    const-string v0, "country_rules.enabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/graphhopper/GraphHopperConfig;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

    invoke-direct {v0}, Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;-><init>()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->customAreasDirectory:Ljava/lang/String;

    const-string v3, "custom_areas.directory"

    invoke-virtual {p1, v3, v0}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->customAreasDirectory:Ljava/lang/String;

    const-string v0, "graph.dataaccess.segment_size"

    iget v4, p0, Lcom/graphhopper/GraphHopper;->defaultSegmentSize:I

    invoke-virtual {p1, v0, v4}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/GraphHopper;->defaultSegmentSize:I

    const-string v0, "graph.dataaccess"

    const-string v4, "RAM_STORE"

    invoke-virtual {p1, v0, v4}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "graph.dataaccess.default_type"

    invoke-virtual {p1, v4, v0}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/storage/DAType;->fromString(Ljava/lang/String;)Lcom/graphhopper/storage/DAType;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->dataAccessDefaultType:Lcom/graphhopper/storage/DAType;

    invoke-virtual {p1}, Lcom/graphhopper/GraphHopperConfig;->asPMap()Lcom/graphhopper/util/PMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/PMap;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "graph.dataaccess.type."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x16

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->dataAccessConfig:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "graph.dataaccess.mmap.preload."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->dataAccessConfig:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const-string v0, "graph.sort"

    iget-boolean v4, p0, Lcom/graphhopper/GraphHopper;->sortGraph:Z

    invoke-virtual {p1, v0, v4}, Lcom/graphhopper/GraphHopperConfig;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/graphhopper/GraphHopper;->sortGraph:Z

    const-string v0, "max_speed_calculator.enabled"

    invoke-virtual {p1, v0, v2}, Lcom/graphhopper/GraphHopperConfig;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;

    invoke-static {}, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->createLegalDefaultSpeeds()Lp8/d;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/graphhopper/routing/util/MaxSpeedCalculator;-><init>(Lp8/d;)V

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->maxSpeedCalculator:Lcom/graphhopper/routing/util/MaxSpeedCalculator;

    :cond_7
    const-string v0, "graph.remove_zipped"

    iget-boolean v4, p0, Lcom/graphhopper/GraphHopper;->removeZipped:Z

    invoke-virtual {p1, v0, v4}, Lcom/graphhopper/GraphHopperConfig;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/graphhopper/GraphHopper;->removeZipped:Z

    const-string v0, "spatial_rules.location"

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "spatial_rules.borders_directory"

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "spatial_rules.max_bbox"

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1, v3, v1}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/GraphHopper;->resolveCustomAreas(Ljava/lang/String;)Lcom/graphhopper/util/JsonFeatureCollection;

    move-result-object v0

    const-string v3, "custom_model_folder"

    invoke-virtual {p1, v3, v1}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "custom_models.directory"

    invoke-virtual {p1, v4, v3}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/graphhopper/GraphHopperConfig;->getProfiles()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/graphhopper/GraphHopper;->resolveCustomModelFiles(Ljava/lang/String;Ljava/util/List;Lcom/graphhopper/util/JsonFeatureCollection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/GraphHopper;->setProfiles(Ljava/util/List;)Lcom/graphhopper/GraphHopper;

    const-string v0, "graph.vehicles"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "graph.flag_encoders"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "graph.encoded_values"

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->encodedValuesString:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->encodedValuesString:Ljava/lang/String;

    const-string v0, "datareader.date_range_parser_day"

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->dateRangeParserString:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->dateRangeParserString:Ljava/lang/String;

    const-string v0, "graph.locktype"

    const-string v3, "native"

    invoke-virtual {p1, v0, v3}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "simple"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/graphhopper/storage/SimpleFSLockFactory;

    invoke-direct {v0}, Lcom/graphhopper/storage/SimpleFSLockFactory;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->lockFactory:Lcom/graphhopper/storage/LockFactory;

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/graphhopper/storage/NativeFSLockFactory;

    invoke-direct {v0}, Lcom/graphhopper/storage/NativeFSLockFactory;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->lockFactory:Lcom/graphhopper/storage/LockFactory;

    :goto_3
    const-string v0, "graph.elevation.smoothing"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    const-string v3, "graph.elevation.edge_smoothing"

    invoke-virtual {v0}, Lcom/graphhopper/routing/OSMReaderConfig;->getElevationSmoothing()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/graphhopper/routing/OSMReaderConfig;->setElevationSmoothing(Ljava/lang/String;)Lcom/graphhopper/routing/OSMReaderConfig;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    const-string v3, "graph.elevation.edge_smoothing.moving_average.window_size"

    invoke-virtual {v0}, Lcom/graphhopper/routing/OSMReaderConfig;->getSmoothElevationAverageWindowSize()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/graphhopper/GraphHopperConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/routing/OSMReaderConfig;->setSmoothElevationAverageWindowSize(D)V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    const-string v3, "graph.elevation.edge_smoothing.ramer.max_elevation"

    invoke-virtual {v0}, Lcom/graphhopper/routing/OSMReaderConfig;->getElevationSmoothingRamerMax()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/graphhopper/routing/OSMReaderConfig;->setElevationSmoothingRamerMax(I)Lcom/graphhopper/routing/OSMReaderConfig;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    const-string v3, "graph.elevation.long_edge_sampling_distance"

    invoke-virtual {v0}, Lcom/graphhopper/routing/OSMReaderConfig;->getLongEdgeSamplingDistance()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/graphhopper/GraphHopperConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/routing/OSMReaderConfig;->setLongEdgeSamplingDistance(D)Lcom/graphhopper/routing/OSMReaderConfig;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v0}, Lcom/graphhopper/routing/OSMReaderConfig;->getElevationMaxWayPointDistance()D

    move-result-wide v3

    const-string v5, "graph.elevation.way_point_max_distance"

    invoke-virtual {p1, v5, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/routing/OSMReaderConfig;->setElevationMaxWayPointDistance(D)Lcom/graphhopper/routing/OSMReaderConfig;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v0}, Lcom/graphhopper/routing/RouterConfig;->getElevationWayPointMaxDistance()D

    move-result-wide v3

    invoke-virtual {p1, v5, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/routing/RouterConfig;->setElevationWayPointMaxDistance(D)V

    invoke-static {p1}, Lcom/graphhopper/GraphHopper;->createElevationProvider(Lcom/graphhopper/GraphHopperConfig;)Lcom/graphhopper/reader/dem/ElevationProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/GraphHopper;->setElevationProvider(Lcom/graphhopper/reader/dem/ElevationProvider;)Lcom/graphhopper/GraphHopper;

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v3}, Lcom/graphhopper/routing/OSMReaderConfig;->getLongEdgeSamplingDistance()D

    move-result-wide v3

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v3, v3, v5

    if-gez v3, :cond_9

    invoke-interface {v0}, Lcom/graphhopper/reader/dem/ElevationProvider;->canInterpolate()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    const-string v3, "Long edge sampling enabled, but bilinear interpolation disabled. See #1953"

    invoke-interface {v0, v3}, Lnc/b;->l(Ljava/lang/String;)V

    :cond_9
    const-string v0, "prepare.min_network_size"

    iget v3, p0, Lcom/graphhopper/GraphHopper;->minNetworkSize:I

    invoke-virtual {p1, v0, v3}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/GraphHopper;->minNetworkSize:I

    const-string v0, "prepare.subnetworks.threads"

    iget v3, p0, Lcom/graphhopper/GraphHopper;->subnetworksThreads:I

    invoke-virtual {p1, v0, v3}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/GraphHopper;->subnetworksThreads:I

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->init(Lcom/graphhopper/GraphHopperConfig;)V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->init(Lcom/graphhopper/GraphHopperConfig;)V

    const-string v0, "import.osm.ignored_highways"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "footway"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "path"

    if-nez v3, :cond_a

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    invoke-virtual {p1}, Lcom/graphhopper/GraphHopperConfig;->getProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/graphhopper/d;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/graphhopper/b;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/graphhopper/b;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_b
    const-string v3, "cycleway"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    invoke-virtual {p1}, Lcom/graphhopper/GraphHopperConfig;->getProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/graphhopper/d;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/graphhopper/b;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/graphhopper/b;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_d
    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v1}, Lcom/graphhopper/routing/OSMReaderConfig;->getIgnoredHighways()Ljava/util/List;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/graphhopper/d;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/graphhopper/routing/OSMReaderConfig;->setIgnoredHighways(Ljava/util/List;)Lcom/graphhopper/routing/OSMReaderConfig;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    const-string v1, "datareader.instructions"

    invoke-virtual {v0}, Lcom/graphhopper/routing/OSMReaderConfig;->isParseWayNames()Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/GraphHopperConfig;->getBool(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/OSMReaderConfig;->setParseWayNames(Z)Lcom/graphhopper/routing/OSMReaderConfig;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    const-string v1, "datareader.preferred_language"

    invoke-virtual {v0}, Lcom/graphhopper/routing/OSMReaderConfig;->getPreferredLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/OSMReaderConfig;->setPreferredLanguage(Ljava/lang/String;)Lcom/graphhopper/routing/OSMReaderConfig;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    const-string v1, "routing.way_point_max_distance"

    invoke-virtual {v0}, Lcom/graphhopper/routing/OSMReaderConfig;->getMaxWayPointDistance()D

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/routing/OSMReaderConfig;->setMaxWayPointDistance(D)Lcom/graphhopper/routing/OSMReaderConfig;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    const-string v1, "datareader.worker_threads"

    invoke-virtual {v0}, Lcom/graphhopper/routing/OSMReaderConfig;->getWorkerThreads()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/OSMReaderConfig;->setWorkerThreads(I)Lcom/graphhopper/routing/OSMReaderConfig;

    const-string v0, "index.high_resolution"

    iget v1, p0, Lcom/graphhopper/GraphHopper;->preciseIndexResolution:I

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/GraphHopper;->preciseIndexResolution:I

    const-string v0, "index.max_region_search"

    iget v1, p0, Lcom/graphhopper/GraphHopper;->maxRegionSearch:I

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/GraphHopper;->maxRegionSearch:I

    const-string v0, "graph.urban_density.residential_radius"

    iget-wide v3, p0, Lcom/graphhopper/GraphHopper;->residentialAreaRadius:D

    invoke-virtual {p1, v0, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/GraphHopper;->residentialAreaRadius:D

    const-string v0, "graph.urban_density.residential_sensitivity"

    iget-wide v3, p0, Lcom/graphhopper/GraphHopper;->residentialAreaSensitivity:D

    invoke-virtual {p1, v0, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/GraphHopper;->residentialAreaSensitivity:D

    const-string v0, "graph.urban_density.city_radius"

    iget-wide v3, p0, Lcom/graphhopper/GraphHopper;->cityAreaRadius:D

    invoke-virtual {p1, v0, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/GraphHopper;->cityAreaRadius:D

    const-string v0, "graph.urban_density.city_sensitivity"

    iget-wide v3, p0, Lcom/graphhopper/GraphHopper;->cityAreaSensitivity:D

    invoke-virtual {p1, v0, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/GraphHopper;->cityAreaSensitivity:D

    const-string v0, "graph.urban_density.threads"

    iget v1, p0, Lcom/graphhopper/GraphHopper;->urbanDensityCalculationThreads:I

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/GraphHopper;->urbanDensityCalculationThreads:I

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    const-string v1, "routing.max_visited_nodes"

    invoke-virtual {v0}, Lcom/graphhopper/routing/RouterConfig;->getMaxVisitedNodes()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/RouterConfig;->setMaxVisitedNodes(I)V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    const-string v1, "routing.timeout_ms"

    invoke-virtual {v0}, Lcom/graphhopper/routing/RouterConfig;->getTimeoutMillis()J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lcom/graphhopper/GraphHopperConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/routing/RouterConfig;->setTimeoutMillis(J)V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    const-string v1, "routing.round_trip.max_retries"

    invoke-virtual {v0}, Lcom/graphhopper/routing/RouterConfig;->getMaxRoundTripRetries()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/RouterConfig;->setMaxRoundTripRetries(I)V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    const-string v1, "routing.non_ch.max_waypoint_distance"

    invoke-virtual {v0}, Lcom/graphhopper/routing/RouterConfig;->getNonChMaxWaypointDistance()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/RouterConfig;->setNonChMaxWaypointDistance(I)V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    const-string v1, "routing.instructions"

    invoke-virtual {v0}, Lcom/graphhopper/routing/RouterConfig;->isInstructionsEnabled()Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/graphhopper/GraphHopperConfig;->getBool(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/RouterConfig;->setInstructionsEnabled(Z)V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->getLandmarks()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-string v1, "routing.lm.active_landmarks"

    invoke-virtual {p1, v1, v0}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-virtual {v1}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->getLandmarks()I

    move-result v1

    if-gt v0, v1, :cond_e

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v1, v0}, Lcom/graphhopper/routing/RouterConfig;->setActiveLandmarkCount(I)V

    const-string v0, "graph.calc_checksums"

    invoke-virtual {p1, v0, v2}, Lcom/graphhopper/GraphHopperConfig;->getBool(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/graphhopper/GraphHopper;->calcChecksums:Z

    return-object p0

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-virtual {p0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->getLandmarks()I

    move-result p0

    const-string v1, "Default value for active landmarks "

    const-string v2, " should be less or equal to landmark count of "

    invoke-static {v1, v0, v2, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You should not use import.osm.ignored_highways=cycleway or =path in conjunction with bicycle profiles. This is probably an error in your configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You should not use import.osm.ignored_highways=footway or =path in conjunction with pedestrian profiles. This is probably an error in your configuration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing \'import.osm.ignored_highways\'. Not using this parameter can decrease performance, see config-example.yml for more details"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use \'graph.elevation.edge_smoothing: moving_average\' or the new \'graph.elevation.edge_smoothing: ramer\'. See #2634."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The option graph.flag_encoders is no longer supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The option graph.vehicles is no longer supported. Use the appropriate turn_costs and custom_model instead, see docs/migration/config-migration-08-09.md"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spatial_rules.max_bbox has been deprecated. There is no replacement, all custom areas will be considered."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spatial_rules.borders_directory has been deprecated. Please use custom_areas.directory instead and read the documentation for custom areas."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spatial_rules.location has been deprecated. Please use custom_areas.directory instead and read the documentation for custom areas."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Instead of osmreader.osm use datareader.file, for other changes see CHANGELOG.md"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The \'routing.lm.disabling_allowed\' configuration option is no longer supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The \'routing.ch.disabling_allowed\' configuration option is no longer supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initLocationIndex()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/GraphHopper;->createLocationIndex(Lcom/graphhopper/storage/Directory;)Lcom/graphhopper/storage/index/LocationIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot initialize locationIndex twice!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public interpolateBridgesTunnelsAndFerries()V
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-string v1, "road_environment"

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    const-class v2, Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v0

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v3}, Lcom/graphhopper/storage/BaseGraph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v3

    sget-object v4, Lcom/graphhopper/routing/ev/RoadEnvironment;->TUNNEL:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-direct {v2, v3, v0, v4}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/RoadEnvironment;)V

    invoke-virtual {v2}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->execute()V

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v1

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v2

    new-instance v3, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v4}, Lcom/graphhopper/storage/BaseGraph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v4

    sget-object v5, Lcom/graphhopper/routing/ev/RoadEnvironment;->BRIDGE:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-direct {v3, v4, v0, v5}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/RoadEnvironment;)V

    invoke-virtual {v3}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->execute()V

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v2

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v3

    new-instance v4, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object p0

    sget-object v5, Lcom/graphhopper/routing/ev/RoadEnvironment;->FERRY:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-direct {v4, p0, v0, v5}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/RoadEnvironment;)V

    invoke-virtual {v4}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->execute()V

    sget-object p0, Lcom/graphhopper/GraphHopper;->logger:Lnc/b;

    float-to-int v0, v2

    float-to-int v1, v1

    invoke-virtual {v3}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v2

    float-to-int v2, v2

    const-string v3, "s, tunnel interpolation "

    const-string v4, "s, ferry interpolation "

    const-string v5, "Bridge interpolation "

    invoke-static {v5, v0, v3, v1, v4}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lnc/b;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isAllowWrites()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/GraphHopper;->allowWrites:Z

    return p0
.end method

.method public load()Z
    .locals 8

    const-string v0, "Profiles do not match:\nGraphhopper config: "

    const-string v1, "To avoid reading partial data we need to obtain the read lock but it failed. In "

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lcom/graphhopper/GraphHopper;->fullyLoaded:Z

    if-nez v2, :cond_c

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "GraphHopperLocation cannot be an existing file. Has to be either non-existing or a folder."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    const-string v4, ".ghz"

    invoke-static {v3, v4}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    new-instance v3, Lcom/graphhopper/util/Unzipper;

    invoke-direct {v3}, Lcom/graphhopper/util/Unzipper;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/graphhopper/GraphHopper;->removeZipped:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/graphhopper/util/Unzipper;->unzip(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    const-string v3, "Couldn\'t extract file "

    const-string v4, " to "

    invoke-static {v3, v2, v4, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/graphhopper/GraphHopper;->allowWrites:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->dataAccessDefaultType:Lcom/graphhopper/storage/DAType;

    invoke-virtual {v2}, Lcom/graphhopper/storage/DAType;->isMMap()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/graphhopper/storage/DAType;->MMAP_RO:Lcom/graphhopper/storage/DAType;

    iput-object v2, p0, Lcom/graphhopper/GraphHopper;->dataAccessDefaultType:Lcom/graphhopper/storage/DAType;

    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    return v3

    :cond_4
    new-instance v2, Lcom/graphhopper/storage/GHDirectory;

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->dataAccessDefaultType:Lcom/graphhopper/storage/DAType;

    invoke-direct {v2, v4, v5}, Lcom/graphhopper/storage/GHDirectory;-><init>(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)V

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->dataAccessConfig:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v4}, Lcom/graphhopper/storage/GHDirectory;->configure(Ljava/util/LinkedHashMap;)Lcom/graphhopper/storage/Directory;

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2}, Lcom/graphhopper/storage/GHDirectory;->getDefaultType()Lcom/graphhopper/storage/DAType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/graphhopper/storage/DAType;->isStoring()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->isAllowWrites()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->lockFactory:Lcom/graphhopper/storage/LockFactory;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/graphhopper/storage/LockFactory;->setLockDir(Ljava/io/File;)V

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->lockFactory:Lcom/graphhopper/storage/LockFactory;

    const-string v6, "gh.lock"

    invoke-interface {v5, v6, v3}, Lcom/graphhopper/storage/LockFactory;->create(Ljava/lang/String;Z)Lcom/graphhopper/storage/GHLock;

    move-result-object v4

    invoke-interface {v4}, Lcom/graphhopper/storage/GHLock;->tryLock()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4}, Lcom/graphhopper/storage/GHLock;->getObtainFailedReason()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_6
    :goto_2
    new-instance v1, Lcom/graphhopper/storage/StorableProperties;

    invoke-direct {v1, v2}, Lcom/graphhopper/storage/StorableProperties;-><init>(Lcom/graphhopper/storage/Directory;)V

    iput-object v1, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    invoke-virtual {v1}, Lcom/graphhopper/storage/StorableProperties;->loadExisting()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_8

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/graphhopper/storage/GHLock;->release()V

    :cond_7
    return v3

    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    invoke-static {v1}, Lcom/graphhopper/routing/util/EncodingManager;->fromProperties(Lcom/graphhopper/storage/StorableProperties;)Lcom/graphhopper/routing/util/EncodingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    new-instance v5, Lcom/graphhopper/storage/BaseGraph$Builder;

    invoke-direct {v5, v1}, Lcom/graphhopper/storage/BaseGraph$Builder;-><init>(Lcom/graphhopper/routing/util/EncodingManager;)V

    invoke-virtual {v5, v2}, Lcom/graphhopper/storage/BaseGraph$Builder;->setDir(Lcom/graphhopper/storage/Directory;)Lcom/graphhopper/storage/BaseGraph$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->hasElevation()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/graphhopper/storage/BaseGraph$Builder;->set3D(Z)Lcom/graphhopper/storage/BaseGraph$Builder;

    move-result-object v1

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-virtual {v5}, Lcom/graphhopper/routing/util/EncodingManager;->needsTurnCostsSupport()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/graphhopper/storage/BaseGraph$Builder;->withTurnCosts(Z)Lcom/graphhopper/storage/BaseGraph$Builder;

    move-result-object v1

    iget v5, p0, Lcom/graphhopper/GraphHopper;->defaultSegmentSize:I

    invoke-virtual {v1, v5}, Lcom/graphhopper/storage/BaseGraph$Builder;->setSegmentSize(I)Lcom/graphhopper/storage/BaseGraph$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph$Builder;->build()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v1

    iput-object v1, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->checkProfilesConsistency()V

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->loadExisting()Z

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    const-string v5, "profiles"

    invoke-virtual {v1, v5}, Lcom/graphhopper/storage/StorableProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->getProfilesString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0, v3}, Lcom/graphhopper/GraphHopper;->postProcessing(Z)V

    invoke-virtual {v2}, Lcom/graphhopper/storage/GHDirectory;->loadMMap()V

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->setFullyLoaded()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x1

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lcom/graphhopper/storage/GHLock;->release()V

    :cond_9
    return p0

    :cond_a
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/Directory;->getLocation()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nGraph: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nChange configuration to match the graph or delete "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    if-eqz v4, :cond_b

    invoke-interface {v4}, Lcom/graphhopper/storage/GHLock;->release()V

    :cond_b
    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "graph is already successfully loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GraphHopperLocation is not specified. Call setGraphHopperLocation or init before"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public loadOrPrepareCH(Z)V
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->getCHProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/CHProfile;

    invoke-virtual {v1}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/graphhopper/GraphHopper;->getCHProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/graphhopper/GraphHopper;->getCHProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/config/Profile;

    invoke-virtual {p0, v3}, Lcom/graphhopper/GraphHopper;->getProfileHash(Lcom/graphhopper/config/Profile;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CH preparation of "

    const-string v1, " already exists in storage and doesn\'t match configuration"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->getCHProfiles()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/GraphHopper;->createCHConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->load(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/graphhopper/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/graphhopper/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/GraphHopper;->prepareCH(ZLjava/util/List;)Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->chGraphs:Ljava/util/Map;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->getCHProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/config/CHProfile;

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CH graph should be either loaded or prepared, but not both: "

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/config/Profile;

    invoke-virtual {p0, v4}, Lcom/graphhopper/GraphHopper;->getProfileHash(Lcom/graphhopper/config/Profile;)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/graphhopper/GraphHopper;->setCHProfileVersion(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->chGraphs:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v5}, Lcom/graphhopper/storage/BaseGraph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v5

    invoke-virtual {v3}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->getCHStorage()Lcom/graphhopper/storage/CHStorage;

    move-result-object v6

    invoke-virtual {v3}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;->getCHConfig()Lcom/graphhopper/storage/CHConfig;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/graphhopper/storage/RoutingCHGraphImpl;->fromGraph(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/CHConfig;)Lcom/graphhopper/storage/RoutingCHGraph;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->chGraphs:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Lcom/graphhopper/config/CHProfile;->getProfile()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CH graph should be either loaded or prepared: "

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-void
.end method

.method public loadOrPrepareLM(Z)V
    .locals 8

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->getLMProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/LMProfile;

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/graphhopper/GraphHopper;->getLMProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/graphhopper/GraphHopper;->getLMProfileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/config/Profile;

    invoke-virtual {p0, v3}, Lcom/graphhopper/GraphHopper;->getProfileHash(Lcom/graphhopper/config/Profile;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LM preparation of "

    const-string v1, " already exists in storage and doesn\'t match configuration"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->getLMProfiles()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/GraphHopper;->createLMConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-virtual {v1, v0, v2, v3}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->load(Ljava/util/List;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/graphhopper/d;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v2}, Lwa/h;->w(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/graphhopper/a;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lcom/graphhopper/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/GraphHopper;->prepareLM(ZLjava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->landmarks:Ljava/util/Map;

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->getLMProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/config/LMProfile;

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->usesOtherPreparation()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->getPreparationProfile()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/graphhopper/l;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/graphhopper/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/graphhopper/l;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Lcom/graphhopper/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "LM should be either loaded or prepared, but not both: "

    invoke-static {p1, v3}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/config/Profile;

    invoke-virtual {p0, v4}, Lcom/graphhopper/GraphHopper;->getProfileHash(Lcom/graphhopper/config/Profile;)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/graphhopper/GraphHopper;->setLMProfileVersion(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->landmarks:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/routing/lm/PrepareLandmarks;

    invoke-virtual {v4}, Lcom/graphhopper/routing/lm/PrepareLandmarks;->getLandmarkStorage()Lcom/graphhopper/routing/lm/LandmarkStorage;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    new-instance v3, Lcom/graphhopper/e;

    const/4 v5, 0x3

    invoke-direct {v3, v5, p0, v2}, Lcom/graphhopper/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public postImportOSM()V
    .locals 3

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->calculateUrbanDensity()V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->maxSpeedCalculator:Lcom/graphhopper/routing/util/MaxSpeedCalculator;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->fillMaxSpeed(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/EncodingManager;)V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->maxSpeedCalculator:Lcom/graphhopper/routing/util/MaxSpeedCalculator;

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->close()V

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->hasElevation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->interpolateBridgesTunnelsAndFerries()V

    :cond_1
    iget-boolean v0, p0, Lcom/graphhopper/GraphHopper;->sortGraph:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-static {p0}, Lcom/graphhopper/GraphHopper;->sortGraphAlongHilbertCurve(Lcom/graphhopper/storage/BaseGraph;)V

    :cond_2
    return-void
.end method

.method public postProcessing(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->calcChecksums()V

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->initLocationIndex()V

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->importPublicTransit()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/graphhopper/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->flushAndCloseGeometryAndNameStorage()V

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/graphhopper/GraphHopper;->loadOrPrepareLM(Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    invoke-interface {v0}, Lcom/graphhopper/storage/index/LocationIndex;->close()V

    :cond_2
    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/graphhopper/GraphHopper;->loadOrPrepareCH(Z)V

    :cond_3
    return-void
.end method

.method public prepareCH(ZLjava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/CHConfig;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->ensureWriteAccess()V

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->freeze()V

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->chPreparationHandler:Lcom/graphhopper/routing/ch/CHPreparationHandler;

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    invoke-virtual {v0, v1, p0, p2, p1}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->prepare(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/StorableProperties;Ljava/util/List;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public prepareImport()V
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->encodedValuesString:Ljava/lang/String;

    invoke-static {v0}, Lcom/graphhopper/GraphHopper;->parseEncodedValueString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lb/e0;

    invoke-direct {v1, p0}, Lb/e0;-><init>(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Lcom/graphhopper/m;

    invoke-direct {v4, v1, v0, v2}, Lcom/graphhopper/m;-><init>(Lb/e0;Ljava/util/Map;Ljava/util/LinkedHashSet;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/graphhopper/util/PMap;

    invoke-direct {v1}, Lcom/graphhopper/util/PMap;-><init>()V

    const-string v2, "road_class"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/graphhopper/util/PMap;

    invoke-direct {v1}, Lcom/graphhopper/util/PMap;-><init>()V

    const-string v2, "road_environment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/graphhopper/util/PMap;

    invoke-direct {v1}, Lcom/graphhopper/util/PMap;-><init>()V

    const-string v2, "roundabout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "car"

    invoke-static {v1}, Lcom/graphhopper/routing/ev/VehicleAccess;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/util/PMap;

    invoke-direct {v2}, Lcom/graphhopper/util/PMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/graphhopper/util/PMap;

    invoke-direct {v1}, Lcom/graphhopper/util/PMap;-><init>()V

    const-string v2, "road_class_link"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/graphhopper/util/PMap;

    invoke-direct {v1}, Lcom/graphhopper/util/PMap;-><init>()V

    const-string v2, "max_speed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/GraphHopper;->getRestrictionVehicleTypesByProfile(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/graphhopper/GraphHopper;->urbanDensityCalculationThreads:I

    if-lez v2, :cond_0

    new-instance v2, Lcom/graphhopper/util/PMap;

    invoke-direct {v2}, Lcom/graphhopper/util/PMap;-><init>()V

    const-string v3, "urban_density"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->maxSpeedCalculator:Lcom/graphhopper/routing/util/MaxSpeedCalculator;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/graphhopper/GraphHopper;->urbanDensityCalculationThreads:I

    if-lez v2, :cond_1

    new-instance v2, Lcom/graphhopper/util/PMap;

    invoke-direct {v2}, Lcom/graphhopper/util/PMap;-><init>()V

    const-string v3, "max_speed_estimated"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "For max_speed_calculator the urban density calculation needs to be enabled (e.g. graph.urban_density.threads: 1)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->importRegistry:Lcom/graphhopper/routing/ev/ImportRegistry;

    invoke-interface {v5, v4}, Lcom/graphhopper/routing/ev/ImportRegistry;->createImportUnit(Ljava/lang/String;)Lcom/graphhopper/routing/ev/ImportUnit;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v5}, Lcom/graphhopper/routing/ev/ImportUnit;->getRequiredImportUnits()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown encoded value: "

    invoke-static {v0, v4}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0, v0, v2, v1}, Lcom/graphhopper/GraphHopper;->buildEncodingManager(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/graphhopper/routing/util/EncodingManager;

    move-result-object v3

    iput-object v3, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->osmReaderConfig:Lcom/graphhopper/routing/OSMReaderConfig;

    invoke-virtual {v3}, Lcom/graphhopper/routing/OSMReaderConfig;->getIgnoredHighways()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/graphhopper/GraphHopper;->buildOSMParsers(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Lcom/graphhopper/routing/util/OSMParsers;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/GraphHopper;->osmParsers:Lcom/graphhopper/routing/util/OSMParsers;

    return-void

    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ", "

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Encoded values missing: "

    const-string v3, ".\nTo avoid that certain encoded values are automatically removed when you change the custom model later, you need to set the encoded values manually:\ngraph.encoded_values: "

    invoke-static {v2, v0, v3, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public prepareLM(ZLjava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/LMConfig;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/PrepareLandmarks;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->ensureWriteAccess()V

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->freeze()V

    :cond_1
    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->lmPreparationHandler:Lcom/graphhopper/routing/lm/LMPreparationHandler;

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    iget-object v5, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    iget-object v6, p0, Lcom/graphhopper/GraphHopper;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    move v7, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->prepare(Ljava/util/List;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/storage/StorableProperties;Lcom/graphhopper/storage/index/LocationIndex;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public process(Z)V
    .locals 5

    const-string v0, "To avoid multiple writers we need to obtain a write lock but it failed. In "

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->prepareImport()V

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/graphhopper/storage/GHDirectory;

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->dataAccessDefaultType:Lcom/graphhopper/storage/DAType;

    invoke-direct {v1, v2, v3}, Lcom/graphhopper/storage/GHDirectory;-><init>(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)V

    iget-object v2, p0, Lcom/graphhopper/GraphHopper;->dataAccessConfig:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Lcom/graphhopper/storage/GHDirectory;->configure(Ljava/util/LinkedHashMap;)Lcom/graphhopper/storage/Directory;

    new-instance v2, Lcom/graphhopper/storage/BaseGraph$Builder;

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->getEncodingManager()Lcom/graphhopper/routing/util/EncodingManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/graphhopper/storage/BaseGraph$Builder;-><init>(Lcom/graphhopper/routing/util/EncodingManager;)V

    invoke-virtual {v2, v1}, Lcom/graphhopper/storage/BaseGraph$Builder;->setDir(Lcom/graphhopper/storage/Directory;)Lcom/graphhopper/storage/BaseGraph$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->hasElevation()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/graphhopper/storage/BaseGraph$Builder;->set3D(Z)Lcom/graphhopper/storage/BaseGraph$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-virtual {v3}, Lcom/graphhopper/routing/util/EncodingManager;->needsTurnCostsSupport()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/graphhopper/storage/BaseGraph$Builder;->withTurnCosts(Z)Lcom/graphhopper/storage/BaseGraph$Builder;

    move-result-object v2

    iget v3, p0, Lcom/graphhopper/GraphHopper;->defaultSegmentSize:I

    invoke-virtual {v2, v3}, Lcom/graphhopper/storage/BaseGraph$Builder;->setSegmentSize(I)Lcom/graphhopper/storage/BaseGraph$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph$Builder;->build()Lcom/graphhopper/storage/BaseGraph;

    move-result-object v2

    iput-object v2, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    new-instance v2, Lcom/graphhopper/storage/StorableProperties;

    invoke-direct {v2, v1}, Lcom/graphhopper/storage/StorableProperties;-><init>(Lcom/graphhopper/storage/Directory;)V

    iput-object v2, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->checkProfilesConsistency()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/graphhopper/storage/GHDirectory;->getDefaultType()Lcom/graphhopper/storage/DAType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/storage/DAType;->isStoring()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->lockFactory:Lcom/graphhopper/storage/LockFactory;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lcom/graphhopper/storage/LockFactory;->setLockDir(Ljava/io/File;)V

    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->lockFactory:Lcom/graphhopper/storage/LockFactory;

    const-string v3, "gh.lock"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Lcom/graphhopper/storage/LockFactory;->create(Ljava/lang/String;Z)Lcom/graphhopper/storage/GHLock;

    move-result-object v2

    invoke-interface {v2}, Lcom/graphhopper/storage/GHLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2}, Lcom/graphhopper/storage/GHLock;->getObtainFailedReason()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->ensureWriteAccess()V

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->importOSM()V

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->postImportOSM()V

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->cleanUp()V

    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->properties:Lcom/graphhopper/storage/StorableProperties;

    const-string v1, "profiles"

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->getProfilesString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/storage/StorableProperties;

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->writeEncodingManagerToProperties()V

    invoke-virtual {p0, p1}, Lcom/graphhopper/GraphHopper;->postProcessing(Z)V

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/graphhopper/storage/GHLock;->release()V

    :cond_2
    return-void

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/graphhopper/storage/GHLock;->release()V

    :cond_3
    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The EncodingManager must be created in `prepareImport()`"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public route(Lcom/graphhopper/GHRequest;)Lcom/graphhopper/GHResponse;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->createRouter()Lcom/graphhopper/routing/Router;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Router;->route(Lcom/graphhopper/GHRequest;)Lcom/graphhopper/GHResponse;

    move-result-object p0

    return-object p0
.end method

.method public setAllowWrites(Z)Lcom/graphhopper/GraphHopper;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/GraphHopper;->allowWrites:Z

    return-object p0
.end method

.method public setBaseGraph(Lcom/graphhopper/storage/BaseGraph;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-direct {p0}, Lcom/graphhopper/GraphHopper;->setFullyLoaded()V

    return-void
.end method

.method public setCountryRuleFactory(Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;)Lcom/graphhopper/GraphHopper;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->countryRuleFactory:Lcom/graphhopper/routing/util/countryrules/CountryRuleFactory;

    return-object p0
.end method

.method public setCustomAreasDirectory(Ljava/lang/String;)Lcom/graphhopper/GraphHopper;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->customAreasDirectory:Ljava/lang/String;

    return-object p0
.end method

.method public setElevation(Z)Lcom/graphhopper/GraphHopper;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/GraphHopper;->elevation:Z

    return-object p0
.end method

.method public setElevationProvider(Lcom/graphhopper/reader/dem/ElevationProvider;)Lcom/graphhopper/GraphHopper;
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/graphhopper/reader/dem/ElevationProvider;->NOOP:Lcom/graphhopper/reader/dem/ElevationProvider;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/graphhopper/GraphHopper;->setElevation(Z)Lcom/graphhopper/GraphHopper;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/graphhopper/GraphHopper;->setElevation(Z)Lcom/graphhopper/GraphHopper;

    :goto_1
    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->eleProvider:Lcom/graphhopper/reader/dem/ElevationProvider;

    return-object p0
.end method

.method public setEncodedValuesString(Ljava/lang/String;)Lcom/graphhopper/GraphHopper;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->encodedValuesString:Ljava/lang/String;

    return-object p0
.end method

.method public setGraphHopperLocation(Ljava/lang/String;)Lcom/graphhopper/GraphHopper;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->ensureNotLoaded()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->ghLocation:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "graphhopper location cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setImportRegistry(Lcom/graphhopper/routing/ev/ImportRegistry;)Lcom/graphhopper/GraphHopper;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->importRegistry:Lcom/graphhopper/routing/ev/ImportRegistry;

    return-object p0
.end method

.method public setLocationIndex(Lcom/graphhopper/storage/index/LocationIndex;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    return-void
.end method

.method public setMaxSpeedCalculator(Lcom/graphhopper/routing/util/MaxSpeedCalculator;)Lcom/graphhopper/GraphHopper;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->maxSpeedCalculator:Lcom/graphhopper/routing/util/MaxSpeedCalculator;

    return-object p0
.end method

.method public setMinNetworkSize(I)Lcom/graphhopper/GraphHopper;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->ensureNotLoaded()V

    iput p1, p0, Lcom/graphhopper/GraphHopper;->minNetworkSize:I

    return-object p0
.end method

.method public setOSMFile(Ljava/lang/String;)Lcom/graphhopper/GraphHopper;
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->ensureNotLoaded()V

    invoke-static {p1}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->osmFile:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OSM file cannot be empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPathDetailsBuilderFactory(Lcom/graphhopper/util/details/PathDetailsBuilderFactory;)Lcom/graphhopper/GraphHopper;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->pathBuilderFactory:Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

    return-object p0
.end method

.method public setPreciseIndexResolution(I)Lcom/graphhopper/GraphHopper;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->ensureNotLoaded()V

    iput p1, p0, Lcom/graphhopper/GraphHopper;->preciseIndexResolution:I

    return-object p0
.end method

.method public setProfiles(Ljava/util/List;)Lcom/graphhopper/GraphHopper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/Profile;",
            ">;)",
            "Lcom/graphhopper/GraphHopper;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/graphhopper/GraphHopper;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    if-nez v0, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/config/Profile;

    .line 5
    iget-object v1, p0, Lcom/graphhopper/GraphHopper;->profilesByName:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/Profile;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Profile names must be unique. Duplicate name: \'"

    const-string v1, "\'"

    .line 7
    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot set profiles after EncodingManager was built"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot initialize profiles multiple times"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs setProfiles([Lcom/graphhopper/config/Profile;)Lcom/graphhopper/GraphHopper;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/GraphHopper;->setProfiles(Ljava/util/List;)Lcom/graphhopper/GraphHopper;

    move-result-object p0

    return-object p0
.end method

.method public setSortGraph(Z)Lcom/graphhopper/GraphHopper;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/GraphHopper;->sortGraph:Z

    return-object p0
.end method

.method public setStoreOnFlush(Z)Lcom/graphhopper/GraphHopper;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->ensureNotLoaded()V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/graphhopper/storage/DAType;->RAM_STORE:Lcom/graphhopper/storage/DAType;

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->dataAccessDefaultType:Lcom/graphhopper/storage/DAType;

    return-object p0

    :cond_0
    sget-object p1, Lcom/graphhopper/storage/DAType;->RAM:Lcom/graphhopper/storage/DAType;

    iput-object p1, p0, Lcom/graphhopper/GraphHopper;->dataAccessDefaultType:Lcom/graphhopper/storage/DAType;

    return-object p0
.end method

.method public setUrbanDensityCalculation(DDDDI)Lcom/graphhopper/GraphHopper;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/GraphHopper;->ensureNotLoaded()V

    iput-wide p1, p0, Lcom/graphhopper/GraphHopper;->residentialAreaRadius:D

    iput-wide p3, p0, Lcom/graphhopper/GraphHopper;->residentialAreaSensitivity:D

    iput-wide p5, p0, Lcom/graphhopper/GraphHopper;->cityAreaRadius:D

    iput-wide p7, p0, Lcom/graphhopper/GraphHopper;->cityAreaSensitivity:D

    iput p9, p0, Lcom/graphhopper/GraphHopper;->urbanDensityCalculationThreads:I

    return-object p0
.end method
