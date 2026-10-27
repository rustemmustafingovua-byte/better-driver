.class public Lcom/graphhopper/storage/index/LineIntIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final START_POINTER:I = 0x1


# instance fields
.field private final bounds:Lcom/graphhopper/util/shapes/BBox;

.field private checksum:I

.field final dataAccess:Lcom/graphhopper/storage/DataAccess;

.field private entries:[I

.field private indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

.field private initialized:Z

.field private keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

.field private leafs:I

.field private minResolutionInMeter:I

.field private shifts:[B

.field private size:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/storage/Directory;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p2, p3, v0}, Lcom/graphhopper/storage/Directory;->getDefaultType(Ljava/lang/String;Z)Lcom/graphhopper/storage/DAType;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/graphhopper/storage/index/LineIntIndex;-><init>(Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/storage/Directory;Ljava/lang/String;Lcom/graphhopper/storage/DAType;)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/storage/Directory;Ljava/lang/String;Lcom/graphhopper/storage/DAType;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 3
    iput v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->minResolutionInMeter:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->initialized:Z

    .line 5
    iput-object p1, p0, Lcom/graphhopper/storage/index/LineIntIndex;->bounds:Lcom/graphhopper/util/shapes/BBox;

    .line 6
    invoke-interface {p2, p3, p4}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/storage/DataAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    return-void
.end method

.method private fillIDs(JLjava/util/function/IntConsumer;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/graphhopper/storage/index/LineIntIndex;->entries:[I

    array-length v3, v3

    const-wide/16 v4, 0x4

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/graphhopper/storage/index/LineIntIndex;->shifts:[B

    aget-byte v3, v3, v1

    rsub-int/lit8 v3, v3, 0x40

    ushr-long v6, p1, v3

    long-to-int v3, v6

    iget-object v6, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    add-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, v4

    invoke-interface {v6, v2, v3}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/graphhopper/storage/index/LineIntIndex;->shifts:[B

    aget-byte v3, v3, v1

    shl-long/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    int-to-long v6, v2

    mul-long/2addr v6, v4

    invoke-interface {p1, v6, v7}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p1

    if-gez p1, :cond_2

    add-int/2addr p1, v0

    neg-int p0, p1

    invoke-interface {p3, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void

    :cond_2
    add-int/2addr v2, v0

    :goto_1
    if-ge v2, p1, :cond_3

    iget-object p2, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    int-to-long v0, v2

    mul-long/2addr v0, v4

    invoke-interface {p2, v0, v1}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p2

    invoke-interface {p3, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private query(ILcom/graphhopper/storage/index/LocationIndex$TileFilter;DDDDLcom/graphhopper/storage/index/LocationIndex$Visitor;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v11, p11

    move/from16 v1, p1

    move/from16 v13, p12

    int-to-long v3, v1

    const-wide/16 v5, 0x4

    mul-long v14, v3, v5

    .line 4
    iget-object v1, v0, Lcom/graphhopper/storage/index/LineIntIndex;->entries:[I

    array-length v1, v1

    const/16 v16, 0x1

    if-ne v13, v1, :cond_1

    .line 5
    iget-object v1, v0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v1, v14, v15}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int v0, v1

    .line 6
    invoke-interface {v11, v0}, Lcom/graphhopper/storage/index/LocationIndex$Visitor;->onEdge(I)V

    return-void

    :cond_0
    int-to-long v1, v1

    mul-long/2addr v1, v5

    :goto_0
    add-long/2addr v14, v5

    cmp-long v3, v14, v1

    if-gez v3, :cond_a

    .line 7
    iget-object v3, v0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v3, v14, v15}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v3

    invoke-interface {v11, v3}, Lcom/graphhopper/storage/index/LocationIndex$Visitor;->onEdge(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/graphhopper/storage/index/LineIntIndex;->shifts:[B

    aget-byte v1, v1, v13

    shl-int v1, v16, v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    const/4 v3, 0x2

    :cond_2
    int-to-double v3, v3

    div-double v9, p9, v3

    div-double v7, p7, v3

    const/16 v17, 0x0

    move/from16 v3, v17

    :goto_1
    if-ge v3, v1, :cond_a

    .line 9
    iget-object v4, v0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    mul-int/lit8 v5, v3, 0x4

    int-to-long v5, v5

    add-long/2addr v5, v14

    invoke-interface {v4, v5, v6}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v4

    if-gtz v4, :cond_3

    move/from16 v18, v1

    :goto_2
    move/from16 v19, v3

    goto/16 :goto_6

    .line 10
    :cond_3
    iget-object v5, v0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    move/from16 p1, v1

    int-to-long v0, v3

    invoke-virtual {v5, v0, v1}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->decode(J)[I

    move-result-object v0

    .line 11
    aget v1, v0, v17

    int-to-double v5, v1

    mul-double/2addr v5, v9

    add-double v5, v5, p5

    .line 12
    aget v0, v0, v16

    int-to-double v0, v0

    mul-double/2addr v0, v7

    add-double v23, v0, p3

    if-nez v2, :cond_5

    .line 13
    invoke-interface {v11}, Lcom/graphhopper/storage/index/LocationIndex$Visitor;->isTileInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    new-instance v18, Lcom/graphhopper/util/shapes/BBox;

    add-double v21, v5, v9

    add-double v25, v23, v7

    move-wide/from16 v19, v5

    invoke-direct/range {v18 .. v26}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    move-object/from16 v0, v18

    .line 14
    :goto_4
    invoke-interface {v11}, Lcom/graphhopper/storage/index/LocationIndex$Visitor;->isTileInfo()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    invoke-interface {v11, v0, v13}, Lcom/graphhopper/storage/index/LocationIndex$Visitor;->onTile(Lcom/graphhopper/util/shapes/BBox;I)V

    :cond_6
    if-eqz v2, :cond_7

    .line 16
    invoke-interface {v2, v0}, Lcom/graphhopper/storage/index/LocationIndex$TileFilter;->acceptAll(Lcom/graphhopper/util/shapes/BBox;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move/from16 v18, p1

    move/from16 v19, v3

    move v1, v4

    move-wide/from16 v3, v23

    goto :goto_5

    .line 17
    :cond_8
    invoke-interface {v2, v0}, Lcom/graphhopper/storage/index/LocationIndex$TileFilter;->acceptPartially(Lcom/graphhopper/util/shapes/BBox;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v12, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v18, p1

    move/from16 v19, v3

    move v1, v4

    move-wide/from16 v3, v23

    .line 18
    invoke-direct/range {v0 .. v12}, Lcom/graphhopper/storage/index/LineIntIndex;->query(ILcom/graphhopper/storage/index/LocationIndex$TileFilter;DDDDLcom/graphhopper/storage/index/LocationIndex$Visitor;I)V

    goto :goto_6

    :cond_9
    move/from16 v18, p1

    goto :goto_2

    :goto_5
    add-int/lit8 v12, v13, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v11, p11

    .line 19
    invoke-direct/range {v0 .. v12}, Lcom/graphhopper/storage/index/LineIntIndex;->query(ILcom/graphhopper/storage/index/LocationIndex$TileFilter;DDDDLcom/graphhopper/storage/index/LocationIndex$Visitor;I)V

    :goto_6
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v11, p11

    move/from16 v1, v18

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method private store(Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;I)I
    .locals 11

    int-to-long v0, p2

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    .line 15
    invoke-interface {p1}, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;->isLeaf()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 16
    check-cast p1, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemLeafEntry;

    .line 17
    invoke-virtual {p1}, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemLeafEntry;->getResults()Lcom/carrotsearch/hppc/x;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v4

    if-nez v4, :cond_0

    return p2

    .line 19
    :cond_0
    iget v6, p0, Lcom/graphhopper/storage/index/LineIntIndex;->size:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/graphhopper/storage/index/LineIntIndex;->size:I

    const/4 v6, 0x1

    add-int/2addr p2, v6

    .line 20
    iget v7, p0, Lcom/graphhopper/storage/index/LineIntIndex;->leafs:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/graphhopper/storage/index/LineIntIndex;->leafs:I

    .line 21
    iget-object v7, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    add-int v8, p2, v4

    add-int/2addr v8, v6

    int-to-long v8, v8

    mul-long/2addr v8, v2

    invoke-interface {v7, v8, v9}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    if-ne v4, v6, :cond_1

    .line 22
    iget-object p0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-virtual {p1, v5}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr p1, v6

    invoke-interface {p0, v0, v1, p1}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return p2

    :cond_1
    :goto_0
    if-ge v5, v4, :cond_2

    .line 23
    iget-object v6, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    int-to-long v7, p2

    mul-long/2addr v7, v2

    invoke-virtual {p1, v5}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 24
    :cond_2
    iget-object p0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0, v0, v1, p2}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return p2

    .line 25
    :cond_3
    check-cast p1, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;

    .line 26
    iget-object v4, p1, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;->subEntries:[Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;

    array-length v4, v4

    add-int/2addr p2, v4

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_6

    .line 27
    iget-object v7, p1, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;->subEntries:[Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;

    aget-object v7, v7, v6

    if-nez v7, :cond_4

    goto :goto_3

    .line 28
    :cond_4
    iget-object v8, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    add-int/lit8 v9, p2, 0x1

    int-to-long v9, v9

    mul-long/2addr v9, v2

    invoke-interface {v8, v9, v10}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    .line 29
    invoke-direct {p0, v7, p2}, Lcom/graphhopper/storage/index/LineIntIndex;->store(Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;I)I

    move-result v7

    if-ne v7, p2, :cond_5

    .line 30
    iget-object p2, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p2, v0, v1, v5}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    goto :goto_2

    .line 31
    :cond_5
    iget-object v8, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v8, v0, v1, p2}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    :goto_2
    move p2, v7

    :goto_3
    add-int/lit8 v6, v6, 0x1

    add-long/2addr v0, v2

    goto :goto_1

    :cond_6
    return p2
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->close()V

    return-void
.end method

.method public findEdgeIdsInNeighborhood(DDILjava/util/function/IntConsumer;)V
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-virtual {v0, p3, p4}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->x(D)I

    move-result p3

    iget-object p4, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-virtual {p4, p1, p2}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->y(D)I

    move-result p1

    neg-int p2, p5

    move p4, p2

    :goto_0
    if-gt p4, p5, :cond_2

    add-int v0, p1, p4

    sub-int v1, p3, p5

    add-int v2, p3, p5

    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v3}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getParts()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v3}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getParts()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-virtual {v3, v1, v0}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->encode(II)J

    move-result-wide v3

    iget-object v1, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-virtual {v1}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->getBits()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x40

    shl-long/2addr v3, v1

    invoke-direct {p0, v3, v4, p6}, Lcom/graphhopper/storage/index/LineIntIndex;->fillIDs(JLjava/util/function/IntConsumer;)V

    :cond_0
    if-lez p5, :cond_1

    if-ltz v2, :cond_1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v1}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getParts()I

    move-result v1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v1}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getParts()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-virtual {v1, v2, v0}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->encode(II)J

    move-result-wide v0

    iget-object v2, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-virtual {v2}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->getBits()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x40

    shl-long/2addr v0, v2

    invoke-direct {p0, v0, v1, p6}, Lcom/graphhopper/storage/index/LineIntIndex;->fillIDs(JLjava/util/function/IntConsumer;)V

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p5, -0x1

    if-gt p2, p4, :cond_4

    add-int p4, p3, p2

    sub-int v0, p1, p5

    add-int v1, p1, p5

    if-ltz p4, :cond_3

    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v2}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getParts()I

    move-result v2

    if-ge p4, v2, :cond_3

    iget-object v2, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v2}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getParts()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-virtual {v2, p4, v0}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->encode(II)J

    move-result-wide v2

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-virtual {v0}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->getBits()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    shl-long/2addr v2, v0

    invoke-direct {p0, v2, v3, p6}, Lcom/graphhopper/storage/index/LineIntIndex;->fillIDs(JLjava/util/function/IntConsumer;)V

    :cond_3
    if-ltz p4, :cond_2

    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getParts()I

    move-result v0

    if-ge p4, v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getParts()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-virtual {v0, p4, v1}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->encode(II)J

    move-result-wide v0

    iget-object p4, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-virtual {p4}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->getBits()I

    move-result p4

    rsub-int/lit8 p4, p4, 0x40

    shl-long/2addr v0, p4

    invoke-direct {p0, v0, v1, p6}, Lcom/graphhopper/storage/index/LineIntIndex;->fillIDs(JLjava/util/function/IntConsumer;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public flush()V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    const/4 v1, 0x4

    iget v2, p0, Lcom/graphhopper/storage/index/LineIntIndex;->checksum:I

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    const/16 v1, 0x8

    iget v2, p0, Lcom/graphhopper/storage/index/LineIntIndex;->minResolutionInMeter:I

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object p0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    return-void
.end method

.method public getCapacity()J
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChecksum()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->checksum:I

    return p0
.end method

.method public getLeafs()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->leafs:I

    return p0
.end method

.method public getMinResolutionInMeter()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->minResolutionInMeter:I

    return p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->size:I

    return p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->isClosed()Z

    move-result p0

    return p0
.end method

.method public loadExisting()Z
    .locals 3

    iget-boolean v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->initialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    const-string v1, "location_index"

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lcom/graphhopper/util/GHUtility;->checkDAVersion(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->checksum:I

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->minResolutionInMeter:I

    iget-object v1, p0, Lcom/graphhopper/storage/index/LineIntIndex;->bounds:Lcom/graphhopper/util/shapes/BBox;

    invoke-static {v1, v0}, Lcom/graphhopper/storage/index/IndexStructureInfo;->create(Lcom/graphhopper/util/shapes/BBox;I)Lcom/graphhopper/storage/index/IndexStructureInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getKeyAlgo()Lcom/graphhopper/geohash/SpatialKeyAlgo;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getEntries()[I

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->entries:[I

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getShifts()[B

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->shifts:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->initialized:Z

    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call loadExisting only once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public query(Lcom/graphhopper/storage/index/LocationIndex$TileFilter;Lcom/graphhopper/storage/index/LocationIndex$Visitor;)V
    .locals 13

    .line 2
    new-instance v1, Lcom/carrotsearch/hppc/c0;

    invoke-direct {v1}, Lcom/carrotsearch/hppc/c0;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/graphhopper/storage/index/LineIntIndex;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v3, v2, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v5, v2, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-wide v7, v2, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    sub-double/2addr v7, v3

    iget-wide v9, v2, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    sub-double/2addr v9, v5

    new-instance v11, Lcom/graphhopper/storage/index/LineIntIndex$1;

    invoke-direct {v11, p0, p2, v1}, Lcom/graphhopper/storage/index/LineIntIndex$1;-><init>(Lcom/graphhopper/storage/index/LineIntIndex;Lcom/graphhopper/storage/index/LocationIndex$Visitor;Lcom/carrotsearch/hppc/c0;)V

    const/4 v12, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v12}, Lcom/graphhopper/storage/index/LineIntIndex;->query(ILcom/graphhopper/storage/index/LocationIndex$TileFilter;DDDDLcom/graphhopper/storage/index/LocationIndex$Visitor;I)V

    return-void
.end method

.method public query(Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/storage/index/LocationIndex$Visitor;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/graphhopper/storage/index/LocationIndex;->createBBoxTileFilter(Lcom/graphhopper/util/shapes/BBox;)Lcom/graphhopper/storage/index/LocationIndex$TileFilter;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/index/LineIntIndex;->query(Lcom/graphhopper/storage/index/LocationIndex$TileFilter;Lcom/graphhopper/storage/index/LocationIndex$Visitor;)V

    return-void
.end method

.method public setChecksum(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/storage/index/LineIntIndex;->checksum:I

    return-void
.end method

.method public setMinResolutionInMeter(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/storage/index/LineIntIndex;->minResolutionInMeter:I

    return-void
.end method

.method public store(Lcom/graphhopper/storage/index/InMemConstructionIndex;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget v1, p0, Lcom/graphhopper/storage/index/LineIntIndex;->minResolutionInMeter:I

    invoke-static {v0, v1}, Lcom/graphhopper/storage/index/IndexStructureInfo;->create(Lcom/graphhopper/util/shapes/BBox;I)Lcom/graphhopper/storage/index/IndexStructureInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    .line 2
    invoke-virtual {v0}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getKeyAlgo()Lcom/graphhopper/geohash/SpatialKeyAlgo;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    .line 3
    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getEntries()[I

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->entries:[I

    .line 4
    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->indexStructureInfo:Lcom/graphhopper/storage/index/IndexStructureInfo;

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getShifts()[B

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->shifts:[B

    .line 5
    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->dataAccess:Lcom/graphhopper/storage/DataAccess;

    const-wide/32 v1, 0x10000

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    .line 6
    :try_start_0
    iget-object p1, p1, Lcom/graphhopper/storage/index/InMemConstructionIndex;->root:Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/storage/index/LineIntIndex;->store(Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iput-boolean v0, p0, Lcom/graphhopper/storage/index/LineIntIndex;->initialized:Z

    return-void

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Problem while storing location index. "

    .line 9
    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
