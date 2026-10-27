.class public Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/RoutingAlgorithmFactory;


# instance fields
.field private defaultActiveLandmarks:I

.field private final lms:Lcom/graphhopper/routing/lm/LandmarkStorage;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/lm/LandmarkStorage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getLandmarkCount()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/16 v0, 0xc

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;->defaultActiveLandmarks:I

    return-void
.end method

.method private getApproximator(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;ID)Lcom/graphhopper/routing/lm/LMApproximator;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-static {p1, p2, p0, p3}, Lcom/graphhopper/routing/lm/LMApproximator;->forLandmarks(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/lm/LandmarkStorage;I)Lcom/graphhopper/routing/lm/LMApproximator;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Lcom/graphhopper/routing/lm/LMApproximator;->setEpsilon(D)Lcom/graphhopper/routing/lm/LMApproximator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAlgo(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/AlgorithmOptions;)Lcom/graphhopper/routing/RoutingAlgorithm;
    .locals 10

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v0

    const-string v1, "lm.active_landmarks"

    iget v2, p0, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;->defaultActiveLandmarks:I

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2}, Lcom/graphhopper/storage/Graph;->wrapWeighting(Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v4

    const-string p2, "astar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p2

    const-string v0, "astar.epsilon"

    invoke-virtual {p2, v0, v1, v2}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    new-instance p2, Lcom/graphhopper/routing/AStar;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object v0

    invoke-direct {p2, p1, v4, v0}, Lcom/graphhopper/routing/AStar;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;->getApproximator(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;ID)Lcom/graphhopper/routing/lm/LMApproximator;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/graphhopper/routing/AStar;->setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStar;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getMaxVisitedNodes()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->setMaxVisitedNodes(I)V

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTimeoutMillis()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/graphhopper/routing/AbstractRoutingAlgorithm;->setTimeoutMillis(J)V

    return-object p2

    :cond_0
    move-object v3, p1

    move-wide v8, v1

    move-object v2, p0

    move-wide p0, v8

    const-string p2, "astarbi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string v1, "astarbi.epsilon"

    if-nez p2, :cond_3

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "alternative_route"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p2

    invoke-virtual {p2, v1, p0, p1}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    new-instance p0, Lcom/graphhopper/routing/AlternativeRoute;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object p1

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p2

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/graphhopper/routing/AlternativeRoute;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;Lcom/graphhopper/util/PMap;)V

    invoke-direct/range {v2 .. v7}, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;->getApproximator(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;ID)Lcom/graphhopper/routing/lm/LMApproximator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AStarBidirection;->setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStarBidirection;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getMaxVisitedNodes()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AbstractBidirAlgo;->setMaxVisitedNodes(I)V

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTimeoutMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/AbstractBidirAlgo;->setTimeoutMillis(J)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Landmarks algorithm only supports algorithm=astar,astarbi or alternative_route, but got: "

    invoke-static {p1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p2

    invoke-virtual {p2, v1, p0, p1}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v6

    new-instance p0, Lcom/graphhopper/routing/AStarBidirection;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object p1

    invoke-direct {p0, v3, v4, p1}, Lcom/graphhopper/routing/AStarBidirection;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    invoke-direct/range {v2 .. v7}, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;->getApproximator(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;ID)Lcom/graphhopper/routing/lm/LMApproximator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AStarBidirection;->setApproximation(Lcom/graphhopper/routing/weighting/WeightApproximator;)Lcom/graphhopper/routing/AStarBidirection;

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getMaxVisitedNodes()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AbstractBidirAlgo;->setMaxVisitedNodes(I)V

    invoke-virtual {p3}, Lcom/graphhopper/routing/AlgorithmOptions;->getTimeoutMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/AbstractBidirAlgo;->setTimeoutMillis(J)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Initialize landmark storage before creating algorithms"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultActiveLandmarks(I)Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;->defaultActiveLandmarks:I

    return-object p0
.end method
