.class Lcom/graphhopper/reader/osm/OSMNodeData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CONNECTION_NODE:J = 0x2L

.field static final EMPTY_NODE:J = -0x1L

.field static final END_NODE:J = 0x0L

.field static final INTERMEDIATE_NODE:J = 0x1L

.field static final JUNCTION_NODE:J = -0x2L


# instance fields
.field private final idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

.field private nextArtificialOSMNodeId:J

.field private nextPillarId:J

.field private nextTowerId:I

.field private final nodeKVStorage:Lcom/graphhopper/search/KVStorage;

.field private final nodeTagIndicesByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

.field private final nodesToBeSplit:Lcom/carrotsearch/hppc/i1;

.field private final pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

.field private final towerNodes:Lcom/graphhopper/util/PointAccess;


# direct methods
.method public constructor <init>(Lcom/graphhopper/util/PointAccess;Lcom/graphhopper/storage/Directory;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextTowerId:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextPillarId:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextArtificialOSMNodeId:J

    new-instance v1, Lcom/graphhopper/coll/GHLongLongBTree;

    const/16 v2, 0xc8

    const/4 v3, 0x5

    const-wide/16 v4, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/graphhopper/coll/GHLongLongBTree;-><init>(IIJ)V

    iput-object v1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    new-instance v1, Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-interface {p1}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result p1

    invoke-direct {v1, p1, p2}, Lcom/graphhopper/reader/osm/PillarInfo;-><init>(ZLcom/graphhopper/storage/Directory;)V

    iput-object v1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    new-instance p1, Lcom/graphhopper/coll/GHLongLongBTree;

    const/4 v1, 0x4

    invoke-direct {p1, v2, v1, v4, v5}, Lcom/graphhopper/coll/GHLongLongBTree;-><init>(IIJ)V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodeTagIndicesByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    new-instance p1, Lcom/carrotsearch/hppc/h1;

    new-instance v2, Lcom/carrotsearch/hppc/n;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/carrotsearch/hppc/n;-><init>(I)V

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    invoke-direct {p1, v1, v3, v4, v2}, Lcom/carrotsearch/hppc/w0;-><init>(IDLcom/carrotsearch/hppc/u;)V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodesToBeSplit:Lcom/carrotsearch/hppc/i1;

    new-instance p1, Lcom/graphhopper/search/KVStorage;

    invoke-direct {p1, p2, v0}, Lcom/graphhopper/search/KVStorage;-><init>(Lcom/graphhopper/storage/Directory;Z)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/search/KVStorage;->create(J)Lcom/graphhopper/search/KVStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodeKVStorage:Lcom/graphhopper/search/KVStorage;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Lcom/graphhopper/search/KVStorage$KValue;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/OSMNodeData;->lambda$setTags$0(Ljava/util/Map$Entry;)Lcom/graphhopper/search/KVStorage$KValue;

    move-result-object p0

    return-object p0
.end method

.method private addPillarNode(JDDD)J
    .locals 12

    iget-wide v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextPillarId:J

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodeToId(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {v2}, Lcom/graphhopper/coll/LongLongMap;->getMaxValue()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v3, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    iget-wide v4, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextPillarId:J

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Lcom/graphhopper/reader/osm/PillarInfo;->setNode(JDDD)V

    iget-object v2, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/graphhopper/coll/LongLongMap;->put(JJ)J

    iget-wide p1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextPillarId:J

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextPillarId:J

    return-wide v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {p0}, Lcom/graphhopper/coll/LongLongMap;->getMaxValue()J

    move-result-wide v0

    const-string p0, "id for pillar node cannot be bigger than "

    invoke-static {v0, v1, p0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addTowerNode(JDDD)J
    .locals 8

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    iget v1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextTowerId:I

    move-wide v2, p3

    move-wide v4, p5

    move-wide v6, p7

    invoke-interface/range {v0 .. v7}, Lcom/graphhopper/util/PointAccess;->setNode(IDDD)V

    iget p3, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextTowerId:I

    int-to-long p3, p3

    invoke-virtual {p0, p3, p4}, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodeToId(J)J

    move-result-wide p3

    iget-object p5, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/graphhopper/coll/LongLongMap;->put(JJ)J

    iget p1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextTowerId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextTowerId:I

    const p0, 0x7fffffff

    if-eq p1, p0, :cond_0

    return-wide p3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tower node id overflow, too many tower nodes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isNodeId(J)Z
    .locals 2

    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    const-wide/16 v0, -0x2

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isPillarNode(J)Z
    .locals 2

    const-wide/16 v0, 0x2

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTowerNode(J)Z
    .locals 2

    const-wide/16 v0, -0x2

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$setTags$0(Ljava/util/Map$Entry;)Lcom/graphhopper/search/KVStorage$KValue;
    .locals 2

    new-instance v0, Lcom/graphhopper/search/KVStorage$KValue;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/graphhopper/search/KVStorage;->cutString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-direct {v0, p0}, Lcom/graphhopper/search/KVStorage$KValue;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addCoordinatesIfMapped(JDDLjava/util/function/DoubleSupplier;)J
    .locals 11

    iget-object v3, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {v3, p1, p2}, Lcom/graphhopper/coll/LongLongMap;->get(J)J

    move-result-wide v9

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-nez v3, :cond_0

    return-wide v9

    :cond_0
    const-wide/16 v3, -0x2

    cmp-long v3, v9, v3

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x2

    cmp-long v3, v9, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x1

    cmp-long v3, v9, v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v3, v9, v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown node type: "

    const-string v4, ", or coordinates already set. Possibly duplicate OSM node ID: "

    invoke-static {v3, v9, v10, v4}, La6/q;->o(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    invoke-interface/range {p7 .. p7}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/graphhopper/reader/osm/OSMNodeData;->addPillarNode(JDDD)J

    return-wide v9

    :cond_4
    :goto_1
    invoke-interface/range {p7 .. p7}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/graphhopper/reader/osm/OSMNodeData;->addTowerNode(JDDD)J

    return-wide v9
.end method

.method public addCoordinatesToPointList(JLcom/graphhopper/util/PointList;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->isTowerNode(J)Z

    move-result v1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->idToTowerNode(J)I

    move-result v1

    iget-object v4, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    invoke-interface {v4, v1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v4

    iget-object v6, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    invoke-interface {v6, v1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v6

    iget-object v8, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    invoke-interface {v8}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v0, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    invoke-interface {v0, v1}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v2

    :cond_0
    move-wide v11, v4

    move-wide v13, v6

    :goto_0
    move-object/from16 v10, p3

    move-wide v15, v2

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->isPillarNode(J)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->idToPillarNode(J)J

    move-result-wide v4

    iget-object v1, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v1, v4, v5}, Lcom/graphhopper/reader/osm/PillarInfo;->getLat(J)D

    move-result-wide v6

    iget-object v1, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v1, v4, v5}, Lcom/graphhopper/reader/osm/PillarInfo;->getLon(J)D

    move-result-wide v8

    iget-object v1, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v1}, Lcom/graphhopper/reader/osm/PillarInfo;->is3D()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v0, v4, v5}, Lcom/graphhopper/reader/osm/PillarInfo;->getEle(J)D

    move-result-wide v2

    :cond_2
    move-wide v11, v6

    move-wide v13, v8

    goto :goto_0

    :goto_1
    invoke-virtual/range {v10 .. v16}, Lcom/graphhopper/util/PointList;->add(DDD)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public addCopyOfNode(Lcom/graphhopper/reader/osm/SegmentNode;)Lcom/graphhopper/reader/osm/SegmentNode;
    .locals 10

    iget-wide v0, p1, Lcom/graphhopper/reader/osm/SegmentNode;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/reader/osm/OSMNodeData;->getCoordinates(J)Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextArtificialOSMNodeId:J

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    iput-wide v6, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nextArtificialOSMNodeId:J

    iget-object v1, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/graphhopper/coll/LongLongMap;->put(JJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/graphhopper/util/shapes/GHPoint3D;->getEle()D

    move-result-wide v8

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/graphhopper/reader/osm/OSMNodeData;->addPillarNode(JDDD)J

    move-result-wide v4

    new-instance v1, Lcom/graphhopper/reader/osm/SegmentNode;

    iget-object v6, p1, Lcom/graphhopper/reader/osm/SegmentNode;->tags:Ljava/util/Map;

    invoke-direct/range {v1 .. v6}, Lcom/graphhopper/reader/osm/SegmentNode;-><init>(JJLjava/util/Map;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Artificial osm node id already exists: "

    invoke-static {v2, v3, p1}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    iget-wide v0, p1, Lcom/graphhopper/reader/osm/SegmentNode;->osmNodeId:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot copy node : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", because it is missing"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public convertPillarToTowerNode(JJ)J
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v1, v2}, Lcom/graphhopper/reader/osm/OSMNodeData;->isPillarNode(J)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->idToPillarNode(J)J

    move-result-wide v5

    iget-object v3, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v3, v5, v6}, Lcom/graphhopper/reader/osm/PillarInfo;->getLat(J)D

    move-result-wide v13

    iget-object v3, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v3, v5, v6}, Lcom/graphhopper/reader/osm/PillarInfo;->getLon(J)D

    move-result-wide v15

    iget-object v3, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v3, v5, v6}, Lcom/graphhopper/reader/osm/PillarInfo;->getEle(J)D

    move-result-wide v17

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v7, v13, v3

    if-eqz v7, :cond_0

    cmpl-double v3, v15, v3

    if-eqz v3, :cond_0

    iget-object v4, v0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual/range {v4 .. v12}, Lcom/graphhopper/reader/osm/PillarInfo;->setNode(JDDD)V

    move-wide/from16 v1, p3

    move-wide v3, v13

    move-wide v5, v15

    move-wide/from16 v7, v17

    invoke-direct/range {v0 .. v8}, Lcom/graphhopper/reader/osm/OSMNodeData;->addTowerNode(JDDD)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Pillar node was already converted to tower node: "

    invoke-static {v1, v2, v3}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Not a pillar node: "

    invoke-static {v1, v2, v3}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCoordinates(J)Lcom/graphhopper/util/shapes/GHPoint3D;
    .locals 9

    invoke-static {p1, p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->isTowerNode(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->idToTowerNode(J)I

    move-result p1

    iget-object p2, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    invoke-interface {p2}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/graphhopper/util/shapes/GHPoint3D;

    iget-object p2, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    invoke-interface {p2, p1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v1

    iget-object p2, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    invoke-interface {p2, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v3

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/util/shapes/GHPoint3D;-><init>(DDD)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/graphhopper/util/shapes/GHPoint3D;

    iget-object p2, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    invoke-interface {p2, p1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v4

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-direct/range {v1 .. v7}, Lcom/graphhopper/util/shapes/GHPoint3D;-><init>(DDD)V

    return-object v1

    :cond_1
    invoke-static {p1, p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->isPillarNode(J)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->idToPillarNode(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/PillarInfo;->is3D()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/graphhopper/util/shapes/GHPoint3D;

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/reader/osm/PillarInfo;->getLat(J)D

    move-result-wide v2

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/reader/osm/PillarInfo;->getLon(J)D

    move-result-wide v4

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/osm/PillarInfo;->getEle(J)D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/graphhopper/util/shapes/GHPoint3D;-><init>(DDD)V

    return-object v1

    :cond_2
    new-instance v2, Lcom/graphhopper/util/shapes/GHPoint3D;

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/reader/osm/PillarInfo;->getLat(J)D

    move-result-wide v3

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/osm/PillarInfo;->getLon(J)D

    move-result-wide v5

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    invoke-direct/range {v2 .. v8}, Lcom/graphhopper/util/shapes/GHPoint3D;-><init>(DDD)V

    return-object v2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getId(J)J
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/coll/LongLongMap;->get(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getNodeCount()J
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {p0}, Lcom/graphhopper/coll/LongLongMap;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNodeTagCapacity()J
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {p0}, Lcom/graphhopper/search/KVStorage;->getCapacity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTaggedNodeCount()J
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodeTagIndicesByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {p0}, Lcom/graphhopper/coll/LongLongMap;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTags(J)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodeTagIndicesByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/coll/LongLongMap;->get(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    if-gez p1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodeKVStorage:Lcom/graphhopper/search/KVStorage;

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/search/KVStorage;->getMap(J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public idToPillarNode(J)J
    .locals 2

    const-wide/16 v0, 0x3

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public idToTowerNode(J)I
    .locals 4

    neg-long v0, p1

    const-wide/16 v2, 0x3

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid tower node id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", limit exceeded"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public is3D()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->towerNodes:Lcom/graphhopper/util/PointAccess;

    invoke-interface {p0}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result p0

    return p0
.end method

.method public isSplitNode(J)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodesToBeSplit:Lcom/carrotsearch/hppc/i1;

    invoke-interface {p0, p1, p2}, Lcom/carrotsearch/hppc/v0;->contains(J)Z

    move-result p0

    return p0
.end method

.method public pillarNodeToId(J)J
    .locals 2

    const-wide/16 v0, 0x3

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {v0}, Lcom/graphhopper/coll/LongLongMap;->clear()V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->pillarNodes:Lcom/graphhopper/reader/osm/PillarInfo;

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/PillarInfo;->clear()V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodeTagIndicesByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {v0}, Lcom/graphhopper/coll/LongLongMap;->clear()V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {v0}, Lcom/graphhopper/search/KVStorage;->clear()V

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodesToBeSplit:Lcom/carrotsearch/hppc/i1;

    invoke-interface {p0}, Lcom/carrotsearch/hppc/u0;->clear()V

    return-void
.end method

.method public setOrUpdateNodeType(JJLjava/util/function/LongUnaryOperator;)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/coll/LongLongMap;->get(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/graphhopper/coll/LongLongMap;->put(JJ)J

    return-void

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->idsByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-interface {p5, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p3

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/graphhopper/coll/LongLongMap;->put(JJ)J

    return-void
.end method

.method public setSplitNode(J)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodesToBeSplit:Lcom/carrotsearch/hppc/i1;

    invoke-interface {p0, p1, p2}, Lcom/carrotsearch/hppc/i1;->add(J)Z

    move-result p0

    return p0
.end method

.method public setTags(Lcom/graphhopper/reader/ReaderNode;)V
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodeTagIndicesByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/coll/LongLongMap;->get(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodeKVStorage:Lcom/graphhopper/search/KVStorage;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/reader/osm/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/graphhopper/reader/osm/a;-><init>(I)V

    new-instance v3, Lcom/graphhopper/reader/osm/a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/graphhopper/reader/osm/a;-><init>(I)V

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/graphhopper/search/KVStorage;->add(Ljava/util/Map;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodeTagIndicesByOsmNodeIds:Lcom/graphhopper/coll/LongLongMap;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v2

    long-to-int p1, v0

    int-to-long v0, p1

    invoke-interface {p0, v2, v3, v0, v1}, Lcom/graphhopper/coll/LongLongMap;->put(JJ)J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Too many key value pairs are stored in node tags, was "

    invoke-static {v0, v1, p1}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v0

    const-string p1, "Cannot add tags twice, duplicate node OSM ID: "

    invoke-static {v0, v1, p1}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public towerNodeToId(J)J
    .locals 2

    neg-long p0, p1

    const-wide/16 v0, 0x3

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public unsetSplitNode(J)V
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/OSMNodeData;->nodesToBeSplit:Lcom/carrotsearch/hppc/i1;

    invoke-interface {p0, p1, p2}, Lcom/carrotsearch/hppc/u0;->removeAll(J)I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " was not a split node"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
