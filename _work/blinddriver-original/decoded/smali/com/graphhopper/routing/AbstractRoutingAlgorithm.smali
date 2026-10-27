.class public abstract Lcom/graphhopper/routing/AbstractRoutingAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/RoutingAlgorithm;


# instance fields
.field private alreadyRun:Z

.field protected final edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

.field private finishTimeMillis:J

.field protected final graph:Lcom/graphhopper/storage/Graph;

.field protected maxVisitedNodes:I

.field protected final nodeAccess:Lcom/graphhopper/storage/NodeAccess;

.field protected timeoutMillis:J

.field protected final traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

.field protected final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->maxVisitedNodes:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->timeoutMillis:J

    iput-wide v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->finishTimeMillis:J

    invoke-interface {p2}, Lcom/graphhopper/routing/weighting/Weighting;->hasTurnCosts()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Weightings supporting turn costs cannot be used with node-based traversal mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iput-object p3, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    return-void
.end method


# virtual methods
.method public accept(Lcom/graphhopper/util/EdgeIteratorState;I)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p0

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public calcPaths(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/Path;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/RoutingAlgorithm;->calcPath(II)Lcom/graphhopper/routing/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public checkAlreadyRun()V
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->alreadyRun:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->alreadyRun:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Create a new instance per call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createEmptyPath()Lcom/graphhopper/routing/Path;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/Path;

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->graph:Lcom/graphhopper/storage/Graph;

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/Path;-><init>(Lcom/graphhopper/storage/Graph;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isMaxVisitedNodesExceeded()Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->maxVisitedNodes:I

    invoke-interface {p0}, Lcom/graphhopper/routing/RoutingAlgorithm;->getVisitedNodes()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTimeoutExceeded()Z
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->finishTimeMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->finishTimeMillis:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMaxVisitedNodes(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->maxVisitedNodes:I

    return-void
.end method

.method public setTimeoutMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->timeoutMillis:J

    return-void
.end method

.method public setupFinishTime()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->timeoutMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->finishTimeMillis:J
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->finishTimeMillis:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "|"

    invoke-static {v0, v1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
