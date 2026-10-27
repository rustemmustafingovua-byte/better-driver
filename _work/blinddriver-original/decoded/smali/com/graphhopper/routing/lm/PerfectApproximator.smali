.class public Lcom/graphhopper/routing/lm/PerfectApproximator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/WeightApproximator;


# instance fields
.field private graph:Lcom/graphhopper/storage/Graph;

.field private reverse:Z

.field private to:I

.field private traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

.field private weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->graph:Lcom/graphhopper/storage/Graph;

    iput-object p2, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iput-object p3, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    iput-boolean p4, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->reverse:Z

    return-void
.end method


# virtual methods
.method public approximate(I)D
    .locals 4

    new-instance v0, Lcom/graphhopper/routing/Dijkstra;

    iget-object v1, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v2, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v3, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/graphhopper/routing/Dijkstra;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    iget-boolean v1, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->reverse:Z

    iget p0, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->to:I

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/graphhopper/routing/Dijkstra;->calcPath(II)Lcom/graphhopper/routing/Path;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p0}, Lcom/graphhopper/routing/Dijkstra;->calcPath(II)Lcom/graphhopper/routing/Path;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->isFound()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getWeight()D

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0
.end method

.method public getSlack()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public reverse()Lcom/graphhopper/routing/weighting/WeightApproximator;
    .locals 4

    new-instance v0, Lcom/graphhopper/routing/lm/PerfectApproximator;

    iget-object v1, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v2, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v3, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    iget-boolean p0, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->reverse:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/graphhopper/routing/lm/PerfectApproximator;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;Z)V

    return-object v0
.end method

.method public setTo(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/lm/PerfectApproximator;->to:I

    return-void
.end method
