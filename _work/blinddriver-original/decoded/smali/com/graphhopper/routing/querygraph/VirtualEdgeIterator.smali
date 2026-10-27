.class Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/EdgeIterator;


# instance fields
.field private current:I

.field private final edgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

.field private edges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/util/EdgeFilter;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/util/EdgeFilter;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edges:Ljava/util/List;

    const/4 p2, -0x1

    iput p2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->current:I

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    return-void
.end method

.method private getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edges:Ljava/util/List;

    iget p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->current:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method


# virtual methods
.method public copyPropertiesFrom(Lcom/graphhopper/util/EdgeIteratorState;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->copyPropertiesFrom(Lcom/graphhopper/util/EdgeIteratorState;)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public detach(Z)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide p0

    return-wide p0
.end method

.method public get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I

    move-result p0

    return p0
.end method

.method public get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/graphhopper/routing/ev/StringEncodedValue;)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/StringEncodedValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p0

    return p0
.end method

.method public getAdjNode()I
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p0

    return p0
.end method

.method public getBaseNode()I
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p0

    return p0
.end method

.method public getDistance()D
    .locals 2

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getEdge()I
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p0

    return p0
.end method

.method public getEdgeKey()I
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result p0

    return p0
.end method

.method public getEdges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edges:Ljava/util/List;

    return-object p0
.end method

.method public getFlags()Lcom/graphhopper/storage/IntsRef;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getFlags()Lcom/graphhopper/storage/IntsRef;

    move-result-object p0

    return-object p0
.end method

.method public getKeyValues()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/search/KVStorage$KValue;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getKeyValues()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/IntEncodedValue;)I
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/IntEncodedValue;)I

    move-result p0

    return p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/StringEncodedValue;)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/StringEncodedValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p0

    return p0
.end method

.method public getReverseEdgeKey()I
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getReverseEdgeKey()I

    move-result p0

    return p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public next()Z
    .locals 4

    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->current:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->current:I

    :goto_0
    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->current:I

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edges:Ljava/util/List;

    iget v3, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->current:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v0, v2}, Lcom/graphhopper/routing/util/EdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->current:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->current:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->current:I

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edges:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public reset(Ljava/util/List;)Lcom/graphhopper/util/EdgeIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;)",
            "Lcom/graphhopper/util/EdgeIterator;"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edges:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->current:I

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;ZZ)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;ZZ)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;DD)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 6

    .line 6
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;DD)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;TT;)",
            "Lcom/graphhopper/util/EdgeIteratorState;"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;TT;TT;)",
            "Lcom/graphhopper/util/EdgeIteratorState;"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/IntEncodedValue;I)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/IntEncodedValue;I)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/IntEncodedValue;II)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/IntEncodedValue;II)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public setDistance(D)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->setDistance(D)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public setFlags(Lcom/graphhopper/storage/IntsRef;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->setFlags(Lcom/graphhopper/storage/IntsRef;)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public setKeyValues(Ljava/util/Map;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/search/KVStorage$KValue;",
            ">;)",
            "Lcom/graphhopper/util/EdgeIteratorState;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->setKeyValues(Ljava/util/Map;)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->setReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/util/EdgeIteratorState;->setReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;TT;)",
            "Lcom/graphhopper/util/EdgeIteratorState;"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->setReverse(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/IntEncodedValue;I)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->setReverse(Lcom/graphhopper/routing/ev/IntEncodedValue;I)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->setReverse(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public setWayGeometry(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->setWayGeometry(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->current:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->getCurrentEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edges:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "virtual edge: "

    const-string v2, ", all: "

    invoke-static {v1, v0, v2, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->edges:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "virtual edge: (invalid), all: "

    invoke-static {v0, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
