.class public Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;
.super Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/EdgeExplorer;
.implements Lcom/graphhopper/util/EdgeIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/BaseGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EdgeIteratorImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final filter:Lcom/graphhopper/routing/util/EdgeFilter;

.field nextEdgeId:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/EdgeFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;-><init>(Lcom/graphhopper/storage/BaseGraph;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->filter:Lcom/graphhopper/routing/util/EdgeFilter;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Instead null filter use EdgeFilter.ALL_EDGES"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public detach(Z)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 4

    iget v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->nextEdgeId:I

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->detach(Z)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->nextEdgeId:I

    const-string v1, " vs. next "

    const-string v2, ")"

    const-string v3, "call next before detaching (edgeId:"

    invoke-static {v3, v0, v1, p0, v2}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public goToNext()V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->nextEdgeId:I

    invoke-virtual {v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    iget v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->nextEdgeId:I

    iput v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v2, v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeA(J)I

    move-result v0

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v0, v2, v3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeB(J)I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    xor-int/lit8 v0, v1, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLinkA(J)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLinkB(J)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->nextEdgeId:I

    return-void
.end method

.method public final next()Z
    .locals 1

    :cond_0
    iget v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->nextEdgeId:I

    invoke-static {v0}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->goToNext()V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->filter:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-interface {v0, p0}, Lcom/graphhopper/routing/util/EdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdgeRef(J)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;->nextEdgeId:I

    iput p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    return-object p0
.end method
