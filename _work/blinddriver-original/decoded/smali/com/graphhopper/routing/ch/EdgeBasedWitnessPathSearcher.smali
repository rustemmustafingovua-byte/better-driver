.class public Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;
    }
.end annotation


# static fields
.field private static final MAX_ZERO_WEIGHT_LOOP:D = 0.001

.field private static final NO_NODE:I = -0x1


# instance fields
.field private adjNodesAndIsPathToCenters:[I

.field private centerNode:I

.field private changedEdgeKeys:Lcom/carrotsearch/hppc/x;

.field private dijkstraHeap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

.field private numPolls:I

.field private numUpdates:I

.field private origInEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

.field private outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

.field private parents:[I

.field private final prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

.field private sourceNode:I

.field private stats:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

.field private weights:[D


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createOutEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createInOrigEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->origInEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getOriginalEdges()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->initStorage(I)V

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->initCollections()V

    return-void
.end method

.method private calcTurnWeight(III)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getTurnWeight(III)D

    move-result-wide p0

    return-wide p0
.end method

.method private getAdjNode(I)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->adjNodesAndIsPathToCenters:[I

    aget p0, p0, p1

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private initCollections()V
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/x;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->changedEdgeKeys:Lcom/carrotsearch/hppc/x;

    new-instance v0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-direct {v0, v1}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->dijkstraHeap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    return-void
.end method

.method private initStorage(I)V
    .locals 3

    new-array v0, p1, [D

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->weights:[D

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->parents:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->adjNodesAndIsPathToCenters:[I

    const/4 p0, -0x2

    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private isPathToCenter(I)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->adjNodesAndIsPathToCenters:[I

    aget p0, p0, p1

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->numPolls:I

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->numUpdates:I

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->resetShortestPathTree()V

    return-void
.end method

.method private resetEntry(I)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->weights:[D

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v1, v0, p1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->parents:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->setAdjNodeAndPathToCenter(IIZ)V

    return-void
.end method

.method private resetShortestPathTree()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->changedEdgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->changedEdgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v2, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->resetEntry(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->changedEdgeKeys:Lcom/carrotsearch/hppc/x;

    iput v0, v1, Lcom/carrotsearch/hppc/x;->elementsCount:I

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->dijkstraHeap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->clear()V

    return-void
.end method

.method private setAdjNodeAndPathToCenter(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->adjNodesAndIsPathToCenters:[I

    shl-int/lit8 p2, p2, 0x1

    add-int/2addr p2, p3

    aput p2, p0, p1

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->origInEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->weights:[D

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->parents:[I

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->adjNodesAndIsPathToCenters:[I

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->changedEdgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->release()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->dijkstraHeap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    return-void
.end method

.method public finishSearch()V
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->stats:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    iget-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numPolls:J

    iget v3, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->numPolls:I

    int-to-long v4, v3

    add-long/2addr v1, v4

    iput-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numPolls:J

    iget-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->maxPolls:J

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->maxPolls:J

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->stats:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    iget-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numExplored:J

    iget-object v3, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->changedEdgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v3}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numExplored:J

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->stats:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    iget-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->maxExplored:J

    iget-object v3, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->changedEdgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v3}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->maxExplored:J

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->stats:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    iget-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numUpdates:J

    iget v3, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->numUpdates:I

    int-to-long v4, v3

    add-long/2addr v1, v4

    iput-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numUpdates:J

    iget-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->maxUpdates:J

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->maxUpdates:J

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->reset()V

    return-void
.end method

.method public initSearch(IIILcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;)V
    .locals 4

    iput-object p4, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->stats:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    iget-wide v0, p4, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numTrees:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p4, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numTrees:J

    iput p2, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->sourceNode:I

    iput p3, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->centerNode:I

    iget-object p3, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->weights:[D

    const-wide/16 v0, 0x0

    aput-wide v0, p3, p1

    iget-object p3, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->parents:[I

    const/4 p4, -0x1

    aput p4, p3, p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->setAdjNodeAndPathToCenter(IIZ)V

    iget-object p2, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->changedEdgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p2, p1}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->dijkstraHeap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p0, v0, v1, p1}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->insert(DI)V

    return-void
.end method

.method public runSearch(IIDI)D
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    iget-object v4, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->stats:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    iget-wide v5, v4, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numSearches:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numSearches:J

    iget-object v4, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->origInEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    invoke-interface {v4, v1}, Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;->next()Z

    move-result v5

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v5, :cond_3

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v5

    invoke-static {v5}, Lcom/graphhopper/util/GHUtility;->reverseEdgeKey(I)I

    move-result v5

    iget-object v6, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->weights:[D

    aget-wide v11, v6, v5

    cmpl-double v6, v11, v9

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {v0, v5, v1, v2}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->calcTurnWeight(III)D

    move-result-wide v9

    add-double/2addr v11, v9

    cmpg-double v6, v11, p3

    if-ltz v6, :cond_2

    cmpl-double v6, v11, p3

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->parents:[I

    aget v5, v6, v5

    if-ltz v5, :cond_2

    invoke-direct {v0, v5}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->isPathToCenter(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    return-wide v11

    :cond_3
    :goto_1
    iget-object v4, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->dijkstraHeap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v4}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    iget v4, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->numPolls:I

    if-ge v4, v3, :cond_f

    iget-object v4, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->weights:[D

    iget-object v5, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->dijkstraHeap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v5}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->peekElement()I

    move-result v5

    aget-wide v4, v4, v5

    cmpg-double v4, v4, p3

    if-gez v4, :cond_f

    iget-object v4, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->dijkstraHeap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v4}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->poll()I

    move-result v4

    iget v5, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->numPolls:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->numPolls:I

    invoke-direct {v0, v4}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->getAdjNode(I)I

    move-result v5

    iget-object v11, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v11, v5}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v11

    move-wide v12, v9

    :goto_2
    invoke-interface {v11}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v14

    if-eqz v14, :cond_d

    iget v14, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->sourceNode:I

    if-ne v5, v14, :cond_4

    invoke-interface {v11}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v14

    iget v15, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->sourceNode:I

    if-ne v14, v15, :cond_4

    invoke-interface {v11}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v14

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v14, v14, v16

    if-gez v14, :cond_4

    move/from16 v16, v6

    goto :goto_3

    :cond_4
    iget-object v14, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->weights:[D

    aget-wide v14, v14, v4

    move/from16 v16, v6

    invoke-interface {v11}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->calcTurnWeight(III)D

    move-result-wide v17

    add-double v14, v14, v17

    invoke-interface {v11}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v17

    add-double v14, v17, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_3
    move/from16 v6, v16

    goto :goto_2

    :cond_5
    invoke-interface {v11}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v6

    invoke-direct {v0, v4}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->isPathToCenter(I)Z

    move-result v17

    if-eqz v17, :cond_6

    move-wide/from16 v17, v7

    invoke-interface {v11}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v7

    iget v8, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->centerNode:I

    if-ne v7, v8, :cond_7

    move/from16 v7, v16

    goto :goto_4

    :cond_6
    move-wide/from16 v17, v7

    :cond_7
    const/4 v7, 0x0

    :goto_4
    iget-object v8, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->weights:[D

    aget-wide v19, v8, v6

    cmpl-double v21, v19, v9

    if-nez v21, :cond_9

    aput-wide v14, v8, v6

    iget-object v8, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->parents:[I

    aput v4, v8, v6

    invoke-interface {v11}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v8

    invoke-direct {v0, v6, v8, v7}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->setAdjNodeAndPathToCenter(IIZ)V

    iget-object v7, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->changedEdgeKeys:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v7, v6}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object v7, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->dijkstraHeap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v7, v14, v15, v6}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->insert(DI)V

    invoke-interface {v11}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v7

    if-ne v7, v1, :cond_c

    invoke-direct {v0, v4}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->isPathToCenter(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->parents:[I

    aget v7, v7, v4

    if-gez v7, :cond_c

    :cond_8
    invoke-direct {v0, v6, v1, v2}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->calcTurnWeight(III)D

    move-result-wide v6

    add-double/2addr v14, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    :goto_5
    move-wide v12, v6

    goto :goto_6

    :cond_9
    cmpg-double v8, v14, v19

    if-ltz v8, :cond_a

    cmpl-double v8, v14, v19

    if-nez v8, :cond_c

    invoke-direct {v0, v4}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->isPathToCenter(I)Z

    move-result v8

    if-nez v8, :cond_c

    :cond_a
    iget v8, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->numUpdates:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->numUpdates:I

    iget-object v8, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->weights:[D

    aput-wide v14, v8, v6

    iget-object v8, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->parents:[I

    aput v4, v8, v6

    invoke-interface {v11}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v8

    invoke-direct {v0, v6, v8, v7}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->setAdjNodeAndPathToCenter(IIZ)V

    iget-object v7, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->dijkstraHeap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v7, v14, v15, v6}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->update(DI)V

    invoke-interface {v11}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v7

    if-ne v7, v1, :cond_c

    invoke-direct {v0, v4}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->isPathToCenter(I)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->parents:[I

    aget v7, v7, v4

    if-gez v7, :cond_c

    :cond_b
    invoke-direct {v0, v6, v1, v2}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->calcTurnWeight(III)D

    move-result-wide v6

    add-double/2addr v14, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    goto :goto_5

    :cond_c
    :goto_6
    move/from16 v6, v16

    move-wide/from16 v7, v17

    goto/16 :goto_2

    :cond_d
    move-wide/from16 v17, v7

    cmpg-double v4, v12, p3

    if-gtz v4, :cond_e

    return-wide v12

    :cond_e
    move-wide/from16 v7, v17

    goto/16 :goto_1

    :cond_f
    move-wide/from16 v17, v7

    iget v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->numPolls:I

    if-ne v1, v3, :cond_10

    iget-object v0, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->stats:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    iget-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numCapped:J

    add-long v1, v1, v17

    iput-wide v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numCapped:J

    :cond_10
    return-wide v9
.end method
