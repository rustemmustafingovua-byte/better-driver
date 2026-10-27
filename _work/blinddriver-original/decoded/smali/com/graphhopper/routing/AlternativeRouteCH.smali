.class public Lcom/graphhopper/routing/AlternativeRouteCH;
.super Lcom/graphhopper/routing/DijkstraBidirectionCHNoSOD;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;,
        Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;
    }
.end annotation


# instance fields
.field private final alternatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private extraVisitedNodes:I

.field private final localOptimalityFactor:D

.field private final maxPaths:I

.field private final maxShareFactor:D

.field private final maxWeightFactor:D


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/util/PMap;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/DijkstraBidirectionCHNoSOD;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->alternatives:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->extraVisitedNodes:I

    const-string p1, "alternative_route.max_weight_factor"

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    invoke-virtual {p2, p1, v0, v1}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->maxWeightFactor:D

    const-string p1, "alternative_route.max_share_factor"

    const-wide v0, 0x3fe999999999999aL    # 0.8

    invoke-virtual {p2, p1, v0, v1}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->maxShareFactor:D

    const-string p1, "alternative_route.local_optimality_factor"

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    invoke-virtual {p2, p1, v0, v1}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->localOptimalityFactor:D

    const-string p1, "alternative_route.max_paths"

    const/4 v0, 0x3

    invoke-virtual {p2, p1, v0}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->maxPaths:I

    return-void
.end method

.method private calculateShare(Lcom/graphhopper/routing/Path;)D
    .locals 2

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/AlternativeRouteCH;->sharedDistance(Lcom/graphhopper/routing/Path;)D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private static concat(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/Path;Lcom/graphhopper/routing/Path;)Lcom/graphhopper/routing/Path;
    .locals 5

    new-instance v0, Lcom/graphhopper/routing/Path;

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/Path;-><init>(Lcom/graphhopper/storage/Graph;)V

    invoke-virtual {v0}, Lcom/graphhopper/routing/Path;->getEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->getEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/x;->addAll(Lcom/carrotsearch/hppc/z;)I

    invoke-virtual {v0}, Lcom/graphhopper/routing/Path;->getEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p2}, Lcom/graphhopper/routing/Path;->getEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/x;->addAll(Lcom/carrotsearch/hppc/z;)I

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->calcNodes()Lcom/carrotsearch/hppc/d0;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/graphhopper/routing/Path;->setFromNode(I)Lcom/graphhopper/routing/Path;

    invoke-virtual {p2}, Lcom/graphhopper/routing/Path;->getEndNode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/graphhopper/routing/Path;->setEndNode(I)Lcom/graphhopper/routing/Path;

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->getWeight()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/graphhopper/routing/Path;->getWeight()D

    move-result-wide v3

    add-double/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/routing/Path;->setWeight(D)Lcom/graphhopper/routing/Path;

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide v1

    invoke-virtual {p2}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide v3

    add-double/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/routing/Path;->setDistance(D)Lcom/graphhopper/routing/Path;

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->getTime()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/graphhopper/routing/Path;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/routing/Path;->addTime(J)Lcom/graphhopper/routing/Path;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/graphhopper/routing/Path;->setFound(Z)Lcom/graphhopper/routing/Path;

    return-object v0
.end method

.method public static synthetic d(Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;)D
    .locals 2

    invoke-static {p0}, Lcom/graphhopper/routing/AlternativeRouteCH;->lambda$calcAlternatives$1(Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;)D

    move-result-wide v0

    return-wide v0
.end method

.method private detourDistance(Lcom/graphhopper/routing/Path;)D
    .locals 2

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/AlternativeRouteCH;->sharedDistanceWithShortest(Lcom/graphhopper/routing/Path;)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public static synthetic e(Lcom/graphhopper/routing/AlternativeRouteCH;Lcom/graphhopper/routing/Path;Ljava/util/ArrayList;ILcom/graphhopper/routing/SPTEntry;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/AlternativeRouteCH;->lambda$calcAlternatives$0(Lcom/graphhopper/routing/Path;Ljava/util/ArrayList;ILcom/graphhopper/routing/SPTEntry;)Z

    move-result p0

    return p0
.end method

.method private getNextNodeTMetersAway(Lcom/graphhopper/routing/Path;ID)I
    .locals 4

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->calcEdges()Ljava/util/List;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ge p2, p1, :cond_0

    cmpg-double p1, v0, p3

    if-gez p1, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v2

    add-double/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p0

    return p0
.end method

.method private getPreviousNodeTMetersAway(Lcom/graphhopper/routing/Path;ID)I
    .locals 4

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->calcEdges()Ljava/util/List;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    if-lez p2, :cond_0

    cmpg-double p1, v0, p3

    if-gez p1, :cond_0

    add-int/lit8 p1, p2, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v2

    add-double/2addr v0, v2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p0

    return p0
.end method

.method private synthetic lambda$calcAlternatives$0(Lcom/graphhopper/routing/Path;Ljava/util/ArrayList;ILcom/graphhopper/routing/SPTEntry;)Z
    .locals 8

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v0, p3}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/SPTEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p4}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v4

    add-double/2addr v4, v2

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->getWeight()D

    move-result-wide v2

    iget-wide v6, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->maxWeightFactor:D

    mul-double/2addr v2, v6

    cmpl-double p1, v4, v2

    if-lez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->createPathExtractor()Lcom/graphhopper/routing/BidirPathExtractor;

    move-result-object p1

    invoke-virtual {p4}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v4

    add-double/2addr v4, v2

    invoke-interface {p1, p4, v0, v4, v5}, Lcom/graphhopper/routing/BidirPathExtractor;->extract(Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;D)Lcom/graphhopper/routing/Path;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/AlternativeRouteCH;->calculateShare(Lcom/graphhopper/routing/Path;)D

    move-result-wide v2

    iget-wide p0, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->maxShareFactor:D

    cmpl-double p0, v2, p0

    if-lez p0, :cond_2

    return v1

    :cond_2
    new-instance p0, Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;

    invoke-direct {p0}, Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;-><init>()V

    iput p3, p0, Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;->v:I

    invoke-virtual {p4}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide p3

    invoke-virtual {v0}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v4

    add-double/2addr v4, p3

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p3

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;->weight:D

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method private static synthetic lambda$calcAlternatives$1(Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;)D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;->weight:D

    return-wide v0
.end method

.method private nodesInCurrentAlternativeSetContains(I)Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->alternatives:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;

    iget-object v0, v0, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;->nodes:Lcom/carrotsearch/hppc/d0;

    invoke-interface {v0, p1}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private sharedDistance(Lcom/graphhopper/routing/Path;)D
    .locals 4

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->calcEdges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/graphhopper/routing/AlternativeRouteCH;->nodesInCurrentAlternativeSetContains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/graphhopper/routing/AlternativeRouteCH;->nodesInCurrentAlternativeSetContains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v2

    add-double/2addr v2, v0

    move-wide v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private sharedDistanceWithShortest(Lcom/graphhopper/routing/Path;)D
    .locals 6

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->calcEdges()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v3, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->alternatives:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;

    iget-object v3, v3, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;->nodes:Lcom/carrotsearch/hppc/d0;

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->alternatives:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;

    iget-object v3, v3, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;->nodes:Lcom/carrotsearch/hppc/d0;

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v2

    add-double/2addr v2, v0

    move-wide v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private tTest(Lcom/graphhopper/routing/Path;I)Z
    .locals 6

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->getEdgeCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/AlternativeRouteCH;->detourDistance(Lcom/graphhopper/routing/Path;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-wide v4, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->localOptimalityFactor:D

    mul-double/2addr v4, v2

    mul-double/2addr v4, v0

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/graphhopper/routing/AlternativeRouteCH;->getPreviousNodeTMetersAway(Lcom/graphhopper/routing/Path;ID)I

    move-result v0

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/graphhopper/routing/AlternativeRouteCH;->getNextNodeTMetersAway(Lcom/graphhopper/routing/Path;ID)I

    move-result v1

    new-instance v2, Lcom/graphhopper/routing/DijkstraBidirectionCH;

    iget-object v3, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-direct {v2, v3}, Lcom/graphhopper/routing/DijkstraBidirectionCH;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    new-instance v3, Lcom/graphhopper/routing/e;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/graphhopper/routing/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->setPathExtractorSupplier(Ljava/util/function/Supplier;)V

    invoke-virtual {v2, v0, v1}, Lcom/graphhopper/routing/AbstractBidirAlgo;->calcPath(II)Lcom/graphhopper/routing/Path;

    move-result-object v0

    iget v1, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->extraVisitedNodes:I

    invoke-virtual {v2}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getVisitedNodes()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->extraVisitedNodes:I

    invoke-virtual {v0}, Lcom/graphhopper/routing/Path;->calcNodes()Lcom/carrotsearch/hppc/d0;

    move-result-object p0

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->calcNodes()Lcom/carrotsearch/hppc/d0;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public calcAlternatives(II)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->checkAlreadyRun()V

    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/graphhopper/routing/AbstractBidirAlgo;->init(IDID)V

    invoke-virtual {v0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->runAlgo()V

    invoke-virtual {v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->extractPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->isFound()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object p1, v0, Lcom/graphhopper/routing/AlternativeRouteCH;->alternatives:Ljava/util/List;

    new-instance p2, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;

    const-wide/16 v2, 0x0

    invoke-direct {p2, p0, v2, v3}, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;-><init>(Lcom/graphhopper/routing/Path;D)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, v0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    new-instance v2, Lcom/graphhopper/routing/f;

    invoke-direct {v2, v0, p0, p1}, Lcom/graphhopper/routing/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v2}, Lcom/carrotsearch/hppc/k0;->forEach(Lo5/b;)Lo5/b;

    new-instance p2, Lcom/graphhopper/isochrone/algorithm/e;

    const/4 v2, 0x4

    invoke-direct {p2, v2}, Lcom/graphhopper/isochrone/algorithm/e;-><init>(I)V

    invoke-static {p2}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-ge v2, p2, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;

    iget v3, v3, Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;->v:I

    new-instance v5, Lcom/graphhopper/routing/DijkstraBidirectionCH;

    iget-object v6, v0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-direct {v5, v6}, Lcom/graphhopper/routing/DijkstraBidirectionCH;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    new-instance v6, Lcom/graphhopper/routing/e;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v0}, Lcom/graphhopper/routing/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->setPathExtractorSupplier(Ljava/util/function/Supplier;)V

    invoke-virtual {v5, v1, v3}, Lcom/graphhopper/routing/AbstractBidirAlgo;->calcPath(II)Lcom/graphhopper/routing/Path;

    move-result-object v6

    iget v7, v0, Lcom/graphhopper/routing/AlternativeRouteCH;->extraVisitedNodes:I

    invoke-virtual {v5}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getVisitedNodes()I

    move-result v5

    add-int/2addr v5, v7

    iput v5, v0, Lcom/graphhopper/routing/AlternativeRouteCH;->extraVisitedNodes:I

    new-instance v5, Lcom/graphhopper/routing/DijkstraBidirectionCH;

    iget-object v7, v0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-direct {v5, v7}, Lcom/graphhopper/routing/DijkstraBidirectionCH;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    new-instance v7, Lcom/graphhopper/routing/e;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v0}, Lcom/graphhopper/routing/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v7}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->setPathExtractorSupplier(Ljava/util/function/Supplier;)V

    invoke-virtual {v5, v3, v4}, Lcom/graphhopper/routing/AbstractBidirAlgo;->calcPath(II)Lcom/graphhopper/routing/Path;

    move-result-object v3

    iget-object v7, v0, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {v7}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object v7

    invoke-static {v7, v6, v3}, Lcom/graphhopper/routing/AlternativeRouteCH;->concat(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/Path;Lcom/graphhopper/routing/Path;)Lcom/graphhopper/routing/Path;

    move-result-object v3

    iget v7, v0, Lcom/graphhopper/routing/AlternativeRouteCH;->extraVisitedNodes:I

    invoke-virtual {v5}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getVisitedNodes()I

    move-result v5

    add-int/2addr v5, v7

    iput v5, v0, Lcom/graphhopper/routing/AlternativeRouteCH;->extraVisitedNodes:I

    invoke-direct {v0, v3}, Lcom/graphhopper/routing/AlternativeRouteCH;->sharedDistanceWithShortest(Lcom/graphhopper/routing/Path;)D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide v9

    sub-double/2addr v9, v7

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide v11

    sub-double/2addr v11, v7

    iget-wide v7, v0, Lcom/graphhopper/routing/AlternativeRouteCH;->maxWeightFactor:D

    mul-double/2addr v11, v7

    cmpl-double v5, v9, v11

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {v0, v3}, Lcom/graphhopper/routing/AlternativeRouteCH;->calculateShare(Lcom/graphhopper/routing/Path;)D

    move-result-wide v7

    iget-wide v9, v0, Lcom/graphhopper/routing/AlternativeRouteCH;->maxShareFactor:D

    cmpl-double v5, v7, v9

    if-lez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/graphhopper/routing/Path;->calcNodes()Lcom/carrotsearch/hppc/d0;

    move-result-object v5

    invoke-interface {v5}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, v3, v5}, Lcom/graphhopper/routing/AlternativeRouteCH;->tTest(Lcom/graphhopper/routing/Path;I)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v5, v0, Lcom/graphhopper/routing/AlternativeRouteCH;->alternatives:Ljava/util/List;

    new-instance v6, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;

    invoke-direct {v6, v3, v7, v8}, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;-><init>(Lcom/graphhopper/routing/Path;D)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/graphhopper/routing/AlternativeRouteCH;->alternatives:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v5, v0, Lcom/graphhopper/routing/AlternativeRouteCH;->maxPaths:I

    if-lt v3, v5, :cond_1

    :cond_5
    iget-object p0, v0, Lcom/graphhopper/routing/AlternativeRouteCH;->alternatives:Ljava/util/List;

    return-object p0
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

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/AlternativeRouteCH;->calcAlternatives(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;->createEmptyPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;

    iget-object p2, p2, Lcom/graphhopper/routing/AlternativeRouteCH$AlternativeInfo;->path:Lcom/graphhopper/routing/Path;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public finished()Z
    .locals 10

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v2, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    iget-wide v4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    iget-wide v6, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->maxWeightFactor:D

    mul-double v8, v4, v6

    cmpl-double v0, v2, v8

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v2, p0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    mul-double/2addr v4, v6

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getVisitedNodes()I
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->visitedCountFrom:I

    iget v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->visitedCountTo:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/graphhopper/routing/AlternativeRouteCH;->extraVisitedNodes:I

    add-int/2addr v0, p0

    return v0
.end method
