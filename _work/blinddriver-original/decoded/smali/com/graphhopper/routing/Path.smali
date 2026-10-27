.class public Lcom/graphhopper/routing/Path;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/Path$EdgeVisitor;
    }
.end annotation


# instance fields
.field private debugInfo:Ljava/lang/String;

.field private description:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private distance:D

.field private edgeIds:Lcom/carrotsearch/hppc/x;

.field private endNode:I

.field private found:Z

.field private fromNode:I

.field final graph:Lcom/graphhopper/storage/Graph;

.field private final nodeAccess:Lcom/graphhopper/storage/NodeAccess;

.field private time:J

.field private weight:D


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/graphhopper/routing/Path;->weight:D

    new-instance v0, Lcom/carrotsearch/hppc/x;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/routing/Path;->fromNode:I

    iput v0, p0, Lcom/graphhopper/routing/Path;->endNode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/routing/Path;->debugInfo:Ljava/lang/String;

    iput-object p1, p0, Lcom/graphhopper/routing/Path;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/Path;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    return-void
.end method


# virtual methods
.method public addDistance(D)Lcom/graphhopper/routing/Path;
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/Path;->distance:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/graphhopper/routing/Path;->distance:D

    return-object p0
.end method

.method public addEdge(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->add(I)V

    return-void
.end method

.method public addTime(J)Lcom/graphhopper/routing/Path;
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/Path;->time:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/graphhopper/routing/Path;->time:J

    return-object p0
.end method

.method public calcEdges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/graphhopper/routing/Path$1;

    invoke-direct {v1, p0, v0}, Lcom/graphhopper/routing/Path$1;-><init>(Lcom/graphhopper/routing/Path;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/Path;->forEveryEdge(Lcom/graphhopper/routing/Path$EdgeVisitor;)V

    return-object v0
.end method

.method public calcNodes()Lcom/carrotsearch/hppc/d0;
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/x;

    iget-object v1, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iget-object v1, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->isFound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/graphhopper/routing/Path;->endNode:I

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/x;->add(I)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getFromNode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    new-instance v1, Lcom/graphhopper/routing/Path$2;

    invoke-direct {v1, p0, v0}, Lcom/graphhopper/routing/Path$2;-><init>(Lcom/graphhopper/routing/Path;Lcom/carrotsearch/hppc/x;)V

    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/Path;->forEveryEdge(Lcom/graphhopper/routing/Path$EdgeVisitor;)V

    return-object v0
.end method

.method public calcPoints()Lcom/graphhopper/util/PointList;
    .locals 3

    new-instance v0, Lcom/graphhopper/util/PointList;

    iget-object v1, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/graphhopper/routing/Path;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v2}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    iget-object v1, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->isFound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/routing/Path;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iget p0, p0, Lcom/graphhopper/routing/Path;->endNode:I

    invoke-virtual {v0, v1, p0}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getFromNode()I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/Path;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-virtual {v0, v2, v1}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    new-instance v1, Lcom/graphhopper/routing/Path$3;

    invoke-direct {v1, p0, v0}, Lcom/graphhopper/routing/Path$3;-><init>(Lcom/graphhopper/routing/Path;Lcom/graphhopper/util/PointList;)V

    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/Path;->forEveryEdge(Lcom/graphhopper/routing/Path$EdgeVisitor;)V

    return-object v0
.end method

.method public forEveryEdge(Lcom/graphhopper/routing/Path$EdgeVisitor;)V
    .locals 6

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getFromNode()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/graphhopper/routing/Path;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v5, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v5, v3}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v5

    invoke-interface {v4, v5, v0}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v0

    iget-object v5, p0, Lcom/graphhopper/routing/Path;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v4

    invoke-interface {v5, v4, v0}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v4

    invoke-interface {p1, v4, v3, v2}, Lcom/graphhopper/routing/Path$EdgeVisitor;->next(Lcom/graphhopper/util/EdgeIteratorState;II)V

    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1, v3}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    const-string v2, " was empty when requested with node "

    const-string v4, ", array index:"

    const-string v5, "Edge "

    invoke-static {v5, v1, v2, v0, v4}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", edges:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-interface {p1}, Lcom/graphhopper/routing/Path$EdgeVisitor;->finish()V

    return-void
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/Path;->debugInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/Path;->description:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public getDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/Path;->distance:D

    return-wide v0
.end method

.method public getEdgeCount()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    return p0
.end method

.method public getEdges()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public getEndNode()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/Path;->endNode:I

    return p0
.end method

.method public getFinalEdge()Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/Path;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v1, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v1

    iget p0, p0, Lcom/graphhopper/routing/Path;->endNode:I

    invoke-interface {v0, v1, p0}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public getFromNode()I
    .locals 1

    iget p0, p0, Lcom/graphhopper/routing/Path;->fromNode:I

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "fromNode < 0 should not happen"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGraph()Lcom/graphhopper/storage/Graph;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/Path;->graph:Lcom/graphhopper/storage/Graph;

    return-object p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/Path;->time:J

    return-wide v0
.end method

.method public getWeight()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/Path;->weight:D

    return-wide v0
.end method

.method public isFound()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/Path;->found:Z

    return p0
.end method

.method public setDebugInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/Path;->debugInfo:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/util/List;)Lcom/graphhopper/routing/Path;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/graphhopper/routing/Path;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/Path;->description:Ljava/util/List;

    return-object p0
.end method

.method public setDistance(D)Lcom/graphhopper/routing/Path;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/Path;->distance:D

    return-object p0
.end method

.method public setEdges(Lcom/carrotsearch/hppc/x;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    return-void
.end method

.method public setEndNode(I)Lcom/graphhopper/routing/Path;
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/Path;->endNode:I

    return-object p0
.end method

.method public setFound(Z)Lcom/graphhopper/routing/Path;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/routing/Path;->found:Z

    return-object p0
.end method

.method public setFromNode(I)Lcom/graphhopper/routing/Path;
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/Path;->fromNode:I

    return-object p0
.end method

.method public setTime(J)Lcom/graphhopper/routing/Path;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/Path;->time:J

    return-object p0
.end method

.method public setWeight(D)Lcom/graphhopper/routing/Path;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/Path;->weight:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-boolean v0, p0, Lcom/graphhopper/routing/Path;->found:Z

    iget-wide v1, p0, Lcom/graphhopper/routing/Path;->weight:D

    iget-wide v3, p0, Lcom/graphhopper/routing/Path;->time:J

    iget-wide v5, p0, Lcom/graphhopper/routing/Path;->distance:D

    iget-object p0, p0, Lcom/graphhopper/routing/Path;->edgeIds:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "found: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", weight: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", time: "

    const-string v1, ", distance: "

    invoke-static {v7, v0, v3, v4, v1}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", edges: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
