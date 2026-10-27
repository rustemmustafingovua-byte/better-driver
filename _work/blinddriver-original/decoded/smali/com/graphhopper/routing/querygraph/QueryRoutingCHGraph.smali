.class public Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/RoutingCHGraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;,
        Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final nodes:I

.field private final queryGraph:Lcom/graphhopper/routing/querygraph/QueryGraph;

.field private final queryGraphWeighting:Lcom/graphhopper/routing/weighting/Weighting;

.field private final queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

.field private final routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

.field private final virtualEdgesAtVirtualNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final virtualInEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation
.end field

.field private final virtualOutEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation
.end field

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/routing/querygraph/QueryGraph;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-virtual {p2}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getQueryOverlay()Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object v1

    iput-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryGraph:Lcom/graphhopper/routing/querygraph/QueryGraph;

    invoke-virtual {p2, v0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->wrapWeighting(Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryGraphWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->createOutEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->buildVirtualEdgesAtRealNodes(Lcom/graphhopper/storage/RoutingCHEdgeExplorer;)Lcom/carrotsearch/hppc/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->virtualOutEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->createInEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->buildVirtualEdgesAtRealNodes(Lcom/graphhopper/storage/RoutingCHEdgeExplorer;)Lcom/carrotsearch/hppc/o0;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->virtualInEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->buildVirtualEdgesAtVirtualNodes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->virtualEdgesAtVirtualNodes:Ljava/util/List;

    invoke-virtual {p2}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getNodes()I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->nodes:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;)Lcom/graphhopper/routing/querygraph/QueryGraph;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryGraph:Lcom/graphhopper/routing/querygraph/QueryGraph;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;)Lcom/graphhopper/storage/RoutingCHGraph;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    return-object p0
.end method

.method private buildVirtualCHEdgeState(Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;)Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->getEdge()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->shiftVirtualEdgeIDForCH(I)I

    move-result v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->buildVirtualCHEdgeState(Lcom/graphhopper/util/EdgeIteratorState;I)Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method private buildVirtualCHEdgeState(Lcom/graphhopper/util/EdgeIteratorState;I)Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    iget-object v2, v0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v13

    .line 4
    iget-object v0, v0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v15

    .line 5
    new-instance v4, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v6

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v7

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v8

    .line 6
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result v9

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, -0x1

    move/from16 v5, p2

    invoke-direct/range {v4 .. v16}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;-><init>(IIIIIIIIDD)V

    return-object v4
.end method

.method private buildVirtualEdgesAtRealNodes(Lcom/graphhopper/storage/RoutingCHEdgeExplorer;)Lcom/carrotsearch/hppc/o0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/RoutingCHEdgeExplorer;",
            ")",
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation

    new-instance v0, Lcom/carrotsearch/hppc/n0;

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v1}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getEdgeChangesAtRealNodes()Lcom/carrotsearch/hppc/o0;

    move-result-object v1

    invoke-interface {v1}, Lcom/carrotsearch/hppc/k0;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/n0;-><init>(I)V

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v1}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getEdgeChangesAtRealNodes()Lcom/carrotsearch/hppc/o0;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;-><init>(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Lcom/carrotsearch/hppc/o0;)V

    invoke-interface {v1, v2}, Lcom/carrotsearch/hppc/k0;->forEach(Lp5/b;)Lp5/b;

    return-object v0
.end method

.method private buildVirtualEdgesAtVirtualNodes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v0}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualNodes()Lcom/graphhopper/util/PointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v4}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualEdges()Ljava/util/List;

    move-result-object v4

    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v6, v5, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    invoke-direct {p0, v4}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->buildVirtualCHEdgeState(Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;)Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;

    move-result-object v4

    iget-object v6, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v6}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualEdges()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    add-int/2addr v5, v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    invoke-direct {p0, v5}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->buildVirtualCHEdgeState(Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;)Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;

    move-result-object v5

    new-array v6, v7, [Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    aput-object v4, v6, v2

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static bridge synthetic c(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->virtualEdgesAtVirtualNodes:Ljava/util/List;

    return-object p0
.end method

.method private createEdgeExplorer(Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Lcom/carrotsearch/hppc/o0;)Lcom/graphhopper/storage/RoutingCHEdgeExplorer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/RoutingCHEdgeExplorer;",
            "Lcom/carrotsearch/hppc/o0;",
            ")",
            "Lcom/graphhopper/storage/RoutingCHEdgeExplorer;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;-><init>(I)V

    new-instance v1, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;-><init>(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;Lcom/carrotsearch/hppc/o0;Lcom/graphhopper/storage/RoutingCHEdgeExplorer;)V

    return-object v1
.end method

.method public static bridge synthetic d(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;Lcom/graphhopper/util/EdgeIteratorState;I)Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->buildVirtualCHEdgeState(Lcom/graphhopper/util/EdgeIteratorState;I)Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->isVirtualNode(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->shiftVirtualEdgeIDForCH(I)I

    move-result p0

    return p0
.end method

.method private getInternalVirtualEdgeId(I)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->getEdges()I

    move-result p0

    sub-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private getVirtualEdgeState(II)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;
    .locals 3

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->getInternalVirtualEdgeId(I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v1, v0}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->getAdjNode()I

    move-result v2

    if-eq v2, p2, :cond_2

    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getPosOfReverseEdge(I)I

    move-result v0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->getAdjNode()I

    move-result v0

    if-ne v0, p2, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The virtual edge with ID "

    const-string v1, " does not touch node "

    invoke-static {v0, p1, v1, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private isVirtualEdge(I)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->getEdges()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVirtualNode(I)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->getNodes()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private shiftVirtualEdgeIDForCH(I)I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {v0}, Lcom/graphhopper/storage/RoutingCHGraph;->getEdges()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getEdges()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {v0}, Lcom/graphhopper/storage/RoutingCHGraph;->close()V

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->virtualEdgesAtVirtualNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->virtualInEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v0}, Lcom/carrotsearch/hppc/o0;->clear()V

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->virtualOutEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-interface {p0}, Lcom/carrotsearch/hppc/o0;->clear()V

    return-void
.end method

.method public createInEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {v0}, Lcom/graphhopper/storage/RoutingCHGraph;->createInEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->virtualInEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->createEdgeExplorer(Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Lcom/carrotsearch/hppc/o0;)Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    move-result-object p0

    return-object p0
.end method

.method public createOutEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {v0}, Lcom/graphhopper/storage/RoutingCHGraph;->createOutEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->virtualOutEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->createEdgeExplorer(Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Lcom/carrotsearch/hppc/o0;)Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    move-result-object p0

    return-object p0
.end method

.method public getBaseGraph()Lcom/graphhopper/storage/Graph;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryGraph:Lcom/graphhopper/routing/querygraph/QueryGraph;

    return-object p0
.end method

.method public getEdgeIteratorState(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;
    .locals 1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->isVirtualEdge(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/storage/RoutingCHGraph;->getEdgeIteratorState(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->getVirtualEdgeState(II)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->buildVirtualCHEdgeState(Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;)Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public getEdges()I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {v0}, Lcom/graphhopper/storage/RoutingCHGraph;->getEdges()I

    move-result v0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {p0}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getNumVirtualEdges()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getLevel(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->isVirtualNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0, p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getLevel(I)I

    move-result p0

    return p0
.end method

.method public getNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->nodes:I

    return p0
.end method

.method public getShortcuts()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->getShortcuts()I

    move-result p0

    return p0
.end method

.method public getTurnWeight(III)D
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {v0}, Lcom/graphhopper/storage/RoutingCHGraph;->hasTurnCosts()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->queryGraphWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnWeight(III)D

    move-result-wide p0

    return-wide p0
.end method

.method public getWeighting()Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-object p0
.end method

.method public hasTurnCosts()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->hasTurnCosts()Z

    move-result p0

    return p0
.end method

.method public isEdgeBased()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->isEdgeBased()Z

    move-result p0

    return p0
.end method
