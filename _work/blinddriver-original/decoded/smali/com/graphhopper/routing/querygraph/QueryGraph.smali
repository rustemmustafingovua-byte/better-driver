.class public Lcom/graphhopper/routing/querygraph/QueryGraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/Graph;


# static fields
.field static final ADJ_SNAP:I = 0x3

.field static final BASE_SNAP:I = 0x0

.field static final SNAP_ADJ:I = 0x2

.field static final SNAP_BASE:I = 0x1


# instance fields
.field private final baseEdges:I

.field private final baseGraph:Lcom/graphhopper/storage/BaseGraph;

.field private final baseNodes:I

.field private final nodeAccess:Lcom/graphhopper/storage/NodeAccess;

.field private final queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

.field private final turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

.field private final unfavoredEdges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;",
            ">;"
        }
    .end annotation
.end field

.field private final virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation
.end field

.field private final virtualEdgesAtVirtualNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->unfavoredEdges:Ljava/util/Set;

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v0

    iput v0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseNodes:I

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v1

    iput v1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseEdges:I

    invoke-static {p1, p2}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->build(Lcom/graphhopper/storage/Graph;Ljava/util/List;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    new-instance v1, Lcom/graphhopper/storage/ExtendedNodeAccess;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v2

    invoke-virtual {p2}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualNodes()Lcom/graphhopper/util/PointList;

    move-result-object p2

    invoke-direct {v1, v2, p2, v0}, Lcom/graphhopper/storage/ExtendedNodeAccess;-><init>(Lcom/graphhopper/storage/NodeAccess;Lcom/graphhopper/util/PointList;I)V

    iput-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->buildVirtualEdgesAtRealNodes(Lcom/graphhopper/util/EdgeExplorer;)Lcom/carrotsearch/hppc/o0;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->buildVirtualEdgesAtVirtualNodes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->virtualEdgesAtVirtualNodes:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/querygraph/QueryGraph;)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseNodes:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/carrotsearch/hppc/o0;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    return-object p0
.end method

.method private buildVirtualEdgesAtRealNodes(Lcom/graphhopper/util/EdgeExplorer;)Lcom/carrotsearch/hppc/o0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/EdgeExplorer;",
            ")",
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/coll/GHIntObjectHashMap;

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v1}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getEdgeChangesAtRealNodes()Lcom/carrotsearch/hppc/o0;

    move-result-object v1

    invoke-interface {v1}, Lcom/carrotsearch/hppc/k0;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/graphhopper/coll/GHIntObjectHashMap;-><init>(I)V

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v1}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getEdgeChangesAtRealNodes()Lcom/carrotsearch/hppc/o0;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/routing/querygraph/QueryGraph$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/graphhopper/routing/querygraph/QueryGraph$2;-><init>(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/util/EdgeExplorer;Lcom/carrotsearch/hppc/o0;)V

    invoke-interface {v1, v2}, Lcom/carrotsearch/hppc/k0;->forEach(Lp5/b;)Lp5/b;

    return-object v0
.end method

.method private buildVirtualEdgesAtVirtualNodes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v3}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualNodes()Lcom/graphhopper/util/PointList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object v3

    iget-object v5, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    const/4 v6, 0x2

    add-int/2addr v4, v6

    invoke-virtual {v5, v4}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object v4

    new-array v5, v6, [Lcom/graphhopper/util/EdgeIteratorState;

    aput-object v3, v5, v1

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static bridge synthetic c(Lcom/graphhopper/routing/querygraph/QueryGraph;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->virtualEdgesAtVirtualNodes:Ljava/util/List;

    return-object p0
.end method

.method public static create(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/index/Snap;)Lcom/graphhopper/routing/querygraph/QueryGraph;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->create(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)Lcom/graphhopper/routing/querygraph/QueryGraph;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/index/Snap;Lcom/graphhopper/storage/index/Snap;)Lcom/graphhopper/routing/querygraph/QueryGraph;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object p0

    filled-new-array {p1, p2}, [Lcom/graphhopper/storage/index/Snap;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->create(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)Lcom/graphhopper/routing/querygraph/QueryGraph;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)Lcom/graphhopper/routing/querygraph/QueryGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;)",
            "Lcom/graphhopper/routing/querygraph/QueryGraph;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/graphhopper/routing/querygraph/QueryGraph;

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;-><init>(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)V

    return-object v0
.end method

.method private exc()Ljava/lang/UnsupportedOperationException;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "QueryGraph cannot be modified."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private getInternalVirtualEdgeId(I)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseEdges:I

    sub-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public static getPosOfReverseEdge(I)I
    .locals 1

    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearUnfavoredStatus()V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->unfavoredEdges:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->setUnfavored(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->unfavoredEdges:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;-><init>(Lcom/graphhopper/routing/util/EdgeFilter;Ljava/util/List;)V

    new-instance p1, Lcom/graphhopper/routing/querygraph/QueryGraph$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/graphhopper/routing/querygraph/QueryGraph$1;-><init>(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;Lcom/graphhopper/util/EdgeExplorer;)V

    return-object p1
.end method

.method public edge(II)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->exc()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method

.method public getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported yet."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBaseGraph()Lcom/graphhopper/storage/BaseGraph;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    return-object p0
.end method

.method public getBounds()Lcom/graphhopper/util/shapes/BBox;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getBounds()Lcom/graphhopper/util/shapes/BBox;

    move-result-object p0

    return-object p0
.end method

.method public getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->isVirtualEdge(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getInternalVirtualEdgeId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object v1

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    if-eq v2, p2, :cond_3

    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getPosOfReverseEdge(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v0

    if-ne v0, p2, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, " not found with adjNode:"

    const-string v3, ". found edges were:"

    const-string v4, "Edge "

    invoke-static {v4, p1, v2, p2, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public getEdgeIteratorStateForKey(I)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->isVirtualEdge(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorStateForKey(I)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseEdges:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public getEdges()I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v0}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getNumVirtualEdges()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseEdges:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getNodeAccess()Lcom/graphhopper/storage/NodeAccess;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    return-object p0
.end method

.method public getNodes()I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v0}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualNodes()Lcom/graphhopper/util/PointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseNodes:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getOtherNode(II)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->isVirtualEdge(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/BaseGraph;->getOtherNode(II)I

    move-result p0

    return p0
.end method

.method public getQueryOverlay()Lcom/graphhopper/routing/querygraph/QueryOverlay;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    return-object p0
.end method

.method public getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    return-object p0
.end method

.method public getUnfavoredVirtualEdges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->unfavoredEdges:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getVirtualEdges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {p0}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualEdges()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAdjacentToNode(II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->isVirtualEdge(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p1

    if-eq p1, p2, :cond_1

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p0

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/BaseGraph;->isAdjacentToNode(II)Z

    move-result p0

    return p0
.end method

.method public isVirtualEdge(I)Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseEdges:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVirtualNode(I)Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseNodes:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public unfavorVirtualEdge(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->isVirtualEdge(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getInternalVirtualEdgeId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->setUnfavored(Z)V

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->unfavoredEdges:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getInternalVirtualEdgeId(I)I

    move-result p1

    invoke-static {p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getPosOfReverseEdge(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->setUnfavored(Z)V

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->unfavoredEdges:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unfavorVirtualEdges(Lcom/carrotsearch/hppc/x;)V
    .locals 1

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/a;

    iget v0, v0, Ln5/a;->b:I

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->unfavorVirtualEdge(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public wrapWeighting(Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 2

    new-instance v0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {p0}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getClosestEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/carrotsearch/hppc/x;)V

    return-object v0
.end method
