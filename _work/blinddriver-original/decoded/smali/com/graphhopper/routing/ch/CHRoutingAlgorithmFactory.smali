.class public Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/routing/querygraph/QueryGraph;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;

    invoke-direct {v0, p1, p2}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/routing/querygraph/QueryGraph;)V

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    return-void
.end method

.method private createAlgoEdgeBased(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;
    .locals 3

    const-string v0, "algorithm"

    const-string v1, "astarbi"

    invoke-virtual {p2, v0, v1}, Lcom/graphhopper/util/PMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object p1

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p1

    invoke-static {v1, p2, p0, p1}, Lcom/graphhopper/routing/RoutingAlgorithmFactorySimple;->getApproximation(Ljava/lang/String;Lcom/graphhopper/util/PMap;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/storage/NodeAccess;)Lcom/graphhopper/routing/weighting/WeightApproximator;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;->setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStarBidirectionEdgeCHNoSOD;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "dijkstrabi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/graphhopper/routing/DijkstraBidirectionEdgeCHNoSOD;

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/DijkstraBidirectionEdgeCHNoSOD;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    return-object p0

    :cond_2
    const-string p0, "alternative_route"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/graphhopper/routing/AlternativeRouteEdgeCH;

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/AlternativeRouteEdgeCH;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/util/PMap;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Algorithm "

    const-string p2, " not supported for edge-based Contraction Hierarchies. Try with ch.disable=true"

    invoke-static {p1, v0, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createAlgoNodeBased(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;
    .locals 4

    const-string v0, "algorithm"

    const-string v1, "dijkstrabi"

    invoke-virtual {p2, v0, v1}, Lcom/graphhopper/util/PMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "astarbi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/graphhopper/routing/AStarBidirectionCH;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/AStarBidirectionCH;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object p1

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p1

    invoke-static {v2, p2, p0, p1}, Lcom/graphhopper/routing/RoutingAlgorithmFactorySimple;->getApproximation(Ljava/lang/String;Lcom/graphhopper/util/PMap;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/storage/NodeAccess;)Lcom/graphhopper/routing/weighting/WeightApproximator;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/graphhopper/routing/AStarBidirectionCH;->setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStarBidirectionCH;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "alternative_route"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/graphhopper/routing/AlternativeRouteCH;

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/AlternativeRouteCH;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/util/PMap;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Algorithm "

    const-string p2, " not supported for node-based Contraction Hierarchies. Try with ch.disable=true"

    invoke-static {p1, v0, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    const-string p0, "stall_on_demand"

    const/4 v0, 0x1

    invoke-virtual {p2, p0, v0}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/graphhopper/routing/DijkstraBidirectionCH;

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/DijkstraBidirectionCH;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/graphhopper/routing/DijkstraBidirectionCHNoSOD;

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/DijkstraBidirectionCHNoSOD;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    return-object p0
.end method

.method private getWeighting()Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAlgo(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {v0}, Lcom/graphhopper/storage/RoutingCHGraph;->isEdgeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;->createAlgoEdgeBased(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;->routingCHGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;->createAlgoNodeBased(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/EdgeToEdgeRoutingAlgorithm;

    move-result-object p0

    :goto_0
    const-string v0, "max_visited_nodes"

    invoke-virtual {p1, v0}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p0, v0}, Lcom/graphhopper/routing/RoutingAlgorithm;->setMaxVisitedNodes(I)V

    :cond_1
    const-string v0, "timeout_ms"

    invoke-virtual {p1, v0}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p1, v0, v1, v2}, Lcom/graphhopper/util/PMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/graphhopper/routing/RoutingAlgorithm;->setTimeoutMillis(J)V

    :cond_2
    return-object p0
.end method
