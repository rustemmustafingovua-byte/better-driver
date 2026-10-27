.class public Lcom/graphhopper/routing/FlexiblePathCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/PathCalculator;


# instance fields
.field private final algoFactory:Lcom/graphhopper/routing/RoutingAlgorithmFactory;

.field private final algoOpts:Lcom/graphhopper/routing/AlgorithmOptions;

.field private debug:Ljava/lang/String;

.field private final queryGraph:Lcom/graphhopper/routing/querygraph/QueryGraph;

.field private visitedNodes:I

.field private weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/routing/RoutingAlgorithmFactory;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/AlgorithmOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->queryGraph:Lcom/graphhopper/routing/querygraph/QueryGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->algoFactory:Lcom/graphhopper/routing/RoutingAlgorithmFactory;

    iput-object p3, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iput-object p4, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->algoOpts:Lcom/graphhopper/routing/AlgorithmOptions;

    return-void
.end method

.method private calcPaths(IILcom/graphhopper/routing/EdgeRestrictions;Lcom/graphhopper/routing/RoutingAlgorithm;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/graphhopper/routing/EdgeRestrictions;",
            "Lcom/graphhopper/routing/RoutingAlgorithm;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/Path;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    .line 2
    invoke-virtual {p3}, Lcom/graphhopper/routing/EdgeRestrictions;->getUnfavoredEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/a;

    .line 3
    iget-object v3, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->queryGraph:Lcom/graphhopper/routing/querygraph/QueryGraph;

    iget v2, v2, Ln5/a;->b:I

    invoke-virtual {v3, v2}, Lcom/graphhopper/routing/querygraph/QueryGraph;->unfavorVirtualEdge(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/graphhopper/routing/EdgeRestrictions;->getSourceOutEdge()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p3}, Lcom/graphhopper/routing/EdgeRestrictions;->getTargetInEdge()I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p4, p1, p2}, Lcom/graphhopper/routing/RoutingAlgorithm;->calcPaths(II)Ljava/util/List;

    move-result-object p3

    goto :goto_2

    .line 6
    :cond_2
    :goto_1
    instance-of v1, p4, Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;

    if-eqz v1, :cond_5

    .line 7
    move-object v1, p4

    check-cast v1, Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;

    invoke-virtual {p3}, Lcom/graphhopper/routing/EdgeRestrictions;->getSourceOutEdge()I

    move-result v2

    invoke-virtual {p3}, Lcom/graphhopper/routing/EdgeRestrictions;->getTargetInEdge()I

    move-result p3

    invoke-interface {v1, p1, p2, v2, p3}, Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;->calcPath(IIII)Lcom/graphhopper/routing/Path;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 8
    :goto_2
    iget-object v1, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->queryGraph:Lcom/graphhopper/routing/querygraph/QueryGraph;

    invoke-virtual {v1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->clearUnfavoredStatus()V

    .line 9
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    invoke-interface {p4}, Lcom/graphhopper/routing/RoutingAlgorithm;->getVisitedNodes()I

    move-result p1

    iget-object p2, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->algoOpts:Lcom/graphhopper/routing/AlgorithmOptions;

    invoke-virtual {p2}, Lcom/graphhopper/routing/AlgorithmOptions;->getMaxVisitedNodes()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 11
    invoke-interface {p4}, Lcom/graphhopper/routing/RoutingAlgorithm;->getVisitedNodes()I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->visitedNodes:I

    .line 12
    iget-object p1, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->debug:Ljava/lang/String;

    invoke-interface {p4}, Lcom/graphhopper/routing/RoutingAlgorithm;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object p4

    invoke-virtual {p4}, Lcom/graphhopper/util/StopWatch;->getMillis()J

    move-result-wide v0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-routing:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    .line 13
    invoke-static {v0, v1, p1, p4}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->debug:Ljava/lang/String;

    return-object p3

    .line 15
    :cond_3
    new-instance p1, Lcom/graphhopper/util/exceptions/MaximumNodesExceededException;

    iget-object p2, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->algoOpts:Lcom/graphhopper/routing/AlgorithmOptions;

    invoke-virtual {p2}, Lcom/graphhopper/routing/AlgorithmOptions;->getMaxVisitedNodes()I

    move-result p2

    const-string p3, "No path found due to maximum nodes exceeded "

    .line 16
    invoke-static {p2, p3}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 17
    iget-object p0, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->algoOpts:Lcom/graphhopper/routing/AlgorithmOptions;

    invoke-virtual {p0}, Lcom/graphhopper/routing/AlgorithmOptions;->getMaxVisitedNodes()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/graphhopper/util/exceptions/MaximumNodesExceededException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p3, "Path list was empty for "

    const-string p4, " -> "

    .line 19
    invoke-static {p3, p1, p4, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p4}, Lcom/graphhopper/routing/RoutingAlgorithm;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "To make use of the curbside parameter you need a bidirectional algorithm, got: "

    .line 22
    invoke-static {p2, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createAlgo()Lcom/graphhopper/routing/RoutingAlgorithm;
    .locals 6

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->algoFactory:Lcom/graphhopper/routing/RoutingAlgorithmFactory;

    iget-object v2, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->queryGraph:Lcom/graphhopper/routing/querygraph/QueryGraph;

    iget-object v3, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v4, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->algoOpts:Lcom/graphhopper/routing/AlgorithmOptions;

    invoke-interface {v1, v2, v3, v4}, Lcom/graphhopper/routing/RoutingAlgorithmFactory;->createAlgo(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/AlgorithmOptions;)Lcom/graphhopper/routing/RoutingAlgorithm;

    move-result-object v1

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->getNanos()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, ", algoInit:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " \u03bcs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->debug:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public calcPaths(IILcom/graphhopper/routing/EdgeRestrictions;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/graphhopper/routing/EdgeRestrictions;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/Path;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/graphhopper/routing/FlexiblePathCalculator;->createAlgo()Lcom/graphhopper/routing/RoutingAlgorithm;

    move-result-object v0

    .line 45
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/graphhopper/routing/FlexiblePathCalculator;->calcPaths(IILcom/graphhopper/routing/EdgeRestrictions;Lcom/graphhopper/routing/RoutingAlgorithm;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->debug:Ljava/lang/String;

    return-object p0
.end method

.method public getVisitedNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->visitedNodes:I

    return p0
.end method

.method public getWeighting()Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-object p0
.end method

.method public setWeighting(Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/FlexiblePathCalculator;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void
.end method
