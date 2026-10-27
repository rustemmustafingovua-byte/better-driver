.class Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ch/NodeContractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;,
        Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$PrepareShortcutHandler;,
        Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;
    }
.end annotation


# instance fields
.field private addedShortcutsCount:I

.field private chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

.field private dijkstraCount:J

.field private final dijkstraSW:Lcom/graphhopper/util/StopWatch;

.field private existingShortcutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

.field private inEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

.field private meanDegree:D

.field private originalEdgesCount:I

.field private outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

.field private final params:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;

.field private final prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

.field private shortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;",
            ">;"
        }
    .end annotation
.end field

.field private shortcutsCount:I

.field private witnessPathSearcher:Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;Lcom/graphhopper/storage/CHStorageBuilder;Lcom/graphhopper/util/PMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcuts:Ljava/util/List;

    new-instance v0, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v0}, Lcom/graphhopper/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->dijkstraSW:Lcom/graphhopper/util/StopWatch;

    iput-object p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-direct {p0, p3}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->extractParams(Lcom/graphhopper/util/PMap;)V

    iput-object p2, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;IIDIIII)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->countShortcuts(IIDIIII)V

    return-void
.end method

.method private addOrUpdateShortcut(IIDIIII)V
    .locals 10

    iget-object v1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->existingShortcutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v1, p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-interface {v1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->isShortcut()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move/from16 v5, p7

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v3

    cmpg-double v3, p3, v3

    if-gez v3, :cond_2

    invoke-interface {v1, p3, p4}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->setWeight(D)V

    move/from16 v5, p7

    invoke-interface {v1, v5, p5}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->setSkippedEdges(II)V

    add-int v3, p8, p6

    invoke-interface {v1, v3}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->setOrigEdgeCount(I)V

    goto :goto_1

    :cond_2
    move/from16 v5, p7

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move/from16 v5, p7

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    const/4 v4, -0x1

    add-int v9, p8, p6

    const/4 v3, -0x1

    move v1, p1

    move v2, p2

    move-wide v7, p3

    move v6, p5

    invoke-virtual/range {v0 .. v9}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->addShortcut(IIIIIIDI)I

    :cond_4
    return-void
.end method

.method public static synthetic b(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;IIDIIII)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->addOrUpdateShortcut(IIDIIII)V

    return-void
.end method

.method private countShortcuts(IIDIIII)V
    .locals 0

    iget p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcutsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcutsCount:I

    iget p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->originalEdgesCount:I

    add-int/2addr p8, p6

    add-int/2addr p8, p1

    iput p8, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->originalEdgesCount:I

    return-void
.end method

.method private extractParams(Lcom/graphhopper/util/PMap;)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;

    const-string v1, "prepare.ch.node.edge_difference_weight"

    invoke-static {v0}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->a(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/util/PMap;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->e(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;F)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;

    const-string v1, "prepare.ch.node.original_edge_count_weight"

    invoke-static {v0}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->d(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/util/PMap;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->h(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;F)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;

    const-string v1, "prepare.ch.node.max_poll_factor_heuristic"

    invoke-static {v0}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->c(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->g(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;D)V

    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;

    const-string v0, "prepare.ch.node.max_poll_factor_contraction"

    invoke-static {p0}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->b(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->f(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;D)V

    return-void
.end method

.method private findAndHandleShortcuts(ILcom/graphhopper/routing/ch/NodeBasedNodeContractor$PrepareShortcutHandler;I)J
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->inEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v2, v1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v7

    if-eq v7, v1, :cond_5

    invoke-interface {v2}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v5, v1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v5

    iget-object v6, v0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->witnessPathSearcher:Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;

    invoke-virtual {v6, v7, v1}, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->init(II)V

    const-wide/16 v17, 0x1

    add-long v3, v3, v17

    :goto_1
    invoke-interface {v5}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v8

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v9

    add-double/2addr v9, v15

    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->dijkstraSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v6}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    iget-wide v11, v0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->dijkstraCount:J

    add-long v11, v11, v17

    iput-wide v11, v0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->dijkstraCount:J

    iget-object v6, v0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->witnessPathSearcher:Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;

    move/from16 v11, p3

    invoke-virtual {v6, v8, v9, v10, v11}, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->findUpperBound(IDI)D

    move-result-wide v12

    iget-object v6, v0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->dijkstraSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v6}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    cmpg-double v6, v12, v9

    if-gtz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v11

    invoke-interface {v5}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeCount()I

    move-result v12

    invoke-interface {v2}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v13

    invoke-interface {v2}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeCount()I

    move-result v14

    move-object/from16 v6, p2

    invoke-interface/range {v6 .. v14}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$PrepareShortcutHandler;->handleShortcut(IIDIIII)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected loop-edge at node: "

    invoke-static {v1, v2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-wide v3
.end method

.method private insertInShortcuts(I)V
    .locals 12

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->inEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->isShortcut()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getSkipped2()I

    move-result v7

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getSkipped1()I

    move-result v8

    iget-object v1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;

    iget v3, v2, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->to:I

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-wide v3, v2, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->weight:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    iget v4, v2, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->skippedEdge1:I

    invoke-virtual {v3, v4}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getShortcutForPrepareEdge(I)I

    move-result v3

    iget-object v4, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v4, v7}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getShortcutForPrepareEdge(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    iget v4, v2, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->skippedEdge2:I

    invoke-virtual {v3, v4}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getShortcutForPrepareEdge(I)I

    move-result v3

    iget-object v4, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v4, v8}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getShortcutForPrepareEdge(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->flags:I

    invoke-static {}, Lcom/graphhopper/routing/ch/PrepareEncoder;->getScFwdDir()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/graphhopper/routing/ch/PrepareEncoder;->getScDirMask()I

    move-result v1

    iput v1, v2, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->flags:I

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v1

    iput v1, v2, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->prepareEdgeBwd:I

    move v5, p1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcuts:Ljava/util/List;

    new-instance v2, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v4

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v6

    invoke-static {}, Lcom/graphhopper/routing/ch/PrepareEncoder;->getScBwdDir()I

    move-result v9

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v10

    const/4 v3, -0x1

    move v5, p1

    invoke-direct/range {v2 .. v11}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;-><init>(IIIIIIID)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move p1, v5

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private insertOutShortcuts(I)V
    .locals 12

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->isShortcut()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcuts:Ljava/util/List;

    new-instance v2, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v3

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v6

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getSkipped1()I

    move-result v7

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getSkipped2()I

    move-result v8

    invoke-static {}, Lcom/graphhopper/routing/ch/PrepareEncoder;->getScFwdDir()I

    move-result v9

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v10

    const/4 v4, -0x1

    move v5, p1

    invoke-direct/range {v2 .. v11}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;-><init>(IIIIIIID)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private insertShortcuts(I)V
    .locals 10

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->insertOutShortcuts(I)V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->insertInShortcuts(I)V

    iget-object p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getOriginalEdges()I

    move-result p1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;

    iget-object v2, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    iget v3, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->from:I

    iget v4, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->to:I

    iget v5, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->flags:I

    iget-wide v6, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->weight:D

    iget v8, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->skippedEdge1:I

    iget v9, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->skippedEdge2:I

    invoke-virtual/range {v2 .. v9}, Lcom/graphhopper/storage/CHStorageBuilder;->addShortcutNodeBased(IIIDII)I

    move-result v2

    iget v3, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->flags:I

    invoke-static {}, Lcom/graphhopper/routing/ch/PrepareEncoder;->getScFwdDir()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    iget v1, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->prepareEdgeFwd:I

    add-int/2addr v2, p1

    invoke-virtual {v3, v1, v2}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->setShortcutForPrepareEdge(II)V

    goto :goto_0

    :cond_0
    iget v3, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->flags:I

    invoke-static {}, Lcom/graphhopper/routing/ch/PrepareEncoder;->getScBwdDir()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    iget v1, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->prepareEdgeBwd:I

    add-int/2addr v2, p1

    invoke-virtual {v3, v1, v2}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->setShortcutForPrepareEdge(II)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    iget v4, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->prepareEdgeFwd:I

    add-int/2addr v2, p1

    invoke-virtual {v3, v4, v2}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->setShortcutForPrepareEdge(II)V

    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    iget v1, v1, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Shortcut;->prepareEdgeBwd:I

    invoke-virtual {v3, v1, v2}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->setShortcutForPrepareEdge(II)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->addedShortcutsCount:I

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->addedShortcutsCount:I

    return-void
.end method


# virtual methods
.method public calculatePriority(I)F
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcutsCount:I

    iput v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->originalEdgesCount:I

    new-instance v0, Lcom/graphhopper/routing/ch/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/ch/f;-><init>(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;I)V

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->meanDegree:D

    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;

    invoke-static {v3}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->c(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v1, v3

    invoke-direct {p0, p1, v0, v1}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->findAndHandleShortcuts(ILcom/graphhopper/routing/ch/NodeBasedNodeContractor$PrepareShortcutHandler;I)J

    iget v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcutsCount:I

    iget-object v1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v1, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getDegree(I)I

    move-result p1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;

    invoke-static {p1}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->a(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)F

    move-result p1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;

    invoke-static {v0}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->d(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)F

    move-result v0

    iget p0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->originalEdgesCount:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->shortcuts:Ljava/util/List;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->inEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->existingShortcutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->witnessPathSearcher:Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;

    return-void
.end method

.method public contractNode(I)Lcom/carrotsearch/hppc/z;
    .locals 6

    new-instance v0, Lcom/graphhopper/routing/ch/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/ch/f;-><init>(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;I)V

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->meanDegree:D

    iget-object v3, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;

    invoke-static {v3}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->b(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v1, v3

    invoke-direct {p0, p1, v0, v1}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->findAndHandleShortcuts(ILcom/graphhopper/routing/ch/NodeBasedNodeContractor$PrepareShortcutHandler;I)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->insertShortcuts(I)V

    iget-wide v2, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->meanDegree:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    long-to-double v0, v0

    add-double/2addr v2, v0

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->meanDegree:D

    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->disconnect(I)Lcom/carrotsearch/hppc/z;

    move-result-object p0

    return-object p0
.end method

.method public finishContraction()V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/graphhopper/routing/ch/e;

    invoke-direct {v1, p0}, Lcom/graphhopper/routing/ch/e;-><init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;)V

    invoke-virtual {v0, v1}, Lcom/graphhopper/storage/CHStorageBuilder;->replaceSkippedEdges(Ljava/util/function/IntUnaryOperator;)V

    return-void
.end method

.method public getAddedShortcutsCount()J
    .locals 2

    iget p0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->addedShortcutsCount:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getDijkstraSeconds()F
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->dijkstraSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {p0}, Lcom/graphhopper/util/StopWatch;->getCurrentSeconds()F

    move-result p0

    return p0
.end method

.method public getStatisticsString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->meanDegree:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->dijkstraCount:J

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->witnessPathSearcher:Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;->getMemoryUsageAsString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "meanDegree: %.2f, dijkstras: %10s, mem: %10s"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initFromGraph()V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createInEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->inEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createOutEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createOutEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->existingShortcutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    new-instance v0, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;-><init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->witnessPathSearcher:Lcom/graphhopper/routing/ch/NodeBasedWitnessPathSearcher;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getOriginalEdges()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v2}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getNodes()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;->meanDegree:D

    return-void
.end method
