.class public Lcom/graphhopper/storage/BaseGraph$AllEdgeIterator;
.super Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/AllEdgesIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/BaseGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllEdgeIterator"
.end annotation


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;-><init>(Lcom/graphhopper/storage/BaseGraph;)V

    return-void
.end method


# virtual methods
.method public final detach(Z)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    new-instance v0, Lcom/graphhopper/storage/BaseGraph$AllEdgeIterator;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-direct {v0, v1}, Lcom/graphhopper/storage/BaseGraph$AllEdgeIterator;-><init>(Lcom/graphhopper/storage/BaseGraph;)V

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iput v1, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    iput-wide v1, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    iput p1, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    iget p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    iput p0, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    return-object v0

    :cond_0
    iget-boolean p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iput-boolean p1, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    iput p1, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    iget p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    iput p0, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call next before detaching"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdges()I

    move-result p0

    return p0
.end method

.method public next()Z
    .locals 6

    iget v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdges()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    invoke-virtual {v0, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeA(J)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v4, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeB(J)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    iput-boolean v3, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    return v1
.end method
