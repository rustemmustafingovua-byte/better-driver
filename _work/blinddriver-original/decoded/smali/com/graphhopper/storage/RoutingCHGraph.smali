.class public interface abstract Lcom/graphhopper/storage/RoutingCHGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createInEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;
.end method

.method public abstract createOutEdgeExplorer()Lcom/graphhopper/storage/RoutingCHEdgeExplorer;
.end method

.method public abstract getBaseGraph()Lcom/graphhopper/storage/Graph;
.end method

.method public abstract getEdgeIteratorState(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;
.end method

.method public abstract getEdges()I
.end method

.method public abstract getLevel(I)I
.end method

.method public abstract getNodes()I
.end method

.method public abstract getShortcuts()I
.end method

.method public abstract getTurnWeight(III)D
.end method

.method public abstract getWeighting()Lcom/graphhopper/routing/weighting/Weighting;
.end method

.method public abstract hasTurnCosts()Z
.end method

.method public abstract isEdgeBased()Z
.end method
