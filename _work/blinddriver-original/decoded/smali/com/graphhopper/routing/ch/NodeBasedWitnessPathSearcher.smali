.class public Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final changedNodes:Lcom/carrotsearch/hppc/x;

.field private final heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

.field private ignoreNode:I

.field private final outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

.field private settledNodes:I

.field private final weights:[D


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->ignoreNode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->settledNodes:I

    invoke-virtual {p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createOutEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getNodes()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->weights:[D

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    new-instance p1, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    const/16 v0, 0x3e8

    invoke-direct {p1, v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    new-instance p1, Lcom/carrotsearch/hppc/x;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->changedNodes:Lcom/carrotsearch/hppc/x;

    return-void
.end method

.method private reset()V
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->changedNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/a;

    iget-object v2, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->weights:[D

    iget v1, v1, Ln5/a;->b:I

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v3, v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->changedNodes:Lcom/carrotsearch/hppc/x;

    const/4 v1, 0x0

    iput v1, v0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->ignoreNode:I

    iput v1, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->settledNodes:I

    return-void
.end method


# virtual methods
.method public findUpperBound(IDI)D
    .locals 11

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->settledNodes:I

    if-ge v0, p4, :cond_7

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->peekKey()F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, p2

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->weights:[D

    aget-wide v0, v0, p1

    cmpg-double v2, v0, p2

    if-gtz v2, :cond_1

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->poll()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v1, v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v2

    iget v3, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->ignoreNode:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->weights:[D

    aget-wide v3, v3, v0

    invoke-interface {v1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v5

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->weights:[D

    aget-wide v7, v3, v2

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v7, v9

    if-nez v4, :cond_5

    aput-wide v5, v3, v2

    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v3, v5, v6, v2}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->insert(DI)V

    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->changedNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v3, v2}, Lcom/carrotsearch/hppc/x;->add(I)V

    goto :goto_0

    :cond_5
    cmpg-double v4, v5, v7

    if-gez v4, :cond_2

    aput-wide v5, v3, v2

    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {v3, v5, v6, v2}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->update(DI)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->settledNodes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->settledNodes:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->weights:[D

    aget-wide p0, p0, v0

    return-wide p0

    :cond_7
    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->weights:[D

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getMemoryUsageAsString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->weights:[D

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->changedNodes:Lcom/carrotsearch/hppc/x;

    iget-object v2, v2, Lcom/carrotsearch/hppc/x;->buffer:[I

    array-length v2, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->getMemoryUsage()J

    move-result-wide v0

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

.method public getSettledNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->settledNodes:I

    return p0
.end method

.method public init(II)V
    .locals 2

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->reset()V

    iput p2, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->ignoreNode:I

    iget-object p2, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->weights:[D

    const-wide/16 v0, 0x0

    aput-wide v0, p2, p1

    iget-object p2, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->changedNodes:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p2, p1}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->heap:Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;

    invoke-virtual {p0, v0, v1, p1}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->insert(DI)V

    return-void
.end method
