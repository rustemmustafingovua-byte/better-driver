.class public Lcom/graphhopper/routing/DefaultBidirPathExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/BidirPathExtractor;


# instance fields
.field private final graph:Lcom/graphhopper/storage/Graph;

.field protected final path:Lcom/graphhopper/routing/Path;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->graph:Lcom/graphhopper/storage/Graph;

    iput-object p2, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    new-instance p2, Lcom/graphhopper/routing/Path;

    invoke-direct {p2, p1}, Lcom/graphhopper/routing/Path;-><init>(Lcom/graphhopper/storage/Graph;)V

    iput-object p2, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    return-void
.end method

.method public static extractPath(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;D)Lcom/graphhopper/routing/Path;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->extract(Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;D)Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public extract(Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;D)Lcom/graphhopper/routing/Path;
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    iget v1, p2, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/graphhopper/util/StopWatch;

    invoke-direct {v0}, Lcom/graphhopper/util/StopWatch;-><init>()V

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->start()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->extractFwdPath(Lcom/graphhopper/routing/SPTEntry;)V

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->processMeetingPoint(Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;)V

    invoke-virtual {p0, p2}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->extractBwdPath(Lcom/graphhopper/routing/SPTEntry;)V

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/util/StopWatch;->getNanos()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->setExtractionTime(J)V

    iget-object p1, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/graphhopper/routing/Path;->setFound(Z)Lcom/graphhopper/routing/Path;

    iget-object p1, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-virtual {p1, p3, p4}, Lcom/graphhopper/routing/Path;->setWeight(D)Lcom/graphhopper/routing/Path;

    iget-object p0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "forward and backward entries must have same adjacent nodes, fwdEntry:"

    const-string p4, ", bwdEntry:"

    invoke-static {p3, p1, p4, p2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    return-object p0
.end method

.method public extractBwdPath(Lcom/graphhopper/routing/SPTEntry;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->followParentsUntilRoot(Lcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;

    move-result-object p1

    iget p1, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->onBwdTreeRoot(I)V

    return-void
.end method

.method public extractFwdPath(Lcom/graphhopper/routing/SPTEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->followParentsUntilRoot(Lcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;

    move-result-object p1

    iget p1, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->onFwdTreeRoot(I)V

    iget-object p0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/util/ArrayUtil;->reverse(Lcom/carrotsearch/hppc/x;)Lcom/carrotsearch/hppc/x;

    return-void
.end method

.method public followParentsUntilRoot(Lcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;
    .locals 4

    iget-object v0, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    :goto_0
    iget v1, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    invoke-static {v1}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget p1, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->getIncEdge(Lcom/graphhopper/routing/SPTEntry;)I

    move-result v2

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->onEdge(IIZI)V

    iget-object p1, v0, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getIncEdge(Lcom/graphhopper/routing/SPTEntry;)I
    .locals 0

    iget p0, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    return p0
.end method

.method public onBwdTreeRoot(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Path;->setEndNode(I)Lcom/graphhopper/routing/Path;

    return-void
.end method

.method public onEdge(IIZI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p2

    iget-object v0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/routing/Path;->addDistance(D)Lcom/graphhopper/routing/Path;

    iget-object v0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    iget-object v1, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static {v1, p2, p3, p4}, Lcom/graphhopper/util/GHUtility;->calcMillisWithTurnMillis(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/graphhopper/routing/Path;->addTime(J)Lcom/graphhopper/routing/Path;

    iget-object p0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Path;->addEdge(I)V

    return-void
.end method

.method public onFwdTreeRoot(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Path;->setFromNode(I)Lcom/graphhopper/routing/Path;

    return-void
.end method

.method public onMeetingPoint(III)V
    .locals 1

    invoke-static {p1}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    iget-object p0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnMillis(III)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/graphhopper/routing/Path;->addTime(J)Lcom/graphhopper/routing/Path;

    :cond_1
    :goto_0
    return-void
.end method

.method public processMeetingPoint(Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->getIncEdge(Lcom/graphhopper/routing/SPTEntry;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->getIncEdge(Lcom/graphhopper/routing/SPTEntry;)I

    move-result p2

    iget p1, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->onMeetingPoint(III)V

    return-void
.end method

.method public setExtractionTime(J)V
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "path extraction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " \u03bcs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Path;->setDebugInfo(Ljava/lang/String;)V

    return-void
.end method
