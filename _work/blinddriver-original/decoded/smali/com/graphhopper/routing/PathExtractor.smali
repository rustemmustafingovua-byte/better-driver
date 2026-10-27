.class public Lcom/graphhopper/routing/PathExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final graph:Lcom/graphhopper/storage/Graph;

.field protected final path:Lcom/graphhopper/routing/Path;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/PathExtractor;->graph:Lcom/graphhopper/storage/Graph;

    iput-object p2, p0, Lcom/graphhopper/routing/PathExtractor;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    new-instance p2, Lcom/graphhopper/routing/Path;

    invoke-direct {p2, p1}, Lcom/graphhopper/routing/Path;-><init>(Lcom/graphhopper/storage/Graph;)V

    iput-object p2, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

    return-void
.end method

.method public static extractPath(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/SPTEntry;)Lcom/graphhopper/routing/Path;
    .locals 1

    .line 1
    new-instance v0, Lcom/graphhopper/routing/PathExtractor;

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/routing/PathExtractor;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V

    invoke-virtual {v0, p2}, Lcom/graphhopper/routing/PathExtractor;->extract(Lcom/graphhopper/routing/SPTEntry;)Lcom/graphhopper/routing/Path;

    move-result-object p0

    return-object p0
.end method

.method private extractPath(Lcom/graphhopper/routing/SPTEntry;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/PathExtractor;->followParentsUntilRoot(Lcom/graphhopper/routing/SPTEntry;)Lcom/graphhopper/routing/SPTEntry;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-virtual {v1}, Lcom/graphhopper/routing/Path;->getEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/util/ArrayUtil;->reverse(Lcom/carrotsearch/hppc/x;)Lcom/carrotsearch/hppc/x;

    .line 4
    iget-object v1, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

    iget v0, v0, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-virtual {v1, v0}, Lcom/graphhopper/routing/Path;->setFromNode(I)Lcom/graphhopper/routing/Path;

    .line 5
    iget-object p0, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

    iget p1, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Path;->setEndNode(I)Lcom/graphhopper/routing/Path;

    return-void
.end method

.method private followParentsUntilRoot(Lcom/graphhopper/routing/SPTEntry;)Lcom/graphhopper/routing/SPTEntry;
    .locals 3

    iget-object v0, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    :goto_0
    iget v1, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    invoke-static {v1}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget v2, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    iget v0, v0, Lcom/graphhopper/routing/SPTEntry;->edge:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/graphhopper/routing/PathExtractor;->onEdge(III)V

    iget-object p1, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    iget-object v0, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private setExtractionTime(J)V
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

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


# virtual methods
.method public extract(Lcom/graphhopper/routing/SPTEntry;)Lcom/graphhopper/routing/Path;
    .locals 4

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

    return-object p0

    :cond_0
    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/PathExtractor;->extractPath(Lcom/graphhopper/routing/SPTEntry;)V

    iget-object v1, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/graphhopper/routing/Path;->setFound(Z)Lcom/graphhopper/routing/Path;

    iget-object v1, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

    iget-wide v2, p1, Lcom/graphhopper/routing/SPTEntry;->weight:D

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/routing/Path;->setWeight(D)Lcom/graphhopper/routing/Path;

    invoke-virtual {v0}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/util/StopWatch;->getNanos()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/routing/PathExtractor;->setExtractionTime(J)V

    iget-object p0, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

    return-object p0
.end method

.method public onEdge(III)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/PathExtractor;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p2

    iget-object v0, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/routing/Path;->addDistance(D)Lcom/graphhopper/routing/Path;

    iget-object v0, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

    iget-object v1, p0, Lcom/graphhopper/routing/PathExtractor;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2, p3}, Lcom/graphhopper/util/GHUtility;->calcMillisWithTurnMillis(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/graphhopper/routing/Path;->addTime(J)Lcom/graphhopper/routing/Path;

    iget-object p0, p0, Lcom/graphhopper/routing/PathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Path;->addEdge(I)V

    return-void
.end method
