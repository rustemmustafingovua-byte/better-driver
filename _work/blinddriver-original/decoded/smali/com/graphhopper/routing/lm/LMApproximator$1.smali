.class Lcom/graphhopper/routing/lm/LMApproximator$1;
.super Lcom/graphhopper/routing/Dijkstra;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/lm/LMApproximator;->findClosestRealNode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/lm/LMApproximator;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/lm/LMApproximator;Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LMApproximator$1;->this$0:Lcom/graphhopper/routing/lm/LMApproximator;

    invoke-direct {p0, p2, p3, p4}, Lcom/graphhopper/routing/Dijkstra;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    return-void
.end method


# virtual methods
.method public finished()Z
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMApproximator$1;->this$0:Lcom/graphhopper/routing/lm/LMApproximator;

    iget-object v1, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    iget v1, v1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-static {v0, v1}, Lcom/graphhopper/routing/lm/LMApproximator;->b(Lcom/graphhopper/routing/lm/LMApproximator;I)V

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LMApproximator$1;->this$0:Lcom/graphhopper/routing/lm/LMApproximator;

    iget-object v1, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    iget-wide v1, v1, Lcom/graphhopper/routing/SPTEntry;->weight:D

    invoke-static {v0, v1, v2}, Lcom/graphhopper/routing/lm/LMApproximator;->c(Lcom/graphhopper/routing/lm/LMApproximator;D)V

    iget-object v0, p0, Lcom/graphhopper/routing/Dijkstra;->currEdge:Lcom/graphhopper/routing/SPTEntry;

    iget v0, v0, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LMApproximator$1;->this$0:Lcom/graphhopper/routing/lm/LMApproximator;

    invoke-static {p0}, Lcom/graphhopper/routing/lm/LMApproximator;->a(Lcom/graphhopper/routing/lm/LMApproximator;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initCollections(I)V
    .locals 0

    const/4 p1, 0x2

    invoke-super {p0, p1}, Lcom/graphhopper/routing/Dijkstra;->initCollections(I)V

    return-void
.end method
