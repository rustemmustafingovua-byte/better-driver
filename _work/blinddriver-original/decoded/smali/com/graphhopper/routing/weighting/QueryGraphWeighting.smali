.class public Lcom/graphhopper/routing/weighting/QueryGraphWeighting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/Weighting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;
    }
.end annotation


# instance fields
.field private final closestEdges:Lcom/carrotsearch/hppc/x;

.field private final firstVirtualEdgeId:I

.field private final firstVirtualNodeId:I

.field private final graph:Lcom/graphhopper/storage/BaseGraph;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/carrotsearch/hppc/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->graph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result p2

    iput p2, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->firstVirtualNodeId:I

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->firstVirtualEdgeId:I

    iput-object p3, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->closestEdges:Lcom/carrotsearch/hppc/x;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;Lcom/graphhopper/util/EdgeExplorer;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->lambda$getMinWeightAndOriginalEdges$1(Lcom/graphhopper/util/EdgeExplorer;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V

    return-void
.end method

.method public static synthetic b(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->lambda$getMinWeightAndOriginalEdges$3(IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V

    return-void
.end method

.method public static synthetic c(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->lambda$getMinWeightAndOriginalEdges$0(IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V

    return-void
.end method

.method public static synthetic d(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->lambda$getMinWeightAndOriginalEdges$2(IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V

    return-void
.end method

.method private getMinWeightAndOriginalEdges(III)Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;
    .locals 8

    new-instance v4, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->isVirtualEdge(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->isVirtualEdge(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object v2

    iget-object v6, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v6}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->getOriginalEdge(I)I

    move-result p1

    new-instance v0, Lcom/graphhopper/routing/weighting/b;

    move-object v1, p0

    move v3, p2

    move-object v5, v4

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/weighting/b;-><init>(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;Lcom/graphhopper/util/EdgeExplorer;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;)V

    move-object v4, v5

    invoke-virtual {v6, v7, v3, p1, v0}, Lcom/graphhopper/storage/BaseGraph;->forEdgeAndCopiesOfEdge(Lcom/graphhopper/util/EdgeExplorer;IILjava/util/function/IntConsumer;)V

    return-object v4

    :cond_0
    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct {v1, p1}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->isVirtualEdge(I)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p2

    invoke-direct {v1, p1}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->getOriginalEdge(I)I

    move-result p1

    new-instance v0, Lcom/graphhopper/routing/weighting/a;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/weighting/a;-><init>(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V

    move v3, v2

    invoke-virtual {p0, p2, v3, p1, v0}, Lcom/graphhopper/storage/BaseGraph;->forEdgeAndCopiesOfEdge(Lcom/graphhopper/util/EdgeExplorer;IILjava/util/function/IntConsumer;)V

    return-object v4

    :cond_1
    move p0, v3

    move v3, v2

    invoke-direct {v1, p0}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->isVirtualEdge(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, v1, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p2}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p3

    invoke-direct {v1, p0}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->getOriginalEdge(I)I

    move-result p0

    new-instance v0, Lcom/graphhopper/routing/weighting/a;

    const/4 v5, 0x2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/weighting/a;-><init>(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V

    invoke-virtual {p2, p3, v3, p0, v0}, Lcom/graphhopper/storage/BaseGraph;->forEdgeAndCopiesOfEdge(Lcom/graphhopper/util/EdgeExplorer;IILjava/util/function/IntConsumer;)V

    return-object v4

    :cond_2
    move v2, p1

    iput v2, v4, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origInEdge:I

    iput p0, v4, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origOutEdge:I

    iget-object p1, v1, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p1, v2, v3, p0}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnWeight(III)D

    move-result-wide p0

    iput-wide p0, v4, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->minTurnWeight:D

    return-object v4
.end method

.method private getOriginalEdge(I)I
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->closestEdges:Lcom/carrotsearch/hppc/x;

    iget p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->firstVirtualEdgeId:I

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    return p0
.end method

.method private isUTurn(II)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVirtualEdge(I)Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->firstVirtualEdgeId:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVirtualNode(I)Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->firstVirtualNodeId:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getMinWeightAndOriginalEdges$0(IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V
    .locals 4

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2, p4}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnWeight(III)D

    move-result-wide v0

    iget-wide v2, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->minTurnWeight:D

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    iput p1, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origInEdge:I

    iput p4, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origOutEdge:I

    iput-wide v0, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->minTurnWeight:D

    :cond_0
    return-void
.end method

.method private synthetic lambda$getMinWeightAndOriginalEdges$1(Lcom/graphhopper/util/EdgeExplorer;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-direct {p0, p3}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->getOriginalEdge(I)I

    move-result p3

    new-instance v1, Lcom/graphhopper/routing/weighting/a;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p2

    move-object v5, p4

    move v3, p5

    invoke-direct/range {v1 .. v6}, Lcom/graphhopper/routing/weighting/a;-><init>(Lcom/graphhopper/routing/weighting/QueryGraphWeighting;IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V

    invoke-virtual {v0, p1, v4, p3, v1}, Lcom/graphhopper/storage/BaseGraph;->forEdgeAndCopiesOfEdge(Lcom/graphhopper/util/EdgeExplorer;IILjava/util/function/IntConsumer;)V

    return-void
.end method

.method private synthetic lambda$getMinWeightAndOriginalEdges$2(IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p4, p1, p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnWeight(III)D

    move-result-wide p0

    iget-wide v0, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->minTurnWeight:D

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    iput p4, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origInEdge:I

    iput p2, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origOutEdge:I

    iput-wide p0, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->minTurnWeight:D

    :cond_0
    return-void
.end method

.method private synthetic lambda$getMinWeightAndOriginalEdges$3(IILcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;I)V
    .locals 4

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2, p4}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnWeight(III)D

    move-result-wide v0

    iget-wide v2, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->minTurnWeight:D

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    iput p1, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origInEdge:I

    iput p4, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origOutEdge:I

    iput-wide v0, p3, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->minTurnWeight:D

    :cond_0
    return-void
.end method


# virtual methods
.method public calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcMinWeightPerDistance()D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0}, Lcom/graphhopper/routing/weighting/Weighting;->calcMinWeightPerDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public calcTurnMillis(III)J
    .locals 1

    invoke-direct {p0, p2}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->isVirtualNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->getMinWeightAndOriginalEdges(III)Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;

    move-result-object p1

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget p3, p1, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origInEdge:I

    iget p1, p1, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->origOutEdge:I

    invoke-interface {p0, p3, p2, p1}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnMillis(III)J

    move-result-wide p0

    return-wide p0
.end method

.method public calcTurnWeight(III)D
    .locals 3

    invoke-static {p1}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->isVirtualNode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->isUTurn(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_1
    return-wide v1

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->getMinWeightAndOriginalEdges(III)Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;

    move-result-object p0

    iget-wide p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting$Result;->minTurnWeight:D

    return-wide p0

    :cond_3
    :goto_0
    return-wide v1
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0}, Lcom/graphhopper/routing/weighting/Weighting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasTurnCosts()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0}, Lcom/graphhopper/routing/weighting/Weighting;->hasTurnCosts()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/routing/weighting/QueryGraphWeighting;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
