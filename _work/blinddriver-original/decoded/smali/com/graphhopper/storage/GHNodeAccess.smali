.class Lcom/graphhopper/storage/GHNodeAccess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/NodeAccess;


# instance fields
.field private final store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraphNodesAndEdges;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    return-void
.end method


# virtual methods
.method public ensureNode(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->ensureNodeCapacity(I)V

    return-void
.end method

.method public getDimension()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public final getEle(I)D
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEle(J)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "elevation is disabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLat(I)D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLat(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final getLon(I)D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLon(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final getTurnCostIndex(I)I
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withTurnCosts()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getTurnCostRef(J)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "This graph does not support turn costs"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public final is3D()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation()Z

    move-result p0

    return p0
.end method

.method public final setNode(IDDD)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->ensureNodeCapacity(I)V

    iget-object v0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setLat(JD)V

    iget-object v0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setLon(JD)V

    iget-object v0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p6, p7}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setEle(JD)V

    iget-object p0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-object p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    invoke-virtual/range {p1 .. p7}, Lcom/graphhopper/util/shapes/BBox;->update(DDD)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/graphhopper/util/shapes/BBox;->update(DD)V

    return-void
.end method

.method public final setTurnCostIndex(II)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withTurnCosts()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->ensureNodeCapacity(I)V

    iget-object p0, p0, Lcom/graphhopper/storage/GHNodeAccess;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setTurnCostRef(JI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "This graph does not support turn costs"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
