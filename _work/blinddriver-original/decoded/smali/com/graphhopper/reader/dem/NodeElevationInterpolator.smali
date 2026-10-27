.class public Lcom/graphhopper/reader/dem/NodeElevationInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final elevationInterpolator:Lcom/graphhopper/reader/dem/ElevationInterpolator;

.field private final graph:Lcom/graphhopper/storage/BaseGraph;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/graphhopper/reader/dem/ElevationInterpolator;

    invoke-direct {v0}, Lcom/graphhopper/reader/dem/ElevationInterpolator;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->elevationInterpolator:Lcom/graphhopper/reader/dem/ElevationInterpolator;

    iput-object p1, p0, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->graph:Lcom/graphhopper/storage/BaseGraph;

    return-void
.end method

.method private interpolateElevationsOfInnerNodesForNOuterNodes([I[I)V
    .locals 12

    iget-object v0, p0, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/util/PointList;

    array-length v0, p1

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    array-length v0, p1

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v0, :cond_0

    aget v3, p1, v10

    move v5, v3

    invoke-interface {v1, v5}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v3

    move v7, v5

    invoke-interface {v1, v7}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v5

    invoke-interface {v1, v7}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lcom/graphhopper/util/PointList;->add(DDD)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p2

    :goto_1
    if-ge v9, p1, :cond_1

    aget v0, p2, v9

    invoke-interface {v1, v0}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v3

    invoke-interface {v1, v0}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v5

    move-object v7, v2

    iget-object v2, p0, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->elevationInterpolator:Lcom/graphhopper/reader/dem/ElevationInterpolator;

    invoke-virtual/range {v2 .. v7}, Lcom/graphhopper/reader/dem/ElevationInterpolator;->calculateElevationBasedOnPointList(DDLcom/graphhopper/util/PointList;)D

    move-result-wide v10

    move v2, v0

    move-object v0, v7

    move-wide v7, v10

    invoke-interface/range {v1 .. v8}, Lcom/graphhopper/util/PointAccess;->setNode(IDDD)V

    add-int/lit8 v9, v9, 0x1

    move-object v2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private interpolateElevationsOfInnerNodesForOneOuterNode(I[I)V
    .locals 8

    iget-object p0, p0, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v6

    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    aget v1, p2, p1

    invoke-interface {v0, v1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v2

    invoke-interface {v0, v1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v4

    invoke-interface/range {v0 .. v7}, Lcom/graphhopper/util/PointAccess;->setNode(IDDD)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private interpolateElevationsOfInnerNodesForThreeOuterNodes(III[I)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v5}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v12

    invoke-interface {v6, v1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v14

    invoke-interface {v6, v1}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v16

    invoke-interface {v6, v2}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v18

    invoke-interface {v6, v2}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v20

    invoke-interface {v6, v2}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v22

    invoke-interface {v6, v3}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v24

    invoke-interface {v6, v3}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v26

    invoke-interface {v6, v3}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v28

    array-length v1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v4, v2

    invoke-interface {v6, v3}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v8

    invoke-interface {v6, v3}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v10

    iget-object v7, v0, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->elevationInterpolator:Lcom/graphhopper/reader/dem/ElevationInterpolator;

    invoke-virtual/range {v7 .. v29}, Lcom/graphhopper/reader/dem/ElevationInterpolator;->calculateElevationBasedOnThreePoints(DDDDDDDDDDD)D

    move-result-wide v30

    move-wide/from16 v32, v14

    move-wide v14, v12

    move-wide/from16 v12, v30

    move-wide/from16 v30, v28

    move-wide/from16 v28, v26

    move-wide/from16 v26, v24

    move-wide/from16 v24, v22

    move-wide/from16 v22, v20

    move-wide/from16 v20, v18

    move-wide/from16 v18, v16

    move-wide/from16 v16, v32

    move v7, v3

    invoke-interface/range {v6 .. v13}, Lcom/graphhopper/util/PointAccess;->setNode(IDDD)V

    add-int/lit8 v2, v2, 0x1

    move-wide v12, v14

    move-wide/from16 v14, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v22

    move-wide/from16 v22, v24

    move-wide/from16 v24, v26

    move-wide/from16 v26, v28

    move-wide/from16 v28, v30

    goto :goto_0

    :cond_0
    return-void
.end method

.method private interpolateElevationsOfInnerNodesForTwoOuterNodes(II[I)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v4}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v11

    invoke-interface {v5, v1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v13

    invoke-interface {v5, v1}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v15

    invoke-interface {v5, v2}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v17

    invoke-interface {v5, v2}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v19

    invoke-interface {v5, v2}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide v21

    array-length v1, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, v3, v2

    invoke-interface {v5, v4}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v7

    invoke-interface {v5, v4}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v9

    iget-object v6, v0, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->elevationInterpolator:Lcom/graphhopper/reader/dem/ElevationInterpolator;

    invoke-virtual/range {v6 .. v22}, Lcom/graphhopper/reader/dem/ElevationInterpolator;->calculateElevationBasedOnTwoPoints(DDDDDDDD)D

    move-result-wide v23

    move-wide/from16 v25, v13

    move-wide v13, v11

    move-wide/from16 v11, v23

    move-wide/from16 v23, v21

    move-wide/from16 v21, v19

    move-wide/from16 v19, v17

    move-wide/from16 v17, v15

    move-wide/from16 v15, v25

    move v6, v4

    invoke-interface/range {v5 .. v12}, Lcom/graphhopper/util/PointAccess;->setNode(IDDD)V

    add-int/lit8 v2, v2, 0x1

    move-wide v11, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v23

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public interpolateElevationsOfInnerNodes([I[I)V
    .locals 5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget p1, p1, v1

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->interpolateElevationsOfInnerNodesForOneOuterNode(I[I)V

    return-void

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    aget v0, p1, v1

    aget p1, p1, v2

    invoke-direct {p0, v0, p1, p2}, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->interpolateElevationsOfInnerNodesForTwoOuterNodes(II[I)V

    return-void

    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    aget v0, p1, v1

    aget v1, p1, v2

    aget p1, p1, v3

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->interpolateElevationsOfInnerNodesForThreeOuterNodes(III[I)V

    return-void

    :cond_3
    if-le v0, v4, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/reader/dem/NodeElevationInterpolator;->interpolateElevationsOfInnerNodesForNOuterNodes([I[I)V

    :cond_4
    :goto_0
    return-void
.end method
