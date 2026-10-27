.class public Lcom/graphhopper/routing/ch/BridgePathFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;
    }
.end annotation


# instance fields
.field private final graph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

.field private final map:Lcom/carrotsearch/hppc/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation
.end field

.field private final origOutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

.field private final outExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/graphhopper/routing/ch/PrepareCHEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/BridgePathFinder;->graph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createOutEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/BridgePathFinder;->outExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createOutOrigEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/ch/BridgePathFinder;->origOutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/BridgePathFinder;->queue:Ljava/util/PriorityQueue;

    new-instance p1, Lcom/carrotsearch/hppc/p0;

    invoke-direct {p1}, Lcom/carrotsearch/hppc/p0;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/BridgePathFinder;->map:Lcom/carrotsearch/hppc/o0;

    return-void
.end method


# virtual methods
.method public find(III)Lcom/carrotsearch/hppc/o0;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    iget-object v2, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->map:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v2}, Lcom/carrotsearch/hppc/o0;->clear()V

    new-instance v2, Lcom/carrotsearch/hppc/n0;

    new-instance v3, Lcom/carrotsearch/hppc/o;

    const-wide/16 v4, 0x7b

    invoke-direct {v3, v4, v5}, Lcom/carrotsearch/hppc/o;-><init>(J)V

    const/16 v4, 0x10

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/carrotsearch/hppc/n0;-><init>(IDLcom/carrotsearch/hppc/u;)V

    new-instance v7, Lcom/graphhopper/routing/ch/PrepareCHEntry;

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v8, -0x1

    move/from16 v10, p1

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v14}, Lcom/graphhopper/routing/ch/PrepareCHEntry;-><init>(IIIIDI)V

    iget-object v3, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->map:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v3, v9, v7}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget-object v4, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->outExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iget v5, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->adjNode:I

    invoke-interface {v4, v5}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v5

    if-ne v5, v1, :cond_4

    iget-wide v5, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    iget-object v7, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->graph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    iget v8, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->incEdgeKey:I

    iget v9, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->adjNode:I

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getTurnWeight(III)D

    move-result-wide v7

    add-double/2addr v7, v5

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v5

    add-double v14, v5, v7

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->map:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/routing/ch/PrepareCHEntry;

    if-nez v5, :cond_3

    new-instance v9, Lcom/graphhopper/routing/ch/PrepareCHEntry;

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v10

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v11

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v12

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v13

    iget v5, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->origEdges:I

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeCount()I

    move-result v6

    add-int v16, v6, v5

    invoke-direct/range {v9 .. v16}, Lcom/graphhopper/routing/ch/PrepareCHEntry;-><init>(IIIIDI)V

    iput-object v3, v9, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget-object v5, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->map:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v6

    invoke-interface {v5, v6, v9}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v5, v9}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-wide v6, v5, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    cmpg-double v6, v14, v6

    if-gez v6, :cond_1

    iget-object v6, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v6, v5}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v6

    iput v6, v5, Lcom/graphhopper/routing/ch/PrepareCHEntry;->prepareEdge:I

    iget v6, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->origEdges:I

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeCount()I

    move-result v7

    add-int/2addr v7, v6

    iput v7, v5, Lcom/graphhopper/routing/ch/PrepareCHEntry;->origEdges:I

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v6

    iput v6, v5, Lcom/graphhopper/routing/ch/PrepareCHEntry;->firstEdgeKey:I

    iput-wide v14, v5, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    iput-object v3, v5, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget-object v6, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v6, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget v5, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->adjNode:I

    if-ne v5, v1, :cond_1

    iget-wide v6, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    iget-object v8, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->graph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    iget v9, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->incEdgeKey:I

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v10

    invoke-virtual {v8, v9, v5, v10}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getTurnWeight(III)D

    move-result-wide v8

    add-double/2addr v8, v6

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v5

    add-double v15, v5, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v5, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->origOutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;->next()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/graphhopper/routing/ch/BridgePathFinder;->graph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v7

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v8

    invoke-interface {v5}, Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getTurnWeight(III)D

    move-result-wide v6

    add-double/2addr v6, v15

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v5}, Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v8

    invoke-interface {v2, v8}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;

    if-nez v8, :cond_7

    new-instance v10, Lcom/graphhopper/routing/ch/PrepareCHEntry;

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v11

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v12

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v13

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v14

    iget v8, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->origEdges:I

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeCount()I

    move-result v9

    add-int v17, v9, v8

    invoke-direct/range {v10 .. v17}, Lcom/graphhopper/routing/ch/PrepareCHEntry;-><init>(IIIIDI)V

    move-object v8, v10

    move-wide v9, v15

    iput-object v3, v8, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    new-instance v11, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;

    invoke-direct {v11, v6, v7, v8}, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;-><init>(DLcom/graphhopper/routing/ch/PrepareCHEntry;)V

    invoke-interface {v5}, Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v6

    invoke-interface {v2, v6, v11}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move-wide v9, v15

    iget-wide v11, v8, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->weight:D

    cmpg-double v11, v6, v11

    if-gez v11, :cond_8

    iput-wide v6, v8, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->weight:D

    iget-object v6, v8, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v7

    iput v7, v6, Lcom/graphhopper/routing/ch/PrepareCHEntry;->prepareEdge:I

    iget-object v6, v8, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v7

    iput v7, v6, Lcom/graphhopper/routing/ch/PrepareCHEntry;->firstEdgeKey:I

    iget-object v6, v8, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget v7, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->origEdges:I

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeCount()I

    move-result v11

    add-int/2addr v11, v7

    iput v11, v6, Lcom/graphhopper/routing/ch/PrepareCHEntry;->origEdges:I

    iget-object v6, v8, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v7

    iput v7, v6, Lcom/graphhopper/routing/ch/PrepareCHEntry;->incEdgeKey:I

    iget-object v6, v8, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iput-wide v9, v6, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    iput-object v3, v6, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    :cond_8
    :goto_2
    move-wide v15, v9

    goto/16 :goto_1

    :cond_9
    return-object v2
.end method
