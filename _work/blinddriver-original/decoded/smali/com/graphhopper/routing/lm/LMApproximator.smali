.class public Lcom/graphhopper/routing/lm/LMApproximator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/WeightApproximator;


# instance fields
.field private final activeLandmarkIndices:[I

.field private final beelineApproximation:Lcom/graphhopper/routing/weighting/WeightApproximator;

.field private epsilon:D

.field private final factor:D

.field private final fallBackApproximation:Lcom/graphhopper/routing/weighting/WeightApproximator;

.field private fallback:Z

.field private final graph:Lcom/graphhopper/storage/Graph;

.field private final lmWeighting:Lcom/graphhopper/routing/weighting/Weighting;

.field private final lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

.field private final maxBaseNodes:I

.field private recalculateActiveLandmarks:Z

.field private final reverse:Z

.field private final routingWeighting:Lcom/graphhopper/routing/weighting/Weighting;

.field private towerNodeNextToT:I

.field private weightFromTToTowerNode:D

.field private final weightsFromActiveLandmarksToT:[I

.field private final weightsFromTToActiveLandmarks:[I


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/weighting/Weighting;ILcom/graphhopper/routing/lm/LandmarkStorage;IDZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->epsilon:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->towerNodeNextToT:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/graphhopper/routing/lm/LMApproximator;->recalculateActiveLandmarks:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/graphhopper/routing/lm/LMApproximator;->fallback:Z

    iput-boolean p9, p0, Lcom/graphhopper/routing/lm/LMApproximator;->reverse:Z

    iput-object p5, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    iput-wide p7, p0, Lcom/graphhopper/routing/lm/LMApproximator;->factor:D

    invoke-virtual {p5}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getLandmarkCount()I

    move-result p7

    if-gt p6, p7, :cond_0

    new-array p5, p6, [I

    iput-object p5, p0, Lcom/graphhopper/routing/lm/LMApproximator;->activeLandmarkIndices:[I

    invoke-static {p5, v0}, Ljava/util/Arrays;->fill([II)V

    new-array p5, p6, [I

    iput-object p5, p0, Lcom/graphhopper/routing/lm/LMApproximator;->weightsFromActiveLandmarksToT:[I

    new-array p5, p6, [I

    iput-object p5, p0, Lcom/graphhopper/routing/lm/LMApproximator;->weightsFromTToActiveLandmarks:[I

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LMApproximator;->graph:Lcom/graphhopper/storage/Graph;

    iput-object p2, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lmWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    iput-object p3, p0, Lcom/graphhopper/routing/lm/LMApproximator;->routingWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    new-instance p5, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p6

    invoke-direct {p5, p6, p2}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;-><init>(Lcom/graphhopper/storage/NodeAccess;Lcom/graphhopper/routing/weighting/Weighting;)V

    iput-object p5, p0, Lcom/graphhopper/routing/lm/LMApproximator;->fallBackApproximation:Lcom/graphhopper/routing/weighting/WeightApproximator;

    new-instance p2, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Lcom/graphhopper/routing/weighting/BeelineWeightApproximator;-><init>(Lcom/graphhopper/storage/NodeAccess;Lcom/graphhopper/routing/weighting/Weighting;)V

    iput-object p2, p0, Lcom/graphhopper/routing/lm/LMApproximator;->beelineApproximation:Lcom/graphhopper/routing/weighting/WeightApproximator;

    iput p4, p0, Lcom/graphhopper/routing/lm/LMApproximator;->maxBaseNodes:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p5}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getLandmarkCount()I

    move-result p1

    const-string p2, "Active landmarks "

    const-string p3, " should be lower or equals to landmark count "

    invoke-static {p2, p6, p3, p1}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/lm/LMApproximator;)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->maxBaseNodes:I

    return p0
.end method

.method private approximateForLandmark(II)I
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    iget-object v1, p0, Lcom/graphhopper/routing/lm/LMApproximator;->activeLandmarkIndices:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getToWeight(II)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/lm/LMApproximator;->weightsFromTToActiveLandmarks:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/graphhopper/routing/lm/LMApproximator;->weightsFromActiveLandmarksToT:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    iget-object v3, p0, Lcom/graphhopper/routing/lm/LMApproximator;->activeLandmarkIndices:[I

    aget p1, v3, p1

    invoke-virtual {v2, p1, p2}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getFromWeight(II)I

    move-result p1

    sub-int/2addr v1, p1

    iget-boolean p0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->reverse:Z

    if-eqz p0, :cond_0

    mul-int/lit8 v0, v0, -0x1

    mul-int/lit8 v1, v1, -0x1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/lm/LMApproximator;I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/lm/LMApproximator;->towerNodeNextToT:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/graphhopper/routing/lm/LMApproximator;D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/lm/LMApproximator;->weightFromTToTowerNode:D

    return-void
.end method

.method private findClosestRealNode(I)V
    .locals 4

    new-instance v0, Lcom/graphhopper/routing/lm/LMApproximator$1;

    iget-object v1, p0, Lcom/graphhopper/routing/lm/LMApproximator;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v2, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lmWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    sget-object v3, Lcom/graphhopper/routing/util/TraversalMode;->NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/graphhopper/routing/lm/LMApproximator$1;-><init>(Lcom/graphhopper/routing/lm/LMApproximator;Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    const/4 p0, -0x1

    invoke-virtual {v0, p1, p0}, Lcom/graphhopper/routing/Dijkstra;->calcPath(II)Lcom/graphhopper/routing/Path;

    return-void
.end method

.method public static forLandmarks(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/lm/LandmarkStorage;I)Lcom/graphhopper/routing/lm/LMApproximator;
    .locals 10

    new-instance v0, Lcom/graphhopper/routing/lm/LMApproximator;

    invoke-virtual {p2}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v2

    invoke-virtual {p2}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getBaseNodes()I

    move-result v4

    invoke-virtual {p2}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getFactor()D

    move-result-wide v7

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/graphhopper/routing/lm/LMApproximator;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/weighting/Weighting;ILcom/graphhopper/routing/lm/LandmarkStorage;IDZ)V

    return-object v0
.end method

.method private getRemainingWeightUnderestimationUpToTowerNode(I)D
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/routing/lm/LMApproximator;->activeLandmarkIndices:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/lm/LMApproximator;->approximateForLandmark(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    int-to-double v0, v1

    iget-wide p0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->factor:D

    mul-double/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public approximate(I)D
    .locals 7

    iget-boolean v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->recalculateActiveLandmarks:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->fallback:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->fallBackApproximation:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/weighting/WeightApproximator;->approximate(I)D

    move-result-wide p0

    return-wide p0

    :cond_2
    iget v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->maxBaseNodes:I

    const-wide/16 v1, 0x0

    if-lt p1, v0, :cond_3

    return-wide v1

    :cond_3
    iget v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->towerNodeNextToT:I

    if-ne p1, v0, :cond_4

    return-wide v1

    :cond_4
    iget-boolean v3, p0, Lcom/graphhopper/routing/lm/LMApproximator;->recalculateActiveLandmarks:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/graphhopper/routing/lm/LMApproximator;->recalculateActiveLandmarks:Z

    iget-object v4, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    iget-object v5, p0, Lcom/graphhopper/routing/lm/LMApproximator;->activeLandmarkIndices:[I

    iget-boolean v6, p0, Lcom/graphhopper/routing/lm/LMApproximator;->reverse:Z

    invoke-virtual {v4, p1, v0, v5, v6}, Lcom/graphhopper/routing/lm/LandmarkStorage;->chooseActiveLandmarks(II[IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->activeLandmarkIndices:[I

    array-length v4, v0

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/graphhopper/routing/lm/LMApproximator;->weightsFromActiveLandmarksToT:[I

    iget-object v5, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    aget v0, v0, v3

    iget v6, p0, Lcom/graphhopper/routing/lm/LMApproximator;->towerNodeNextToT:I

    invoke-virtual {v5, v0, v6}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getFromWeight(II)I

    move-result v0

    aput v0, v4, v3

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->weightsFromTToActiveLandmarks:[I

    iget-object v4, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    iget-object v5, p0, Lcom/graphhopper/routing/lm/LMApproximator;->activeLandmarkIndices:[I

    aget v5, v5, v3

    iget v6, p0, Lcom/graphhopper/routing/lm/LMApproximator;->towerNodeNextToT:I

    invoke-virtual {v4, v5, v6}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getToWeight(II)I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->fallback:Z

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->fallBackApproximation:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/weighting/WeightApproximator;->approximate(I)D

    move-result-wide p0

    return-wide p0

    :cond_6
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/lm/LMApproximator;->getRemainingWeightUnderestimationUpToTowerNode(I)D

    move-result-wide v3

    iget-wide v5, p0, Lcom/graphhopper/routing/lm/LMApproximator;->weightFromTToTowerNode:D

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/graphhopper/routing/lm/LMApproximator;->epsilon:D

    mul-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->beelineApproximation:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/weighting/WeightApproximator;->approximate(I)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public getSlack()D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {p0}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getFactor()D

    move-result-wide v0

    return-wide v0
.end method

.method public reverse()Lcom/graphhopper/routing/weighting/WeightApproximator;
    .locals 10

    new-instance v0, Lcom/graphhopper/routing/lm/LMApproximator;

    iget-object v1, p0, Lcom/graphhopper/routing/lm/LMApproximator;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v2, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lmWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v3, p0, Lcom/graphhopper/routing/lm/LMApproximator;->routingWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget v4, p0, Lcom/graphhopper/routing/lm/LMApproximator;->maxBaseNodes:I

    iget-object v5, p0, Lcom/graphhopper/routing/lm/LMApproximator;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    iget-object v6, p0, Lcom/graphhopper/routing/lm/LMApproximator;->activeLandmarkIndices:[I

    array-length v6, v6

    iget-wide v7, p0, Lcom/graphhopper/routing/lm/LMApproximator;->factor:D

    iget-boolean p0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->reverse:Z

    xor-int/lit8 v9, p0, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/graphhopper/routing/lm/LMApproximator;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/weighting/Weighting;ILcom/graphhopper/routing/lm/LandmarkStorage;IDZ)V

    return-object v0
.end method

.method public setEpsilon(D)Lcom/graphhopper/routing/lm/LMApproximator;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/lm/LMApproximator;->epsilon:D

    return-object p0
.end method

.method public setTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->fallBackApproximation:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/weighting/WeightApproximator;->setTo(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMApproximator;->beelineApproximation:Lcom/graphhopper/routing/weighting/WeightApproximator;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/weighting/WeightApproximator;->setTo(I)V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/lm/LMApproximator;->findClosestRealNode(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "landmarks"

    return-object p0
.end method
