.class Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/EdgeIteratorState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/BaseGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EdgeIteratorStateImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field adjNode:I

.field final baseGraph:Lcom/graphhopper/storage/BaseGraph;

.field baseNode:I

.field edgeId:I

.field private final edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

.field edgePointer:J

.field reverse:Z

.field final store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iput-object p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getEdgeAccess()Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    iget-object p1, p1, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iput-object p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    return-void
.end method


# virtual methods
.method public final copyPropertiesFrom(Lcom/graphhopper/util/EdgeIteratorState;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0, p1, p0}, Lcom/graphhopper/storage/BaseGraph;->copyProperties(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method public detach(Z)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    invoke-static {v0}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-direct {v0, v1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;-><init>(Lcom/graphhopper/storage/BaseGraph;)V

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->init(II)Z

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    const-string v0, "call setEdgeId before detaching (edgeId:"

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    iget-boolean v3, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getBaseNode()I

    move-result v5

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getAdjNode()I

    move-result v6

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/graphhopper/storage/BaseGraph;->b(Lcom/graphhopper/storage/BaseGraph;JZLcom/graphhopper/util/FetchMode;II)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide p0

    return-wide p0
.end method

.method public get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/IntEncodedValue;->getInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)I

    move-result p0

    return p0
.end method

.method public get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;
    .locals 2
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
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->getEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/graphhopper/routing/ev/StringEncodedValue;)Ljava/lang/String;
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/StringEncodedValue;->getString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z

    move-result p0

    return p0
.end method

.method public final getAdjNode()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    return p0
.end method

.method public final getBaseNode()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    return p0
.end method

.method public getDistance()D
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getDist(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getEdge()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    return p0
.end method

.method public getEdgeKey()I
    .locals 1

    iget v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-boolean p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    invoke-static {v0, p0}, Lcom/graphhopper/util/GHUtility;->createEdgeKey(IZ)I

    move-result p0

    return p0
.end method

.method public getFlags()Lcom/graphhopper/storage/IntsRef;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->createEdgeFlags()Lcom/graphhopper/storage/IntsRef;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->readFlags(JLcom/graphhopper/storage/IntsRef;)V

    return-object v0
.end method

.method public getKeyValues()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/search/KVStorage$KValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getKeyValuesRef(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/search/KVStorage;->getAll(J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "street_name"

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/IntEncodedValue;)I
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/IntEncodedValue;->getInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)I

    move-result p0

    return p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;
    .locals 2
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
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->getEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/StringEncodedValue;)Ljava/lang/String;
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/StringEncodedValue;->getString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z

    move-result p0

    return p0
.end method

.method public getReverseEdgeKey()I
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getEdgeKey()I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->reverseEdgeKey(I)I

    move-result p0

    return p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getKeyValuesRef(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v2, v2, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    iget-boolean p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    invoke-virtual {v2, v0, v1, p1, p0}, Lcom/graphhopper/search/KVStorage;->get(JLjava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final init(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 21
    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    .line 22
    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v1, v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    .line 23
    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v2, v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeA(J)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    .line 24
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeB(J)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    .line 25
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    .line 28
    iget p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    .line 29
    iput v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    .line 30
    iput p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    return-void

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "edge keys must not be negative, given: "

    .line 32
    invoke-static {p1, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final init(II)Z
    .locals 3

    if-ltz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdges()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 2
    iput p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    .line 3
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    .line 4
    iget-object p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeA(J)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    .line 5
    iget-object p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeB(J)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p1, :cond_2

    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    if-ne p2, v2, :cond_1

    .line 7
    iput-boolean v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    .line 8
    iput p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseNode:I

    .line 9
    iput p2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->adjNode:I

    return v1

    :cond_1
    return v0

    .line 10
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    return v1

    .line 11
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdges()I

    move-result p0

    const-string v0, " out of bounds: [0,"

    const-string v1, "["

    .line 12
    const-string v2, "edge: "

    invoke-static {v2, p1, v0, p0, v1}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;ZZ)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 2
    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    .line 4
    iget-boolean p2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, p2, v0, v1, p3}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EncodedValue "

    const-string p3, " supports only one direction"

    .line 6
    invoke-static {p2, p1, p3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 6

    .line 25
    iget-boolean v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v3, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move-object v0, p1

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;DD)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 11

    .line 26
    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-boolean v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v3, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v4, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move-object v1, p1

    move-wide v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    .line 28
    iget-boolean p2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 v6, p2, 0x1

    iget v7, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v8, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move-object v5, p1

    move-wide v9, p4

    invoke-interface/range {v5 .. v10}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-object p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EncodedValue "

    const-string p3, " supports only one direction"

    .line 30
    invoke-static {p2, p1, p3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3
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

    .line 37
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3
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

    .line 38
    invoke-virtual {p1}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->isStoreTwoDirections()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    .line 40
    iget-boolean p2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-object p0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EncodedValue "

    const-string p3, " supports only one direction"

    .line 42
    invoke-static {p2, p1, p3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(Lcom/graphhopper/routing/ev/IntEncodedValue;I)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 13
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/IntEncodedValue;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/IntEncodedValue;II)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 14
    invoke-interface {p1}, Lcom/graphhopper/routing/ev/IntEncodedValue;->isStoreTwoDirections()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/IntEncodedValue;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    .line 16
    iget-boolean p2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, p2, v0, v1, p3}, Lcom/graphhopper/routing/ev/IntEncodedValue;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EncodedValue "

    const-string p3, " supports only one direction"

    .line 18
    invoke-static {p2, p1, p3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 49
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/StringEncodedValue;->setString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/String;)V

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 50
    invoke-virtual {p1}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->isStoreTwoDirections()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/StringEncodedValue;->setString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/String;)V

    .line 52
    iget-boolean p2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/graphhopper/routing/ev/StringEncodedValue;->setString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/String;)V

    return-object p0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EncodedValue "

    const-string p3, " supports only one direction"

    .line 54
    invoke-static {p2, p1, p3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDistance(D)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setDist(JD)V

    return-object p0
.end method

.method public final setFlags(Lcom/graphhopper/storage/IntsRef;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->writeFlags(JLcom/graphhopper/storage/IntsRef;)V

    return-object p0
.end method

.method public setKeyValues(Ljava/util/Map;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 4
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

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v0, v0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {v0, p1}, Lcom/graphhopper/search/KVStorage;->add(Ljava/util/Map;)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-static {v0, v1}, Lcom/graphhopper/util/BitUtil;->toSignedInt(J)I

    move-result v0

    invoke-virtual {p1, v2, v3, v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setKeyValuesRef(JI)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Too many key value pairs are stored, currently limited to 4294967295 was "

    invoke-static {v0, v1, p1}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 7

    .line 3
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v4, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move-object v1, p1

    move-wide v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/lang/Enum;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3
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
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/IntEncodedValue;I)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/IntEncodedValue;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeId:I

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/StringEncodedValue;->setString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/String;)V

    return-object p0
.end method

.method public setWayGeometry(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    iget-boolean v3, p0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->reverse:Z

    invoke-static {v0, p1, v1, v2, v3}, Lcom/graphhopper/storage/BaseGraph;->c(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/util/PointList;JZ)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getEdge()I

    move-result v0

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getBaseNode()I

    move-result v1

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getAdjNode()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
