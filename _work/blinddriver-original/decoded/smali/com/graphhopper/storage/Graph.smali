.class public interface abstract Lcom/graphhopper/storage/Graph;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;
    .locals 1

    .line 1
    sget-object v0, Lcom/graphhopper/routing/util/EdgeFilter;->ALL_EDGES:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-interface {p0, v0}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p0

    return-object p0
.end method

.method public abstract createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;
.end method

.method public abstract edge(II)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;
.end method

.method public abstract getBaseGraph()Lcom/graphhopper/storage/BaseGraph;
.end method

.method public abstract getBounds()Lcom/graphhopper/util/shapes/BBox;
.end method

.method public abstract getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract getEdgeIteratorStateForKey(I)Lcom/graphhopper/util/EdgeIteratorState;
.end method

.method public abstract getEdges()I
.end method

.method public abstract getNodeAccess()Lcom/graphhopper/storage/NodeAccess;
.end method

.method public abstract getNodes()I
.end method

.method public abstract getOtherNode(II)I
.end method

.method public abstract getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;
.end method

.method public abstract isAdjacentToNode(II)Z
.end method

.method public abstract wrapWeighting(Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/weighting/Weighting;
.end method
