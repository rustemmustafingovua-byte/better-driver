.class public Lcom/graphhopper/routing/CHPathCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/PathCalculator;


# instance fields
.field private final algoFactory:Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;

.field private final algoOpts:Lcom/graphhopper/util/PMap;

.field private debug:Ljava/lang/String;

.field private visitedNodes:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;Lcom/graphhopper/util/PMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/CHPathCalculator;->algoFactory:Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;

    iput-object p2, p0, Lcom/graphhopper/routing/CHPathCalculator;->algoOpts:Lcom/graphhopper/util/PMap;

    return-void
.end method

.method private calcPaths(IILcom/graphhopper/routing/EdgeRestrictions;Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/graphhopper/routing/EdgeRestrictions;",
            "Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;",
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
    invoke-virtual {p3}, Lcom/graphhopper/routing/EdgeRestrictions;->getSourceOutEdge()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p3}, Lcom/graphhopper/routing/EdgeRestrictions;->getTargetInEdge()I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p4, p1, p2}, Lcom/graphhopper/routing/RoutingAlgorithm;->calcPaths(II)Ljava/util/List;

    move-result-object p3

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/graphhopper/routing/EdgeRestrictions;->getSourceOutEdge()I

    move-result v1

    .line 5
    invoke-virtual {p3}, Lcom/graphhopper/routing/EdgeRestrictions;->getTargetInEdge()I

    move-result p3

    .line 6
    invoke-interface {p4, p1, p2, v1, p3}, Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;->calcPath(IIII)Lcom/graphhopper/routing/Path;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 7
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/graphhopper/routing/CHPathCalculator;->algoOpts:Lcom/graphhopper/util/PMap;

    const-string p2, "max_visited_nodes"

    const v1, 0x7fffffff

    invoke-virtual {p1, p2, v1}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 9
    invoke-interface {p4}, Lcom/graphhopper/routing/RoutingAlgorithm;->getVisitedNodes()I

    move-result p2

    if-ge p2, p1, :cond_2

    .line 10
    invoke-interface {p4}, Lcom/graphhopper/routing/RoutingAlgorithm;->getVisitedNodes()I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/CHPathCalculator;->visitedNodes:I

    .line 11
    iget-object p1, p0, Lcom/graphhopper/routing/CHPathCalculator;->debug:Ljava/lang/String;

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

    .line 12
    invoke-static {v0, v1, p1, p4}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/graphhopper/routing/CHPathCalculator;->debug:Ljava/lang/String;

    return-object p3

    .line 14
    :cond_2
    new-instance p0, Lcom/graphhopper/util/exceptions/MaximumNodesExceededException;

    const-string p2, "No path found due to maximum nodes exceeded "

    .line 15
    invoke-static {p1, p2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-direct {p0, p2, p1}, Lcom/graphhopper/util/exceptions/MaximumNodesExceededException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p3, "Path list was empty for "

    const-string p4, " -> "

    .line 18
    invoke-static {p3, p1, p4, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createAlgo()Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;
    .locals 6

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/CHPathCalculator;->algoFactory:Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;

    iget-object v2, p0, Lcom/graphhopper/routing/CHPathCalculator;->algoOpts:Lcom/graphhopper/util/PMap;

    invoke-virtual {v1, v2}, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;->createAlgo(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;

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

    iput-object v0, p0, Lcom/graphhopper/routing/CHPathCalculator;->debug:Ljava/lang/String;

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

    .line 36
    invoke-virtual {p3}, Lcom/graphhopper/routing/EdgeRestrictions;->getUnfavoredEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/graphhopper/routing/CHPathCalculator;->createAlgo()Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;

    move-result-object v0

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/graphhopper/routing/CHPathCalculator;->calcPaths(IILcom/graphhopper/routing/EdgeRestrictions;Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Using unfavored edges is currently not supported for CH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/CHPathCalculator;->debug:Ljava/lang/String;

    return-object p0
.end method

.method public getVisitedNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/CHPathCalculator;->visitedNodes:I

    return p0
.end method
