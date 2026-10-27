.class public Lcom/graphhopper/routing/lm/LMPreparationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lnc/b;


# instance fields
.field private areaIndex:Lcom/graphhopper/routing/util/AreaIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/util/AreaIndex<",
            "Lcom/graphhopper/routing/lm/SplitArea;",
            ">;"
        }
    .end annotation
.end field

.field private landmarkCount:I

.field private final lmProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/config/LMProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final lmSuggestionsLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logDetails:Z

.field private final maximumWeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private minNodes:I

.field private preparationThreads:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/routing/lm/LMPreparationHandler;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->LOGGER:Lnc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->landmarkCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lmProfiles:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->maximumWeights:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->minNodes:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lmSuggestionsLocations:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->logDetails:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->setPreparationThreads(I)V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/lm/LMConfig;Lcom/graphhopper/routing/lm/LMPreparationHandler;Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)V
    .locals 0

    invoke-direct {p2, p3, p0, p1, p4}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lambda$load$0(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/lm/LMConfig;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(ILjava/util/List;Lcom/graphhopper/routing/lm/PrepareLandmarks;Ljava/lang/String;ZLcom/graphhopper/storage/StorableProperties;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lambda$prepare$2(ILjava/util/List;Lcom/graphhopper/routing/lm/PrepareLandmarks;Ljava/lang/String;ZLcom/graphhopper/storage/StorableProperties;)V

    return-void
.end method

.method public static synthetic c(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/lm/LMConfig;Lcom/graphhopper/routing/lm/LMPreparationHandler;Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p2, p3, p0, p4, p1}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lambda$load$1(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/List;Lcom/graphhopper/routing/lm/LMConfig;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$load$0(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/lm/LMConfig;Ljava/util/List;)V
    .locals 6

    new-instance v0, Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object v3

    iget v5, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->landmarkCount:I

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/lm/LandmarkStorage;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/storage/Directory;Lcom/graphhopper/routing/lm/LMConfig;I)V

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage;->loadExisting()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object p0

    invoke-virtual {v4}, Lcom/graphhopper/routing/lm/LMConfig;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "landmarks_"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/graphhopper/storage/Directory;->remove(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object p0

    invoke-virtual {v4}, Lcom/graphhopper/routing/lm/LMConfig;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "landmarks_subnetwork_"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/graphhopper/storage/Directory;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$load$1(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/List;Lcom/graphhopper/routing/lm/LMConfig;)Ljava/lang/Runnable;
    .locals 7

    new-instance v0, Lb/r;

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lb/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static synthetic lambda$prepare$2(ILjava/util/List;Lcom/graphhopper/routing/lm/PrepareLandmarks;Ljava/lang/String;ZLcom/graphhopper/storage/StorableProperties;)V
    .locals 4

    sget-object v0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->LOGGER:Lnc/b;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2}, Lcom/graphhopper/routing/lm/PrepareLandmarks;->getLMConfig()Lcom/graphhopper/routing/lm/LMConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/routing/lm/LMConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " calling LM prepare.doWork for "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ... ("

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lnc/b;->k(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/graphhopper/routing/lm/PrepareLandmarks;->doWork()V

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lcom/graphhopper/routing/lm/PrepareLandmarks;->close()V

    :cond_0
    const-string p0, "LM {} finished {}"

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p3, p1}, Lnc/b;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "prepare.lm.date."

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/graphhopper/util/Helper;->createFormatter()Ljava/text/DateFormat;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p0, p1}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/storage/StorableProperties;

    return-void
.end method

.method private loadLandmarkSplittingFeatureCollection(Ljava/lang/String;)Lcom/graphhopper/util/JsonFeatureCollection;
    .locals 4

    new-instance p0, Lb6/c0;

    invoke-direct {p0}, Lb6/c0;-><init>()V

    new-instance v0, Lk5/a;

    invoke-direct {v0}, Lk5/a;-><init>()V

    invoke-virtual {p0, v0}, Lb6/c0;->s(Lb6/a0;)V

    const-class v0, Lcom/graphhopper/routing/lm/LandmarkStorage;

    const-string v1, "map.geo.json"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/graphhopper/util/Helper;->UTF_CS:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/graphhopper/util/Helper;->UTF_CS:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0, v1}, Lb6/c0;->p(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lcom/graphhopper/routing/lm/LMPreparationHandler;->LOGGER:Lnc/b;

    const-string v2, "Loaded built-in landmark splitting collection from {}"

    invoke-interface {p1, v0, v2}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->LOGGER:Lnc/b;

    const-string v2, "Loaded landmark splitting collection from {}"

    invoke-interface {v0, p1, v2}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/graphhopper/routing/lm/LMPreparationHandler;->LOGGER:Lnc/b;

    const-string v0, "Problem while reading border map GeoJSON. Skipping this."

    invoke-interface {p1, v0, p0}, Lnc/b;->r(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public createPreparations(Ljava/util/List;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/storage/index/LocationIndex;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/LMConfig;",
            ">;",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Lcom/graphhopper/storage/index/LocationIndex;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/PrepareLandmarks;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->LOGGER:Lnc/b;

    const-string v1, "Creating LM preparations, {}"

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lmSuggestionsLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lmSuggestionsLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lmSuggestionsLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p4}, Lcom/graphhopper/routing/lm/LandmarkSuggestion;->readLandmarks(Ljava/lang/String;Lcom/graphhopper/storage/index/LocationIndex;)Lcom/graphhopper/routing/lm/LandmarkSuggestion;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/graphhopper/routing/lm/LMConfig;

    iget-object v1, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->maximumWeights:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/graphhopper/routing/lm/LMConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/graphhopper/routing/lm/PrepareLandmarks;

    invoke-virtual {p2}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object v3

    iget v7, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->landmarkCount:I

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/graphhopper/routing/lm/PrepareLandmarks;-><init>(Lcom/graphhopper/storage/Directory;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/lm/LMConfig;I)V

    invoke-virtual {v2, v0}, Lcom/graphhopper/routing/lm/PrepareLandmarks;->setLandmarkSuggestions(Ljava/util/List;)Lcom/graphhopper/routing/lm/PrepareLandmarks;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/graphhopper/routing/lm/PrepareLandmarks;->setMaximumWeight(D)Lcom/graphhopper/routing/lm/PrepareLandmarks;

    move-result-object p2

    iget-boolean p3, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->logDetails:Z

    invoke-virtual {p2, p3}, Lcom/graphhopper/routing/lm/PrepareLandmarks;->setLogDetails(Z)Lcom/graphhopper/routing/lm/PrepareLandmarks;

    move-result-object p2

    iget p3, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->minNodes:I

    const/4 v1, 0x1

    if-le p3, v1, :cond_1

    invoke-virtual {p2, p3}, Lcom/graphhopper/routing/lm/PrepareLandmarks;->setMinimumNodes(I)V

    :cond_1
    iget-object p3, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->areaIndex:Lcom/graphhopper/routing/util/AreaIndex;

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Lcom/graphhopper/routing/lm/PrepareLandmarks;->setAreaIndex(Lcom/graphhopper/routing/util/AreaIndex;)Lcom/graphhopper/routing/lm/PrepareLandmarks;

    :cond_2
    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p2, v4

    move-object p3, v5

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Lcom/graphhopper/routing/lm/LMConfig;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->maximumWeights:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "maximumWeight cannot be null. Default should be just negative. Couldn\'t find "

    const-string p4, " in "

    invoke-static {p3, p2, p4, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object p4
.end method

.method public getLMProfiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/LMProfile;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lmProfiles:Ljava/util/List;

    return-object p0
.end method

.method public getLandmarks()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->landmarkCount:I

    return p0
.end method

.method public getPreparationThreads()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->preparationThreads:I

    return p0
.end method

.method public init(Lcom/graphhopper/GraphHopperConfig;)V
    .locals 6

    const-string v0, "prepare.lm.weightings"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "prepare.lm.threads"

    invoke-virtual {p0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->getPreparationThreads()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->setPreparationThreads(I)V

    invoke-virtual {p1}, Lcom/graphhopper/GraphHopperConfig;->getLMProfiles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->setLMProfiles(Ljava/util/Collection;)Lcom/graphhopper/routing/lm/LMPreparationHandler;

    const-string v0, "prepare.lm.landmarks"

    iget v1, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->landmarkCount:I

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->landmarkCount:I

    const-string v0, "prepare.lm.log_details"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->logDetails:Z

    const-string v0, "prepare.lm.min_network_size"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->minNodes:I

    const-string v0, "prepare.lm.suggestions_location"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lmSuggestionsLocations:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "prepare.lm.split_area_location"

    invoke-virtual {p1, v0, v2}, Lcom/graphhopper/GraphHopperConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->loadLandmarkSplittingFeatureCollection(Ljava/lang/String;)Lcom/graphhopper/util/JsonFeatureCollection;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/graphhopper/routing/ev/f;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Lcom/graphhopper/routing/util/AreaIndex;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/util/AreaIndex;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->areaIndex:Lcom/graphhopper/routing/util/AreaIndex;

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Use profiles_lm instead of prepare.lm.weightings, see #1922 and docs/core/profiles.md"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lmProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public load(Ljava/util/List;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/LMConfig;",
            ">;",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/LandmarkStorage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/graphhopper/routing/lm/a;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/graphhopper/routing/lm/a;-><init>(Lcom/graphhopper/routing/lm/LMPreparationHandler;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget p0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->preparationThreads:I

    invoke-static {p1, p0}, Lcom/graphhopper/util/GHUtility;->runConcurrently(Ljava/util/stream/Stream;I)V

    return-object v0
.end method

.method public prepare(Ljava/util/List;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/storage/StorableProperties;Lcom/graphhopper/storage/index/LocationIndex;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/LMConfig;",
            ">;",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/routing/util/EncodingManager;",
            "Lcom/graphhopper/storage/StorableProperties;",
            "Lcom/graphhopper/storage/index/LocationIndex;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/PrepareLandmarks;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->LOGGER:Lnc/b;

    const-string p1, "There are no LMs to prepare"

    invoke-interface {p0, p1}, Lnc/b;->k(Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->createPreparations(Ljava/util/List;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/storage/index/LocationIndex;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 p5, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_1

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/graphhopper/routing/lm/PrepareLandmarks;

    add-int/lit8 v2, p5, 0x1

    invoke-virtual {v4}, Lcom/graphhopper/routing/lm/PrepareLandmarks;->getLMConfig()Lcom/graphhopper/routing/lm/LMConfig;

    move-result-object p5

    invoke-virtual {p5}, Lcom/graphhopper/routing/lm/LMConfig;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/graphhopper/routing/lm/b;

    move-object v3, p1

    move-object v7, p4

    move v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/graphhopper/routing/lm/b;-><init>(ILjava/util/List;Lcom/graphhopper/routing/lm/PrepareLandmarks;Ljava/lang/String;ZLcom/graphhopper/storage/StorableProperties;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p5, v2

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget p0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->preparationThreads:I

    invoke-static {p1, p0}, Lcom/graphhopper/util/GHUtility;->runConcurrently(Ljava/util/stream/Stream;I)V

    sget-object p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->LOGGER:Lnc/b;

    const-string p1, "Finished LM preparation, {}"

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3, p1}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public setLMProfiles(Ljava/util/Collection;)Lcom/graphhopper/routing/lm/LMPreparationHandler;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/graphhopper/config/LMProfile;",
            ">;)",
            "Lcom/graphhopper/routing/lm/LMPreparationHandler;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lmProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->maximumWeights:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/LMProfile;

    .line 5
    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->usesOtherPreparation()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->maximumWeights:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getProfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/graphhopper/config/LMProfile;->getMaximumLMWeight()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->lmProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs setLMProfiles([Lcom/graphhopper/config/LMProfile;)Lcom/graphhopper/routing/lm/LMPreparationHandler;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/lm/LMPreparationHandler;->setLMProfiles(Ljava/util/Collection;)Lcom/graphhopper/routing/lm/LMPreparationHandler;

    move-result-object p0

    return-object p0
.end method

.method public setPreparationThreads(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/lm/LMPreparationHandler;->preparationThreads:I

    return-void
.end method
