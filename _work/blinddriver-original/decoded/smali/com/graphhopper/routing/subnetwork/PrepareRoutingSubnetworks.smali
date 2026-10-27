.class public Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;
    }
.end annotation


# instance fields
.field private final graph:Lcom/graphhopper/storage/BaseGraph;

.field private final logger:Lnc/b;

.field private minNetworkSize:I

.field private final prepareJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;",
            ">;"
        }
    .end annotation
.end field

.field private threads:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->logger:Lnc/b;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->minNetworkSize:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->threads:I

    iput-object p1, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->graph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->prepareJobs:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(ILcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/lang/Runnable;
    .locals 0

    invoke-direct {p1, p3, p2, p0}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->lambda$doWork$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;I)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/graphhopper/routing/weighting/Weighting;ILcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->lambda$setSubnetworks$3(Lcom/graphhopper/routing/weighting/Weighting;ILcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(ILcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p1, p0, p3, p2}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->lambda$doWork$1(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;)Lcom/carrotsearch/hppc/j;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->lambda$doWork$0()Lcom/carrotsearch/hppc/j;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$doWork$0()Lcom/carrotsearch/hppc/j;
    .locals 3

    new-instance v0, Lcom/carrotsearch/hppc/j;

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result p0

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Lcom/carrotsearch/hppc/j;-><init>(J)V

    return-object v0
.end method

.method private synthetic lambda$doWork$1(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->prepareJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;

    invoke-static {v0}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;->b(Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v1

    invoke-static {v0}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;->a(Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_subnetwork"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carrotsearch/hppc/j;

    invoke-direct {p0, v1, v0, p1}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->setSubnetworks(Lcom/graphhopper/routing/weighting/Weighting;Ljava/lang/String;Lcom/carrotsearch/hppc/j;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method private synthetic lambda$doWork$2(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;I)Ljava/lang/Runnable;
    .locals 6

    new-instance v0, Lcom/graphhopper/routing/subnetwork/b;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/subnetwork/b;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic lambda$setSubnetworks$3(Lcom/graphhopper/routing/weighting/Weighting;ILcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p2, v0, p1}, Lcom/graphhopper/util/GHUtility;->calcWeightWithTurnWeight(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result p0

    return p0
.end method

.method private setSubnetworkEdge(ILcom/graphhopper/routing/weighting/Weighting;Lcom/carrotsearch/hppc/j;)I
    .locals 3

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorStateForKey(I)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isFinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result p1

    if-nez p1, :cond_1

    int-to-long p0, p0

    invoke-virtual {p3, p0, p1}, Lcom/carrotsearch/hppc/j;->h(J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private setSubnetworks(Lcom/graphhopper/routing/weighting/Weighting;Ljava/lang/String;Lcom/carrotsearch/hppc/j;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v4

    iget-object v5, v0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->graph:Lcom/graphhopper/storage/BaseGraph;

    new-instance v6, Lb/e0;

    invoke-direct {v6, v1}, Lb/e0;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC;->findComponents(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$EdgeTransitionFilter;Z)Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;

    move-result-object v5

    invoke-virtual {v5}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->getComponents()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->getSingleEdgeComponents()Lcom/carrotsearch/hppc/j;

    move-result-object v8

    invoke-virtual {v8}, Lcom/carrotsearch/hppc/j;->a()J

    move-result-wide v9

    iget-object v11, v0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->logger:Lnc/b;

    invoke-virtual {v5}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->getTotalComponents()I

    move-result v12

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v5}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->getEdgeKeys()I

    move-result v14

    invoke-virtual {v4}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - Found "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " subnetworks ("

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " single edges and "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " components with more than one edge, total nodes: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "), took: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "s"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Lnc/b;->k(Ljava/lang/String;)V

    iget v7, v0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->minNetworkSize:I

    mul-int/lit8 v7, v7, 0x2

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v11

    invoke-virtual {v5}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->getBiggestComponent()Lcom/carrotsearch/hppc/x;

    move-result-object v12

    invoke-virtual {v12}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v12

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v14, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/carrotsearch/hppc/x;

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->getBiggestComponent()Lcom/carrotsearch/hppc/x;

    move-result-object v5

    if-ne v15, v5, :cond_0

    :goto_1
    move-object/from16 v5, v17

    goto :goto_0

    :cond_0
    invoke-virtual {v15}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v5

    if-ge v5, v7, :cond_2

    invoke-virtual {v15}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Ln5/a;

    iget v5, v5, Ln5/a;->b:I

    invoke-direct {v0, v5, v1, v3}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->setSubnetworkEdge(ILcom/graphhopper/routing/weighting/Weighting;Lcom/carrotsearch/hppc/j;)I

    move-result v5

    add-int/2addr v12, v5

    move-object/from16 v5, v19

    goto :goto_2

    :cond_1
    add-int/lit8 v16, v16, 0x1

    invoke-virtual {v15}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v13, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v15}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v5

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v14, v5

    goto :goto_1

    :cond_3
    move-object/from16 v17, v5

    const/4 v5, 0x1

    if-lez v7, :cond_5

    new-instance v6, Lcom/carrotsearch/hppc/k;

    iget-object v7, v8, Lcom/carrotsearch/hppc/j;->l:[J

    iget v8, v8, Lcom/carrotsearch/hppc/j;->m:I

    invoke-direct {v6, v7, v8}, Lcom/carrotsearch/hppc/k;-><init>([JI)V

    :goto_3
    invoke-virtual {v6}, Lcom/carrotsearch/hppc/k;->a()I

    move-result v7

    if-ltz v7, :cond_4

    invoke-direct {v0, v7, v1, v3}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->setSubnetworkEdge(ILcom/graphhopper/routing/weighting/Weighting;Lcom/carrotsearch/hppc/j;)I

    move-result v7

    add-int/2addr v12, v7

    add-int/lit8 v16, v16, 0x1

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_3

    :cond_4
    :goto_4
    move/from16 v1, v16

    goto :goto_5

    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v1, v9, v6

    if-lez v1, :cond_4

    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_4

    :goto_5
    iget-object v3, v0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v3}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v12, 0x2

    if-gt v5, v3, :cond_6

    iget-object v0, v0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->logger:Lnc/b;

    invoke-virtual/range {v17 .. v17}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->getTotalComponents()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual/range {v17 .. v17}, Lcom/graphhopper/routing/subnetwork/EdgeBasedTarjanSCC$ConnectedComponents;->getBiggestComponent()Lcom/carrotsearch/hppc/x;

    move-result-object v5

    invoke-virtual {v5}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v5

    invoke-virtual {v11}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v6

    invoke-virtual {v6}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Marked "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subnetworks (biggest: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " edges) -> "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " components(s) remain (smallest: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", biggest: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " edges), total marked edges: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", took: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    return v12

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v0, v0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v3, v3, 0x2

    const-string v2, " out of "

    const-string v4, "\nThe maximum number of subnetwork edges is: "

    const-string v5, "Too many total (directed) edges were marked as subnetwork edges: "

    invoke-static {v5, v12, v2, v0, v4}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public doWork()I
    .locals 12

    iget v0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->minNetworkSize:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->logger:Lnc/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping subnetwork search: prepare.min_network_size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lnc/b;->k(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->logger:Lnc/b;

    iget v3, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->minNetworkSize:I

    iget v4, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->threads:I

    iget-object v5, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v5}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v6}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->prepareJobs:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ", threads: "

    const-string v10, ", nodes: "

    const-string v11, "Start marking subnetworks, prepare.min_network_size: "

    invoke-static {v11, v3, v9, v4, v10}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", edges: "

    const-string v9, ", jobs: "

    invoke-static {v3, v5, v4, v6, v9}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnc/b;->k(Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Lcom/graphhopper/routing/e;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/graphhopper/routing/e;-><init>(ILjava/lang/Object;)V

    invoke-static {v3}, Ljava/util/stream/Stream;->generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object v3

    iget-object v4, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->prepareJobs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->prepareJobs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v1, v4}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/graphhopper/routing/subnetwork/a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v2, v3, v6}, Lcom/graphhopper/routing/subnetwork/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v4

    iget v5, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->threads:I

    invoke-static {v4, v5}, Lcom/graphhopper/util/GHUtility;->runConcurrently(Ljava/util/stream/Stream;I)V

    iget-object v4, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v4}, Lcom/graphhopper/storage/BaseGraph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    :goto_0
    iget-object v6, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->prepareJobs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->prepareJobs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;

    invoke-static {v6}, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;->a(Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks$PrepareJob;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/carrotsearch/hppc/j;

    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v7

    invoke-interface {v4, v6, v7}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->logger:Lnc/b;

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->prepareJobs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v0

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Finished finding and marking subnetworks for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " jobs, took: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "s, "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lnc/b;->k(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public setMinNetworkSize(I)Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->minNetworkSize:I

    return-object p0
.end method

.method public setThreads(I)Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/subnetwork/PrepareRoutingSubnetworks;->threads:I

    return-object p0
.end method
