.class public Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;
.super Lcom/graphhopper/routing/AbstractRoutingAlgorithm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;,
        Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;
    }
.end annotation


# instance fields
.field private exploreType:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

.field private final fromMap:Lcom/carrotsearch/hppc/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/n0;"
        }
    .end annotation
.end field

.field private limit:D

.field private final queueByWeighting:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;",
            ">;"
        }
    .end annotation
.end field

.field private queueByZ:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;",
            ">;"
        }
    .end annotation
.end field

.field private final reverseFlow:Z

.field private visitedNodes:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;ZLcom/graphhopper/routing/util/TraversalMode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    iput-wide p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->limit:D

    sget-object p1, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->TIME:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->exploreType:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    new-instance p1, Ljava/util/PriorityQueue;

    new-instance p2, Lcom/graphhopper/isochrone/algorithm/e;

    const/4 p4, 0x2

    invoke-direct {p2, p4}, Lcom/graphhopper/isochrone/algorithm/e;-><init>(I)V

    invoke-static {p2}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p2

    const/16 p4, 0x3e8

    invoke-direct {p1, p4, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByWeighting:Ljava/util/PriorityQueue;

    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1, p4}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    new-instance p1, Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-direct {p1, p4}, Lcom/graphhopper/coll/GHIntObjectHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->fromMap:Lcom/carrotsearch/hppc/n0;

    iput-boolean p3, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->reverseFlow:Z

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D
    .locals 2

    invoke-static {p0}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->lambda$new$0(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D
    .locals 2

    invoke-static {p0}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->lambda$setDistanceLimit$2(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic c(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D
    .locals 2

    invoke-static {p0}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->lambda$setWeightLimit$3(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)J
    .locals 2

    invoke-static {p0}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->lambda$setTimeLimit$1(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getExploreValue(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->exploreType:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    sget-object v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->TIME:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    if-ne p0, v0, :cond_0

    iget-wide p0, p1, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->time:J

    long-to-double p0, p0

    return-wide p0

    :cond_0
    sget-object v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->WEIGHT:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    if-ne p0, v0, :cond_1

    iget-wide p0, p1, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->weight:D

    return-wide p0

    :cond_1
    iget-wide p0, p1, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->distance:D

    return-wide p0
.end method

.method private static synthetic lambda$new$0(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->weight:D

    return-wide v0
.end method

.method private static synthetic lambda$setDistanceLimit$2(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->distance:D

    return-wide v0
.end method

.method private static synthetic lambda$setTimeLimit$1(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->time:J

    return-wide v0
.end method

.method private static synthetic lambda$setWeightLimit$3(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->weight:D

    return-wide v0
.end method


# virtual methods
.method public calcPath(II)Lcom/graphhopper/routing/Path;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call search instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finished()Z
    .locals 6

    :goto_0
    iget-object v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    iget-boolean v0, v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->deleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    invoke-direct {p0, v0}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->getExploreValue(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->limit:D

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getIsochroneEdges(D)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/ArrayList<",
            "Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->fromMap:Lcom/carrotsearch/hppc/n0;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/n0;->values()Lcom/carrotsearch/hppc/j1;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/j;

    .line 4
    iget-object v3, v2, Ln5/j;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    iget-object v4, v4, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->parent:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    .line 5
    invoke-direct {p0, v3}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->getExploreValue(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D

    move-result-wide v3

    cmpl-double v3, v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget-object v6, v2, Ln5/j;->b:Ljava/lang/Object;

    check-cast v6, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    iget-object v6, v6, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->parent:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    invoke-direct {p0, v6}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->getExploreValue(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D

    move-result-wide v6

    cmpl-double v6, v6, p1

    if-lez v6, :cond_2

    move v4, v5

    :cond_2
    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, v2, Ln5/j;->b:Ljava/lang/Object;

    check-cast v2, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getIsochroneEdges()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->limit:D

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->getIsochroneEdges(D)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "reachability"

    return-object p0
.end method

.method public getVisitedNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->visitedNodes:I

    return p0
.end method

.method public search(ILjava/util/function/Consumer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->checkAlreadyRun()V

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;-><init>(IIDJDLcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)V

    iget-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByWeighting:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    sget-object v2, Lcom/graphhopper/routing/util/TraversalMode;->NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->fromMap:Lcom/carrotsearch/hppc/n0;

    invoke-virtual {p1, v1, v0}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->finished()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByWeighting:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    iget-boolean p1, v9, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->deleted:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v9}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->getExploreValue(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->limit:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_2

    invoke-interface {p2, v9}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, v9, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->deleted:Z

    iget v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->visitedNodes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->visitedNodes:I

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    iget v1, v9, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->node:I

    invoke-interface {v0, v1}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->edge:I

    invoke-virtual {p0, v10, v0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->accept(Lcom/graphhopper/util/EdgeIteratorState;I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-boolean v1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->reverseFlow:Z

    iget v2, v9, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->edge:I

    invoke-static {v0, v10, v1, v2}, Lcom/graphhopper/util/GHUtility;->calcWeightWithTurnWeight(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)D

    move-result-wide v0

    iget-wide v2, v9, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->weight:D

    add-double v3, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v10}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v0

    iget-wide v5, v9, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->distance:D

    add-double v7, v0, v5

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-boolean v1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->reverseFlow:Z

    iget v2, v9, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->edge:I

    invoke-static {v0, v10, v1, v2}, Lcom/graphhopper/util/GHUtility;->calcMillisWithTurnMillis(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)J

    move-result-wide v0

    iget-wide v5, v9, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->time:J

    add-long/2addr v5, v0

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    iget-boolean v1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->reverseFlow:Z

    invoke-virtual {v0, v10, v1}, Lcom/graphhopper/routing/util/TraversalMode;->createTraversalId(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v11

    iget-object v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->fromMap:Lcom/carrotsearch/hppc/n0;

    invoke-virtual {v0, v11}, Lcom/carrotsearch/hppc/n0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    if-nez v0, :cond_6

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    invoke-interface {v10}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    invoke-interface {v10}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v2

    invoke-direct/range {v0 .. v9}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;-><init>(IIDJDLcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)V

    iget-object v1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->fromMap:Lcom/carrotsearch/hppc/n0;

    invoke-virtual {v1, v11, v0}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByWeighting:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-wide v1, v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->weight:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    iput-boolean p1, v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->deleted:Z

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    invoke-interface {v10}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    invoke-interface {v10}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v2

    invoke-direct/range {v0 .. v9}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;-><init>(IIDJDLcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)V

    iget-object v1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->fromMap:Lcom/carrotsearch/hppc/n0;

    invoke-virtual {v1, v11, v0}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByWeighting:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public setDistanceLimit(D)V
    .locals 1

    sget-object v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->DISTANCE:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    iput-object v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->exploreType:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    iput-wide p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->limit:D

    new-instance p1, Ljava/util/PriorityQueue;

    new-instance p2, Lcom/graphhopper/isochrone/algorithm/e;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/graphhopper/isochrone/algorithm/e;-><init>(I)V

    invoke-static {p2}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p2

    const/16 v0, 0x3e8

    invoke-direct {p1, v0, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    return-void
.end method

.method public setTimeLimit(D)V
    .locals 1

    sget-object v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->TIME:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    iput-object v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->exploreType:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    iput-wide p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->limit:D

    new-instance p1, Ljava/util/PriorityQueue;

    new-instance p2, Lcom/graphhopper/isochrone/algorithm/d;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p2

    const/16 v0, 0x3e8

    invoke-direct {p1, v0, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    return-void
.end method

.method public setWeightLimit(D)V
    .locals 1

    sget-object v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->WEIGHT:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    iput-object v0, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->exploreType:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    iput-wide p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->limit:D

    new-instance p1, Ljava/util/PriorityQueue;

    new-instance p2, Lcom/graphhopper/isochrone/algorithm/e;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/graphhopper/isochrone/algorithm/e;-><init>(I)V

    invoke-static {p2}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p2

    const/16 v0, 0x3e8

    invoke-direct {p1, v0, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->queueByZ:Ljava/util/PriorityQueue;

    return-void
.end method
