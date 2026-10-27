.class public Lcom/graphhopper/routing/DijkstraOneToMany;
.super Lcom/graphhopper/routing/AbstractRoutingAlgorithm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;
    }
.end annotation


# static fields
.field private static final EMPTY_PARENT:I = -0x1

.field private static final NOT_FOUND:I = -0x1


# instance fields
.field private final changedNodes:Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;

.field private currNode:I

.field private doClear:Z

.field private edgeIds:[I

.field private endNode:I

.field private fromNode:I

.field private heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

.field private parents:[I

.field private to:I

.field private visitedNodes:I

.field private weightLimit:D

.field protected weights:[D


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->doClear:Z

    const-wide p2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weightLimit:D

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->parents:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->edgeIds:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weights:[D

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    new-instance p1, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    const/16 p2, 0x3e8

    invoke-direct {p1, p2}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    new-instance p1, Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;

    invoke-direct {p1}, Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->changedNodes:Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;

    return-void
.end method

.method private finished()Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    iget p0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->to:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public calcPath(II)Lcom/graphhopper/routing/Path;
    .locals 4

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->setupFinishTime()V

    iput p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->fromNode:I

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/DijkstraOneToMany;->findEndNode(II)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->endNode:I

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/graphhopper/routing/DijkstraOneToMany;->isWeightLimitExceeded()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/graphhopper/routing/Path;

    iget-object p2, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->graph:Lcom/graphhopper/storage/Graph;

    invoke-direct {p1, p2}, Lcom/graphhopper/routing/Path;-><init>(Lcom/graphhopper/storage/Graph;)V

    iget p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->endNode:I

    :goto_0
    iget-object v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->edgeIds:[I

    aget v0, v0, p2

    invoke-static {v0}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->getEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p2

    invoke-static {p2}, Lcom/graphhopper/util/ArrayUtil;->reverse(Lcom/carrotsearch/hppc/x;)Lcom/carrotsearch/hppc/x;

    iget p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->fromNode:I

    invoke-virtual {p1, p2}, Lcom/graphhopper/routing/Path;->setFromNode(I)Lcom/graphhopper/routing/Path;

    iget p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->endNode:I

    invoke-virtual {p1, p2}, Lcom/graphhopper/routing/Path;->setEndNode(I)Lcom/graphhopper/routing/Path;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/graphhopper/routing/Path;->setFound(Z)Lcom/graphhopper/routing/Path;

    iget-object p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weights:[D

    iget p0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->endNode:I

    aget-wide v0, p2, p0

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/routing/Path;->setWeight(D)Lcom/graphhopper/routing/Path;

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v1, v0, p2}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v1

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/graphhopper/routing/Path;->addDistance(D)Lcom/graphhopper/routing/Path;

    iget-object v2, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/routing/Path;->addTime(J)Lcom/graphhopper/routing/Path;

    invoke-virtual {p1, v0}, Lcom/graphhopper/routing/Path;->addEdge(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->parents:[I

    aget p2, v0, p2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->createEmptyPath()Lcom/graphhopper/routing/Path;

    move-result-object p1

    iget p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->fromNode:I

    invoke-virtual {p1, p2}, Lcom/graphhopper/routing/Path;->setFromNode(I)Lcom/graphhopper/routing/Path;

    iget p0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->endNode:I

    invoke-virtual {p1, p0}, Lcom/graphhopper/routing/Path;->setEndNode(I)Lcom/graphhopper/routing/Path;

    return-object p1
.end method

.method public clear()Lcom/graphhopper/routing/DijkstraOneToMany;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->doClear:Z

    return-object p0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weights:[D

    iput-object v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->parents:[I

    iput-object v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->edgeIds:[I

    iput-object v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    return-void
.end method

.method public findEndNode(II)I
    .locals 11

    iget-object v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weights:[D

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    iput p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->to:I

    iget-boolean v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->doClear:Z

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->doClear:Z

    iget-object p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->changedNodes:Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p2

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->changedNodes:Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;

    invoke-virtual {v1, v0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v1

    iget-object v6, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weights:[D

    aput-wide v4, v6, v1

    iget-object v6, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->parents:[I

    aput v3, v6, v1

    iget-object v6, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->edgeIds:[I

    aput v3, v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p2}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->clear()V

    iget-object p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->changedNodes:Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;

    iput v2, p2, Lcom/carrotsearch/hppc/x;->elementsCount:I

    iput p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    iget-object p1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {p1}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weights:[D

    iget p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    const-wide/16 v0, 0x0

    aput-wide v0, p1, p2

    iget-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->changedNodes:Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;

    invoke-virtual {p1, p2}, Lcom/carrotsearch/hppc/x;->add(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->parents:[I

    aget p1, p1, p2

    if-eq p1, v3, :cond_3

    aget-wide v6, v0, p2

    iget p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    aget-wide v0, v0, p1

    cmpg-double p1, v6, v0

    if-gtz p1, :cond_3

    return p2

    :cond_3
    iget-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p1}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->isMaxVisitedNodesExceeded()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->isTimeoutExceeded()Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p1}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->poll()I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    :cond_5
    :goto_1
    iput v2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->visitedNodes:I

    invoke-direct {p0}, Lcom/graphhopper/routing/DijkstraOneToMany;->finished()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p1}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean p2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->doClear:Z

    :cond_6
    iget p0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    return p0

    :cond_7
    :goto_2
    iget p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->visitedNodes:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->visitedNodes:I

    iget-object p1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    iget v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->edgeIds:[I

    aget v1, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->accept(Lcom/graphhopper/util/EdgeIteratorState;I)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static {v6, p1, v2, v1}, Lcom/graphhopper/util/GHUtility;->calcWeightWithTurnWeight(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)D

    move-result-wide v6

    iget-object v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weights:[D

    iget v8, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    aget-wide v8, v1, v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weights:[D

    aget-wide v8, v1, v0

    cmpl-double v10, v8, v4

    if-nez v10, :cond_b

    iget-object v8, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->parents:[I

    iget v9, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    aput v9, v8, v0

    aput-wide v6, v1, v0

    iget-object v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v1, v6, v7, v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->insert(DI)V

    iget-object v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->changedNodes:Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;

    invoke-virtual {v1, v0}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->edgeIds:[I

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v6

    aput v6, v1, v0

    goto :goto_3

    :cond_b
    cmpl-double v8, v8, v6

    if-lez v8, :cond_8

    iget-object v8, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->parents:[I

    iget v9, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    aput v9, v8, v0

    aput-wide v6, v1, v0

    iget-object v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v1, v6, v7, v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->update(DI)V

    iget-object v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->changedNodes:Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;

    invoke-virtual {v1, v0}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->edgeIds:[I

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v6

    aput v6, v1, v0

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p1}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->isMaxVisitedNodesExceeded()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/graphhopper/routing/DijkstraOneToMany;->isWeightLimitExceeded()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->isTimeoutExceeded()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    iget-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p1}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->peekElement()I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    invoke-direct {p0}, Lcom/graphhopper/routing/DijkstraOneToMany;->finished()Z

    move-result p1

    if-eqz p1, :cond_e

    iget p0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    return p0

    :cond_e
    iget-object p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p1}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->poll()I

    goto/16 :goto_2

    :cond_f
    :goto_4
    return v3
.end method

.method public getMemoryUsageAsString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weights:[D

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x10

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->changedNodes:Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;

    invoke-virtual {v2}, Lcom/graphhopper/routing/DijkstraOneToMany$IntArrayListWithCap;->getCapacity()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-object p0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->getCapacity()J

    move-result-wide v0

    const-wide/16 v4, 0x8

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "MB"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "dijkstra_one_to_many"

    return-object p0
.end method

.method public getVisitedNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->visitedNodes:I

    return p0
.end method

.method public getWeight(I)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weights:[D

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public isWeightLimitExceeded()Z
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weights:[D

    iget v1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->currNode:I

    aget-wide v0, v0, v1

    iget-wide v2, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weightLimit:D

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setWeightLimit(D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/DijkstraOneToMany;->weightLimit:D

    return-void
.end method
