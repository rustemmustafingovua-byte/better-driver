.class public Lcom/graphhopper/routing/RoutingAlgorithmFactorySimple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/RoutingAlgorithmFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApproximation(Ljava/lang/String;Lcom/graphhopper/util/PMap;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/storage/NodeAccess;)Lcom/graphhopper/routing/weighting/WeightApproximator;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".approximation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeelineSimplification"

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/util/PMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".epsilon"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p0, v2, v3}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide p0

    new-instance v2, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    invoke-direct {v2, p3, p2}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;-><init>(Lcom/graphhopper/storage/NodeAccess;Lcom/graphhopper/routing/weighting/Weighting;)V

    invoke-virtual {v2, p0, p1}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->setEpsilon(D)Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {v2, p0}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->setDistanceCalc(Lcom/graphhopper/util/DistanceCalc;)Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    return-object v2

    :cond_0
    const-string p0, "BeelineAccurate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    invoke-virtual {v2, p0}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;->setDistanceCalc(Lcom/graphhopper/util/DistanceCalc;)Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    return-object v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-class p1, Lcom/graphhopper/routing/RoutingAlgorithmFactorySimple;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Approximation "

    const-string p3, " not found in "

    invoke-static {p2, v0, p3, p1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createAlgo(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/AlgorithmOptions;)Lcom/graphhopper/routing/RoutingAlgorithm;
    .locals 4

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2}, Lcom/graphhopper/storage/Graph;->wrapWeighting(Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v1

    const-string v2, "dijkstrabi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Lcom/graphhopper/routing/DijkstraBidirectionRef;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lcom/graphhopper/routing/DijkstraBidirectionRef;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    goto/16 :goto_1

    :cond_0
    const-string v2, "dijkstra"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lcom/graphhopper/routing/Dijkstra;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lcom/graphhopper/routing/Dijkstra;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    goto/16 :goto_1

    :cond_1
    const-string v2, "astarbi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "dijkstra_one_to_many"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p0, Lcom/graphhopper/routing/DijkstraOneToMany;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lcom/graphhopper/routing/DijkstraOneToMany;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    goto :goto_1

    :cond_3
    const-string v2, "astar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance p0, Lcom/graphhopper/routing/AStar;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/graphhopper/routing/AStar;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p1

    invoke-static {v2, v0, p2, p1}, Lcom/graphhopper/routing/RoutingAlgorithmFactorySimple;->getApproximation(Ljava/lang/String;Lcom/graphhopper/util/PMap;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/storage/NodeAccess;)Lcom/graphhopper/routing/weighting/WeightApproximator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AStar;->setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStar;

    goto :goto_1

    :cond_4
    const-string p2, "alternative_route"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p0, Lcom/graphhopper/routing/AlternativeRoute;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object p2

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/graphhopper/routing/AlternativeRoute;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;Lcom/graphhopper/util/PMap;)V

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Algorithm "

    const-string p3, " not found in "

    invoke-static {p2, v0, p3, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    new-instance p0, Lcom/graphhopper/routing/AStarBidirection;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lcom/graphhopper/routing/AStarBidirection;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p2

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p1

    invoke-static {v2, p2, v1, p1}, Lcom/graphhopper/routing/RoutingAlgorithmFactorySimple;->getApproximation(Ljava/lang/String;Lcom/graphhopper/util/PMap;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/storage/NodeAccess;)Lcom/graphhopper/routing/weighting/WeightApproximator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AStarBidirection;->setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStarBidirection;

    :goto_1
    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getMaxVisitedNodes()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/RoutingAlgorithm;->setMaxVisitedNodes(I)V

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTimeoutMillis()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/RoutingAlgorithm;->setTimeoutMillis(J)V

    return-object p0
.end method
