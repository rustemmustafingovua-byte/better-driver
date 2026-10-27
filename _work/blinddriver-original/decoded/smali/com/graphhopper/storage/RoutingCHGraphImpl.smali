.class public Lcom/graphhopper/storage/RoutingCHGraphImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/RoutingCHGraph;


# instance fields
.field private final baseGraph:Lcom/graphhopper/storage/BaseGraph;

.field private final chStorage:Lcom/graphhopper/storage/CHStorage;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p3}, Lcom/graphhopper/routing/weighting/Weighting;->hasTurnCosts()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/graphhopper/storage/CHStorage;->isEdgeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Weighting has turn costs, but CHStorage is node-based"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p2, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->chStorage:Lcom/graphhopper/storage/CHStorage;

    iput-object p3, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void
.end method

.method public static fromGraph(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/CHConfig;)Lcom/graphhopper/storage/RoutingCHGraph;
    .locals 1

    new-instance v0, Lcom/graphhopper/storage/RoutingCHGraphImpl;

    invoke-virtual {p2}, Lcom/graphhopper/storage/CHConfig;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/graphhopper/storage/RoutingCHGraphImpl;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/routing/weighting/Weighting;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->close()V

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->chStorage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHStorage;->close()V

    return-void
.end method

.method public createInEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->chStorage:Lcom/graphhopper/storage/CHStorage;

    iget-object v1, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static {v0, v1, p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->inEdges(Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;

    move-result-object p0

    return-object p0
.end method

.method public createOutEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->chStorage:Lcom/graphhopper/storage/CHStorage;

    iget-object v1, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static {v0, v1, p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->outEdges(Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;

    move-result-object p0

    return-object p0
.end method

.method public getBaseGraph()Lcom/graphhopper/storage/Graph;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    return-object p0
.end method

.method public getCHStorage()Lcom/graphhopper/storage/CHStorage;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->chStorage:Lcom/graphhopper/storage/CHStorage;

    return-object p0
.end method

.method public getEdgeIteratorState(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;
    .locals 4

    new-instance v0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;

    iget-object v1, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->chStorage:Lcom/graphhopper/storage/CHStorage;

    iget-object v2, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    new-instance v3, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    invoke-direct {v3, v2}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;-><init>(Lcom/graphhopper/storage/BaseGraph;)V

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;-><init>(Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;Lcom/graphhopper/routing/weighting/Weighting;)V

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->init(II)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEdges()I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v0

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->chStorage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHStorage;->getShortcuts()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getLevel(I)I
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->chStorage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/CHStorage;->toNodePointer(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/storage/CHStorage;->getLevel(J)I

    move-result p0

    return p0
.end method

.method public getNodes()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result p0

    return p0
.end method

.method public getShortcuts()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->chStorage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHStorage;->getShortcuts()I

    move-result p0

    return p0
.end method

.method public getTurnWeight(III)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnWeight(III)D

    move-result-wide p0

    return-wide p0
.end method

.method public getWeighting()Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-object p0
.end method

.method public hasTurnCosts()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0}, Lcom/graphhopper/routing/weighting/Weighting;->hasTurnCosts()Z

    move-result p0

    return p0
.end method

.method public isEdgeBased()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHGraphImpl;->chStorage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHStorage;->isEdgeBased()Z

    move-result p0

    return p0
.end method
