.class Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;
.super Lcom/graphhopper/routing/DijkstraBidirectionRef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/lm/LandmarkStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LandmarkExplorer"
.end annotation


# instance fields
.field private accessFilter:Lcom/graphhopper/routing/util/EdgeFilter;

.field private lastEntry:Lcom/graphhopper/routing/SPTEntry;

.field private final lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

.field private final reverse:Z


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/lm/LandmarkStorage;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;Lcom/graphhopper/routing/util/EdgeFilter;Z)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/graphhopper/routing/DijkstraBidirectionRef;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    iput-object p5, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->accessFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    iput-object p2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    iput-boolean p6, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->reverse:Z

    const/4 p1, 0x1

    if-eqz p6, :cond_0

    iput-boolean p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AbstractBidirAlgo;->setUpdateBestPath(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;)Lcom/graphhopper/storage/Graph;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;)Lcom/graphhopper/routing/lm/LandmarkStorage;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    return-object p0
.end method


# virtual methods
.method public calcWeight(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/routing/SPTEntry;Z)D
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->accessFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/util/EdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget v0, p2, Lcom/graphhopper/routing/SPTEntry;->edge:I

    invoke-static {p0, p1, p3, v0}, Lcom/graphhopper/util/GHUtility;->calcWeightWithTurnWeight(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)D

    move-result-wide p0

    invoke-virtual {p2}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide p2

    add-double/2addr p2, p0

    return-wide p2
.end method

.method public finished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->reverse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currTo:Lcom/graphhopper/routing/SPTEntry;

    iput-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->lastEntry:Lcom/graphhopper/routing/SPTEntry;

    iget-boolean p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedTo:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->currFrom:Lcom/graphhopper/routing/SPTEntry;

    iput-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->lastEntry:Lcom/graphhopper/routing/SPTEntry;

    iget-boolean p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->finishedFrom:Z

    return p0
.end method

.method public getFromCount()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    invoke-interface {p0}, Lcom/carrotsearch/hppc/k0;->size()I

    move-result p0

    return p0
.end method

.method public getLastEntry()Lcom/graphhopper/routing/SPTEntry;
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->lastEntry:Lcom/graphhopper/routing/SPTEntry;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get max weight if not yet finished"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initLandmarkWeights(IIJI)V
    .locals 10

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-boolean v1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->reverse:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    :goto_0
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v9, Lcom/graphhopper/coll/MapEntry;

    invoke-direct {v9, v0, v0}, Lcom/graphhopper/coll/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;

    move-object v3, p0

    move v6, p1

    move-wide v4, p3

    move v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$2;-><init>(Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;JIILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Lcom/carrotsearch/hppc/k0;->forEach(Lp5/b;)Lp5/b;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    int-to-double p0, p0

    invoke-interface {v1}, Lcom/carrotsearch/hppc/k0;->size()I

    move-result p3

    int-to-double p3, p3

    div-double/2addr p0, p3

    const-wide p3, 0x3fb999999999999aL    # 0.1

    cmpl-double p0, p0, p3

    if-lez p0, :cond_1

    invoke-static {}, Lcom/graphhopper/routing/lm/LandmarkStorage;->e()Lnc/b;

    move-result-object p0

    iget-object p1, v3, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p1, p2}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide p3

    iget-object p1, v3, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p1, p2}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide p1

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p5

    invoke-interface {v1}, Lcom/carrotsearch/hppc/k0;->size()I

    move-result v0

    iget-object v1, v3, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->lms:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-static {v1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->c(Lcom/graphhopper/routing/lm/LandmarkStorage;)D

    move-result-wide v1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v7, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v3, v7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "landmark "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, ","

    const-string p4, "): too many weights were maxed out ("

    invoke-static {v5, p3, p1, p2, p4}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    const-string p1, "/"

    const-string p2, "). Use a bigger factor than "

    invoke-static {v5, p5, p1, v0, p2}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ". For example use maximum_lm_weight: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " in your LM profile definition"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnc/b;->l(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public runAlgo()V
    .locals 0

    invoke-super {p0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->runAlgo()V

    return-void
.end method

.method public setStartNode(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->reverse:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1, v2}, Lcom/graphhopper/routing/AbstractBidirAlgo;->initTo(ID)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, v1, v2}, Lcom/graphhopper/routing/AbstractBidirAlgo;->initFrom(ID)V

    return-void
.end method

.method public setSubnetworks([BI)Z
    .locals 3

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-boolean v1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->reverse:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    :goto_0
    new-instance v2, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer$1;-><init>(Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;[BILjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v1, v2}, Lcom/carrotsearch/hppc/k0;->forEach(Lo5/b;)Lo5/b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Too many subnetworks "

    invoke-static {p2, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
