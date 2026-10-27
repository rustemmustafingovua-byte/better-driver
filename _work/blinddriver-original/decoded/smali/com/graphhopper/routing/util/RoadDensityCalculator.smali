.class public Lcom/graphhopper/routing/util/RoadDensityCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final deque:Lcom/carrotsearch/hppc/w;

.field private final edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

.field private final graph:Lcom/graphhopper/storage/Graph;

.field private final visited:Lcom/carrotsearch/hppc/r0;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    new-instance p1, Lcom/carrotsearch/hppc/q0;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/carrotsearch/hppc/q0;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->visited:Lcom/carrotsearch/hppc/r0;

    new-instance p1, Lcom/carrotsearch/hppc/w;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Lcom/carrotsearch/hppc/w;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->deque:Lcom/carrotsearch/hppc/w;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/storage/Graph;ILjava/util/function/BiConsumer;Ljava/lang/ThreadLocal;)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p0, p2, p3, p1}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->lambda$calcRoadDensities$2(Lcom/graphhopper/storage/Graph;Ljava/util/function/BiConsumer;Ljava/lang/ThreadLocal;I)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/graphhopper/storage/Graph;ILjava/util/function/BiConsumer;Ljava/lang/ThreadLocal;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->lambda$calcRoadDensities$1(Lcom/graphhopper/storage/Graph;ILjava/util/function/BiConsumer;Ljava/lang/ThreadLocal;)V

    return-void
.end method

.method public static synthetic c(Lcom/graphhopper/storage/Graph;)Lcom/graphhopper/routing/util/RoadDensityCalculator;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->lambda$calcRoadDensities$0(Lcom/graphhopper/storage/Graph;)Lcom/graphhopper/routing/util/RoadDensityCalculator;

    move-result-object p0

    return-object p0
.end method

.method public static calcRoadDensities(Lcom/graphhopper/storage/Graph;Ljava/util/function/BiConsumer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/Graph;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/graphhopper/routing/util/RoadDensityCalculator;",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/util/h;

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/util/h;-><init>(Lcom/graphhopper/storage/Graph;)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getEdges()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/routing/subnetwork/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/graphhopper/routing/subnetwork/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/graphhopper/util/GHUtility;->runConcurrently(Ljava/util/stream/Stream;I)V

    return-void
.end method

.method private static getLat(Lcom/graphhopper/storage/NodeAccess;II)D
    .locals 2

    invoke-interface {p0, p1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v0

    invoke-interface {p0, p2}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide p0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static getLon(Lcom/graphhopper/storage/NodeAccess;II)D
    .locals 2

    invoke-interface {p0, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v0

    invoke-interface {p0, p2}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide p0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static synthetic lambda$calcRoadDensities$0(Lcom/graphhopper/storage/Graph;)Lcom/graphhopper/routing/util/RoadDensityCalculator;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;

    invoke-direct {v0, p0}, Lcom/graphhopper/routing/util/RoadDensityCalculator;-><init>(Lcom/graphhopper/storage/Graph;)V

    return-object v0
.end method

.method private static synthetic lambda$calcRoadDensities$1(Lcom/graphhopper/storage/Graph;ILjava/util/function/BiConsumer;Ljava/lang/ThreadLocal;)V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-interface {p0, p1, v0}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/util/RoadDensityCalculator;

    invoke-interface {p2, p1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$calcRoadDensities$2(Lcom/graphhopper/storage/Graph;Ljava/util/function/BiConsumer;Ljava/lang/ThreadLocal;I)Ljava/lang/Runnable;
    .locals 6

    new-instance v0, Lcom/graphhopper/routing/subnetwork/b;

    const/4 v2, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/subnetwork/b;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public calcRoadDensity(Lcom/graphhopper/util/EdgeIteratorState;DLjava/util/function/ToDoubleFunction;)D
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            "D",
            "Ljava/util/function/ToDoubleFunction<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;)D"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    iget-object v3, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->visited:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v3}, Lcom/carrotsearch/hppc/y;->clear()V

    iget-object v3, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->deque:Lcom/carrotsearch/hppc/w;

    const/4 v4, 0x0

    iput v4, v3, Lcom/carrotsearch/hppc/w;->n:I

    iput v4, v3, Lcom/carrotsearch/hppc/w;->m:I

    iget-object v3, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v3}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v6

    new-instance v7, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-static {v3, v5, v6}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->getLat(Lcom/graphhopper/storage/NodeAccess;II)D

    move-result-wide v8

    invoke-static {v3, v5, v6}, Lcom/graphhopper/routing/util/RoadDensityCalculator;->getLon(Lcom/graphhopper/storage/NodeAccess;II)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    iget-object v8, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->deque:Lcom/carrotsearch/hppc/w;

    invoke-virtual {v8, v5}, Lcom/carrotsearch/hppc/w;->a(I)V

    iget-object v8, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->deque:Lcom/carrotsearch/hppc/w;

    invoke-virtual {v8, v6}, Lcom/carrotsearch/hppc/w;->a(I)V

    iget-object v8, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->visited:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v8, v5}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    iget-object v5, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->visited:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v5, v6}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    sget-object v5, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {v5, v1, v2}, Lcom/graphhopper/util/DistancePlaneProjection;->calcNormalizedDist(D)D

    move-result-wide v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v1, v8

    double-to-int v8, v8

    const-wide/16 v9, 0x0

    move v11, v4

    :goto_0
    iget-object v12, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->deque:Lcom/carrotsearch/hppc/w;

    invoke-virtual {v12}, Lcom/carrotsearch/hppc/w;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->deque:Lcom/carrotsearch/hppc/w;

    iget-object v13, v12, Lcom/carrotsearch/hppc/w;->l:[I

    iget v14, v12, Lcom/carrotsearch/hppc/w;->m:I

    aget v15, v13, v14

    aput v4, v13, v14

    array-length v13, v13

    invoke-static {v14, v13}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v13

    iput v13, v12, Lcom/carrotsearch/hppc/w;->m:I

    add-int/lit8 v11, v11, 0x1

    sget-object v16, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    iget-wide v12, v7, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    move-wide/from16 v25, v5

    iget-wide v4, v7, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-interface {v3, v15}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v21

    invoke-interface {v3, v15}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v23

    move-wide/from16 v19, v4

    move-wide/from16 v17, v12

    invoke-virtual/range {v16 .. v24}, Lcom/graphhopper/util/DistancePlaneProjection;->calcNormalizedDist(DDDD)D

    move-result-wide v4

    if-le v11, v8, :cond_0

    cmpl-double v6, v4, v25

    if-lez v6, :cond_0

    :goto_1
    move-wide/from16 v5, v25

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {v6, v15}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->visited:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v6}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_2

    :cond_1
    iget-object v12, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->visited:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v6}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    cmpg-double v12, v4, v25

    if-gtz v12, :cond_2

    move-object/from16 v12, p4

    invoke-interface {v12, v6}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v15

    add-double/2addr v9, v15

    goto :goto_3

    :cond_2
    move-object/from16 v12, p4

    :goto_3
    iget-object v13, v0, Lcom/graphhopper/routing/util/RoadDensityCalculator;->deque:Lcom/carrotsearch/hppc/w;

    invoke-interface {v6}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v15

    invoke-virtual {v13, v15}, Lcom/carrotsearch/hppc/w;->a(I)V

    goto :goto_2

    :cond_3
    move-object/from16 v12, p4

    goto :goto_1

    :cond_4
    div-double/2addr v9, v1

    div-double/2addr v9, v1

    return-wide v9
.end method
