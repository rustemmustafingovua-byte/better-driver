.class Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ch/NodeContractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;,
        Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;,
        Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$PrepareShortcutHandler;
    }
.end annotation


# static fields
.field private static final LOGGER:Lnc/b;


# instance fields
.field private activeStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

.field private final addedShortcuts:Lcom/carrotsearch/hppc/i1;

.field private addedShortcutsCount:I

.field private final addingStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

.field private bridgePathFinder:Lcom/graphhopper/routing/ch/BridgePathFinder;

.field private chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

.field private final countingStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

.field private final dijkstraSW:Lcom/graphhopper/util/StopWatch;

.field private existingShortcutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

.field private hierarchyDepths:[I

.field private inEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

.field private meanDegree:D

.field private numAllEdges:I

.field private numOrigEdges:I

.field private numPrevEdges:I

.field private numPrevOrigEdges:I

.field private numShortcuts:I

.field private outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

.field private final params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

.field private final prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

.field private sourceNodeOrigInEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

.field private final sourceNodes:Lcom/carrotsearch/hppc/r0;

.field private final targetNodes:Lcom/carrotsearch/hppc/r0;

.field private witnessPathSearcher:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;

.field private final wpsStatsContr:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

.field private final wpsStatsHeur:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->LOGGER:Lnc/b;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;Lcom/graphhopper/storage/CHStorageBuilder;Lcom/graphhopper/util/PMap;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    new-instance v0, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v0}, Lcom/graphhopper/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->dijkstraSW:Lcom/graphhopper/util/StopWatch;

    new-instance v0, Lcom/carrotsearch/hppc/c0;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/carrotsearch/hppc/c0;-><init>(II)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->sourceNodes:Lcom/carrotsearch/hppc/r0;

    new-instance v0, Lcom/carrotsearch/hppc/c0;

    invoke-direct {v0, v1, v2}, Lcom/carrotsearch/hppc/c0;-><init>(II)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->targetNodes:Lcom/carrotsearch/hppc/r0;

    new-instance v0, Lcom/carrotsearch/hppc/w0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v2}, Lcom/carrotsearch/hppc/w0;-><init>(II)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addedShortcuts:Lcom/carrotsearch/hppc/i1;

    new-instance v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    invoke-direct {v0, v2}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addingStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    new-instance v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    invoke-direct {v0, v2}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->countingStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    new-instance v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->wpsStatsHeur:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    new-instance v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->wpsStatsContr:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    iput-object p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    invoke-direct {p0, p3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->extractParams(Lcom/graphhopper/util/PMap;)V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addShortcutsToPrepareGraph(Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)Lcom/graphhopper/routing/ch/PrepareCHEntry;

    return-void
.end method

.method private addShortcutsToPrepareGraph(Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)Lcom/graphhopper/routing/ch/PrepareCHEntry;
    .locals 2

    iget-object v0, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget v0, v0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->prepareEdge:I

    iget v1, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->prepareEdge:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/graphhopper/routing/ch/PrepareCHEntry;->getParent()Lcom/graphhopper/routing/ch/PrepareCHEntry;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addShortcutsToPrepareGraph(Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)Lcom/graphhopper/routing/ch/PrepareCHEntry;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->doAddShortcut(Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)Lcom/graphhopper/routing/ch/PrepareCHEntry;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->doAddShortcut(Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)Lcom/graphhopper/routing/ch/PrepareCHEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->countShortcuts(Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)V

    return-void
.end method

.method private countPreviousEdges(I)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numAllEdges:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numAllEdges:I

    iget v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevEdges:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevEdges:I

    iget v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevOrigEdges:I

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeCount()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevOrigEdges:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->inEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numAllEdges:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numAllEdges:I

    invoke-interface {p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getBaseNode()I

    move-result v0

    invoke-interface {p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevEdges:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevEdges:I

    iget v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevOrigEdges:I

    invoke-interface {p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeCount()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevOrigEdges:I

    goto :goto_1

    :cond_2
    return-void
.end method

.method private countShortcuts(Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)V
    .locals 5

    iget-object v0, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget v0, v0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->adjNode:I

    iget v1, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->adjNode:I

    iget v2, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->firstEdgeKey:I

    iget v3, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->incEdgeKey:I

    iget-object v4, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->existingShortcutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v4, v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->isSameShortcut(Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;III)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_1
    :goto_0
    if-eq p2, p1, :cond_2

    iget v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numShortcuts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numShortcuts:I

    iget-object p2, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numOrigEdges:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numOrigEdges:I

    return-void
.end method

.method private doAddShortcut(Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)Lcom/graphhopper/routing/ch/PrepareCHEntry;
    .locals 12

    iget-object v0, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget v2, v0, Lcom/graphhopper/routing/ch/PrepareCHEntry;->adjNode:I

    iget v7, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->adjNode:I

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->existingShortcutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v0, v2}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->firstEdgeKey:I

    iget v3, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->incEdgeKey:I

    invoke-direct {p0, v0, v7, v1, v3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->isSameShortcut(Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;III)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v8

    iget-wide v1, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    cmpg-double p0, v8, v1

    if-gtz p0, :cond_1

    new-instance v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v4

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v5

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v6

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/graphhopper/routing/ch/PrepareCHEntry;-><init>(IIIIDI)V

    iget-object p0, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iput-object p0, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    return-object v3

    :cond_1
    move v10, p3

    iget p0, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->prepareEdge:I

    iget p3, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->prepareEdge:I

    invoke-interface {v0, p0, p3}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->setSkippedEdges(II)V

    iget-wide v1, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->setWeight(D)V

    invoke-interface {v0, v10}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->setOrigEdgeCount(I)V

    new-instance v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v4

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v5

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v6

    iget-wide v8, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    invoke-direct/range {v3 .. v10}, Lcom/graphhopper/routing/ch/PrepareCHEntry;-><init>(IIIIDI)V

    iget-object p0, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iput-object p0, v3, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    return-object v3

    :cond_2
    move v10, p3

    iget v4, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->firstEdgeKey:I

    sget-object p3, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->LOGGER:Lnc/b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v5, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->incEdgeKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v1, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Adding shortcut from {} to {}, weight: {}, firstOrigEdgeKey: {}, lastOrigEdgeKey: {}"

    invoke-interface {p3, v1, v0}, Lnc/b;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    iget v5, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->incEdgeKey:I

    iget v6, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->prepareEdge:I

    move v3, v7

    iget v7, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->prepareEdge:I

    iget-wide v8, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    invoke-virtual/range {v1 .. v10}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->addShortcut(IIIIIIDI)I

    move-result v5

    new-instance p0, Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget v8, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->adjNode:I

    iget-wide p2, p2, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    const/4 v7, -0x1

    move v6, v4

    move v11, v10

    move-object v4, p0

    move-wide v9, p2

    invoke-direct/range {v4 .. v11}, Lcom/graphhopper/routing/ch/PrepareCHEntry;-><init>(IIIIDI)V

    iget-object p0, p1, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iput-object p0, v4, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    return-object v4
.end method

.method private extractParams(Lcom/graphhopper/util/PMap;)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    const-string v1, "prepare.ch.edge.edge_quotient_weight"

    invoke-static {v0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->a(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/util/PMap;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->f(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;F)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    const-string v1, "prepare.ch.edge.original_edge_quotient_weight"

    invoke-static {v0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->e(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/util/PMap;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->j(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;F)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    const-string v1, "prepare.ch.edge.hierarchy_depth_weight"

    invoke-static {v0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->b(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/graphhopper/util/PMap;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->g(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;F)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    const-string v1, "prepare.ch.edge.max_poll_factor_heuristic"

    invoke-static {v0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->d(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->i(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;D)V

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    const-string v0, "prepare.ch.edge.max_poll_factor_contraction"

    invoke-static {p0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->c(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->h(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;D)V

    return-void
.end method

.method private findAndHandlePrepareShortcuts(ILcom/graphhopper/routing/ch/EdgeBasedNodeContractor$PrepareShortcutHandler;ILcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->stats()Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    move-result-object v2

    iget v3, v2, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;->nodes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;->nodes:I

    iget-object v2, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addedShortcuts:Lcom/carrotsearch/hppc/i1;

    invoke-interface {v2}, Lcom/carrotsearch/hppc/u0;->clear()V

    iget-object v2, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->sourceNodes:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v2}, Lcom/carrotsearch/hppc/y;->clear()V

    iget-object v2, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->inEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v2, v1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->sourceNodes:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v4, v3}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->sourceNodeOrigInEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    invoke-interface {v4, v3}, Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v5

    invoke-static {v5}, Lcom/graphhopper/util/GHUtility;->reverseEdgeKey(I)I

    move-result v5

    iget-object v6, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->bridgePathFinder:Lcom/graphhopper/routing/ch/BridgePathFinder;

    invoke-virtual {v6, v5, v3, v1}, Lcom/graphhopper/routing/ch/BridgePathFinder;->find(III)Lcom/carrotsearch/hppc/o0;

    move-result-object v6

    invoke-interface {v6}, Lcom/carrotsearch/hppc/k0;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->witnessPathSearcher:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;

    move-object/from16 v8, p4

    invoke-virtual {v7, v5, v3, v1, v8}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->initSearch(IIILcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln5/e;

    iget-object v9, v7, Ln5/e;->c:Ljava/lang/Object;

    check-cast v9, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;

    iget-wide v9, v9, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->weight:D

    invoke-static {v9, v10}, Ljava/lang/Double;->isFinite(D)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v12, v7, Ln5/e;->b:I

    iget-object v9, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->dijkstraSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v9}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    iget-object v10, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->witnessPathSearcher:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;

    iget-object v9, v7, Ln5/e;->c:Ljava/lang/Object;

    check-cast v9, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;

    iget-object v11, v9, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget v11, v11, Lcom/graphhopper/routing/ch/PrepareCHEntry;->adjNode:I

    iget-wide v13, v9, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->weight:D

    move/from16 v15, p3

    invoke-virtual/range {v10 .. v15}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->runSearch(IIDI)D

    move-result-wide v9

    iget-object v11, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->dijkstraSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v11}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    iget-object v11, v7, Ln5/e;->c:Ljava/lang/Object;

    check-cast v11, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;

    iget-wide v12, v11, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->weight:D

    cmpg-double v9, v9, v12

    if-gtz v9, :cond_3

    goto :goto_2

    :cond_3
    iget-object v9, v11, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    :goto_3
    iget-object v10, v9, Lcom/graphhopper/routing/ch/PrepareCHEntry;->parent:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget v10, v10, Lcom/graphhopper/routing/ch/PrepareCHEntry;->prepareEdge:I

    invoke-static {v10}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Lcom/graphhopper/routing/ch/PrepareCHEntry;->getParent()Lcom/graphhopper/routing/ch/PrepareCHEntry;

    move-result-object v9

    goto :goto_3

    :cond_4
    sget-object v10, Lcom/graphhopper/util/BitUtil;->LITTLE:Lcom/graphhopper/util/BitUtil;

    iget v11, v9, Lcom/graphhopper/routing/ch/PrepareCHEntry;->firstEdgeKey:I

    iget-object v12, v7, Ln5/e;->c:Ljava/lang/Object;

    check-cast v12, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;

    iget-object v12, v12, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget v12, v12, Lcom/graphhopper/routing/ch/PrepareCHEntry;->incEdgeKey:I

    invoke-virtual {v10, v11, v12}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide v10

    iget-object v12, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addedShortcuts:Lcom/carrotsearch/hppc/i1;

    invoke-interface {v12, v10, v11}, Lcom/carrotsearch/hppc/i1;->add(J)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    iget-object v10, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    iget v11, v9, Lcom/graphhopper/routing/ch/PrepareCHEntry;->firstEdgeKey:I

    invoke-virtual {v10, v5, v3, v11}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getTurnWeight(III)D

    move-result-wide v10

    iget-object v12, v7, Ln5/e;->c:Ljava/lang/Object;

    check-cast v12, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;

    iget-object v12, v12, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget-wide v13, v12, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    sub-double/2addr v13, v10

    iput-wide v13, v12, Lcom/graphhopper/routing/ch/PrepareCHEntry;->weight:D

    sget-object v10, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->LOGGER:Lnc/b;

    invoke-interface {v10, v12}, Lnc/b;->s(Ljava/lang/Object;)V

    iget-object v7, v7, Ln5/e;->c:Ljava/lang/Object;

    check-cast v7, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;

    iget-object v7, v7, Lcom/graphhopper/routing/ch/BridgePathFinder$BridePathEntry;->chEntry:Lcom/graphhopper/routing/ch/PrepareCHEntry;

    iget v10, v7, Lcom/graphhopper/routing/ch/PrepareCHEntry;->origEdges:I

    move-object/from16 v11, p2

    invoke-interface {v11, v9, v7, v10}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$PrepareShortcutHandler;->handleShortcut(Lcom/graphhopper/routing/ch/PrepareCHEntry;Lcom/graphhopper/routing/ch/PrepareCHEntry;I)V

    goto/16 :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bridge entry weights should always be finite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v11, p2

    iget-object v5, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->witnessPathSearcher:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;

    invoke-virtual {v5}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->finishSearch()V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v11, p2

    move-object/from16 v8, p4

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private insertInShortcuts(I)V
    .locals 12

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->inEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->isShortcut()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v4

    invoke-static {}, Lcom/graphhopper/routing/ch/PrepareEncoder;->getScBwdDir()I

    move-result v5

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v6

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getSkipped1()I

    move-result v8

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getSkipped2()I

    move-result v9

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v10

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v11

    move v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/graphhopper/storage/CHStorageBuilder;->addShortcutEdgeBased(IIIDIIII)I

    move-result p1

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v2

    iget-object v4, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v4}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getOriginalEdges()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v1, v2, v4}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->setShortcutForPrepareEdge(II)V

    iget p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addedShortcutsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addedShortcutsCount:I

    move p1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private insertOutShortcuts(I)V
    .locals 12

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

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
    iget-object v2, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result v4

    invoke-static {}, Lcom/graphhopper/routing/ch/PrepareEncoder;->getScFwdDir()I

    move-result v5

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getWeight()D

    move-result-wide v6

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getSkipped1()I

    move-result v8

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getSkipped2()I

    move-result v9

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result v10

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result v11

    move v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/graphhopper/storage/CHStorageBuilder;->addShortcutEdgeBased(IIIDIIII)I

    move-result p1

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getPrepareEdge()I

    move-result v2

    iget-object v4, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v4}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getOriginalEdges()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v1, v2, v4}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->setShortcutForPrepareEdge(II)V

    iget p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addedShortcutsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addedShortcutsCount:I

    move p1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private insertShortcuts(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->insertOutShortcuts(I)V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->insertInShortcuts(I)V

    return-void
.end method

.method private isSameShortcut(Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;III)Z
    .locals 0

    invoke-interface {p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->isShortcut()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getAdjNode()I

    move-result p0

    if-ne p0, p2, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyFirst()I

    move-result p0

    if-ne p0, p3, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;->getOrigEdgeKeyLast()I

    move-result p0

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private resetEdgeCounters()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numShortcuts:I

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevEdges:I

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numOrigEdges:I

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevOrigEdges:I

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numAllEdges:I

    return-void
.end method

.method private stats()Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->activeStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    return-object p0
.end method

.method private updateHierarchyDepthsOfNeighbors(ILcom/carrotsearch/hppc/z;)V
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->hierarchyDepths:[I

    aget v0, v0, p1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/a;

    iget v1, v1, Ln5/a;->b:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->hierarchyDepths:[I

    aget v3, v2, v1

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public calculatePriority(I)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->countingStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    iput-object v2, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->activeStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->resetEdgeCounters()V

    invoke-direct/range {p0 .. p1}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->countPreviousEdges(I)V

    iget v2, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numAllEdges:I

    if-nez v2, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    return v0

    :cond_0
    invoke-direct {v0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->stats()Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    move-result-object v2

    iget-object v2, v2, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;->stopWatch:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    new-instance v2, Lcom/graphhopper/routing/ch/d;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/graphhopper/routing/ch/d;-><init>(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;I)V

    iget-wide v3, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->meanDegree:D

    iget-object v5, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    invoke-static {v5}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->d(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-int v3, v5

    iget-object v4, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->wpsStatsHeur:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->findAndHandlePrepareShortcuts(ILcom/graphhopper/routing/ch/EdgeBasedNodeContractor$PrepareShortcutHandler;ILcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;)V

    invoke-direct {v0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->stats()Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    move-result-object v2

    iget-object v2, v2, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;->stopWatch:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    iget v2, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numShortcuts:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v3, v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getDegree(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numOrigEdges:I

    int-to-float v3, v3

    iget v4, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevOrigEdges:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->hierarchyDepths:[I

    aget v4, v4, v1

    iget-object v5, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    invoke-static {v5}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->a(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)F

    move-result v5

    mul-float/2addr v5, v2

    iget-object v6, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    invoke-static {v6}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->e(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)F

    move-result v6

    mul-float/2addr v6, v3

    add-float/2addr v6, v5

    iget-object v5, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    invoke-static {v5}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->b(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)F

    move-result v5

    int-to-float v7, v4

    mul-float/2addr v5, v7

    add-float/2addr v5, v6

    sget-object v6, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->LOGGER:Lnc/b;

    invoke-interface {v6}, Lnc/b;->j()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numShortcuts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevEdges:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget v1, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numOrigEdges:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v0, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->numPrevOrigEdges:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    filled-new-array/range {v8 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "node: {}, eq: {} / {} = {}, oeq: {} / {} = {}, depth: {} --> {}"

    invoke-interface {v6, v1, v0}, Lnc/b;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v5
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->inEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->existingShortcutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->sourceNodeOrigInEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->witnessPathSearcher:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;

    invoke-virtual {v1}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;->close()V

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->sourceNodes:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v1}, Lcom/carrotsearch/hppc/y;->release()V

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->targetNodes:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v1}, Lcom/carrotsearch/hppc/y;->release()V

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addedShortcuts:Lcom/carrotsearch/hppc/i1;

    invoke-interface {v1}, Lcom/carrotsearch/hppc/u0;->release()V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->hierarchyDepths:[I

    return-void
.end method

.method public contractNode(I)Lcom/carrotsearch/hppc/z;
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addingStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->activeStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->stats()Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    move-result-object v0

    iget-object v0, v0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;->stopWatch:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    new-instance v0, Lcom/graphhopper/routing/ch/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/ch/d;-><init>(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;I)V

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->meanDegree:D

    iget-object v3, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->params:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;

    invoke-static {v3}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->c(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-int v1, v3

    iget-object v2, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->wpsStatsContr:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->findAndHandlePrepareShortcuts(ILcom/graphhopper/routing/ch/EdgeBasedNodeContractor$PrepareShortcutHandler;ILcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;)V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->insertShortcuts(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->disconnect(I)Lcom/carrotsearch/hppc/z;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->meanDegree:D

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    invoke-interface {v0}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->meanDegree:D

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->updateHierarchyDepthsOfNeighbors(ILcom/carrotsearch/hppc/z;)V

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->stats()Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    move-result-object p0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;->stopWatch:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {p0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    return-object v0
.end method

.method public finishContraction()V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->chBuilder:Lcom/graphhopper/storage/CHStorageBuilder;

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/graphhopper/routing/ch/e;

    invoke-direct {v1, p0}, Lcom/graphhopper/routing/ch/e;-><init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;)V

    invoke-virtual {v0, v1}, Lcom/graphhopper/storage/CHStorageBuilder;->replaceSkippedEdges(Ljava/util/function/IntUnaryOperator;)V

    return-void
.end method

.method public getAddedShortcutsCount()J
    .locals 2

    iget p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addedShortcutsCount:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getDijkstraSeconds()F
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->dijkstraSW:Lcom/graphhopper/util/StopWatch;

    invoke-virtual {p0}, Lcom/graphhopper/util/StopWatch;->getCurrentSeconds()F

    move-result p0

    return p0
.end method

.method public getNumPolledEdges()J
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->wpsStatsContr:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    iget-wide v0, v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numPolls:J

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->wpsStatsHeur:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    iget-wide v2, p0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;->numPolls:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getStatisticsString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->meanDegree:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "degree_approx: %3.1f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->countingStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->wpsStatsHeur:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->addingStats:Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Stats;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->wpsStatsContr:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher$Stats;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", priority   : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contraction: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initFromGraph()V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createInEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->inEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createOutEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->outEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createOutEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->existingShortcutExplorer:Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->createInOrigEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->sourceNodeOrigInEdgeExplorer:Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getNodes()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->hierarchyDepths:[I

    new-instance v0, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;-><init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->witnessPathSearcher:Lcom/graphhopper/routing/ch/EdgeBasedWitnessPathSearcher;

    new-instance v0, Lcom/graphhopper/routing/ch/BridgePathFinder;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/ch/BridgePathFinder;-><init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;)V

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->bridgePathFinder:Lcom/graphhopper/routing/ch/BridgePathFinder;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getOriginalEdges()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->prepareGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {v2}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getNodes()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;->meanDegree:D

    return-void
.end method
