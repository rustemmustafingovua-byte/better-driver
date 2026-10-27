.class public abstract Lcom/graphhopper/routing/AbstractBidirAlgo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private alreadyRun:Z

.field protected bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

.field protected bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

.field protected bestWeight:D

.field protected bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation
.end field

.field protected bestWeightMapOther:Lcom/carrotsearch/hppc/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation
.end field

.field protected bestWeightMapTo:Lcom/carrotsearch/hppc/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation
.end field

.field protected currFrom:Lcom/graphhopper/routing/SPTEntry;

.field protected currTo:Lcom/graphhopper/routing/SPTEntry;

.field private finishTimeMillis:J

.field protected finishedFrom:Z

.field protected finishedTo:Z

.field protected from:I

.field protected fromOutEdge:I

.field protected maxVisitedNodes:I

.field pqOpenSetFrom:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/graphhopper/routing/SPTEntry;",
            ">;"
        }
    .end annotation
.end field

.field pqOpenSetTo:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/graphhopper/routing/SPTEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected timeoutMillis:J

.field protected to:I

.field protected toInEdge:I

.field protected final traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

.field protected updateBestPath:Z

.field visitedCountFrom:I

.field visitedCountTo:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/util/TraversalMode;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    const v0, 0x7fffffff

    iput v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->maxVisitedNodes:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->timeoutMillis:J

    iput-wide v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishTimeMillis:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->updateBestPath:Z

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    const/4 p1, -0x2

    iput p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromOutEdge:I

    iput p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    return-void
.end method


# virtual methods
.method public bwdSearchCanBeStopped()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public calcPath(II)Lcom/graphhopper/routing/Path;
    .locals 1

    const/4 v0, -0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->calcPath(IIII)Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0
.end method

.method public calcPath(IIII)Lcom/graphhopper/routing/Path;
    .locals 8

    const/4 v0, -0x2

    if-ne p3, v0, :cond_0

    if-eq p4, v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iput p3, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromOutEdge:I

    .line 4
    iput p4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    .line 5
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->checkAlreadyRun()V

    .line 6
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->setupFinishTime()V

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v5, p2

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcom/graphhopper/routing/AbstractBidirAlgo;->init(IDID)V

    .line 8
    invoke-virtual {v1}, Lcom/graphhopper/routing/AbstractBidirAlgo;->runAlgo()V

    .line 9
    invoke-virtual {v1}, Lcom/graphhopper/routing/AbstractBidirAlgo;->extractPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Restricting the start/target edges is only possible for edge-based graph traversal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/AbstractBidirAlgo;->calcPath(II)Lcom/graphhopper/routing/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public checkAlreadyRun()V
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->alreadyRun:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->alreadyRun:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Create a new instance per call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract createStartEntry(IDZ)Lcom/graphhopper/routing/SPTEntry;
.end method

.method public abstract extractPath()Lcom/graphhopper/routing/Path;
.end method

.method public abstract fillEdgesFrom()Z
.end method

.method public abstract fillEdgesTo()Z
.end method

.method public finished()Z
    .locals 6

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v2, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v4, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public fromEntryCanBeSkipped()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public fwdSearchCanBeStopped()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBestFromMap()Lcom/carrotsearch/hppc/o0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    return-object p0
.end method

.method public getBestToMap()Lcom/carrotsearch/hppc/o0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    return-object p0
.end method

.method public getCurrentFromWeight()D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v0, p0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    return-wide v0
.end method

.method public getCurrentToWeight()D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v0, p0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    return-wide v0
.end method

.method public abstract getInEdgeWeight(Lcom/graphhopper/routing/SPTEntry;)D
.end method

.method public getIncomingEdge(Lcom/graphhopper/routing/SPTEntry;)I
    .locals 0

    iget p0, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVisitedNodes()I
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->visitedCountFrom:I

    iget p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->visitedCountTo:I

    add-int/2addr v0, p0

    return v0
.end method

.method public init(IDID)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/AbstractBidirAlgo;->initFrom(ID)V

    invoke-virtual {p0, p4, p5, p6}, Lcom/graphhopper/routing/AbstractBidirAlgo;->initTo(ID)V

    invoke-virtual {p0, p1, p4}, Lcom/graphhopper/routing/AbstractBidirAlgo;->postInit(II)V

    return-void
.end method

.method public initCollections(I)V
    .locals 1

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0, p1}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetFrom:Ljava/util/PriorityQueue;

    new-instance v0, Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-direct {v0, p1}, Lcom/graphhopper/coll/GHIntObjectHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0, p1}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetTo:Ljava/util/PriorityQueue;

    new-instance v0, Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-direct {v0, p1}, Lcom/graphhopper/coll/GHIntObjectHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    return-void
.end method

.method public initFrom(ID)V
    .locals 1

    iput p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->from:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->createStartEntry(IDZ)Lcom/graphhopper/routing/SPTEntry;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-object p3, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetFrom:Ljava/util/PriorityQueue;

    invoke-virtual {p3, p2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {p2}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    invoke-interface {p2, p1, p0}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public initTo(ID)V
    .locals 1

    iput p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->to:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->createStartEntry(IDZ)Lcom/graphhopper/routing/SPTEntry;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-object p3, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetTo:Ljava/util/PriorityQueue;

    invoke-virtual {p3, p2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {p2}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    invoke-interface {p2, p1, p0}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public isMaxVisitedNodesExceeded()Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->maxVisitedNodes:I

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getVisitedNodes()I

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

    iget-wide v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishTimeMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishTimeMillis:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public postInit(II)V
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->updateBestPath:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapOther:Lcom/carrotsearch/hppc/o0;

    iget-object v3, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    const/4 v4, -0x1

    const/4 v6, 0x1

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/graphhopper/routing/AbstractBidirAlgo;->updateBestPath(DLcom/graphhopper/routing/SPTEntry;IIZ)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, p0

    move v5, p2

    if-ne p1, v5, :cond_3

    iget p0, v0, Lcom/graphhopper/routing/AbstractBidirAlgo;->fromOutEdge:I

    const/4 p1, -0x2

    if-ne p0, p1, :cond_3

    iget p0, v0, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    if-ne p0, p1, :cond_3

    iget-object p0, v0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-wide p1, p0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    const-wide/16 v1, 0x0

    cmpl-double p1, p1, v1

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v3, p1, Lcom/graphhopper/routing/SPTEntry;->weight:D

    cmpl-double p2, v3, v1

    if-nez p2, :cond_2

    iput-object p0, v0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

    iput-object p1, v0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

    iput-wide v1, v0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    iput-boolean p0, v0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "If from=to, the starting weight must be zero for from and to"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->postInitFrom()V

    invoke-virtual {v0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->postInitTo()V

    return-void
.end method

.method public abstract postInitFrom()V
.end method

.method public abstract postInitTo()V
.end method

.method public runAlgo()V
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->finished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->isMaxVisitedNodesExceeded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->isTimeoutExceeded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->fillEdgesFrom()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    :cond_1
    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->fillEdgesTo()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setBestOtherMap(Lcom/carrotsearch/hppc/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/carrotsearch/hppc/o0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapOther:Lcom/carrotsearch/hppc/o0;

    return-void
.end method

.method public setMaxVisitedNodes(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->maxVisitedNodes:I

    return-void
.end method

.method public setTimeoutMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->timeoutMillis:J

    return-void
.end method

.method public setToDataStructures(Lcom/graphhopper/routing/AbstractBidirAlgo;)V
    .locals 1

    iget v0, p1, Lcom/graphhopper/routing/AbstractBidirAlgo;->to:I

    iput v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->to:I

    iget v0, p1, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    iput v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->toInEdge:I

    iget-object v0, p1, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetTo:Ljava/util/PriorityQueue;

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->pqOpenSetTo:Ljava/util/PriorityQueue;

    iget-object v0, p1, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    iget-boolean v0, p1, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    iput-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    iget-object v0, p1, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iput-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget p1, p1, Lcom/graphhopper/routing/AbstractBidirAlgo;->visitedCountTo:I

    iput p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->visitedCountTo:I

    return-void
.end method

.method public setUpdateBestPath(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->updateBestPath:Z

    return-void
.end method

.method public setupFinishTime()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->timeoutMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishTimeMillis:J
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishTimeMillis:J

    return-void
.end method

.method public toEntryCanBeSkipped()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateBestPath(DLcom/graphhopper/routing/SPTEntry;IIZ)V
    .locals 4

    iget-object p4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapOther:Lcom/carrotsearch/hppc/o0;

    invoke-interface {p4, p5}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/graphhopper/routing/SPTEntry;

    if-nez p4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p3}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v0

    invoke-virtual {p4}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v2

    add-double/2addr v2, v0

    iget-object p5, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {p5}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p0, p4}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getIncomingEdge(Lcom/graphhopper/routing/SPTEntry;)I

    move-result p5

    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getIncomingEdge(Lcom/graphhopper/routing/SPTEntry;)I

    move-result v0

    if-ne p5, v0, :cond_1

    invoke-virtual {p3}, Lcom/graphhopper/routing/SPTEntry;->getParent()Lcom/graphhopper/routing/SPTEntry;

    move-result-object p3

    sub-double/2addr v2, p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "cannot happen for edge based execution of "

    invoke-static {p2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-wide p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    cmpg-double p1, v2, p1

    if-gez p1, :cond_5

    if-eqz p6, :cond_3

    move-object p1, p4

    goto :goto_1

    :cond_3
    move-object p1, p3

    :goto_1
    iput-object p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

    if-eqz p6, :cond_4

    move-object p4, p3

    :cond_4
    iput-object p4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

    iput-wide v2, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    :cond_5
    :goto_2
    return-void
.end method
