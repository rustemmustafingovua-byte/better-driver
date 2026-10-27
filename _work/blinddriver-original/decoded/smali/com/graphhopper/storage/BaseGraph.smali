.class public Lcom/graphhopper/storage/BaseGraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/Graph;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;,
        Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;,
        Lcom/graphhopper/storage/BaseGraph$AllEdgeIterator;,
        Lcom/graphhopper/storage/BaseGraph$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final MAX_UNSIGNED_INT:J = 0xffffffffL


# instance fields
.field final bitUtil:Lcom/graphhopper/util/BitUtil;

.field private final dir:Lcom/graphhopper/storage/Directory;

.field final edgeKVStorage:Lcom/graphhopper/search/KVStorage;

.field private final eleBytesPerCoord:I

.field private initialized:Z

.field private maxGeoRef:J

.field private minGeoRef:J

.field final nodeAccess:Lcom/graphhopper/storage/NodeAccess;

.field private final segmentSize:I

.field final store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

.field final turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

.field private final wayGeometry:Lcom/graphhopper/storage/DataAccess;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Directory;ZZII)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph;->initialized:Z

    iput-object p1, p0, Lcom/graphhopper/storage/BaseGraph;->dir:Lcom/graphhopper/storage/Directory;

    sget-object v1, Lcom/graphhopper/util/BitUtil;->LITTLE:Lcom/graphhopper/util/BitUtil;

    iput-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    const-string v1, "geometry"

    invoke-interface {p1, v1, p4}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;I)Lcom/graphhopper/storage/DataAccess;

    move-result-object v1

    iput-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    new-instance v1, Lcom/graphhopper/search/KVStorage;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/graphhopper/search/KVStorage;-><init>(Lcom/graphhopper/storage/Directory;Z)V

    iput-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    new-instance v3, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;-><init>(Lcom/graphhopper/storage/Directory;ZZII)V

    iput-object v3, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    new-instance p1, Lcom/graphhopper/storage/GHNodeAccess;

    invoke-direct {p1, v3}, Lcom/graphhopper/storage/GHNodeAccess;-><init>(Lcom/graphhopper/storage/BaseGraphNodesAndEdges;)V

    iput-object p1, p0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iput v7, p0, Lcom/graphhopper/storage/BaseGraph;->segmentSize:I

    if-eqz v6, :cond_0

    new-instance p2, Lcom/graphhopper/storage/TurnCostStorage;

    const-string p3, "turn_costs"

    invoke-interface {v4, p3, v2}, Lcom/graphhopper/storage/Directory;->getDefaultType(Ljava/lang/String;Z)Lcom/graphhopper/storage/DAType;

    move-result-object p4

    invoke-interface {v4, p3, p4, v7}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;I)Lcom/graphhopper/storage/DataAccess;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/graphhopper/storage/TurnCostStorage;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/DataAccess;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/graphhopper/storage/BaseGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-interface {p1}, Lcom/graphhopper/util/PointAccess;->getDimension()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    move v0, p2

    :cond_1
    iput v0, p0, Lcom/graphhopper/storage/BaseGraph;->eleBytesPerCoord:I

    return-void
.end method

.method public static bridge synthetic b(Lcom/graphhopper/storage/BaseGraph;JZLcom/graphhopper/util/FetchMode;II)Lcom/graphhopper/util/PointList;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/graphhopper/storage/BaseGraph;->fetchWayGeometry_(JZLcom/graphhopper/util/FetchMode;II)Lcom/graphhopper/util/PointList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/util/PointList;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/storage/BaseGraph;->setWayGeometry_(Lcom/graphhopper/util/PointList;JZ)V

    return-void
.end method

.method private createWayGeometryBytes(Lcom/graphhopper/util/PointList;Z)[B
    .locals 8

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    iget v1, p0, Lcom/graphhopper/storage/BaseGraph;->eleBytesPerCoord:I

    add-int/lit8 v1, v1, 0x8

    mul-int/2addr v1, v0

    const/4 v2, 0x3

    add-int/2addr v1, v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    if-nez v3, :cond_3

    new-array v1, v1, [B

    iget-object v3, p0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v4}, Lcom/graphhopper/util/BitUtil;->fromUInt3([BII)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->reverse()V

    :cond_0
    iget-object p2, p0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p2}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result p2

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p1, v4}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v5

    iget-object v3, p0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->degreeToInt(D)I

    move-result v5

    invoke-virtual {v3, v1, v5, v2}, Lcom/graphhopper/util/BitUtil;->fromInt([BII)V

    add-int/lit8 v3, v2, 0x4

    iget-object v5, p0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {p1, v4}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/graphhopper/util/Helper;->degreeToInt(D)I

    move-result v6

    invoke-virtual {v5, v1, v6, v3}, Lcom/graphhopper/util/BitUtil;->fromInt([BII)V

    add-int/lit8 v3, v2, 0x8

    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {p1, v4}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/graphhopper/util/Helper;->eleToUInt(D)I

    move-result v6

    invoke-virtual {v5, v1, v6, v3}, Lcom/graphhopper/util/BitUtil;->fromUInt3([BII)V

    add-int/lit8 v2, v2, 0xb

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "too long way geometry "

    const-string p2, ", "

    invoke-static {p1, v1, p2, v0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private fetchWayGeometry_(JZLcom/graphhopper/util/FetchMode;II)Lcom/graphhopper/util/PointList;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    sget-object v4, Lcom/graphhopper/util/FetchMode;->TOWER_ONLY:Lcom/graphhopper/util/FetchMode;

    if-ne v1, v4, :cond_0

    new-instance v1, Lcom/graphhopper/util/PointList;

    iget-object v4, v0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v4}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v4

    const/4 v5, 0x2

    invoke-direct {v1, v5, v4}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    iget-object v4, v0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-virtual {v1, v4, v2}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    iget-object v0, v0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-virtual {v1, v0, v3}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    return-object v1

    :cond_0
    iget-object v4, v0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    move-wide/from16 v5, p1

    invoke-virtual {v4, v5, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getGeoRef(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    const/4 v7, 0x0

    if-lez v6, :cond_1

    invoke-direct {v0, v4, v5}, Lcom/graphhopper/storage/BaseGraph;->getPillarCount(J)I

    move-result v6

    const-wide/16 v8, 0x3

    add-long/2addr v4, v8

    iget v8, v0, Lcom/graphhopper/storage/BaseGraph;->eleBytesPerCoord:I

    add-int/lit8 v8, v8, 0x8

    mul-int/2addr v8, v6

    new-array v9, v8, [B

    iget-object v10, v0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v10, v4, v5, v9, v8}, Lcom/graphhopper/storage/DataAccess;->getBytes(J[BI)V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/graphhopper/util/FetchMode;->PILLAR_ONLY:Lcom/graphhopper/util/FetchMode;

    if-ne v1, v4, :cond_2

    sget-object v0, Lcom/graphhopper/util/PointList;->EMPTY:Lcom/graphhopper/util/PointList;

    return-object v0

    :cond_2
    const/4 v9, 0x0

    move v6, v7

    :goto_0
    new-instance v10, Lcom/graphhopper/util/PointList;

    invoke-static {v6, v1}, Lcom/graphhopper/storage/BaseGraph;->getPointListLength(ILcom/graphhopper/util/FetchMode;)I

    move-result v4

    iget-object v5, v0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v5}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v5

    invoke-direct {v10, v4, v5}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    if-eqz p3, :cond_4

    sget-object v4, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    if-eq v1, v4, :cond_3

    sget-object v4, Lcom/graphhopper/util/FetchMode;->PILLAR_AND_ADJ:Lcom/graphhopper/util/FetchMode;

    if-ne v1, v4, :cond_6

    :cond_3
    iget-object v4, v0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-virtual {v10, v4, v3}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    if-eq v1, v4, :cond_5

    sget-object v4, Lcom/graphhopper/util/FetchMode;->BASE_AND_PILLAR:Lcom/graphhopper/util/FetchMode;

    if-ne v1, v4, :cond_6

    :cond_5
    iget-object v4, v0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-virtual {v10, v4, v2}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    :cond_6
    :goto_1
    move v4, v7

    :goto_2
    if-ge v7, v6, :cond_8

    iget-object v5, v0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {v5, v9, v4}, Lcom/graphhopper/util/BitUtil;->toInt([BI)I

    move-result v5

    invoke-static {v5}, Lcom/graphhopper/util/Helper;->intToDegree(I)D

    move-result-wide v11

    add-int/lit8 v5, v4, 0x4

    iget-object v8, v0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {v8, v9, v5}, Lcom/graphhopper/util/BitUtil;->toInt([BI)I

    move-result v5

    invoke-static {v5}, Lcom/graphhopper/util/Helper;->intToDegree(I)D

    move-result-wide v13

    add-int/lit8 v5, v4, 0x8

    iget-object v8, v0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v8}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {v8, v9, v5}, Lcom/graphhopper/util/BitUtil;->toUInt3([BI)I

    move-result v5

    invoke-static {v5}, Lcom/graphhopper/util/Helper;->uIntToEle(I)D

    move-result-wide v15

    invoke-virtual/range {v10 .. v16}, Lcom/graphhopper/util/PointList;->add(DDD)V

    add-int/lit8 v4, v4, 0xb

    goto :goto_3

    :cond_7
    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/graphhopper/util/PointList;->add(DD)V

    move v4, v5

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_b

    sget-object v3, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    if-eq v1, v3, :cond_9

    sget-object v3, Lcom/graphhopper/util/FetchMode;->BASE_AND_PILLAR:Lcom/graphhopper/util/FetchMode;

    if-ne v1, v3, :cond_a

    :cond_9
    iget-object v0, v0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-virtual {v10, v0, v2}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    :cond_a
    invoke-virtual {v10}, Lcom/graphhopper/util/PointList;->reverse()V

    return-object v10

    :cond_b
    sget-object v2, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    if-eq v1, v2, :cond_d

    sget-object v2, Lcom/graphhopper/util/FetchMode;->PILLAR_AND_ADJ:Lcom/graphhopper/util/FetchMode;

    if-ne v1, v2, :cond_c

    goto :goto_4

    :cond_c
    return-object v10

    :cond_d
    :goto_4
    iget-object v0, v0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-virtual {v10, v0, v3}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    return-object v10
.end method

.method private getOtherNode(IJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p2, p3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeA(J)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0, p2, p3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeB(J)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private getPillarCount(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v1, 0x2

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->getByte(J)B

    move-result v0

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static getPointListLength(ILcom/graphhopper/util/FetchMode;)I
    .locals 4

    sget-object v0, Lcom/graphhopper/storage/BaseGraph$1;->$SwitchMap$com$graphhopper$util$FetchMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    add-int/2addr p0, v1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mode isn\'t handled "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/2addr p0, v2

    :cond_2
    return p0

    :cond_3
    return v1
.end method

.method private isAdjacentToNode(IJ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p2, p3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeA(J)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0, p2, p3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeB(J)I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isTestingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private loadWayGeometryHeader()V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v1}, Lcom/graphhopper/storage/DataAccess;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lcom/graphhopper/util/GHUtility;->checkDAVersion(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/storage/BaseGraph;->minGeoRef:J

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    const/16 v3, 0x10

    invoke-interface {v2, v3}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/storage/BaseGraph;->maxGeoRef:J

    return-void
.end method

.method private nextGeoRef(I)J
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/storage/BaseGraph;->maxGeoRef:J

    int-to-long v2, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/graphhopper/storage/BaseGraph;->maxGeoRef:J

    return-wide v0
.end method

.method private setInitialized()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/storage/BaseGraph;->initialized:Z

    return-void
.end method

.method private setWayGeometryAtGeoRef(Lcom/graphhopper/util/PointList;JZJ)V
    .locals 2

    invoke-direct {p0, p1, p4}, Lcom/graphhopper/storage/BaseGraph;->createWayGeometryBytes(Lcom/graphhopper/util/PointList;Z)[B

    move-result-object p1

    iget-object p4, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    array-length v0, p1

    int-to-long v0, v0

    add-long/2addr v0, p5

    invoke-interface {p4, v0, v1}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    iget-object p4, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    array-length v0, p1

    invoke-interface {p4, p5, p6, p1, v0}, Lcom/graphhopper/storage/DataAccess;->setBytes(J[BI)V

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0, p2, p3, p5, p6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setGeoRef(JJ)V

    return-void
.end method

.method private setWayGeometryHeader()V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    iget-wide v2, p0, Lcom/graphhopper/storage/BaseGraph;->minGeoRef:J

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/util/BitUtil;->getIntLow(J)I

    move-result v1

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    iget-wide v2, p0, Lcom/graphhopper/storage/BaseGraph;->minGeoRef:J

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/util/BitUtil;->getIntHigh(J)I

    move-result v1

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    iget-wide v2, p0, Lcom/graphhopper/storage/BaseGraph;->maxGeoRef:J

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/util/BitUtil;->getIntLow(J)I

    move-result v1

    const/16 v2, 0xc

    invoke-interface {v0, v2, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->bitUtil:Lcom/graphhopper/util/BitUtil;

    iget-wide v2, p0, Lcom/graphhopper/storage/BaseGraph;->maxGeoRef:J

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/util/BitUtil;->getIntHigh(J)I

    move-result p0

    const/16 v1, 0x10

    invoke-interface {v0, v1, p0}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    return-void
.end method

.method private setWayGeometry_(Lcom/graphhopper/util/PointList;JZ)V
    .locals 8

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->getDimension()I

    move-result v1

    iget-object v6, p0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v6}, Lcom/graphhopper/util/PointAccess;->getDimension()I

    move-result v6

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v1, p2, p3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getGeoRef(J)J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v4

    if-lez v1, :cond_1

    invoke-direct {p0, v6, v7}, Lcom/graphhopper/storage/BaseGraph;->getPillarCount(J)I

    move-result v1

    if-gt v4, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/storage/BaseGraph;->setWayGeometryAtGeoRef(Lcom/graphhopper/util/PointList;JZJ)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This edge already has a way geometry so it cannot be changed to a bigger geometry, pointer="

    invoke-static {p2, p3, v1}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p0, Lcom/graphhopper/storage/BaseGraph;->eleBytesPerCoord:I

    add-int/lit8 v1, v1, 0x8

    mul-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v1}, Lcom/graphhopper/storage/BaseGraph;->nextGeoRef(I)J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/storage/BaseGraph;->setWayGeometryAtGeoRef(Lcom/graphhopper/util/PointList;JZJ)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This edge has already been copied so we can no longer change the geometry, pointer="

    invoke-static {p2, p3, v1}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->getDimension()I

    move-result v2

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v0}, Lcom/graphhopper/util/PointAccess;->getDimension()I

    move-result v0

    const-string v3, "D for graph which is "

    const-string v4, "D"

    const-string v5, "Cannot use pointlist which is "

    invoke-static {v5, v2, v3, v0, v4}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p2, p3, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setGeoRef(JJ)V

    return-void
.end method


# virtual methods
.method public checkNotInitialized()V
    .locals 1

    iget-boolean p0, p0, Lcom/graphhopper/storage/BaseGraph;->initialized:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot configure this BaseGraph after calling create or loadExisting. Calling one of the methods twice is also not allowed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->close()V

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {v0}, Lcom/graphhopper/search/KVStorage;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {v0}, Lcom/graphhopper/search/KVStorage;->close()V

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->close()V

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->supportsTurnCosts()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/TurnCostStorage;->close()V

    :cond_2
    return-void
.end method

.method public copyEdge(IZ)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 5

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getBaseNode()I

    move-result v0

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getAdjNode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/storage/BaseGraph;->edge(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getFlags()Lcom/graphhopper/storage/IntsRef;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/graphhopper/util/EdgeIteratorState;->setFlags(Lcom/graphhopper/storage/IntsRef;)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getDistance()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/util/EdgeIteratorState;->setDistance(D)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getKeyValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/graphhopper/util/EdgeIteratorState;->setKeyValues(Ljava/util/Map;)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    if-eqz p2, :cond_1

    iget-wide p1, p1, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v1, p1, p2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getGeoRef(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    iget-wide v1, p0, Lcom/graphhopper/storage/BaseGraph;->minGeoRef:J

    iget-object v3, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v3, p1, p2, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setGeoRef(JJ)V

    iget-wide p1, p0, Lcom/graphhopper/storage/BaseGraph;->minGeoRef:J

    const-wide/16 v3, 0x1

    sub-long/2addr p1, v3

    iput-wide p1, p0, Lcom/graphhopper/storage/BaseGraph;->minGeoRef:J

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide p1, v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setGeoRef(JJ)V

    return-object v0

    :cond_1
    sget-object p0, Lcom/graphhopper/util/FetchMode;->PILLAR_ONLY:Lcom/graphhopper/util/FetchMode;

    invoke-virtual {p1, p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->setWayGeometry(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/util/EdgeIteratorState;

    return-object v0
.end method

.method public copyProperties(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p2}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->getEdge()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getFlags()Lcom/graphhopper/storage/IntsRef;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->writeFlags(JLcom/graphhopper/storage/IntsRef;)V

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->setDistance(D)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getKeyValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/graphhopper/util/EdgeIteratorState;->setKeyValues(Ljava/util/Map;)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    sget-object v0, Lcom/graphhopper/util/FetchMode;->PILLAR_ONLY:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p1, v0}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->setWayGeometry(Lcom/graphhopper/util/PointList;)Lcom/graphhopper/util/EdgeIteratorState;

    return-object p2
.end method

.method public create(J)Lcom/graphhopper/storage/BaseGraph;
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->checkNotInitialized()V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->dir:Lcom/graphhopper/storage/Directory;

    invoke-interface {v0}, Lcom/graphhopper/storage/Directory;->create()Lcom/graphhopper/storage/Directory;

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->create(J)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/search/KVStorage;->create(J)Lcom/graphhopper/search/KVStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->supportsTurnCosts()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/storage/TurnCostStorage;->create(J)Lcom/graphhopper/storage/TurnCostStorage;

    :cond_0
    invoke-direct {p0}, Lcom/graphhopper/storage/BaseGraph;->setInitialized()V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/graphhopper/storage/BaseGraph;->minGeoRef:J

    const-wide/16 p1, 0x1

    iput-wide p1, p0, Lcom/graphhopper/storage/BaseGraph;->maxGeoRef:J

    return-object p0
.end method

.method public createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;
    .locals 1

    .line 2
    sget-object v0, Lcom/graphhopper/routing/util/EdgeFilter;->ALL_EDGES:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p0

    return-object p0
.end method

.method public createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;
    .locals 1

    .line 1
    new-instance v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorImpl;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/EdgeFilter;)V

    return-object v0
.end method

.method public debugPrint()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->debugPrint()V

    return-void
.end method

.method public edge(II)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edge(II)I

    move-result p1

    new-instance v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    invoke-direct {v0, p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;-><init>(Lcom/graphhopper/storage/BaseGraph;)V

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->init(II)Z

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop edges are not supported, got: "

    const-string v1, " - "

    invoke-static {v0, p1, v1, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create edge if graph is already frozen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/storage/BaseGraph;->setWayGeometryHeader()V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {v0}, Lcom/graphhopper/search/KVStorage;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {v0}, Lcom/graphhopper/search/KVStorage;->flush()V

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->flush()V

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->supportsTurnCosts()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/TurnCostStorage;->flush()V

    :cond_2
    return-void
.end method

.method public flushAndCloseGeometryAndNameStorage()V
    .locals 1

    invoke-direct {p0}, Lcom/graphhopper/storage/BaseGraph;->setWayGeometryHeader()V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->close()V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {v0}, Lcom/graphhopper/search/KVStorage;->flush()V

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {p0}, Lcom/graphhopper/search/KVStorage;->close()V

    return-void
.end method

.method public forEdgeAndCopiesOfEdge(Lcom/graphhopper/util/EdgeExplorer;IILjava/util/function/IntConsumer;)V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getGeoRef(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 10
    invoke-interface {p4, p3}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void

    .line 11
    :cond_0
    invoke-interface {p1, p2}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p1

    .line 12
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    move-object p3, p1

    check-cast p3, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    iget-wide v2, p3, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {p2, v2, v3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getGeoRef(J)J

    move-result-wide p2

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    .line 14
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p2

    invoke-interface {p4, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public forEdgeAndCopiesOfEdge(Lcom/graphhopper/util/EdgeExplorer;Lcom/graphhopper/util/EdgeIteratorState;Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/EdgeExplorer;",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            "Ljava/util/function/Consumer<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    move-object v1, p2

    check-cast v1, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    iget-wide v1, v1, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getGeoRef(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2
    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p1

    .line 4
    :goto_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5
    iget-object p2, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    move-object v2, p1

    check-cast v2, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    iget-wide v3, v2, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {p2, v3, v4}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getGeoRef(J)J

    move-result-wide v3

    cmp-long p2, v3, v0

    if-nez p2, :cond_1

    .line 6
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    iget-wide v5, v2, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->edgePointer:J

    invoke-virtual {p2, v5, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getGeoRef(J)J

    move-result-wide v5

    cmp-long p2, v5, v3

    if-nez p2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The consumer must not change the geo ref"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public declared-synchronized freeze()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setFrozen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "base graph already frozen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;
    .locals 1

    new-instance v0, Lcom/graphhopper/storage/BaseGraph$AllEdgeIterator;

    invoke-direct {v0, p0}, Lcom/graphhopper/storage/BaseGraph$AllEdgeIterator;-><init>(Lcom/graphhopper/storage/BaseGraph;)V

    return-object v0
.end method

.method public getBaseGraph()Lcom/graphhopper/storage/BaseGraph;
    .locals 0

    return-object p0
.end method

.method public getBounds()Lcom/graphhopper/util/shapes/BBox;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getBounds()Lcom/graphhopper/util/shapes/BBox;

    move-result-object p0

    return-object p0
.end method

.method public getCapacity()J
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getCapacity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {v2}, Lcom/graphhopper/search/KVStorage;->getCapacity()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->supportsTurnCosts()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/TurnCostStorage;->getCapacity()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getDirectory()Lcom/graphhopper/storage/Directory;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->dir:Lcom/graphhopper/storage/Directory;

    return-object p0
.end method

.method public getEdgeAccess()Lcom/graphhopper/routing/ev/EdgeIntAccess;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    return-object p0
.end method

.method public getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    new-instance v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    invoke-direct {v0, p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;-><init>(Lcom/graphhopper/storage/BaseGraph;)V

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->init(II)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEdgeIteratorStateForKey(I)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 1

    new-instance v0, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;

    invoke-direct {v0, p0}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;-><init>(Lcom/graphhopper/storage/BaseGraph;)V

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraph$EdgeIteratorStateImpl;->init(I)V

    return-object v0
.end method

.method public getEdges()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdges()I

    move-result p0

    return p0
.end method

.method public getMaxGeoRef()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/storage/BaseGraph;->maxGeoRef:J

    return-wide v0
.end method

.method public getNodeAccess()Lcom/graphhopper/storage/NodeAccess;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    return-object p0
.end method

.method public getNodes()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodes()I

    move-result p0

    return p0
.end method

.method public getOtherNode(II)I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v0

    .line 4
    invoke-direct {p0, p2, v0, v1}, Lcom/graphhopper/storage/BaseGraph;->getOtherNode(IJ)I

    move-result p0

    return p0
.end method

.method public getSegmentSize()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/BaseGraph;->segmentSize:I

    return p0
.end method

.method public getStore()Lcom/graphhopper/storage/BaseGraphNodesAndEdges;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    return-object p0
.end method

.method public getTurnCostStorage()Lcom/graphhopper/storage/TurnCostStorage;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    return-object p0
.end method

.method public isAdjNode(II)Z
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeB(J)I

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAdjacentToNode(II)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v0

    .line 3
    invoke-direct {p0, p2, v0, v1}, Lcom/graphhopper/storage/BaseGraph;->isAdjacentToNode(IJ)Z

    move-result p0

    return p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->isClosed()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized isFrozen()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getFrozen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/BaseGraph;->initialized:Z

    return p0
.end method

.method public loadExisting()Z
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->checkNotInitialized()V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->loadExisting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {v0}, Lcom/graphhopper/search/KVStorage;->loadExisting()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->supportsTurnCosts()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-virtual {v0}, Lcom/graphhopper/storage/TurnCostStorage;->loadExisting()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lcom/graphhopper/storage/BaseGraph;->setInitialized()V

    invoke-direct {p0}, Lcom/graphhopper/storage/BaseGraph;->loadWayGeometryHeader()V

    const/4 p0, 0x1

    return p0
.end method

.method public relabelNodes(Ljava/util/function/IntUnaryOperator;)V
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->relabelNodes(Ljava/util/function/IntUnaryOperator;)V

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->supportsTurnCosts()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/TurnCostStorage;->sortNodes()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot relabel nodes if graph is already frozen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sortEdges(Ljava/util/function/IntUnaryOperator;)V
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->sortEdges(Ljava/util/function/IntUnaryOperator;)V

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->supportsTurnCosts()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/TurnCostStorage;->sortEdges(Ljava/util/function/IntUnaryOperator;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot sort edges if graph is already frozen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public supportsTurnCosts()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->turnCostStorage:Lcom/graphhopper/storage/TurnCostStorage;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toDetailsString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraph;->store:Lcom/graphhopper/storage/BaseGraphNodesAndEdges;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toDetailsString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraph;->edgeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {v1}, Lcom/graphhopper/search/KVStorage;->getCapacity()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iget-wide v5, p0, Lcom/graphhopper/storage/BaseGraph;->maxGeoRef:J

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/graphhopper/storage/BaseGraph;->minGeoRef:J

    invoke-static {v6, v7}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraph;->wayGeometry:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v7

    div-long/2addr v7, v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name:("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "MB), geo:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    const-string v1, "("

    invoke-static {p0, v5, v0, v6, v1}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MB)"

    invoke-static {v7, v8, v0, p0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wrapWeighting(Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    return-object p1
.end method
