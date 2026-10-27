.class public Lcom/graphhopper/routing/Router$FlexSolver;
.super Lcom/graphhopper/routing/Router$Solver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/Router;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlexSolver"
.end annotation


# instance fields
.field private final baseGraph:Lcom/graphhopper/storage/BaseGraph;

.field private final locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

.field protected final routerConfig:Lcom/graphhopper/routing/RouterConfig;

.field private final weightingFactory:Lcom/graphhopper/routing/WeightingFactory;


# direct methods
.method public constructor <init>(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/WeightingFactory;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/index/LocationIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/GHRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/config/Profile;",
            ">;",
            "Lcom/graphhopper/routing/RouterConfig;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Lcom/graphhopper/routing/WeightingFactory;",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/storage/index/LocationIndex;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/Router$Solver;-><init>(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V

    iput-object p3, p0, Lcom/graphhopper/routing/Router$FlexSolver;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    iput-object p5, p0, Lcom/graphhopper/routing/Router$FlexSolver;->weightingFactory:Lcom/graphhopper/routing/WeightingFactory;

    iput-object p6, p0, Lcom/graphhopper/routing/Router$FlexSolver;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p7, p0, Lcom/graphhopper/routing/Router$FlexSolver;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    return-void
.end method

.method private checkNonChMaxWaypointDistance(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/shapes/GHPoint;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/routing/Router$FlexSolver;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v0}, Lcom/graphhopper/routing/RouterConfig;->getNonChMaxWaypointDistance()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/util/shapes/GHPoint;

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/shapes/GHPoint;

    sget-object v3, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    invoke-virtual {v0}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v8

    invoke-virtual {v2}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v10

    invoke-virtual/range {v3 .. v11}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDist(DDDD)D

    move-result-wide v3

    iget-object v0, p0, Lcom/graphhopper/routing/Router$FlexSolver;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v0}, Lcom/graphhopper/routing/RouterConfig;->getNonChMaxWaypointDistance()I

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

    if-gtz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/HashMap;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    add-int/lit8 p1, v1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "from"

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "to"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/graphhopper/util/exceptions/PointDistanceExceededException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " is too far from Point "

    const-string v4, ": "

    const-string v5, "Point "

    invoke-static {v5, v1, v3, p1, v4}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/graphhopper/util/exceptions/PointDistanceExceededException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public checkRequest()V
    .locals 1

    invoke-super {p0}, Lcom/graphhopper/routing/Router$Solver;->checkRequest()V

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v0}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/Router$FlexSolver;->checkNonChMaxWaypointDistance(Ljava/util/List;)V

    return-void
.end method

.method public createPathCalculator(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/graphhopper/routing/FlexiblePathCalculator;
    .locals 3

    .line 2
    new-instance v0, Lcom/graphhopper/routing/RoutingAlgorithmFactorySimple;

    invoke-direct {v0}, Lcom/graphhopper/routing/RoutingAlgorithmFactorySimple;-><init>()V

    .line 3
    new-instance v1, Lcom/graphhopper/routing/FlexiblePathCalculator;

    iget-object v2, p0, Lcom/graphhopper/routing/Router$Solver;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-virtual {p0}, Lcom/graphhopper/routing/Router$FlexSolver;->getAlgoOpts()Lcom/graphhopper/routing/AlgorithmOptions;

    move-result-object p0

    invoke-direct {v1, p1, v0, v2, p0}, Lcom/graphhopper/routing/FlexiblePathCalculator;-><init>(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/routing/RoutingAlgorithmFactory;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/AlgorithmOptions;)V

    return-object v1
.end method

.method public bridge synthetic createPathCalculator(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/graphhopper/routing/PathCalculator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Router$FlexSolver;->createPathCalculator(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/graphhopper/routing/FlexiblePathCalculator;

    move-result-object p0

    return-object p0
.end method

.method public createWeighting()Lcom/graphhopper/routing/weighting/Weighting;
    .locals 3

    new-instance v0, Lcom/graphhopper/util/PMap;

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/graphhopper/util/PMap;-><init>(Lcom/graphhopper/util/PMap;)V

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object v1

    const-string v2, "custom_model"

    invoke-virtual {v0, v2, v1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    iget-object v1, p0, Lcom/graphhopper/routing/Router$FlexSolver;->weightingFactory:Lcom/graphhopper/routing/WeightingFactory;

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2}, Lcom/graphhopper/routing/WeightingFactory;->createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;Z)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    return-object p0
.end method

.method public getAlgoOpts()Lcom/graphhopper/routing/AlgorithmOptions;
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/AlgorithmOptions;

    invoke-direct {v0}, Lcom/graphhopper/routing/AlgorithmOptions;-><init>()V

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/AlgorithmOptions;->setAlgorithm(Ljava/lang/String;)Lcom/graphhopper/routing/AlgorithmOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->hasTurnCosts()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/graphhopper/routing/util/TraversalMode;->EDGE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/graphhopper/routing/util/TraversalMode;->NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/AlgorithmOptions;->setTraversalMode(Lcom/graphhopper/routing/util/TraversalMode;)Lcom/graphhopper/routing/AlgorithmOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/Router$Solver;->getMaxVisitedNodes(Lcom/graphhopper/util/PMap;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/AlgorithmOptions;->setMaxVisitedNodes(I)Lcom/graphhopper/routing/AlgorithmOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/Router$Solver;->getTimeoutMillis(Lcom/graphhopper/util/PMap;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/routing/AlgorithmOptions;->setTimeoutMillis(J)Lcom/graphhopper/routing/AlgorithmOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/routing/AlgorithmOptions;->setHints(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/AlgorithmOptions;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {p0}, Lcom/graphhopper/GHRequest;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const-string v1, "round_trip"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "astarbi"

    invoke-virtual {v0, p0}, Lcom/graphhopper/routing/AlgorithmOptions;->setAlgorithm(Ljava/lang/String;)Lcom/graphhopper/routing/AlgorithmOptions;

    invoke-virtual {v0}, Lcom/graphhopper/routing/AlgorithmOptions;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "astarbi.epsilon"

    invoke-virtual {p0, v2, v1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    :cond_1
    return-object v0
.end method
