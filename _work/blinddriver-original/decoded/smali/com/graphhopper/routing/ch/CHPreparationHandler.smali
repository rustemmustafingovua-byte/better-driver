.class public Lcom/graphhopper/routing/ch/CHPreparationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lnc/b;


# instance fields
.field private final chProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/config/CHProfile;",
            ">;"
        }
    .end annotation
.end field

.field private pMap:Lcom/graphhopper/util/PMap;

.field private preparationThreads:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ch/CHPreparationHandler;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->LOGGER:Lnc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->chProfiles:Ljava/util/List;

    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->pMap:Lcom/graphhopper/util/PMap;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->setPreparationThreads(I)V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/ch/CHPreparationHandler;Lcom/graphhopper/storage/CHConfig;Lcom/graphhopper/storage/BaseGraph;Ljava/util/Map;ZLcom/graphhopper/storage/StorableProperties;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->lambda$prepare$2(Lcom/graphhopper/storage/CHConfig;Lcom/graphhopper/storage/BaseGraph;Ljava/util/Map;ZLcom/graphhopper/storage/StorableProperties;)V

    return-void
.end method

.method public static synthetic b(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->lambda$load$0(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;Ljava/util/Map;)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p0, p2, p1}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->lambda$load$1(Lcom/graphhopper/storage/BaseGraph;Ljava/util/Map;Lcom/graphhopper/storage/CHConfig;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private createCHPreparation(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;)Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;
    .locals 0

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->fromGraph(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;)Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;

    move-result-object p1

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->pMap:Lcom/graphhopper/util/PMap;

    invoke-virtual {p1, p0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->setParams(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;

    return-object p1
.end method

.method private static synthetic lambda$load$0(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;Ljava/util/Map;)V
    .locals 5

    new-instance v0, Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object v1

    invoke-virtual {p1}, Lcom/graphhopper/storage/CHConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getSegmentSize()I

    move-result v3

    invoke-virtual {p1}, Lcom/graphhopper/storage/CHConfig;->isEdgeBased()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/graphhopper/storage/CHStorage;-><init>(Lcom/graphhopper/storage/Directory;Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Lcom/graphhopper/storage/CHStorage;->loadExisting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/graphhopper/storage/CHConfig;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p1}, Lcom/graphhopper/storage/RoutingCHGraphImpl;->fromGraph(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/CHConfig;)Lcom/graphhopper/storage/RoutingCHGraph;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object p2

    invoke-virtual {p1}, Lcom/graphhopper/storage/CHConfig;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nodes_ch_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/graphhopper/storage/Directory;->remove(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object p0

    invoke-virtual {p1}, Lcom/graphhopper/storage/CHConfig;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "shortcuts_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/graphhopper/storage/Directory;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$load$1(Lcom/graphhopper/storage/BaseGraph;Ljava/util/Map;Lcom/graphhopper/storage/CHConfig;)Ljava/lang/Runnable;
    .locals 2

    new-instance v0, Landroidx/fragment/app/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method

.method private synthetic lambda$prepare$2(Lcom/graphhopper/storage/CHConfig;Lcom/graphhopper/storage/BaseGraph;Ljava/util/Map;ZLcom/graphhopper/storage/StorableProperties;)V
    .locals 2

    invoke-virtual {p1}, Lcom/graphhopper/storage/CHConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->fromGraph(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;)Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;

    move-result-object p1

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->pMap:Lcom/graphhopper/util/PMap;

    invoke-virtual {p1, p0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->setParams(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->doWork()Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;

    move-result-object p0

    invoke-interface {p3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->flush()V

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->close()V

    :cond_0
    const-string p0, "prepare.ch.date."

    invoke-static {p0, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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


# virtual methods
.method public getCHProfiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/config/CHProfile;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->chProfiles:Ljava/util/List;

    return-object p0
.end method

.method public getPreparationThreads()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->preparationThreads:I

    return p0
.end method

.method public init(Lcom/graphhopper/GraphHopperConfig;)V
    .locals 2

    const-string v0, "prepare.threads"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "prepare.chWeighting"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "prepare.chWeightings"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "prepare.ch.weightings"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "prepare.ch.edge_based"

    invoke-virtual {p1, v0}, Lcom/graphhopper/GraphHopperConfig;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "prepare.ch.threads"

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->getPreparationThreads()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/GraphHopperConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->setPreparationThreads(I)V

    invoke-virtual {p1}, Lcom/graphhopper/GraphHopperConfig;->getCHProfiles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->setCHProfiles(Ljava/util/Collection;)Lcom/graphhopper/routing/ch/CHPreparationHandler;

    invoke-virtual {p1}, Lcom/graphhopper/GraphHopperConfig;->asPMap()Lcom/graphhopper/util/PMap;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->pMap:Lcom/graphhopper/util/PMap;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Use profiles_ch instead of prepare.ch.edge_based, see #1922 and docs/core/profiles.md"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Use profiles_ch instead of prepare.chWeighting, prepare.chWeightings or prepare.ch.weightings, see #1922 and docs/core/profiles.md"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Use prepare.ch.threads instead of prepare.threads"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->chProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public load(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/CHConfig;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/RoutingCHGraph;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/graphhopper/routing/ch/c;

    invoke-direct {v1, p1, v0}, Lcom/graphhopper/routing/ch/c;-><init>(Lcom/graphhopper/storage/BaseGraph;Ljava/util/Map;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->preparationThreads:I

    invoke-static {p1, p0}, Lcom/graphhopper/util/GHUtility;->runConcurrently(Ljava/util/stream/Stream;I)V

    return-object v0
.end method

.method public prepare(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/StorableProperties;Ljava/util/List;Z)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/storage/StorableProperties;",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/CHConfig;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;",
            ">;"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->LOGGER:Lnc/b;

    const-string p1, "There are no CHs to prepare"

    invoke-interface {p0, p1}, Lnc/b;->k(Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    sget-object v0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->LOGGER:Lnc/b;

    const-string v1, "Creating CH preparations, {}"

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/graphhopper/storage/CHConfig;

    sget-object v2, Lcom/graphhopper/routing/ch/CHPreparationHandler;->LOGGER:Lnc/b;

    add-int/lit8 v8, v1, 0x1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3}, Lcom/graphhopper/storage/CHConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/graphhopper/storage/CHConfig;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Setting up CH preparation for profile \'"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' "

    const-string v4, " ... ("

    invoke-static {v9, v1, v6, v4, v7}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lnc/b;->k(Ljava/lang/String;)V

    new-instance v1, Lcom/graphhopper/routing/ch/b;

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/graphhopper/routing/ch/b;-><init>(Lcom/graphhopper/routing/ch/CHPreparationHandler;Lcom/graphhopper/storage/CHConfig;Lcom/graphhopper/storage/BaseGraph;Ljava/util/Map;ZLcom/graphhopper/storage/StorableProperties;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v8

    goto :goto_0

    :cond_1
    move-object v2, p0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    iget p1, v2, Lcom/graphhopper/routing/ch/CHPreparationHandler;->preparationThreads:I

    invoke-static {p0, p1}, Lcom/graphhopper/util/GHUtility;->runConcurrently(Ljava/util/stream/Stream;I)V

    sget-object p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->LOGGER:Lnc/b;

    const-string p1, "Finished CH preparation, {}"

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5
.end method

.method public setCHProfiles(Ljava/util/Collection;)Lcom/graphhopper/routing/ch/CHPreparationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/graphhopper/config/CHProfile;",
            ">;)",
            "Lcom/graphhopper/routing/ch/CHPreparationHandler;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->chProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->chProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs setCHProfiles([Lcom/graphhopper/config/CHProfile;)Lcom/graphhopper/routing/ch/CHPreparationHandler;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->setCHProfiles(Ljava/util/Collection;)Lcom/graphhopper/routing/ch/CHPreparationHandler;

    return-object p0
.end method

.method public setPreparationThreads(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ch/CHPreparationHandler;->preparationThreads:I

    return-void
.end method
