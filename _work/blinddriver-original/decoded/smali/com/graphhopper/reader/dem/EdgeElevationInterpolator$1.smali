.class Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;
.super Lcom/graphhopper/util/BreadthFirstSearch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->gatherOuterAndInnerNodeIds(Lcom/graphhopper/util/EdgeExplorer;Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/coll/GHBitSet;Lcom/carrotsearch/hppc/r0;Lcom/graphhopper/coll/GHIntHashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;

.field final synthetic val$innerNodeIds:Lcom/graphhopper/coll/GHIntHashSet;

.field final synthetic val$outerNodeIds:Lcom/carrotsearch/hppc/r0;

.field final synthetic val$visitedEdgesIds:Lcom/graphhopper/coll/GHBitSet;


# direct methods
.method public constructor <init>(Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;Lcom/graphhopper/coll/GHBitSet;Lcom/graphhopper/coll/GHIntHashSet;Lcom/carrotsearch/hppc/r0;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;->this$0:Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;

    iput-object p2, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;->val$visitedEdgesIds:Lcom/graphhopper/coll/GHBitSet;

    iput-object p3, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;->val$innerNodeIds:Lcom/graphhopper/coll/GHIntHashSet;

    iput-object p4, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;->val$outerNodeIds:Lcom/carrotsearch/hppc/r0;

    invoke-direct {p0}, Lcom/graphhopper/util/BreadthFirstSearch;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAdjacent(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;->val$visitedEdgesIds:Lcom/graphhopper/coll/GHBitSet;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/graphhopper/coll/GHBitSet;->add(I)V

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;->this$0:Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;

    invoke-virtual {v1, p1}, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator;->isInterpolatableEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;->val$innerNodeIds:Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {v1, v0}, Lcom/carrotsearch/hppc/c0;->remove(I)Z

    iget-object p0, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;->val$outerNodeIds:Lcom/carrotsearch/hppc/r0;

    invoke-interface {p0, v0}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    return p1

    :cond_0
    iget-object v1, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;->val$outerNodeIds:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v1, v0}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/graphhopper/reader/dem/EdgeElevationInterpolator$1;->val$innerNodeIds:Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/c0;->add(I)Z

    :cond_1
    return p1
.end method

.method public createBitSet()Lcom/graphhopper/coll/GHBitSet;
    .locals 0

    new-instance p0, Lcom/graphhopper/coll/GHTBitSet;

    invoke-direct {p0}, Lcom/graphhopper/coll/GHTBitSet;-><init>()V

    return-object p0
.end method
