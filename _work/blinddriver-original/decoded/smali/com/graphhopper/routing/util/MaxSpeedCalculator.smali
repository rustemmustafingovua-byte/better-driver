.class public Lcom/graphhopper/routing/util/MaxSpeedCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;,
        Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeImpl;,
        Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeFilterImpl;
    }
.end annotation


# instance fields
.field private dataAccess:Lcom/graphhopper/storage/DataAccess;

.field private final defaultSpeeds:Lp8/d;

.field private internalMaxSpeedStorage:Lcom/graphhopper/routing/ev/EdgeIntAccess;

.field private final parser:Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;

.field private ruralMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field private urbanMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# direct methods
.method public constructor <init>(Lp8/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->defaultSpeeds:Lp8/d;

    new-instance v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;-><init>(Lp8/d;)V

    iput-object v0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->parser:Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->lambda$fillMaxSpeed$0(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static convertMaxspeed(Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeImpl;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeImpl;

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeImpl;->getTags()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v1}, Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeImpl;->getTags()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const-string v5, "maxspeed"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "maxspeed:advisory"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxspeedString(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v7, v5, v7

    if-eqz v7, :cond_3

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v7, v5, v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "illegal maxspeed "

    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v1, v2}, Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeImpl;->setTags(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static createLegalDefaultSpeeds()Lp8/d;
    .locals 3

    :try_start_0
    new-instance v0, Lb6/c0;

    invoke-direct {v0}, Lb6/c0;-><init>()V

    const-class v1, Lcom/graphhopper/routing/util/MaxSpeedCalculator;

    const-string v2, "legal_default_speeds.json"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const-class v2, Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;

    invoke-virtual {v0, v1, v2}, Lb6/c0;->r(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;->b(Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->convertMaxspeed(Ljava/util/Set;)V

    new-instance v1, Lp8/d;

    invoke-static {v0}, Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;->a(Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;->b(Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lp8/d;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createMaxSpeedStorage(Lcom/graphhopper/storage/DataAccess;)Lcom/graphhopper/routing/ev/EdgeIntAccess;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$1;

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/routing/util/MaxSpeedCalculator$1;-><init>(Lcom/graphhopper/routing/util/MaxSpeedCalculator;Lcom/graphhopper/storage/DataAccess;)V

    return-object v0
.end method

.method private static synthetic lambda$fillMaxSpeed$0(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/ev/UrbanDensity;->RURAL:Lcom/graphhopper/routing/ev/UrbanDensity;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkEncodedValues(Lcom/graphhopper/routing/util/EncodingManager;)V
    .locals 0

    const-string p0, "country"

    invoke-virtual {p1, p0}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "urban_density"

    invoke-virtual {p1, p0}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "max_speed_calculator needs urban_density"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "max_speed_calculator needs country"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->close()V

    return-void
.end method

.method public createDataAccessForParser(Lcom/graphhopper/storage/Directory;)V
    .locals 11

    const-string v0, "max_speed_storage_tmp"

    invoke-interface {p1, v0}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;)Lcom/graphhopper/storage/DataAccess;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-interface {p1, v0, v1}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->createMaxSpeedStorage(Lcom/graphhopper/storage/DataAccess;)Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->internalMaxSpeedStorage:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v1, "tmp_rural"

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;-><init>(Ljava/lang/String;IDDZZZ)V

    iput-object v0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->ruralMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    new-instance v1, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v2, "tmp_urban"

    const/4 v3, 0x7

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-direct/range {v1 .. v10}, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;-><init>(Ljava/lang/String;IDDZZZ)V

    iput-object v1, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->urbanMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    new-instance p1, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-direct {p1}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;-><init>()V

    iget-object v0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->ruralMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ev/EncodedValue;->init(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)I

    iget-object v0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->urbanMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ev/EncodedValue;->init(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)I

    invoke-virtual {p1}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->getRequiredBytes()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object p1, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->parser:Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;

    iget-object v0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->ruralMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iget-object v1, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->urbanMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->internalMaxSpeedStorage:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, p0}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->init(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EdgeIntAccess;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;->getRequiredBytes()I

    move-result p1

    const-string v0, "bytes are not sufficient "

    invoke-static {p1, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fillMaxSpeed(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/EncodingManager;)V
    .locals 2

    .line 1
    const-string v0, "urban_density"

    const-class v1, Lcom/graphhopper/routing/ev/UrbanDensity;

    invoke-virtual {p2, v0, v1}, Lcom/graphhopper/routing/util/EncodingManager;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/graphhopper/routing/util/g;

    invoke-direct {v1, v0}, Lcom/graphhopper/routing/util/g;-><init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;)V

    invoke-virtual {p0, p1, p2, v1}, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->fillMaxSpeed(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/EncodingManager;Ljava/util/function/Function;)V

    return-void
.end method

.method public fillMaxSpeed(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/EncodingManager;Ljava/util/function/Function;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/Graph;",
            "Lcom/graphhopper/routing/util/EncodingManager;",
            "Ljava/util/function/Function<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3
    const-string v2, "max_speed"

    invoke-virtual {v1, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v4

    .line 4
    const-string v2, "max_speed_estimated"

    invoke-virtual {v1, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v1

    .line 5
    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v2

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/graphhopper/storage/Graph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object v3

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 8
    invoke-interface {v3, v4}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v5

    .line 9
    invoke-interface {v3, v4}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v7

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v11, v5, v9

    if-eqz v11, :cond_1

    cmpl-double v12, v7, v9

    if-eqz v12, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v12, p3

    .line 10
    invoke-interface {v12, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_2

    .line 11
    iget-object v13, v0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->urbanMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v15

    move-wide/from16 p1, v9

    iget-object v9, v0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->internalMaxSpeedStorage:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {v13, v14, v15, v9}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide v9

    goto :goto_1

    :cond_2
    move-wide/from16 p1, v9

    .line 12
    iget-object v9, v0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->ruralMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v10

    iget-object v13, v0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->internalMaxSpeedStorage:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {v9, v14, v10, v13}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide v9

    :goto_1
    cmpl-double v13, v9, p1

    if-eqz v13, :cond_0

    const-wide/16 v13, 0x0

    cmpl-double v13, v9, v13

    if-nez v13, :cond_3

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 13
    invoke-interface/range {v3 .. v8}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;DD)Lcom/graphhopper/util/EdgeIteratorState;

    goto :goto_0

    :cond_3
    if-nez v11, :cond_4

    move-wide v5, v9

    :cond_4
    cmpl-double v11, v7, p1

    if-nez v11, :cond_5

    move-wide v7, v9

    .line 14
    :cond_5
    invoke-interface/range {v3 .. v8}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;DD)Lcom/graphhopper/util/EdgeIteratorState;

    const/4 v5, 0x1

    .line 15
    invoke-interface {v3, v1, v5}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "max_speed_calculator took: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultSpeeds()Lp8/d;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->defaultSpeeds:Lp8/d;

    return-object p0
.end method

.method public getInternalMaxSpeedStorage()Lcom/graphhopper/routing/ev/EdgeIntAccess;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->internalMaxSpeedStorage:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    return-object p0
.end method

.method public getParser()Lcom/graphhopper/routing/util/parsers/TagParser;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->parser:Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;

    return-object p0
.end method

.method public getRuralMaxSpeedEnc()Lcom/graphhopper/routing/ev/DecimalEncodedValue;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->ruralMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-object p0
.end method

.method public getUrbanMaxSpeedEnc()Lcom/graphhopper/routing/ev/DecimalEncodedValue;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator;->urbanMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-object p0
.end method
