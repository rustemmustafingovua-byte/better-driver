.class public Lcom/graphhopper/storage/index/Snap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/storage/index/Snap$Position;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final INVALID_NODE:I = -0x1


# instance fields
.field private closestEdge:Lcom/graphhopper/util/EdgeIteratorState;

.field private closestNode:I

.field private queryDistance:D

.field private final queryPoint:Lcom/graphhopper/util/shapes/GHPoint;

.field private snappedPoint:Lcom/graphhopper/util/shapes/GHPoint3D;

.field private snappedPosition:Lcom/graphhopper/storage/index/Snap$Position;

.field private wayIndex:I


# direct methods
.method public constructor <init>(DD)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/graphhopper/storage/index/Snap;->queryDistance:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    iput v0, p0, Lcom/graphhopper/storage/index/Snap;->closestNode:I

    new-instance v0, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/graphhopper/storage/index/Snap;->queryPoint:Lcom/graphhopper/util/shapes/GHPoint;

    return-void
.end method

.method public static considerEqual(DDDD)Z
    .locals 0

    sub-double/2addr p0, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double p0, p0, p4

    if-gez p0, :cond_0

    sub-double/2addr p2, p6

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public calcSnappedPoint(Lcom/graphhopper/util/DistanceCalc;)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/graphhopper/storage/index/Snap;->closestEdge:Lcom/graphhopper/util/EdgeIteratorState;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/graphhopper/storage/index/Snap;->snappedPoint:Lcom/graphhopper/util/shapes/GHPoint3D;

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/Snap;->getClosestEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v1

    sget-object v2, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {v1, v2}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v1

    iget v2, v0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    invoke-virtual {v1, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v4

    iget v2, v0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    invoke-virtual {v1, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v6

    iget v2, v0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    invoke-virtual {v1, v2}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v8

    iget-object v2, v0, Lcom/graphhopper/storage/index/Snap;->snappedPosition:Lcom/graphhopper/storage/index/Snap$Position;

    sget-object v3, Lcom/graphhopper/storage/index/Snap$Position;->EDGE:Lcom/graphhopper/storage/index/Snap$Position;

    if-eq v2, v3, :cond_0

    new-instance v3, Lcom/graphhopper/util/shapes/GHPoint3D;

    invoke-direct/range {v3 .. v9}, Lcom/graphhopper/util/shapes/GHPoint3D;-><init>(DDD)V

    iput-object v3, v0, Lcom/graphhopper/storage/index/Snap;->snappedPoint:Lcom/graphhopper/util/shapes/GHPoint3D;

    return-void

    :cond_0
    move-wide/from16 v16, v8

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/Snap;->getQueryPoint()Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v2

    iget-wide v2, v2, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-virtual {v0}, Lcom/graphhopper/storage/index/Snap;->getQueryPoint()Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v8

    iget-wide v8, v8, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    iget v10, v0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1, v10}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v12

    iget v10, v0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1, v10}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v14

    move-wide v10, v6

    move-wide v6, v8

    move-wide v8, v4

    move-wide v4, v2

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v15}, Lcom/graphhopper/util/DistanceCalc;->validEdgeDistance(DDDDDD)Z

    move-result v2

    move-wide/from16 v28, v8

    move-wide v8, v4

    move-wide/from16 v4, v28

    move-wide/from16 v28, v10

    move-wide v10, v6

    move-wide/from16 v6, v28

    if-eqz v2, :cond_7

    move-wide/from16 v28, v8

    move-wide v8, v4

    move-wide/from16 v4, v28

    move-wide/from16 v28, v10

    move-wide v10, v6

    move-wide/from16 v6, v28

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v15}, Lcom/graphhopper/util/DistanceCalc;->calcCrossingPointToEdge(DDDDDD)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v2

    move-wide v4, v8

    move-wide v6, v10

    iget v3, v0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v26

    iget-wide v3, v2, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v5, v2, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide v7, v8

    move-wide v9, v10

    invoke-static/range {v3 .. v10}, Lcom/graphhopper/storage/index/Snap;->considerEqual(DDDD)Z

    move-result v3

    move-wide v4, v7

    move-wide v6, v9

    if-eqz v3, :cond_3

    iget v1, v0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    if-nez v1, :cond_1

    sget-object v1, Lcom/graphhopper/storage/index/Snap$Position;->TOWER:Lcom/graphhopper/storage/index/Snap$Position;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/graphhopper/storage/index/Snap$Position;->PILLAR:Lcom/graphhopper/storage/index/Snap$Position;

    :goto_0
    iput-object v1, v0, Lcom/graphhopper/storage/index/Snap;->snappedPosition:Lcom/graphhopper/storage/index/Snap$Position;

    new-instance v3, Lcom/graphhopper/util/shapes/GHPoint3D;

    move-wide/from16 v8, v16

    invoke-direct/range {v3 .. v9}, Lcom/graphhopper/util/shapes/GHPoint3D;-><init>(DDD)V

    iput-object v3, v0, Lcom/graphhopper/storage/index/Snap;->snappedPoint:Lcom/graphhopper/util/shapes/GHPoint3D;

    iget v1, v0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/graphhopper/storage/index/Snap;->closestEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v1

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/graphhopper/storage/index/Snap;->closestNode:I

    :goto_1
    iput v1, v0, Lcom/graphhopper/storage/index/Snap;->closestNode:I

    return-void

    :cond_3
    move-wide/from16 v8, v16

    iget-wide v3, v2, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v5, v2, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    invoke-static/range {v18 .. v25}, Lcom/graphhopper/storage/index/Snap;->considerEqual(DDDD)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v2, v0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/graphhopper/storage/index/Snap$Position;->TOWER:Lcom/graphhopper/storage/index/Snap$Position;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/graphhopper/storage/index/Snap$Position;->PILLAR:Lcom/graphhopper/storage/index/Snap$Position;

    :goto_2
    iput-object v2, v0, Lcom/graphhopper/storage/index/Snap;->snappedPosition:Lcom/graphhopper/storage/index/Snap$Position;

    new-instance v18, Lcom/graphhopper/util/shapes/GHPoint3D;

    move-wide/from16 v19, v12

    move-wide/from16 v21, v14

    move-wide/from16 v23, v26

    invoke-direct/range {v18 .. v24}, Lcom/graphhopper/util/shapes/GHPoint3D;-><init>(DDD)V

    move-object/from16 v2, v18

    iput-object v2, v0, Lcom/graphhopper/storage/index/Snap;->snappedPoint:Lcom/graphhopper/util/shapes/GHPoint3D;

    iget v2, v0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_5

    iget-object v1, v0, Lcom/graphhopper/storage/index/Snap;->closestEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    goto :goto_3

    :cond_5
    iget v1, v0, Lcom/graphhopper/storage/index/Snap;->closestNode:I

    :goto_3
    iput v1, v0, Lcom/graphhopper/storage/index/Snap;->closestNode:I

    return-void

    :cond_6
    move-wide/from16 v23, v26

    new-instance v10, Lcom/graphhopper/util/shapes/GHPoint3D;

    iget-wide v11, v2, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v13, v2, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    add-double v8, v8, v23

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double v15, v8, v1

    invoke-direct/range {v10 .. v16}, Lcom/graphhopper/util/shapes/GHPoint3D;-><init>(DDD)V

    iput-object v10, v0, Lcom/graphhopper/storage/index/Snap;->snappedPoint:Lcom/graphhopper/util/shapes/GHPoint3D;

    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calculate snapped point only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No closest edge?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClosestEdge()Lcom/graphhopper/util/EdgeIteratorState;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/Snap;->closestEdge:Lcom/graphhopper/util/EdgeIteratorState;

    return-object p0
.end method

.method public getClosestNode()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/index/Snap;->closestNode:I

    return p0
.end method

.method public getQueryDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/storage/index/Snap;->queryDistance:D

    return-wide v0
.end method

.method public getQueryPoint()Lcom/graphhopper/util/shapes/GHPoint;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/Snap;->queryPoint:Lcom/graphhopper/util/shapes/GHPoint;

    return-object p0
.end method

.method public getSnappedPoint()Lcom/graphhopper/util/shapes/GHPoint3D;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/storage/index/Snap;->snappedPoint:Lcom/graphhopper/util/shapes/GHPoint3D;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calculate snapped point before!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSnappedPosition()Lcom/graphhopper/storage/index/Snap$Position;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/Snap;->snappedPosition:Lcom/graphhopper/storage/index/Snap$Position;

    return-object p0
.end method

.method public getWayIndex()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    return p0
.end method

.method public isValid()Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/index/Snap;->closestNode:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setClosestEdge(Lcom/graphhopper/util/EdgeIteratorState;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/storage/index/Snap;->closestEdge:Lcom/graphhopper/util/EdgeIteratorState;

    return-void
.end method

.method public setClosestNode(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/storage/index/Snap;->closestNode:I

    return-void
.end method

.method public setQueryDistance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/storage/index/Snap;->queryDistance:D

    return-void
.end method

.method public setSnappedPoint(Lcom/graphhopper/util/shapes/GHPoint3D;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/storage/index/Snap;->snappedPoint:Lcom/graphhopper/util/shapes/GHPoint3D;

    return-void
.end method

.method public setSnappedPosition(Lcom/graphhopper/storage/index/Snap$Position;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/storage/index/Snap;->snappedPosition:Lcom/graphhopper/storage/index/Snap$Position;

    return-void
.end method

.method public setWayIndex(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/graphhopper/storage/index/Snap;->closestEdge:Lcom/graphhopper/util/EdgeIteratorState;

    const-string v1, ", "

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/index/Snap;->snappedPosition:Lcom/graphhopper/storage/index/Snap$Position;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/graphhopper/storage/index/Snap;->closestNode:I

    iget-object v3, p0, Lcom/graphhopper/storage/index/Snap;->closestEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v3

    iget-object v4, p0, Lcom/graphhopper/storage/index/Snap;->closestEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v4

    iget-object v5, p0, Lcom/graphhopper/storage/index/Snap;->closestEdge:Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v5}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v5

    iget-object v6, p0, Lcom/graphhopper/storage/index/Snap;->snappedPoint:Lcom/graphhopper/util/shapes/GHPoint3D;

    invoke-virtual {v6}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v6

    iget-object v8, p0, Lcom/graphhopper/storage/index/Snap;->snappedPoint:Lcom/graphhopper/util/shapes/GHPoint3D;

    invoke-virtual {v8}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v8

    iget-object v10, p0, Lcom/graphhopper/storage/index/Snap;->queryPoint:Lcom/graphhopper/util/shapes/GHPoint;

    invoke-virtual {v10}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v10

    iget-object p0, p0, Lcom/graphhopper/storage/index/Snap;->queryPoint:Lcom/graphhopper/util/shapes/GHPoint;

    invoke-virtual {p0}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v12

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " snap: ["

    invoke-static {p0, v0, v6, v7, v1}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "], query: ["

    const-string v1, ","

    invoke-static {p0, v0, v10, v11, v1}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "]"

    invoke-static {p0, v12, v13, v0}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/graphhopper/storage/index/Snap;->closestNode:I

    iget-object v2, p0, Lcom/graphhopper/storage/index/Snap;->queryPoint:Lcom/graphhopper/util/shapes/GHPoint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget p0, p0, Lcom/graphhopper/storage/index/Snap;->wayIndex:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
