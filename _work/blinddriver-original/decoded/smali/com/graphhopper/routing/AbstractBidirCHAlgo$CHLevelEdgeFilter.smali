.class Lcom/graphhopper/routing/AbstractBidirCHAlgo$CHLevelEdgeFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/CHEdgeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/AbstractBidirCHAlgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CHLevelEdgeFilter"
.end annotation


# instance fields
.field private final graph:Lcom/graphhopper/storage/RoutingCHGraph;

.field private final maxNodes:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo$CHLevelEdgeFilter;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object p1

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getBaseGraph()Lcom/graphhopper/storage/BaseGraph;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo$CHLevelEdgeFilter;->maxNodes:I

    return-void
.end method


# virtual methods
.method public accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 3

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result v0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result p1

    iget v1, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo$CHLevelEdgeFilter;->maxNodes:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo$CHLevelEdgeFilter;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {v1, v0}, Lcom/graphhopper/storage/RoutingCHGraph;->getLevel(I)I

    move-result v0

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractBidirCHAlgo$CHLevelEdgeFilter;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0, p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getLevel(I)I

    move-result p0

    if-gt v0, p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method
