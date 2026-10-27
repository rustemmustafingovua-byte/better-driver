.class Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->buildVirtualEdges(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo5/b;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->apply(ILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public apply(ILjava/util/List;)Z
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/storage/index/Snap;

    invoke-virtual {v3}, Lcom/graphhopper/storage/index/Snap;->getClosestEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v13

    .line 3
    sget-object v3, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {v13, v3}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v12

    .line 4
    invoke-interface {v13}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v3

    .line 5
    new-instance v4, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1$1;

    invoke-direct {v4, v0, v12}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1$1;-><init>(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;Lcom/graphhopper/util/PointList;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    invoke-virtual {v12, v2}, Lcom/graphhopper/util/PointList;->get(I)Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v4

    .line 7
    invoke-interface {v13}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v16

    .line 8
    invoke-interface {v13}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result v5

    .line 9
    invoke-interface {v13}, Lcom/graphhopper/util/EdgeIteratorState;->getReverseEdgeKey()I

    move-result v6

    .line 10
    iget-object v7, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-static {v7}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->b(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object v7

    invoke-virtual {v7}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualNodes()Lcom/graphhopper/util/PointList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/graphhopper/util/PointList;->size()I

    move-result v7

    iget-object v8, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-static {v8}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->a(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v17, 0x1

    move/from16 v18, v2

    move v14, v3

    move v15, v7

    move/from16 v8, v17

    move-object v7, v4

    move/from16 v4, v18

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_6

    .line 12
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/graphhopper/storage/index/Snap;

    .line 13
    invoke-virtual {v9}, Lcom/graphhopper/storage/index/Snap;->getClosestEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v10

    invoke-interface {v10}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v10

    if-ne v10, v3, :cond_5

    .line 14
    invoke-virtual {v9}, Lcom/graphhopper/storage/index/Snap;->getSnappedPoint()Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v10

    move/from16 v27, v3

    .line 15
    iget-wide v2, v7, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    move-wide/from16 v19, v2

    iget-wide v2, v7, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide/from16 v21, v2

    iget-wide v2, v10, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    move-wide/from16 v23, v2

    iget-wide v2, v10, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide/from16 v25, v2

    invoke-static/range {v19 .. v26}, Lcom/graphhopper/storage/index/Snap;->considerEqual(DDDD)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v9, v14}, Lcom/graphhopper/storage/index/Snap;->setClosestNode(I)V

    .line 17
    invoke-virtual {v9, v7}, Lcom/graphhopper/storage/index/Snap;->setSnappedPoint(Lcom/graphhopper/util/shapes/GHPoint3D;)V

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v4, -0x1

    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/storage/index/Snap;

    invoke-virtual {v2}, Lcom/graphhopper/storage/index/Snap;->getWayIndex()I

    move-result v2

    :goto_1
    invoke-virtual {v9, v2}, Lcom/graphhopper/storage/index/Snap;->setWayIndex(I)V

    if-nez v4, :cond_1

    .line 19
    sget-object v2, Lcom/graphhopper/storage/index/Snap$Position;->TOWER:Lcom/graphhopper/storage/index/Snap$Position;

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v4, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/storage/index/Snap;

    invoke-virtual {v2}, Lcom/graphhopper/storage/index/Snap;->getSnappedPosition()Lcom/graphhopper/storage/index/Snap$Position;

    move-result-object v2

    :goto_2
    invoke-virtual {v9, v2}, Lcom/graphhopper/storage/index/Snap;->setSnappedPosition(Lcom/graphhopper/storage/index/Snap$Position;)V

    .line 20
    sget-object v28, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    iget-wide v2, v7, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v10, v7, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-virtual {v9}, Lcom/graphhopper/storage/index/Snap;->getQueryPoint()Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v1

    move-wide/from16 v29, v2

    iget-wide v1, v1, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-virtual {v9}, Lcom/graphhopper/storage/index/Snap;->getQueryPoint()Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v3

    move-wide/from16 v33, v1

    iget-wide v1, v3, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide/from16 v35, v1

    move-wide/from16 v31, v10

    invoke-virtual/range {v28 .. v36}, Lcom/graphhopper/util/DistancePlaneProjection;->calcDist(DDDD)D

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lcom/graphhopper/storage/index/Snap;->setQueryDistance(D)V

    move v2, v4

    move v11, v5

    goto/16 :goto_5

    .line 21
    :cond_2
    iget-object v1, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-static {v1}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->b(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getClosestEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {v9}, Lcom/graphhopper/storage/index/Snap;->getClosestEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v2

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/carrotsearch/hppc/x;->add(I)V

    .line 22
    invoke-virtual {v9}, Lcom/graphhopper/storage/index/Snap;->getSnappedPosition()Lcom/graphhopper/storage/index/Snap$Position;

    move-result-object v1

    sget-object v2, Lcom/graphhopper/storage/index/Snap$Position;->PILLAR:Lcom/graphhopper/storage/index/Snap$Position;

    if-ne v1, v2, :cond_3

    move-object v1, v9

    move/from16 v9, v17

    :goto_3
    move v2, v4

    goto :goto_4

    :cond_3
    move-object v1, v9

    const/4 v9, 0x0

    goto :goto_3

    .line 23
    :goto_4
    iget-object v4, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    move-object v3, v10

    .line 24
    invoke-virtual {v1}, Lcom/graphhopper/storage/index/Snap;->getSnappedPoint()Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v10

    invoke-virtual {v1}, Lcom/graphhopper/storage/index/Snap;->getWayIndex()I

    move-result v11

    .line 25
    invoke-static/range {v4 .. v15}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->c(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;IILcom/graphhopper/util/shapes/GHPoint3D;IZLcom/graphhopper/util/shapes/GHPoint3D;ILcom/graphhopper/util/PointList;Lcom/graphhopper/util/EdgeIteratorState;II)V

    .line 26
    iget-object v4, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-static {v4}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->b(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualNodes()Lcom/graphhopper/util/PointList;

    move-result-object v19

    iget-wide v7, v3, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v9, v3, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move v11, v5

    iget-wide v4, v3, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    move-wide/from16 v24, v4

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    invoke-virtual/range {v19 .. v25}, Lcom/graphhopper/util/PointList;->add(DDD)V

    if-eqz v18, :cond_4

    .line 27
    iget-object v4, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-static {v4}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->b(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object v4

    iget-object v5, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-static {v5}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->b(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object v5

    iget-object v7, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-static {v7}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->b(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object v7

    invoke-virtual {v7}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getNumVirtualEdges()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v5, v7}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->addVirtualEdge(Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;)V

    .line 28
    iget-object v4, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-static {v4}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->b(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object v4

    iget-object v5, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-static {v5}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->b(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object v5

    iget-object v7, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    invoke-static {v7}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->b(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;)Lcom/graphhopper/routing/querygraph/QueryOverlay;

    move-result-object v7

    invoke-virtual {v7}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getNumVirtualEdges()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v5, v7}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/graphhopper/routing/querygraph/QueryOverlay;->addVirtualEdge(Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;)V

    .line 29
    :cond_4
    invoke-virtual {v1, v15}, Lcom/graphhopper/storage/index/Snap;->setClosestNode(I)V

    .line 30
    invoke-virtual {v1}, Lcom/graphhopper/storage/index/Snap;->getWayIndex()I

    move-result v1

    add-int/lit8 v8, v1, 0x1

    add-int/lit8 v1, v15, 0x1

    move-object v7, v3

    move v14, v15

    move/from16 v18, v17

    move v15, v1

    :goto_5
    add-int/lit8 v4, v2, 0x1

    move-object/from16 v1, p2

    move v5, v11

    move/from16 v3, v27

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    move-object v1, v9

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/graphhopper/storage/index/Snap;->getClosestEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Base nodes have to be identical but were not: "

    const-string v4, " vs "

    .line 32
    invoke-static {v3, v2, v4, v1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v11, v5

    if-eqz v18, :cond_7

    .line 34
    iget-object v4, v0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;

    .line 35
    invoke-virtual {v12}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Lcom/graphhopper/util/PointList;->get(I)Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v10

    invoke-virtual {v12}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v14, v15, -0x1

    const/4 v9, 0x0

    move v5, v11

    move/from16 v15, v16

    move v11, v0

    .line 36
    invoke-static/range {v4 .. v15}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;->c(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder;IILcom/graphhopper/util/shapes/GHPoint3D;IZLcom/graphhopper/util/shapes/GHPoint3D;ILcom/graphhopper/util/PointList;Lcom/graphhopper/util/EdgeIteratorState;II)V

    :cond_7
    return v17
.end method
