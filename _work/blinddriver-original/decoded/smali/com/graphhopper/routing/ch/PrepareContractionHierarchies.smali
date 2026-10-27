.class public Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;,
        Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;
    }
.end annotation


# instance fields
.field private final allSW:Lcom/graphhopper/util/StopWatch;

.field private final chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

.field private final chConfig:Lcom/graphhopper/storage/CHConfig;

.field private final chStore:Lcom/graphhopper/storage/CHStorage;

.field private checkCounter:I

.field private final contractionSW:Lcom/graphhopper/util/StopWatch;

.field private final graph:Lcom/graphhopper/storage/BaseGraph;

.field private final lazyUpdateSW:Lcom/graphhopper/util/StopWatch;

.field private final logger:Lnc/b;

.field private maxLevel:I

.field private final neighborUpdateSW:Lcom/graphhopper/util/StopWatch;

.field private nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

.field private nodeOrderingProvider:Lcom/graphhopper/routing/ch/NodeOrderingProvider;

.field private final nodes:I

.field private pMap:Lcom/graphhopper/util/PMap;

.field private final params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

.field private final periodicUpdateSW:Lcom/graphhopper/util/StopWatch;

.field private prepared:Z

.field private final rand:Ljava/util/Random;

.field private sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;


# direct methods
.method private constructor <init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logger:Lnc/b;

    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x7b

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->rand:Ljava/util/Random;

    new-instance v0, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v0}, Lcom/graphhopper/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->allSW:Lcom/graphhopper/util/StopWatch;

    new-instance v0, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v0}, Lcom/graphhopper/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->periodicUpdateSW:Lcom/graphhopper/util/StopWatch;

    new-instance v0, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v0}, Lcom/graphhopper/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->lazyUpdateSW:Lcom/graphhopper/util/StopWatch;

    new-instance v0, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v0}, Lcom/graphhopper/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->neighborUpdateSW:Lcom/graphhopper/util/StopWatch;

    new-instance v0, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v0}, Lcom/graphhopper/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->contractionSW:Lcom/graphhopper/util/StopWatch;

    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->pMap:Lcom/graphhopper/util/PMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->prepared:Z

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-static {p1, p2}, Lcom/graphhopper/storage/CHStorage;->fromGraph(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;)Lcom/graphhopper/storage/CHStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chStore:Lcom/graphhopper/storage/CHStorage;

    new-instance v1, Lcom/graphhopper/storage/CHStorageBuilder;

    invoke-direct {v1, v0}, Lcom/graphhopper/storage/CHStorageBuilder;-><init>(Lcom/graphhopper/storage/CHStorage;)V

    iput-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    iput-object p2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chConfig:Lcom/graphhopper/storage/CHConfig;

    invoke-virtual {p2}, Lcom/graphhopper/storage/CHConfig;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->forTraversalMode(Lcom/graphhopper/routing/util/TraversalMode;)Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v0

    iput v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodes:I

    invoke-virtual {p2}, Lcom/graphhopper/storage/CHConfig;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "For edge-based CH you need a turn cost storage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "BaseGraph must be frozen before creating CHs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private _close()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/NodeContractor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    return-void
.end method

.method private calculatePriority(I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->isContracted(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/ch/NodeContractor;->calculatePriority(I)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Priority should only be calculated for not yet contracted nodes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private contractNode(II)Lcom/carrotsearch/hppc/z;
    .locals 1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->isContracted(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->contractionSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/storage/CHStorageBuilder;->setLevel(II)V

    iget-object p2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {p2, p1}, Lcom/graphhopper/routing/ch/NodeContractor;->contractNode(I)Lcom/carrotsearch/hppc/z;

    move-result-object p1

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->contractionSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {p0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Node "

    const-string v0, " was contracted already"

    invoke-static {p1, p2, v0}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private contractNodesUsingFixedNodeOrdering()V
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeOrderingProvider:Lcom/graphhopper/routing/ch/NodeOrderingProvider;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/NodeOrderingProvider;->getNumNodes()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getLogMessagesPercentage()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    int-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v2}, Lcom/graphhopper/util/StopWatch;-><init>()V

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->stopIfInterrupted()V

    iget-object v4, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeOrderingProvider:Lcom/graphhopper/routing/ch/NodeOrderingProvider;

    invoke-interface {v4, v3}, Lcom/graphhopper/routing/ch/NodeOrderingProvider;->getNodeIdForLevel(I)I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->contractNode(II)Lcom/carrotsearch/hppc/z;

    rem-int v4, v3, v1

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    invoke-direct {p0, v3, v1, v2}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logFixedNodeOrderingStats(IILcom/graphhopper/util/StopWatch;)V

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/NodeContractor;->finishContraction()V

    return-void
.end method

.method private contractNodesUsingHeuristicNodeOrdering()V
    .locals 24

    move-object/from16 v0, p0

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    iget-object v2, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logger:Lnc/b;

    iget v3, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Building initial queue of nodes to be contracted: {} nodes, {}"

    invoke-interface {v2, v5, v3, v4}, Lnc/b;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->updatePrioritiesOfRemainingNodes()V

    iget-object v2, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logger:Lnc/b;

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Finished building queue, took: {}s, {}"

    invoke-interface {v2, v4, v1, v3}, Lnc/b;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v1}, Lcom/graphhopper/coll/MinHeapWithUpdate;->size()I

    move-result v1

    const/4 v2, 0x0

    iput v2, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->checkCounter:I

    iget-object v3, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v3}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getLogMessagesPercentage()I

    move-result v3

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    if-nez v3, :cond_0

    move-wide v10, v6

    goto :goto_0

    :cond_0
    int-to-double v10, v1

    iget-object v3, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v3}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getLogMessagesPercentage()I

    move-result v3

    int-to-double v12, v3

    div-double/2addr v12, v8

    mul-double/2addr v12, v10

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    :goto_0
    iget-object v3, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v3}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getPeriodicUpdatesPercentage()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    int-to-double v6, v1

    iget-object v3, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v3}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getPeriodicUpdatesPercentage()I

    move-result v3

    int-to-double v12, v3

    div-double/2addr v12, v8

    mul-double/2addr v12, v6

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    :goto_1
    int-to-double v3, v1

    iget-object v5, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v5}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getLastNodesLazyUpdatePercentage()I

    move-result v5

    int-to-double v12, v5

    div-double/2addr v12, v8

    mul-double/2addr v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    iget-object v5, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v5}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getNodesContractedPercentage()I

    move-result v5

    const/16 v14, 0x64

    rsub-int/lit8 v5, v5, 0x64

    move-wide/from16 v16, v3

    int-to-double v2, v5

    div-double/2addr v2, v8

    mul-double v2, v2, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    iget-object v4, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v4}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getNeighborUpdatePercentage()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    move-wide/from16 v20, v8

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    :goto_3
    iget-object v8, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v8}, Lcom/graphhopper/coll/MinHeapWithUpdate;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->stopIfInterrupted()V

    iget v8, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->checkCounter:I

    const-wide/16 v22, 0x0

    if-lez v8, :cond_3

    int-to-long v8, v8

    rem-long/2addr v8, v6

    cmp-long v8, v8, v22

    if-nez v8, :cond_3

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->updatePrioritiesOfRemainingNodes()V

    add-int/lit8 v18, v18, 0x1

    iget-object v8, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v8}, Lcom/graphhopper/coll/MinHeapWithUpdate;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    move/from16 v8, v18

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot prepare as no unprepared nodes where found. Called preparation twice?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4
    iget v9, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->checkCounter:I

    int-to-long v14, v9

    rem-long/2addr v14, v10

    cmp-long v9, v14, v22

    if-nez v9, :cond_5

    invoke-direct {v0, v8}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logHeuristicStats(I)V

    :cond_5
    iget v9, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->checkCounter:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->checkCounter:I

    iget-object v9, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v9}, Lcom/graphhopper/coll/MinHeapWithUpdate;->poll()I

    move-result v9

    iget-object v14, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v14}, Lcom/graphhopper/coll/MinHeapWithUpdate;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    iget-object v14, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v14}, Lcom/graphhopper/coll/MinHeapWithUpdate;->size()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v14, v12

    if-gez v14, :cond_8

    iget-object v14, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->lazyUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v14}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    invoke-direct {v0, v9}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->calculatePriority(I)F

    move-result v14

    iget-object v15, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v15}, Lcom/graphhopper/coll/MinHeapWithUpdate;->peekValue()F

    move-result v15

    cmpl-float v15, v14, v15

    if-lez v15, :cond_7

    iget-object v15, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v15, v9, v14}, Lcom/graphhopper/coll/MinHeapWithUpdate;->push(IF)V

    iget-object v9, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->lazyUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v9}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    :cond_6
    move/from16 v18, v8

    const/16 v14, 0x64

    goto :goto_3

    :cond_7
    iget-object v14, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->lazyUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v14}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    :cond_8
    invoke-direct {v0, v9, v5}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->contractNode(II)Lcom/carrotsearch/hppc/z;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    iget-object v14, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v14}, Lcom/graphhopper/coll/MinHeapWithUpdate;->size()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v14, v2

    if-gez v14, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v14, 0x0

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ln5/a;

    move-wide/from16 v22, v2

    if-eqz v4, :cond_b

    iget-object v2, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v2}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getMaxNeighborUpdates()I

    move-result v2

    if-ltz v2, :cond_a

    iget-object v2, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v2}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getMaxNeighborUpdates()I

    move-result v2

    if-ge v14, v2, :cond_b

    :cond_a
    iget-object v2, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->rand:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v3, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v3}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getNeighborUpdatePercentage()I

    move-result v3

    if-ge v2, v3, :cond_b

    add-int/lit8 v14, v14, 0x1

    iget-object v2, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->neighborUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    iget v2, v15, Ln5/a;->b:I

    invoke-direct {v0, v2}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->calculatePriority(I)F

    move-result v2

    iget-object v3, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    iget v15, v15, Ln5/a;->b:I

    invoke-virtual {v3, v15, v2}, Lcom/graphhopper/coll/MinHeapWithUpdate;->update(IF)V

    iget-object v2, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->neighborUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    :cond_b
    move-wide/from16 v2, v22

    goto :goto_5

    :cond_c
    move/from16 v8, v18

    :goto_6
    iget-object v2, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {v2}, Lcom/graphhopper/routing/ch/NodeContractor;->finishContraction()V

    invoke-direct {v0, v8}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logHeuristicStats(I)V

    iget-object v2, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logger:Lnc/b;

    iget-object v3, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {v3}, Lcom/graphhopper/routing/ch/NodeContractor;->getAddedShortcutsCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v1

    invoke-static {v4, v5}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chConfig:Lcom/graphhopper/storage/CHConfig;

    invoke-virtual {v4}, Lcom/graphhopper/storage/CHConfig;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v5}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getPeriodicUpdatesPercentage()I

    move-result v5

    iget-object v6, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v6}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getLastNodesLazyUpdatePercentage()I

    move-result v6

    iget-object v7, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    invoke-virtual {v7}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getNeighborUpdatePercentage()I

    move-result v7

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->getTimesAsString()Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->checkCounter:I

    int-to-double v9, v9

    div-double v9, v9, v16

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v11

    mul-double v9, v9, v20

    double-to-int v9, v9

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v10

    const-string v11, "new shortcuts: "

    const-string v12, ", initSize:"

    const-string v13, ", "

    invoke-static {v11, v3, v12, v1, v13}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", periodic:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lazy:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", neighbor:"

    invoke-static {v1, v6, v3, v7, v13}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lazy-overhead: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lnc/b;->k(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->_close()V

    return-void
.end method

.method public static fromGraph(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;)Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;)V

    return-object v0
.end method

.method private getTimesAsString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->allSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->getCurrentSeconds()F

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->periodicUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getCurrentSeconds()F

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->lazyUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->getCurrentSeconds()F

    move-result v2

    iget-object v3, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->neighborUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v3}, Lcom/graphhopper/util/StopWatch;->getCurrentSeconds()F

    move-result v3

    iget-object v4, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->contractionSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v4}, Lcom/graphhopper/util/StopWatch;->getCurrentSeconds()F

    move-result v4

    add-float v5, v1, v2

    add-float/2addr v5, v3

    add-float/2addr v5, v4

    sub-float v5, v0, v5

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/NodeContractor;->getDijkstraSeconds()F

    move-result p0

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    div-float/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    filled-new-array/range {v7 .. v13}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "t(total): %6.2f,  t(period): %6.2f, t(lazy): %6.2f, t(neighbor): %6.2f, t(contr): %6.2f, t(other) : %6.2f, dijkstra-ratio: %6.2f%%"

    invoke-static {v6, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initFromGraph()V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logger:Lnc/b;

    const-string v1, "Creating CH prepare graph, {}"

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chConfig:Lcom/graphhopper/storage/CHConfig;

    invoke-virtual {v0}, Lcom/graphhopper/storage/CHConfig;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->graph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chConfig:Lcom/graphhopper/storage/CHConfig;

    invoke-virtual {v1}, Lcom/graphhopper/storage/CHConfig;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->buildTurnCostFunctionFromTurnCostStorage(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edgeBased(IILcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;)Lcom/graphhopper/routing/ch/CHPreparationGraph;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;

    iget-object v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    iget-object v3, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->pMap:Lcom/graphhopper/util/PMap;

    invoke-direct {v1, v0, v2, v3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;-><init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;Lcom/graphhopper/storage/CHStorageBuilder;Lcom/graphhopper/util/PMap;)V

    iput-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "For edge-based CH you need a turn cost storage"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v1

    invoke-static {v0, v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->nodeBased(II)Lcom/graphhopper/routing/ch/CHPreparationGraph;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;

    iget-object v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    iget-object v3, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->pMap:Lcom/graphhopper/util/PMap;

    invoke-direct {v1, v0, v2, v3}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;-><init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;Lcom/graphhopper/storage/CHStorageBuilder;Lcom/graphhopper/util/PMap;)V

    iput-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    :goto_0
    iget v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodes:I

    iput v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->maxLevel:I

    new-instance v1, Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getNodes()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/graphhopper/coll/MinHeapWithUpdate;-><init>(I)V

    iput-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logger:Lnc/b;

    const-string v2, "Building CH prepare graph, {}"

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v1}, Lcom/graphhopper/util/StopWatch;-><init>()V

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->graph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v3, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chConfig:Lcom/graphhopper/storage/CHConfig;

    invoke-virtual {v3}, Lcom/graphhopper/storage/CHConfig;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->buildFromGraph(Lcom/graphhopper/routing/ch/CHPreparationGraph;Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logger:Lnc/b;

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Finished building CH prepare graph, took: {}s, {}"

    invoke-interface {v0, v3, v1, v2}, Lnc/b;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/NodeContractor;->initFromGraph()V

    return-void
.end method

.method private isContracted(I)Z
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chStore:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/CHStorage;->toNodePointer(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getLevel(J)I

    move-result p1

    iget p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->maxLevel:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEdgeBased()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chConfig:Lcom/graphhopper/storage/CHConfig;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHConfig;->isEdgeBased()Z

    move-result p0

    return p0
.end method

.method private logFinalGraphStats()V
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logger:Lnc/b;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chStore:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v1}, Lcom/graphhopper/storage/CHStorage;->getNumShortcutsExceedingWeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "shortcuts that exceed maximum weight: {}"

    invoke-interface {v0, v1, v2}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logger:Lnc/b;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->allSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodes:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chStore:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHStorage;->getShortcuts()I

    move-result p0

    int-to-long v4, p0

    invoke-static {v4, v5}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "took: {}s, graph now - num edges: {}, num nodes: {}, num shortcuts: {}"

    invoke-interface {v0, v1, p0}, Lnc/b;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logFixedNodeOrderingStats(IILcom/graphhopper/util/StopWatch;)V
    .locals 11

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logger:Lnc/b;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v4

    iget v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodes:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v5

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    int-to-double v6, p1

    mul-double/2addr v6, v2

    iget v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodes:I

    int-to-double v2, v2

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-object v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {v2}, Lcom/graphhopper/routing/ch/NodeContractor;->getAddedShortcutsCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v7

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-double p1, p2

    invoke-virtual {p3}, Lcom/graphhopper/util/StopWatch;->getMillis()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr p1, v2

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/NodeContractor;->getStatisticsString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "nodes: %10s / %10s (%6.2f%%), shortcuts: %10s, speed = %6.2f nodes/ms, %s, %s"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lnc/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method private logHeuristicStats(I)V
    .locals 11

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logger:Lnc/b;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->isEdgeBased()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "edge"

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    const-string v2, "node"

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v2}, Lcom/graphhopper/coll/MinHeapWithUpdate;->size()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {v2}, Lcom/graphhopper/routing/ch/NodeContractor;->getAddedShortcutsCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->checkCounter:I

    int-to-long v7, p1

    invoke-static {v7, v8}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->getTimesAsString()Ljava/lang/String;

    move-result-object v8

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/NodeContractor;->getStatisticsString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s, nodes: %10s, shortcuts: %10s, updates: %2d, checked-nodes: %10s, %s, %s, %s"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lnc/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method private runGraphContraction()V
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodes:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->setMaxLevelOnAllNodes()V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeOrderingProvider:Lcom/graphhopper/routing/ch/NodeOrderingProvider;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->contractNodesUsingFixedNodeOrdering()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->contractNodesUsingHeuristicNodeOrdering()V

    return-void
.end method

.method private setMaxLevelOnAllNodes()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    iget p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->maxLevel:I

    invoke-virtual {v0, p0}, Lcom/graphhopper/storage/CHStorageBuilder;->setLevelForAllNodes(I)V

    return-void
.end method

.method private stopIfInterrupted()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Thread was interrupted"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updatePrioritiesOfRemainingNodes()V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->periodicUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v0}, Lcom/graphhopper/coll/MinHeapWithUpdate;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodes:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->isContracted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->calculatePriority(I)F

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->sortedNodes:Lcom/graphhopper/coll/MinHeapWithUpdate;

    invoke-virtual {v2, v0, v1}, Lcom/graphhopper/coll/MinHeapWithUpdate;->push(IF)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->periodicUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {p0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chStore:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHStorage;->close()V

    return-void
.end method

.method public doWork()Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;
    .locals 15

    iget-boolean v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->prepared:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->prepared:Z

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chStore:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v0}, Lcom/graphhopper/storage/CHStorage;->getShortcuts()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->allSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->initFromGraph()V

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->runGraphContraction()V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->allSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->logFinalGraphStats()V

    new-instance v1, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;

    iget-object v2, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chConfig:Lcom/graphhopper/storage/CHConfig;

    iget-object v3, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chStore:Lcom/graphhopper/storage/CHStorage;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeContractor:Lcom/graphhopper/routing/ch/NodeContractor;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/NodeContractor;->getAddedShortcutsCount()J

    move-result-wide v4

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->lazyUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->getCurrentSeconds()F

    move-result v0

    float-to-double v6, v0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->periodicUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->getCurrentSeconds()F

    move-result v0

    float-to-double v8, v0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->neighborUpdateSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->getCurrentSeconds()F

    move-result v0

    float-to-double v10, v0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->allSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {p0}, Lcom/graphhopper/util/StopWatch;->getMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v14}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Result;-><init>(Lcom/graphhopper/storage/CHConfig;Lcom/graphhopper/storage/CHStorage;JDDDJI)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Given CHStore already contains shortcuts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Given BaseGraph has not been frozen yet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call doWork only once!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chStore:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHStorage;->flush()V

    return-void
.end method

.method public getCHConfig()Lcom/graphhopper/storage/CHConfig;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chConfig:Lcom/graphhopper/storage/CHConfig;

    return-object p0
.end method

.method public getTotalPrepareTime()J
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->allSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {p0}, Lcom/graphhopper/util/StopWatch;->getMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPrepared()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->prepared:Z

    return p0
.end method

.method public setParams(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;
    .locals 3

    iput-object p1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->pMap:Lcom/graphhopper/util/PMap;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    const-string v1, "prepare.ch.updates.periodic"

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getPeriodicUpdatesPercentage()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setPeriodicUpdatesPercentage(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    const-string v1, "prepare.ch.updates.lazy"

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getLastNodesLazyUpdatePercentage()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setLastNodesLazyUpdatePercentage(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    const-string v1, "prepare.ch.updates.neighbor"

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getNeighborUpdatePercentage()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setNeighborUpdatePercentage(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    const-string v1, "prepare.ch.updates.neighbor_max"

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getMaxNeighborUpdates()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setMaxNeighborUpdates(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    const-string v1, "prepare.ch.contracted_nodes"

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getNodesContractedPercentage()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setNodesContractedPercentage(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->params:Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    const-string v1, "prepare.ch.log_messages"

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->getLogMessagesPercentage()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setLogMessagesPercentage(I)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->chConfig:Lcom/graphhopper/storage/CHConfig;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHConfig;->isEdgeBased()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "prepare|dijkstrabi|edge|ch"

    return-object p0

    :cond_0
    const-string p0, "prepare|dijkstrabi|ch"

    return-object p0
.end method

.method public useFixedNodeOrdering(Lcom/graphhopper/routing/ch/NodeOrderingProvider;)Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;
    .locals 4

    invoke-interface {p1}, Lcom/graphhopper/routing/ch/NodeOrderingProvider;->getNumNodes()I

    move-result v0

    iget v1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodes:I

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodeOrderingProvider:Lcom/graphhopper/routing/ch/NodeOrderingProvider;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/graphhopper/routing/ch/NodeOrderingProvider;->getNumNodes()I

    move-result p1

    iget p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;->nodes:I

    const-string v1, ") must be equal to number of nodes in graph ("

    const-string v2, ")."

    const-string v3, "contraction order size ("

    invoke-static {v3, p1, v1, p0, v2}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
