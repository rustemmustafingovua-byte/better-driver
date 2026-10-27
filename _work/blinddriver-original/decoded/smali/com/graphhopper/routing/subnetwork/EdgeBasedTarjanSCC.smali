.class public Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;,
        Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;,
        Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntIntMap;,
        Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;,
        Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntSet;,
        Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;,
        Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntIntMap;,
        Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntSet;,
        Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private adj:I

.field private final bitUtil:Lcom/graphhopper/util/BitUtil;

.field private final components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

.field private currIndex:I

.field private final dfsStackAdj:Lcom/carrotsearch/hppc/w;

.field private final dfsStackPQ:Lcom/carrotsearch/hppc/s0;

.field private dfsState:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;

.field private edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

.field private edgeKeyLowLink:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

.field private edgeKeyOnStack:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;

.field private final edgeTransitionFilter:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;

.field private final excludeSingleEdgeComponents:Z

.field private final explorer:Lcom/graphhopper/util/EdgeExplorer;

.field private final graph:Lcom/graphhopper/storage/Graph;

.field private p:I

.field private q:I

.field private final tarjanStack:Lcom/carrotsearch/hppc/w;


# direct methods
.method private constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/graphhopper/util/BitUtil;->LITTLE:Lcom/graphhopper/util/BitUtil;

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->currIndex:I

    iput-object p1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->graph:Lcom/graphhopper/storage/Graph;

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeTransitionFilter:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->explorer:Lcom/graphhopper/util/EdgeExplorer;

    new-instance p2, Lcom/carrotsearch/hppc/w;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/carrotsearch/hppc/w;-><init>(I)V

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->tarjanStack:Lcom/carrotsearch/hppc/w;

    new-instance p2, Lcom/carrotsearch/hppc/s0;

    invoke-direct {p2}, Lcom/carrotsearch/hppc/s0;-><init>()V

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackPQ:Lcom/carrotsearch/hppc/s0;

    new-instance p2, Lcom/carrotsearch/hppc/w;

    invoke-direct {p2, v0}, Lcom/carrotsearch/hppc/w;-><init>(I)V

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackAdj:Lcom/carrotsearch/hppc/w;

    new-instance p2, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getEdges()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    :goto_0
    invoke-direct {p2, p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;-><init>(I)V

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    iput-boolean p3, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->excludeSingleEdgeComponents:Z

    return-void
.end method

.method private buildComponent(I)V
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyLowLink:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    invoke-interface {v1, p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->tarjanStack:Lcom/carrotsearch/hppc/w;

    iget-object v1, v0, Lcom/carrotsearch/hppc/w;->l:[I

    iget v2, v0, Lcom/carrotsearch/hppc/w;->n:I

    array-length v3, v1

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v3, -0x1

    :goto_0
    aget v1, v1, v2

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/w;->j()I

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyOnStack:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;->remove(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    invoke-static {v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->c(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->g(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;I)V

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    invoke-static {v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->d(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->h(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;I)V

    iget-boolean v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->excludeSingleEdgeComponents:Z

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    invoke-static {p0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->e(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)Lcom/carrotsearch/hppc/j;

    move-result-object p0

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/carrotsearch/hppc/j;->h(J)V

    return-void

    :cond_1
    new-instance v0, Lcom/carrotsearch/hppc/x;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    :cond_2
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->tarjanStack:Lcom/carrotsearch/hppc/w;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/w;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyOnStack:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;

    invoke-interface {v2, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;->remove(I)V

    if-ne v1, p1, :cond_2

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->trimToSize()V

    iget-object p1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    invoke-static {p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->c(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {p1, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->g(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;I)V

    iget-object p1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    invoke-static {p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->d(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)I

    move-result v1

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p1, v2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->h(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;I)V

    iget-object p1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    invoke-static {p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->b(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p1

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    invoke-static {v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->a(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;)Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    if-le p1, v1, :cond_3

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    invoke-static {p0, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->f(Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;Lcom/carrotsearch/hppc/x;)V

    :cond_3
    return-void
.end method

.method public static createEdgeKey(Lcom/graphhopper/util/EdgeIteratorState;Z)I
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/util/TraversalMode;->EDGE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v0, p0, p1}, Lcom/graphhopper/routing/util/TraversalMode;->createTraversalId(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result p0

    return p0
.end method

.method private findComponentForEdgeKey(II)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->setupNextEdgeKey(I)V

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v1}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeTransitionFilter:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;

    invoke-interface {v1, v0, p2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;->accept(ILcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->createEdgeKey(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v1

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->handleNeighbor(III)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->buildComponent(I)V

    return-void
.end method

.method private findComponents()Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->initForEntireGraph()V

    .line 3
    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v0}, Lcom/graphhopper/storage/Graph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object v0

    .line 4
    :goto_0
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->findComponentsForEdgeState(Lcom/graphhopper/util/EdgeIteratorState;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    return-object p0
.end method

.method public static findComponents(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;Z)Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;
    .locals 1

    .line 1
    new-instance v0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;

    invoke-direct {v0, p0, p1, p2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;Z)V

    invoke-direct {v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->findComponents()Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    move-result-object p0

    return-object p0
.end method

.method private findComponentsForEdgeState(Lcom/graphhopper/util/EdgeIteratorState;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->createEdgeKey(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    invoke-interface {v1, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->has(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->pushFindComponentForEdgeKey(II)V

    :cond_0
    invoke-direct {p0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->startSearch()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->createEdgeKey(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    invoke-interface {v1, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->has(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->pushFindComponentForEdgeKey(II)V

    :cond_1
    invoke-direct {p0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->startSearch()V

    return-void
.end method

.method private findComponentsForStartEdges(Lcom/carrotsearch/hppc/z;)Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;
    .locals 3

    .line 2
    invoke-interface {p1}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->initForStartEdges(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/a;

    .line 4
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->graph:Lcom/graphhopper/storage/Graph;

    iget v0, v0, Ln5/a;->b:I

    const/high16 v2, -0x80000000

    invoke-interface {v1, v0, v2}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeTransitionFilter:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;->accept(ILcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->findComponentsForEdgeState(Lcom/graphhopper/util/EdgeIteratorState;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    return-object p0
.end method

.method public static findComponentsForStartEdges(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;Lcom/carrotsearch/hppc/z;)Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;
    .locals 2

    .line 1
    new-instance v0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;Z)V

    invoke-direct {v0, p2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->findComponentsForStartEdges(Lcom/carrotsearch/hppc/z;)Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    move-result-object p0

    return-object p0
.end method

.method private findComponentsRecursive()Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->initForEntireGraph()V

    .line 3
    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v0}, Lcom/graphhopper/storage/Graph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->createEdgeKey(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    invoke-interface {v2, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->has(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->findComponentForEdgeKey(II)V

    :cond_1
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->createEdgeKey(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    invoke-interface {v2, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->has(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->findComponentForEdgeKey(II)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    return-object p0
.end method

.method public static findComponentsRecursive(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;Z)Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;
    .locals 1

    .line 1
    new-instance v0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;

    invoke-direct {v0, p0, p1, p2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;Z)V

    invoke-direct {v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->findComponentsRecursive()Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    move-result-object p0

    return-object p0
.end method

.method private handleNeighbor(III)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    invoke-interface {v0, p2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->has(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->findComponentForEdgeKey(II)V

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyLowLink:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    invoke-interface {p0, p2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->get(I)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->minTo(II)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyOnStack:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;

    invoke-interface {p3, p2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;->contains(I)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyLowLink:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    invoke-interface {p0, p2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->get(I)I

    move-result p0

    invoke-interface {p3, p1, p0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->minTo(II)V

    :cond_1
    return-void
.end method

.method private hasNext()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackPQ:Lcom/carrotsearch/hppc/s0;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/s0;->size()I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method private initForEntireGraph()V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v0}, Lcom/graphhopper/storage/Graph;->getEdges()I

    move-result v0

    new-instance v1, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntIntMap;

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntIntMap;-><init>(I)V

    iput-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    new-instance v1, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntIntMap;

    invoke-direct {v1, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntIntMap;-><init>(I)V

    iput-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyLowLink:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    new-instance v1, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntSet;

    invoke-direct {v1, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanArrayIntSet;-><init>(I)V

    iput-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyOnStack:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;

    return-void
.end method

.method private initForStartEdges(I)V
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntIntMap;

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntIntMap;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    new-instance v0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntIntMap;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntIntMap;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyLowLink:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    new-instance v0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntSet;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanHashIntSet;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyOnStack:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;

    return-void
.end method

.method private pop()V
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackPQ:Lcom/carrotsearch/hppc/s0;

    iget v1, v0, Lcom/carrotsearch/hppc/s0;->m:I

    iget-object v2, v0, Lcom/carrotsearch/hppc/s0;->l:[J

    array-length v3, v2

    const/4 v4, 0x1

    if-lt v1, v4, :cond_0

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v3, -0x1

    :goto_0
    iput v1, v0, Lcom/carrotsearch/hppc/s0;->m:I

    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v1

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackAdj:Lcom/carrotsearch/hppc/w;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/w;->j()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {v1, v3, v4}, Lcom/graphhopper/util/BitUtil;->getIntLow(J)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {v2, v3, v4}, Lcom/graphhopper/util/BitUtil;->getIntHigh(J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;->UPDATE:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;

    iput v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    iput v2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->q:I

    iput v3, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->adj:I

    return-void

    :cond_1
    const/4 v4, -0x2

    if-ne v0, v4, :cond_2

    if-ne v2, v4, :cond_2

    sget-object v0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;->BUILD_COMPONENT:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;

    iput v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    iput v3, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->q:I

    iput v3, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->adj:I

    return-void

    :cond_2
    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;->FIND_COMPONENT:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;

    iput-object v2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;

    iput v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    iput v3, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->q:I

    iput v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->adj:I

    return-void

    :cond_3
    sget-object v3, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;->HANDLE_NEIGHBOR:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;

    iput-object v3, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;

    iput v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    iput v2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->q:I

    iput v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->adj:I

    return-void
.end method

.method private pushBuildComponent(I)V
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackPQ:Lcom/carrotsearch/hppc/s0;

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    const/4 v2, -0x2

    invoke-virtual {v1, p1, v2}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/carrotsearch/hppc/s0;->a(J)V

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackAdj:Lcom/carrotsearch/hppc/w;

    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/w;->a(I)V

    return-void
.end method

.method private pushFindComponentForEdgeKey(II)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackPQ:Lcom/carrotsearch/hppc/s0;

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/carrotsearch/hppc/s0;->a(J)V

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackAdj:Lcom/carrotsearch/hppc/w;

    invoke-virtual {p0, p2}, Lcom/carrotsearch/hppc/w;->a(I)V

    return-void
.end method

.method private pushHandleNeighbor(III)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackPQ:Lcom/carrotsearch/hppc/s0;

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {v1, p1, p2}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/carrotsearch/hppc/s0;->a(J)V

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackAdj:Lcom/carrotsearch/hppc/w;

    invoke-virtual {p0, p3}, Lcom/carrotsearch/hppc/w;->a(I)V

    return-void
.end method

.method private pushUpdateLowLinks(II)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackPQ:Lcom/carrotsearch/hppc/s0;

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {v1, p1, p2}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/carrotsearch/hppc/s0;->a(J)V

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsStackAdj:Lcom/carrotsearch/hppc/w;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/w;->a(I)V

    return-void
.end method

.method private setupNextEdgeKey(I)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    iget v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->currIndex:I

    invoke-interface {v0, p1, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->set(II)V

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyLowLink:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    iget v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->currIndex:I

    invoke-interface {v0, p1, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->set(II)V

    iget v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->currIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->currIndex:I

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->tarjanStack:Lcom/carrotsearch/hppc/w;

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/w;->a(I)V

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyOnStack:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;->add(I)V

    return-void
.end method

.method private startSearch()V
    .locals 5

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->pop()V

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->buildComponent(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$State;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown state: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->setupNextEdgeKey(I)V

    iget v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->pushBuildComponent(I)V

    iget v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->explorer:Lcom/graphhopper/util/EdgeExplorer;

    iget v2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->adj:I

    invoke-interface {v1, v2}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeTransitionFilter:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;

    invoke-interface {v2, v0, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;->accept(ILcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->createEdgeKey(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v2

    iget v3, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->pushHandleNeighbor(III)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    iget v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->q:I

    invoke-interface {v0, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->has(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyOnStack:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;

    iget v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->q:I

    invoke-interface {v0, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyLowLink:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    iget v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    iget v3, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->q:I

    invoke-interface {v2, v3}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->get(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->minTo(II)V

    :cond_5
    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyIndex:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    iget v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->q:I

    invoke-interface {v0, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->has(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    iget v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->q:I

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->pushUpdateLowLinks(II)V

    iget v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->q:I

    iget v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->adj:I

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->pushFindComponentForEdgeKey(II)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->edgeKeyLowLink:Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;

    iget v1, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->p:I

    iget v2, p0, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->q:I

    invoke-interface {v0, v2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->get(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$TarjanIntIntMap;->minTo(II)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method
