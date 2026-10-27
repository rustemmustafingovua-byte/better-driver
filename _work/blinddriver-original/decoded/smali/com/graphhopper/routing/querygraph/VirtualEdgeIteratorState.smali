.class public Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/EdgeIteratorState;


# instance fields
.field private final adjNode:I

.field private final baseNode:I

.field private distance:D

.field private edgeFlags:Lcom/graphhopper/storage/IntsRef;

.field private edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

.field private final edgeKey:I

.field private keyValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/search/KVStorage$KValue;",
            ">;"
        }
    .end annotation
.end field

.field private final originalEdgeKey:I

.field private final pointList:Lcom/graphhopper/util/PointList;

.field private final reverse:Z

.field private reverseEdge:Lcom/graphhopper/util/EdgeIteratorState;

.field private unfavored:Z


# direct methods
.method public constructor <init>(IIIIDLcom/graphhopper/storage/IntsRef;Ljava/util/Map;Lcom/graphhopper/util/PointList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIID",
            "Lcom/graphhopper/storage/IntsRef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/search/KVStorage$KValue;",
            ">;",
            "Lcom/graphhopper/util/PointList;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    iput p2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeKey:I

    iput p3, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->baseNode:I

    iput p4, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->adjNode:I

    iput-wide p5, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->distance:D

    iput-object p7, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeFlags:Lcom/graphhopper/storage/IntsRef;

    new-instance p1, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;

    invoke-direct {p1, p7}, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;-><init>(Lcom/graphhopper/storage/IntsRef;)V

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    iput-object p8, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->keyValues:Ljava/util/Map;

    iput-object p9, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    iput-boolean p10, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    return-void
.end method


# virtual methods
.method public copyPropertiesFrom(Lcom/graphhopper/util/EdgeIteratorState;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not supported."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public detach(Z)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverseEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-virtual {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->getFlags()Lcom/graphhopper/storage/IntsRef;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->setFlags(Lcom/graphhopper/storage/IntsRef;)Lcom/graphhopper/util/EdgeIteratorState;

    iget-object p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverseEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-virtual {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->getKeyValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->setKeyValues(Ljava/util/Map;)Lcom/graphhopper/util/EdgeIteratorState;

    iget-object p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverseEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-virtual {p0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->getDistance()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/graphhopper/util/EdgeIteratorState;->setDistance(D)Lcom/graphhopper/util/EdgeIteratorState;

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverseEdge:Lcom/graphhopper/util/EdgeIteratorState;

    :cond_0
    return-object p0
.end method

.method public fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/graphhopper/util/PointList;->EMPTY:Lcom/graphhopper/util/PointList;

    return-object p0

    :cond_0
    sget-object v0, Lcom/graphhopper/util/FetchMode;->TOWER_ONLY:Lcom/graphhopper/util/FetchMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->clone(Z)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Lcom/graphhopper/util/PointList;

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v0

    const/4 v3, 0x2

    invoke-direct {p1, v3, v0}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, p0, v0}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    return-object p1

    :cond_2
    sget-object v0, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->clone(Z)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lcom/graphhopper/util/FetchMode;->BASE_AND_PILLAR:Lcom/graphhopper/util/FetchMode;

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/graphhopper/util/PointList;->copy(II)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Lcom/graphhopper/util/FetchMode;->PILLAR_AND_ADJ:Lcom/graphhopper/util/FetchMode;

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/graphhopper/util/PointList;->copy(II)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v0, Lcom/graphhopper/util/FetchMode;->PILLAR_ONLY:Lcom/graphhopper/util/FetchMode;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result p1

    if-ne p1, v2, :cond_6

    sget-object p0, Lcom/graphhopper/util/PointList;->EMPTY:Lcom/graphhopper/util/PointList;

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, v2, p1}, Lcom/graphhopper/util/PointList;->copy(II)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Illegal mode:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide p0

    return-wide p0
.end method

.method public get(Lcom/graphhopper/routing/ev/IntEncodedValue;)I
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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

    .line 6
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->getEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/graphhopper/routing/ev/StringEncodedValue;)Ljava/lang/String;
    .locals 2

    .line 7
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/StringEncodedValue;->getString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/graphhopper/util/EdgeIteratorState;->UNFAVORED_EDGE:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    if-ne p1, v0, :cond_0

    .line 2
    iget-boolean p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->unfavored:Z

    return p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z

    move-result p0

    return p0
.end method

.method public getAdjNode()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->adjNode:I

    return p0
.end method

.method public getBaseNode()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->baseNode:I

    return p0
.end method

.method public getDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->distance:D

    return-wide v0
.end method

.method public getEdge()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeKey:I

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p0

    return p0
.end method

.method public getEdgeKey()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeKey:I

    return p0
.end method

.method public getFlags()Lcom/graphhopper/storage/IntsRef;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeFlags:Lcom/graphhopper/storage/IntsRef;

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

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->keyValues:Ljava/util/Map;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "street_name"

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getOriginalEdgeKey()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    return p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D
    .locals 2

    .line 5
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/IntEncodedValue;)I
    .locals 2

    .line 4
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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

    .line 6
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->getEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/StringEncodedValue;)Ljava/lang/String;
    .locals 2

    .line 7
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/StringEncodedValue;->getString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/graphhopper/util/EdgeIteratorState;->UNFAVORED_EDGE:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    if-ne p1, v0, :cond_0

    .line 2
    iget-boolean p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->unfavored:Z

    return p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, p0}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z

    move-result p0

    return p0
.end method

.method public getReverseEdgeKey()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeKey:I

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->reverseEdgeKey(I)I

    move-result p0

    return p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->keyValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/search/KVStorage$KValue;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/graphhopper/search/KVStorage$KValue;->getFwd()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/graphhopper/search/KVStorage$KValue;->getFwd()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/search/KVStorage$KValue;->getBwd()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/search/KVStorage$KValue;->getBwd()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    .line 4
    iget-boolean p2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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
    iget-boolean v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v2

    iget-object v3, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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
    iget-boolean v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v3

    iget-object v4, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move-object v1, p1

    move-wide v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    .line 28
    iget-boolean p2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 v6, p2, 0x1

    iget p2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {p2}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v7

    iget-object v8, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    .line 40
    iget-boolean p2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/IntEncodedValue;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    .line 16
    iget-boolean p2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/StringEncodedValue;->setString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/String;)V

    .line 52
    iget-boolean p2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->distance:D

    return-object p0
.end method

.method public setFlags(Lcom/graphhopper/storage/IntsRef;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeFlags:Lcom/graphhopper/storage/IntsRef;

    new-instance v0, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;-><init>(Lcom/graphhopper/storage/IntsRef;)V

    iput-object v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->keyValues:Ljava/util/Map;

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 7

    .line 3
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 v2, v0, 0x1

    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v3

    iget-object v4, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

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
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/IntEncodedValue;I)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/IntEncodedValue;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-object p0
.end method

.method public setReverse(Lcom/graphhopper/routing/ev/StringEncodedValue;Ljava/lang/String;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    .line 5
    iget-boolean v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverse:Z

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->originalEdgeKey:I

    invoke-static {v1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/graphhopper/routing/ev/StringEncodedValue;->setString(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReverseEdge(Lcom/graphhopper/util/EdgeIteratorState;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->reverseEdge:Lcom/graphhopper/util/EdgeIteratorState;

    return-void
.end method

.method public setUnfavored(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->unfavored:Z

    return-void
.end method

.method public setWayGeometry(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported for virtual edge. Set when creating it."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->baseNode:I

    iget p0, p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->adjNode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
