.class public Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;
.super Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/RoutingCHEdgeExplorer;
.implements Lcom/graphhopper/storage/RoutingCHEdgeIterator;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final baseIterator:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

.field private final incoming:Z

.field private nextEdgeId:I

.field private final outgoing:Z


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/weighting/Weighting;ZZ)V
    .locals 2

    new-instance v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

    sget-object v1, Lcom/graphhopper/routing/util/EdgeFilter;->ALL_EDGES:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-direct {v0, p2, v1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/EdgeFilter;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;-><init>(Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;Lcom/graphhopper/routing/weighting/Weighting;)V

    iget-object p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseEdgeState:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    check-cast p1, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

    iput-object p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->baseIterator:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

    iput-boolean p4, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->outgoing:Z

    iput-boolean p5, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->incoming:Z

    return-void
.end method

.method private finiteWeight(Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->getOrigEdgeWeight(Z)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static inEdges(Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;
    .locals 6

    new-instance v0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;-><init>(Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/weighting/Weighting;ZZ)V

    return-object v0
.end method

.method public static outEdges(Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;
    .locals 6

    new-instance v0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;-><init>(Lcom/graphhopper/storage/CHStorage;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/weighting/Weighting;ZZ)V

    return-object v0
.end method


# virtual methods
.method public edgeState()Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->baseIterator:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

    return-object p0
.end method

.method public next()Z
    .locals 5

    :cond_0
    iget v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->nextEdgeId:I

    iget-object v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->nextEdgeId:I

    iget-object v3, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v3}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/graphhopper/storage/CHStorage;->toShortcutPointer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    iget-object v3, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v3, v0, v1}, Lcom/graphhopper/storage/CHStorage;->getNodeA(J)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseNode:I

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-wide v3, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/CHStorage;->getNodeB(J)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->adjNode:I

    iget v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->nextEdgeId:I

    iput v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeId:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->nextEdgeId:I

    iget-object v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->nextEdgeId:I

    iget-object v3, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v3}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/graphhopper/storage/CHStorage;->toShortcutPointer(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/CHStorage;->getNodeA(J)I

    move-result v0

    iget v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseNode:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->baseIterator:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

    iget v0, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iput v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->nextEdgeId:I

    :cond_2
    iget v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseNode:I

    iget v1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->adjNode:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-wide v3, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/CHStorage;->getFwdAccess(J)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-wide v3, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/CHStorage;->getBwdAccess(J)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->outgoing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-wide v3, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/CHStorage;->getFwdAccess(J)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->incoming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    iget-wide v3, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->shortcutPointer:J

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/CHStorage;->getBwdAccess(J)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    return v2

    :cond_6
    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->baseIterator:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

    iget v0, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->nextEdgeId:I

    invoke-static {v0}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->baseIterator:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->goToNext()V

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->baseIterator:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

    iget v0, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iput v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeId:I

    iget-boolean v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->outgoing:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, v1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->finiteWeight(Z)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->incoming:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->finiteWeight(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_8
    return v2

    :cond_9
    return v1
.end method

.method public setBaseNode(I)Lcom/graphhopper/storage/RoutingCHEdgeIterator;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->baseIterator:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/CHStorage;->toNodePointer(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getLastShortcut(J)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->baseIterator:Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

    iget p1, p1, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v0

    add-int/2addr p1, v0

    :goto_0
    iput p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->edgeId:I

    iput p1, p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorImpl;->nextEdgeId:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->getEdge()I

    move-result v0

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->getBaseNode()I

    move-result v1

    invoke-virtual {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorStateImpl;->getAdjNode()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
