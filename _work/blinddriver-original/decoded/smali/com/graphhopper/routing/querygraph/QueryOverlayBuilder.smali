.class Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final firstVirtualEdgeId:I

.field private final firstVirtualNodeId:I

.field private final is3D:Z

.field private queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;


# direct methods
.method private constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->firstVirtualNodeId:I

    iput p2, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->firstVirtualEdgeId:I

    iput-boolean p3, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->is3D:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->firstVirtualNodeId:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)Lcom/graphhopper/routing/querygraph/QueryOverlay;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    return-object p0
.end method

.method public static build(IIZLjava/util/List;)Lcom/graphhopper/routing/querygraph/QueryOverlay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;)",
            "Lcom/graphhopper/routing/querygraph/QueryOverlay;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;-><init>(IIZ)V

    invoke-direct {v0, p3}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->build(Ljava/util/List;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object p0

    return-object p0
.end method

.method public static build(Lcom/graphhopper/storage/Graph;Ljava/util/List;)Lcom/graphhopper/routing/querygraph/QueryOverlay;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/Graph;",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;)",
            "Lcom/graphhopper/routing/querygraph/QueryOverlay;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v0

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getEdges()I

    move-result v1

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->build(IIZLjava/util/List;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object p0

    return-object p0
.end method

.method private build(Ljava/util/List;)Lcom/graphhopper/routing/querygraph/QueryOverlay;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;)",
            "Lcom/graphhopper/routing/querygraph/QueryOverlay;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v2, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->is3D:Z

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/querygraph/QueryOverlay;-><init>(IZ)V

    iput-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    .line 4
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->buildVirtualEdges(Ljava/util/List;)V

    .line 5
    invoke-direct {p0}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->buildEdgeChangesAtRealNodes()V

    .line 6
    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    return-object p0
.end method

.method private buildEdgeChangesAtRealNodes()V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v0}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getClosestEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v1}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualEdges()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->firstVirtualNodeId:I

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {p0}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getEdgeChangesAtRealNodes()Lcom/carrotsearch/hppc/o0;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/graphhopper/routing/querygraph/EdgeChangeBuilder;->build(Lcom/carrotsearch/hppc/x;Ljava/util/List;ILcom/carrotsearch/hppc/o0;)V

    return-void
.end method

.method private buildVirtualEdges(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/coll/GHIntObjectHashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/graphhopper/coll/GHIntObjectHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/storage/index/Snap;

    invoke-virtual {v1}, Lcom/graphhopper/storage/index/Snap;->getSnappedPosition()Lcom/graphhopper/storage/index/Snap$Position;

    move-result-object v2

    sget-object v3, Lcom/graphhopper/storage/index/Snap$Position;->TOWER:Lcom/graphhopper/storage/index/Snap$Position;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/graphhopper/storage/index/Snap;->getClosestEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v3

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v7

    if-ne v3, v7, :cond_3

    sget-object v3, Lcom/graphhopper/util/FetchMode;->PILLAR_ONLY:Lcom/graphhopper/util/FetchMode;

    invoke-interface {v2, v3}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v7

    if-le v7, v6, :cond_3

    invoke-virtual {v3, v5}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v3

    cmpl-double v3, v7, v3

    if-lez v3, :cond_2

    move v5, v6

    :cond_2
    move v4, v5

    :cond_3
    if-eqz v4, :cond_6

    invoke-interface {v2, v6}, Lcom/graphhopper/util/EdgeIteratorState;->detach(Z)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v2

    sget-object v3, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {v2, v3}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/graphhopper/storage/index/Snap;->setClosestEdge(Lcom/graphhopper/util/EdgeIteratorState;)V

    invoke-virtual {v1}, Lcom/graphhopper/storage/index/Snap;->getSnappedPosition()Lcom/graphhopper/storage/index/Snap$Position;

    move-result-object v4

    sget-object v5, Lcom/graphhopper/storage/index/Snap$Position;->PILLAR:Lcom/graphhopper/storage/index/Snap$Position;

    if-ne v4, v5, :cond_4

    invoke-virtual {v3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/graphhopper/storage/index/Snap;->getWayIndex()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    invoke-virtual {v1, v3}, Lcom/graphhopper/storage/index/Snap;->setWayIndex(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/graphhopper/storage/index/Snap;->getWayIndex()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Lcom/graphhopper/storage/index/Snap;->setWayIndex(I)V

    :goto_2
    invoke-virtual {v1}, Lcom/graphhopper/storage/index/Snap;->getWayIndex()I

    move-result v3

    if-ltz v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Problem with wayIndex while reversing closest edge:"

    const-string v2, ", "

    invoke-static {v1, p1, v2, v0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/carrotsearch/hppc/n0;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Do not call QueryGraph.create with invalid Snap "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p1, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;

    invoke-direct {p1, p0}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;-><init>(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)V

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/n0;->forEach(Lo5/b;)Lo5/b;

    return-void
.end method

.method public static bridge synthetic c(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;IILcom/graphhopper/util/shapes/GHPoint3D;IZLcom/graphhopper/util/shapes/GHPoint3D;ILcom/graphhopper/util/PointList;Lcom/graphhopper/util/EdgeIteratorState;II)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->createEdges(IILcom/graphhopper/util/shapes/GHPoint3D;IZLcom/graphhopper/util/shapes/GHPoint3D;ILcom/graphhopper/util/PointList;Lcom/graphhopper/util/EdgeIteratorState;II)V

    return-void
.end method

.method private createEdges(IILcom/graphhopper/util/shapes/GHPoint3D;IZLcom/graphhopper/util/shapes/GHPoint3D;ILcom/graphhopper/util/PointList;Lcom/graphhopper/util/EdgeIteratorState;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    const/4 v3, 0x1

    add-int/lit8 v4, p7, 0x1

    new-instance v5, Lcom/graphhopper/util/PointList;

    sub-int v6, v4, p4

    add-int/2addr v6, v3

    iget-boolean v7, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->is3D:Z

    invoke-direct {v5, v6, v7}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    iget-wide v6, v1, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v8, v1, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    iget-wide v10, v1, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    invoke-virtual/range {v5 .. v11}, Lcom/graphhopper/util/PointList;->add(DDD)V

    move/from16 v1, p4

    :goto_0
    if-ge v1, v4, :cond_0

    move-object/from16 v6, p8

    invoke-virtual {v5, v6, v1}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/PointAccess;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    iget-wide v6, v2, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v8, v2, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    iget-wide v10, v2, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    invoke-virtual/range {v5 .. v11}, Lcom/graphhopper/util/PointList;->add(DDD)V

    :cond_1
    invoke-virtual {v5, v3}, Lcom/graphhopper/util/PointList;->clone(Z)Lcom/graphhopper/util/PointList;

    move-result-object v1

    sget-object v2, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {v2, v5}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDistance(Lcom/graphhopper/util/PointList;)D

    move-result-wide v10

    iget v2, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->firstVirtualEdgeId:I

    iget-object v4, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v4}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getNumVirtualEdges()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    sget-object v2, Lcom/graphhopper/util/EdgeIteratorState;->REVERSE_STATE:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-object/from16 v6, p9

    invoke-interface {v6, v2}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v15

    invoke-interface {v6}, Lcom/graphhopper/util/EdgeIteratorState;->getKeyValues()Ljava/util/Map;

    move-result-object v13

    move-object v14, v5

    new-instance v5, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    const/4 v2, 0x0

    invoke-static {v4, v2}, Lcom/graphhopper/util/GHUtility;->createEdgeKey(IZ)I

    move-result v7

    invoke-interface {v6}, Lcom/graphhopper/util/EdgeIteratorState;->getFlags()Lcom/graphhopper/storage/IntsRef;

    move-result-object v12

    move/from16 v6, p1

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v5 .. v15}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;-><init>(IIIIDLcom/graphhopper/storage/IntsRef;Ljava/util/Map;Lcom/graphhopper/util/PointList;Z)V

    new-instance v6, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    invoke-static {v4, v3}, Lcom/graphhopper/util/GHUtility;->createEdgeKey(IZ)I

    move-result v8

    invoke-interface/range {p9 .. p9}, Lcom/graphhopper/util/EdgeIteratorState;->getFlags()Lcom/graphhopper/storage/IntsRef;

    move-result-object v2

    invoke-static {v2}, Lcom/graphhopper/storage/IntsRef;->deepCopyOf(Lcom/graphhopper/storage/IntsRef;)Lcom/graphhopper/storage/IntsRef;

    move-result-object v2

    xor-int/lit8 v16, v15, 0x1

    move/from16 v7, p2

    move-object v15, v1

    move-wide v11, v10

    move-object v14, v13

    move/from16 v10, p10

    move-object v13, v2

    invoke-direct/range {v6 .. v16}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;-><init>(IIIIDLcom/graphhopper/storage/IntsRef;Ljava/util/Map;Lcom/graphhopper/util/PointList;Z)V

    invoke-virtual {v5, v6}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->setReverseEdge(Lcom/graphhopper/util/EdgeIteratorState;)V

    invoke-virtual {v6, v5}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->setReverseEdge(Lcom/graphhopper/util/EdgeIteratorState;)V

    iget-object v1, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v1, v5}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->addVirtualEdge(Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;)V

    iget-object v0, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->queryOverlay:Lcom/graphhopper/routing/querygraph/QueryOverlay;

    invoke-virtual {v0, v6}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->addVirtualEdge(Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;)V

    return-void
.end method
