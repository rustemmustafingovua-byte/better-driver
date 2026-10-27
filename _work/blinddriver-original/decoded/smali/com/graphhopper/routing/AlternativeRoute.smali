.class public Lcom/graphhopper/routing/AlternativeRoute;
.super Lcom/graphhopper/routing/AStarBidirection;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/RoutingAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;
    }
.end annotation


# static fields
.field private static final ALT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final explorationFactor:D

.field private final maxPaths:I

.field private final maxShareFactor:D

.field private final maxWeightFactor:D

.field private final minPlateauFactor:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/graphhopper/isochrone/algorithm/e;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/AlternativeRoute;->ALT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;Lcom/graphhopper/util/PMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/AStarBidirection;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    invoke-interface {p2}, Lcom/graphhopper/routing/weighting/Weighting;->hasTurnCosts()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Weightings supporting turn costs cannot be used with node-based traversal mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string p1, "alternative_route.max_paths"

    const/4 p2, 0x2

    invoke-virtual {p4, p1, p2}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/AlternativeRoute;->maxPaths:I

    if-lt p1, p2, :cond_2

    const-string p1, "alternative_route.max_exploration_factor"

    const-wide p2, 0x3ff1eb851eb851ecL    # 1.12

    invoke-virtual {p4, p1, p2, p3}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/graphhopper/routing/AlternativeRoute;->explorationFactor:D

    const-string p1, "alternative_route.max_weight_factor"

    const-wide/high16 p2, 0x3ff4000000000000L    # 1.25

    invoke-virtual {p4, p1, p2, p3}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/graphhopper/routing/AlternativeRoute;->maxWeightFactor:D

    const-string p1, "alternative_route.max_share_factor"

    const-wide p2, 0x3fe3333333333333L    # 0.6

    invoke-virtual {p4, p1, p2, p3}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/graphhopper/routing/AlternativeRoute;->maxShareFactor:D

    const-string p1, "alternative_route.min_plateau_factor"

    const-wide p2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p4, p1, p2, p3}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/graphhopper/routing/AlternativeRoute;->minPlateauFactor:D

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use normal algorithm with less overhead instead if no alternatives are required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;)D
    .locals 2

    invoke-static {p0}, Lcom/graphhopper/routing/AlternativeRoute;->lambda$static$0(Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static calcSortBy(DDDDDD)D
    .locals 0

    mul-double/2addr p0, p2

    mul-double/2addr p4, p6

    add-double/2addr p4, p0

    mul-double/2addr p8, p10

    add-double/2addr p8, p4

    return-wide p8
.end method

.method public static bridge synthetic d()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/AlternativeRoute;->ALT_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static getAltNames(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/SPTEntry;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/Graph;",
            "Lcom/graphhopper/routing/SPTEntry;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget v0, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    invoke-static {v0}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    const/high16 v0, -0x80000000

    invoke-interface {p0, p1, v0}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;)D
    .locals 2

    invoke-static {p0}, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->b(Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public addToMap(Lcom/graphhopper/coll/GHIntObjectHashMap;Lcom/graphhopper/routing/Path;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/coll/GHIntObjectHashMap<",
            "Lcom/carrotsearch/hppc/r0;",
            ">;",
            "Lcom/graphhopper/routing/Path;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicInteger;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/coll/GHIntHashSet;

    invoke-direct {v0}, Lcom/graphhopper/coll/GHIntHashSet;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {p2}, Lcom/graphhopper/routing/Path;->calcEdges()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/EdgeIteratorState;

    iget-object v3, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/graphhopper/routing/util/TraversalMode;->createTraversalId(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v4}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public calcAlternatives(II)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p2}, Lcom/graphhopper/routing/AlternativeRoute;->searchBest(II)Lcom/graphhopper/routing/Path;

    move-result-object v1

    .line 2
    iget v2, p0, Lcom/graphhopper/routing/AlternativeRoute;->maxPaths:I

    iget-wide v3, p0, Lcom/graphhopper/routing/AlternativeRoute;->maxWeightFactor:D

    iget-wide v7, p0, Lcom/graphhopper/routing/AlternativeRoute;->maxShareFactor:D

    iget-wide v11, p0, Lcom/graphhopper/routing/AlternativeRoute;->minPlateauFactor:D

    const-wide v13, -0x4036666666666666L    # -0.2

    const-wide/high16 v5, 0x401c000000000000L    # 7.0

    const-wide v9, 0x3fe999999999999aL    # 0.8

    move-object v0, p0

    invoke-virtual/range {v0 .. v14}, Lcom/graphhopper/routing/AlternativeRoute;->calcAlternatives(Lcom/graphhopper/routing/Path;IDDDDDD)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public calcAlternatives(Lcom/graphhopper/routing/Path;IDDDDDD)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/Path;",
            "IDDDDDD)",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 3
    iget-wide v2, v1, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    mul-double v2, v2, p3

    .line 4
    new-instance v0, Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-direct {v0}, Lcom/graphhopper/coll/GHIntObjectHashMap;-><init>()V

    move-object/from16 v7, p1

    .line 5
    invoke-virtual {v1, v0, v7}, Lcom/graphhopper/routing/AlternativeRoute;->addToMap(Lcom/graphhopper/coll/GHIntObjectHashMap;Lcom/graphhopper/routing/Path;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v18

    .line 6
    new-instance v14, Ljava/util/ArrayList;

    move/from16 v15, p2

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    iget-wide v4, v1, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    const-wide/16 v25, 0x0

    move-wide/from16 v29, v4

    move-wide/from16 v19, p5

    move-wide/from16 v23, p9

    move-wide/from16 v27, p13

    move-wide/from16 v21, v4

    .line 8
    invoke-static/range {v19 .. v30}, Lcom/graphhopper/routing/AlternativeRoute;->calcSortBy(DDDDDD)D

    move-result-wide v5

    .line 9
    new-instance v4, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;

    iget-object v8, v1, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestFwdEntry:Lcom/graphhopper/routing/SPTEntry;

    iget-object v9, v1, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestBwdEntry:Lcom/graphhopper/routing/SPTEntry;

    iget-object v10, v1, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    .line 10
    invoke-static {v10, v8}, Lcom/graphhopper/routing/AlternativeRoute;->getAltNames(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/SPTEntry;)Ljava/util/List;

    move-result-object v12

    move-wide/from16 v10, v25

    invoke-direct/range {v4 .. v12}, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;-><init>(DLcom/graphhopper/routing/Path;Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;DLjava/util/List;)V

    .line 11
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v19, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 13
    iget-object v5, v1, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    move-object/from16 v17, v0

    new-instance v0, Lcom/graphhopper/routing/AlternativeRoute$1;

    move-wide/from16 v8, p5

    move-wide/from16 v6, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p13

    move-object/from16 v16, v4

    move-object/from16 v31, v5

    move-wide/from16 v4, p11

    invoke-direct/range {v0 .. v19}, Lcom/graphhopper/routing/AlternativeRoute$1;-><init>(Lcom/graphhopper/routing/AlternativeRoute;DDDDDDLjava/util/List;ILcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;Lcom/graphhopper/coll/GHIntObjectHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object v1, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v1}, Lcom/carrotsearch/hppc/k0;->forEach(Lo5/b;)Lo5/b;

    return-object v14
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

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->checkAlreadyRun()V

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->setupFinishTime()V

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/AlternativeRoute;->calcAlternatives(II)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;

    invoke-virtual {p2}, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->getPath()Lcom/graphhopper/routing/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
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
    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->isMaxVisitedNodesExceeded()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->isTimeoutExceeded()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v2, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v4, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/graphhopper/routing/AlternativeRoute;->explorationFactor:D

    iget-wide v6, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    iget-wide v8, p0, Lcom/graphhopper/routing/AStarBidirection;->stoppingCriterionOffset:D

    add-double/2addr v6, v8

    mul-double/2addr v6, v4

    cmpl-double p0, v2, v6

    if-lez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "alternative_route"

    return-object p0
.end method

.method public searchBest(II)Lcom/graphhopper/routing/Path;
    .locals 7

    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/graphhopper/routing/AStarBidirection;->init(IDID)V

    invoke-virtual {v0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->runAlgo()V

    invoke-virtual {v0}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->extractPath()Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0
.end method
