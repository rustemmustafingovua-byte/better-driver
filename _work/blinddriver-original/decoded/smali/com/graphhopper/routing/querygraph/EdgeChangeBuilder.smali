.class Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final closestEdges:Lcom/carrotsearch/hppc/x;

.field private final edgeChangesAtRealNodes:Lcom/carrotsearch/hppc/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation
.end field

.field private final firstVirtualNodeId:I

.field private final virtualEdges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/carrotsearch/hppc/x;Ljava/util/List;ILcom/carrotsearch/hppc/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/carrotsearch/hppc/x;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;",
            ">;I",
            "Lcom/carrotsearch/hppc/o0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->closestEdges:Lcom/carrotsearch/hppc/x;

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->virtualEdges:Ljava/util/List;

    iput p3, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->firstVirtualNodeId:I

    invoke-interface {p4}, Lcom/carrotsearch/hppc/k0;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p4, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->edgeChangesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "real node modifications need to be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->addRemovedEdges(I)V

    return-void
.end method

.method private addRemovedEdges(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->isVirtualNode(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->edgeChangesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v0, p1}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;

    invoke-virtual {p1}, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;->getAdditionalEdges()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;->getRemovedEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->getClosestEdge(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->edgeChangesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Node should not be virtual:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addVirtualEdges(ZII)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->edgeChangesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v0, p2}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;

    if-nez v0, :cond_0

    new-instance v0, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v1}, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;-><init>(II)V

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->edgeChangesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v1, p2, v0}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    mul-int/lit8 p3, p3, 0x4

    invoke-direct {p0, p3}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object p0

    goto :goto_0

    :cond_1
    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 p3, p3, 0x3

    invoke-direct {p0, p3}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object p0

    :goto_0
    invoke-virtual {v0}, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;->getAdditionalEdges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private build()V
    .locals 6

    .line 2
    new-instance v0, Lcom/graphhopper/coll/GHIntHashSet;

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->getNumVirtualNodes()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/graphhopper/coll/GHIntHashSet;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->getNumVirtualNodes()I

    move-result v3

    if-ge v2, v3, :cond_2

    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v4, v3, 0x1

    .line 4
    invoke-direct {p0, v4}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object v4

    .line 5
    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v4

    .line 6
    invoke-direct {p0, v4}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->isVirtualNode(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    invoke-virtual {v0, v4}, Lcom/carrotsearch/hppc/c0;->add(I)Z

    const/4 v5, 0x1

    .line 8
    invoke-direct {p0, v5, v4, v2}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->addVirtualEdges(ZII)V

    :cond_0
    add-int/lit8 v3, v3, 0x2

    .line 9
    invoke-direct {p0, v3}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object v3

    .line 10
    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v3

    .line 11
    invoke-direct {p0, v3}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->isVirtualNode(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    invoke-virtual {v0, v3}, Lcom/carrotsearch/hppc/c0;->add(I)Z

    .line 13
    invoke-direct {p0, v1, v3, v2}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->addVirtualEdges(ZII)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    new-instance v1, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder$1;

    invoke-direct {v1, p0}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder$1;-><init>(Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;)V

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/c0;->forEach(Lp5/c;)Lp5/c;

    return-void
.end method

.method public static build(Lcom/carrotsearch/hppc/x;Ljava/util/List;ILcom/carrotsearch/hppc/o0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/carrotsearch/hppc/x;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;",
            ">;I",
            "Lcom/carrotsearch/hppc/o0;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;-><init>(Lcom/carrotsearch/hppc/x;Ljava/util/List;ILcom/carrotsearch/hppc/o0;)V

    invoke-direct {v0}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->build()V

    return-void
.end method

.method private getClosestEdge(I)I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->closestEdges:Lcom/carrotsearch/hppc/x;

    iget p0, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->firstVirtualNodeId:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    return p0
.end method

.method private getNumVirtualNodes()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->closestEdges:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    return p0
.end method

.method private getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->virtualEdges:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    return-object p0
.end method

.method private isVirtualNode(I)Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->firstVirtualNodeId:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
