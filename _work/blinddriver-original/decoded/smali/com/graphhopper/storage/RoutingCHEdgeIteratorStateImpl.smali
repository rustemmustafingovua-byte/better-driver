.class public Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;


# instance fields
.field adjNode:I

.field final baseEdgeState:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

.field final baseGraph:Lcom/graphhopper/storage/BaseGraph;

.field baseNode:I

.field edgeId:I

.field shortcutPointer:J

.field final store:Lcom/graphhopper/storage/CHStorage;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    iput-object p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iput-object p2, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p3, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseEdgeState:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    iput-object p4, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void
.end method

.method private getBaseGraphEdgeState()Lcom/graphhopper/util/EdgeIteratorState;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "getBaseGraphEdgeState"

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->checkShortcut(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeState()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkShortcut(ZLjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->getEdge()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on shortcut "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->getEdge()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " only for shortcuts "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public edgeState()Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseEdgeState:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    return-object p0
.end method

.method public getAdjNode()I
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->adjNode:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeState()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p0

    return p0
.end method

.method public getBaseNode()I
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseNode:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeState()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p0

    return p0
.end method

.method public getEdge()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeId:I

    return p0
.end method

.method public getOrigEdge()I
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeState()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p0

    return p0
.end method

.method public getOrigEdgeKeyFirst()I
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v0}, Lcom/graphhopper/storage/CHStorage;->isEdgeBased()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-wide v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getOrigEdgeKeyFirst(J)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeState()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result p0

    return p0
.end method

.method public getOrigEdgeKeyLast()I
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v0}, Lcom/graphhopper/storage/CHStorage;->isEdgeBased()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-wide v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getOrigEdgeKeyLast(J)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeState()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result p0

    return p0
.end method

.method public getOrigEdgeWeight(Z)D
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-direct {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->getBaseGraphEdgeState()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public getSkippedEdge1()I
    .locals 3

    const/4 v0, 0x1

    const-string v1, "getSkippedEdge1"

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->checkShortcut(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-wide v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getSkippedEdge1(J)I

    move-result p0

    return p0
.end method

.method public getSkippedEdge2()I
    .locals 3

    const/4 v0, 0x1

    const-string v1, "getSkippedEdge2"

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->checkShortcut(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-wide v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getSkippedEdge2(J)I

    move-result p0

    return p0
.end method

.method public getWeight(Z)D
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-wide v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/storage/CHStorage;->getWeight(J)D

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->getOrigEdgeWeight(Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public init(II)Z
    .locals 2

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v1}, Lcom/graphhopper/storage/CHStorage;->getShortcuts()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_4

    iput p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeId:I

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-object v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/CHStorage;->toShortcutPointer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    iget-object p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/storage/CHStorage;->getNodeA(J)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseNode:I

    iget-object p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-wide v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/storage/CHStorage;->getNodeB(J)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->adjNode:I

    const/4 v0, 0x1

    if-eq p2, p1, :cond_2

    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseNode:I

    if-ne p2, v1, :cond_1

    iput p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseNode:I

    iput p2, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->adjNode:I

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseEdgeState:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->init(II)Z

    move-result p0

    return p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p2}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result p2

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHStorage;->getShortcuts()I

    move-result p0

    add-int/2addr p0, p2

    const-string p2, "edge must be in bounds: [0,"

    const-string v0, "["

    invoke-static {p0, p2, v0}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isShortcut()Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeId:I

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
