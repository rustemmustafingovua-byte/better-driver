.class Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/RoutingCHEdgeIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualCHEdgeIterator"
.end annotation


# instance fields
.field private current:I

.field private edges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->current:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;-><init>()V

    return-void
.end method

.method private getCurrent()Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->edges:Ljava/util/List;

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->current:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    return-object p0
.end method


# virtual methods
.method public getAdjNode()I
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->getCurrent()Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result p0

    return p0
.end method

.method public getBaseNode()I
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->getCurrent()Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result p0

    return p0
.end method

.method public getEdge()I
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->getCurrent()Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getEdge()I

    move-result p0

    return p0
.end method

.method public getOrigEdge()I
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->getCurrent()Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdge()I

    move-result p0

    return p0
.end method

.method public getOrigEdgeKeyFirst()I
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->getCurrent()Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyFirst()I

    move-result p0

    return p0
.end method

.method public getOrigEdgeKeyLast()I
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->getCurrent()Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyLast()I

    move-result p0

    return p0
.end method

.method public getSkippedEdge1()I
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->getCurrent()Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getSkippedEdge1()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Skipped edges are only available for shortcuts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSkippedEdge2()I
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->isShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->getCurrent()Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getSkippedEdge2()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Skipped edges are only available for shortcuts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWeight(Z)D
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->getCurrent()Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getWeight(Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public isShortcut()Z
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->getCurrent()Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->isShortcut()Z

    move-result p0

    return p0
.end method

.method public next()Z
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->current:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->current:I

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->edges:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->edges:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->current:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->current:I

    if-gez v0, :cond_0

    const-string p0, "not started"

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->edges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->current:I

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->edges:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", current: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
