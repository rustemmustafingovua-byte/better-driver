.class public Lcom/graphhopper/routing/DirectionResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;,
        Lcom/graphhopper/routing/DirectionResolver$Point;,
        Lcom/graphhopper/routing/DirectionResolver$Edge;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

.field private final isAccessible:Lcom/graphhopper/routing/util/DirectedEdgeFilter;

.field private final nodeAccess:Lcom/graphhopper/storage/NodeAccess;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/DirectedEdgeFilter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/DirectionResolver;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/DirectionResolver;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iput-object p2, p0, Lcom/graphhopper/routing/DirectionResolver;->isAccessible:Lcom/graphhopper/routing/util/DirectedEdgeFilter;

    return-void
.end method

.method private calcAdjEdges(I)Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;
    .locals 12

    new-instance v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;-><init>(I)V

    iget-object v2, p0, Lcom/graphhopper/routing/DirectionResolver;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {v2, p1}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/graphhopper/routing/DirectionResolver;->isAccessible:Lcom/graphhopper/routing/util/DirectedEdgeFilter;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/graphhopper/routing/util/DirectedEdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;Z)Z

    move-result v2

    iget-object v4, p0, Lcom/graphhopper/routing/DirectionResolver;->isAccessible:Lcom/graphhopper/routing/util/DirectedEdgeFilter;

    invoke-interface {v4, p1, v1}, Lcom/graphhopper/routing/util/DirectedEdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;Z)Z

    move-result v4

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p1, v5}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v6

    invoke-virtual {v5, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v8

    invoke-virtual {v5, v1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Lcom/graphhopper/util/PointList;->equalsEps(DD)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v5, v1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/graphhopper/util/PointList;->equalsEps(DD)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v5}, Lcom/graphhopper/util/PointList;->size()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_2

    invoke-virtual {v5, v11}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v6

    invoke-virtual {v5, v11}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v8

    :cond_1
    move v5, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/graphhopper/util/PointList;->size()I

    move-result v5

    if-ne v5, v11, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Geometry has less than two points"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    new-instance v10, Lcom/graphhopper/routing/DirectionResolver$Point;

    invoke-direct {v10, v6, v7, v8, v9}, Lcom/graphhopper/routing/DirectionResolver$Point;-><init>(DD)V

    new-instance v6, Lcom/graphhopper/routing/DirectionResolver$Edge;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v7

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v8

    invoke-direct {v6, v7, v8, v10}, Lcom/graphhopper/routing/DirectionResolver$Edge;-><init>(IILcom/graphhopper/routing/DirectionResolver$Point;)V

    invoke-virtual {v0, v6, v2, v4}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->addEdge(Lcom/graphhopper/routing/DirectionResolver$Edge;ZZ)V

    if-eqz v5, :cond_4

    iget v2, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->numZeroDistanceEdges:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->numZeroDistanceEdges:I

    goto :goto_0

    :cond_4
    iget v2, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->numStandardEdges:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->numStandardEdges:I

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private diffLat(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;)D
    .locals 2

    iget-wide v0, p2, Lcom/graphhopper/routing/DirectionResolver$Point;->lat:D

    iget-wide p0, p1, Lcom/graphhopper/routing/DirectionResolver$Point;->lat:D

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method private diffLon(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;)D
    .locals 2

    iget-wide v0, p2, Lcom/graphhopper/routing/DirectionResolver$Point;->lon:D

    iget-wide p0, p1, Lcom/graphhopper/routing/DirectionResolver$Point;->lon:D

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method private isOnRightLane(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;)Z
    .locals 15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {p0, v2, v1}, Lcom/graphhopper/routing/DirectionResolver;->diffLon(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;)D

    move-result-wide v9

    invoke-direct {p0, v2, v1}, Lcom/graphhopper/routing/DirectionResolver;->diffLat(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;)D

    move-result-wide v11

    invoke-direct {p0, v2, v3}, Lcom/graphhopper/routing/DirectionResolver;->diffLon(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;)D

    move-result-wide v5

    invoke-direct {p0, v2, v3}, Lcom/graphhopper/routing/DirectionResolver;->diffLat(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;)D

    move-result-wide v7

    move-wide v13, v5

    invoke-direct {p0, v2, v4}, Lcom/graphhopper/routing/DirectionResolver;->diffLon(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;)D

    move-result-wide v5

    invoke-direct {p0, v2, v4}, Lcom/graphhopper/routing/DirectionResolver;->diffLat(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;)D

    move-result-wide v0

    move-wide v3, v7

    move-wide v7, v0

    sget-object v0, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    move-wide v1, v13

    invoke-virtual/range {v0 .. v12}, Lcom/graphhopper/util/AngleCalc;->isClockwise(DDDDDD)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private resolveDirections(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Edge;Lcom/graphhopper/routing/DirectionResolver$Edge;)Lcom/graphhopper/routing/DirectionResolverResult;
    .locals 2

    .line 41
    iget-object v0, p3, Lcom/graphhopper/routing/DirectionResolver$Edge;->nextPoint:Lcom/graphhopper/routing/DirectionResolver$Point;

    iget-object v1, p4, Lcom/graphhopper/routing/DirectionResolver$Edge;->nextPoint:Lcom/graphhopper/routing/DirectionResolver$Point;

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/graphhopper/routing/DirectionResolver;->isOnRightLane(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 42
    iget p0, p3, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    iget p1, p4, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    invoke-static {p0, p1}, Lcom/graphhopper/routing/DirectionResolverResult;->onlyRight(II)Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 43
    :cond_0
    iget p0, p3, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    iget p1, p4, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    invoke-static {p0, p1}, Lcom/graphhopper/routing/DirectionResolverResult;->onlyLeft(II)Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0
.end method

.method private resolveDirections(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Edge;Lcom/graphhopper/routing/DirectionResolver$Edge;II)Lcom/graphhopper/routing/DirectionResolverResult;
    .locals 2

    .line 44
    iget-object v0, p3, Lcom/graphhopper/routing/DirectionResolver$Edge;->nextPoint:Lcom/graphhopper/routing/DirectionResolver$Point;

    .line 45
    iget-object v1, p4, Lcom/graphhopper/routing/DirectionResolver$Edge;->nextPoint:Lcom/graphhopper/routing/DirectionResolver$Point;

    .line 46
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/graphhopper/routing/DirectionResolver;->isOnRightLane(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 47
    iget p0, p3, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    iget p1, p4, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    invoke-static {p0, p1, p5, p6}, Lcom/graphhopper/routing/DirectionResolverResult;->restricted(IIII)Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    iget p0, p3, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    iget p1, p4, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    invoke-static {p5, p6, p0, p1}, Lcom/graphhopper/routing/DirectionResolverResult;->restricted(IIII)Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public resolveDirections(ILcom/graphhopper/util/shapes/GHPoint;)Lcom/graphhopper/routing/DirectionResolverResult;
    .locals 11

    .line 1
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/DirectionResolver;->calcAdjEdges(I)Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->numStandardEdges:I

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/graphhopper/routing/DirectionResolverResult;->impossible()Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->hasInEdges()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->hasOutEdges()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->nextPoints:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lcom/graphhopper/routing/DirectionResolverResult;->impossible()Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    iget v1, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->numZeroDistanceEdges:I

    if-lez v1, :cond_3

    .line 8
    invoke-static {}, Lcom/graphhopper/routing/DirectionResolverResult;->unrestricted()Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    new-instance v1, Lcom/graphhopper/routing/DirectionResolver$Point;

    iget-object v2, p0, Lcom/graphhopper/routing/DirectionResolver;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v2, p1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v2

    iget-object v4, p0, Lcom/graphhopper/routing/DirectionResolver;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v4, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/graphhopper/routing/DirectionResolver$Point;-><init>(DD)V

    .line 10
    iget-object p1, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->nextPoints:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 11
    iget-object p1, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->nextPoints:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_6

    .line 12
    iget-object p0, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->nextPoints:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/DirectionResolver$Point;

    .line 13
    invoke-virtual {v0, p0}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->getInEdges(Lcom/graphhopper/routing/DirectionResolver$Point;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p0}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->getOutEdges(Lcom/graphhopper/routing/DirectionResolver$Point;)Ljava/util/List;

    move-result-object p0

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, v2, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/graphhopper/routing/DirectionResolver$Edge;

    iget p2, p2, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/DirectionResolver$Edge;

    iget v0, v0, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/DirectionResolver$Edge;

    iget p1, p1, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/DirectionResolver$Edge;

    iget p0, p0, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    invoke-static {p2, v0, p1, p0}, Lcom/graphhopper/routing/DirectionResolverResult;->restricted(IIII)Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 17
    :cond_5
    :goto_0
    invoke-static {}, Lcom/graphhopper/routing/DirectionResolverResult;->unrestricted()Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 18
    :cond_6
    iget-object p1, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->nextPoints:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_f

    .line 19
    iget-object p1, v0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->nextPoints:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/routing/DirectionResolver$Point;

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/DirectionResolver$Point;

    .line 22
    invoke-virtual {v0, v4}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->getInEdges(Lcom/graphhopper/routing/DirectionResolver$Point;)Ljava/util/List;

    move-result-object v5

    .line 23
    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->getInEdges(Lcom/graphhopper/routing/DirectionResolver$Point;)Ljava/util/List;

    move-result-object v6

    .line 24
    invoke-virtual {v0, v4}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->getOutEdges(Lcom/graphhopper/routing/DirectionResolver$Point;)Ljava/util/List;

    move-result-object v4

    .line 25
    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->getOutEdges(Lcom/graphhopper/routing/DirectionResolver$Point;)Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_e

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_7

    goto/16 :goto_3

    .line 27
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    if-eqz v2, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    if-eqz v2, :cond_d

    .line 28
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    if-eqz v2, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    if-eqz v2, :cond_c

    .line 29
    new-instance v2, Lcom/graphhopper/routing/DirectionResolver$Point;

    iget-wide v7, p2, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v9, p2, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-direct {v2, v7, v8, v9, v10}, Lcom/graphhopper/routing/DirectionResolver$Point;-><init>(DD)V

    .line 30
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    move-object v0, p0

    goto :goto_2

    .line 31
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    move-object v0, p0

    goto :goto_1

    .line 32
    :cond_b
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/graphhopper/routing/DirectionResolver$Edge;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/DirectionResolver$Edge;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/DirectionResolver$Edge;

    iget v5, v0, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/DirectionResolver$Edge;

    iget v6, v0, Lcom/graphhopper/routing/DirectionResolver$Edge;->edgeId:I

    move-object v0, p0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/DirectionResolver;->resolveDirections(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Edge;Lcom/graphhopper/routing/DirectionResolver$Edge;II)Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 33
    :goto_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/DirectionResolver$Edge;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/DirectionResolver$Edge;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/graphhopper/routing/DirectionResolver;->resolveDirections(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Edge;Lcom/graphhopper/routing/DirectionResolver$Edge;)Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 34
    :goto_2
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/DirectionResolver$Edge;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/DirectionResolver$Edge;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/graphhopper/routing/DirectionResolver;->resolveDirections(Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Point;Lcom/graphhopper/routing/DirectionResolver$Edge;Lcom/graphhopper/routing/DirectionResolver$Edge;)Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 35
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "there has to be at least one in or one out edge for each of the two next points"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "there has to be at least one in and one out edge when there are two next points"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_e
    :goto_3
    invoke-static {}, Lcom/graphhopper/routing/DirectionResolverResult;->unrestricted()Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 38
    :cond_f
    invoke-static {}, Lcom/graphhopper/routing/DirectionResolverResult;->unrestricted()Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0

    .line 39
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Pillar node of adjacent edge matches snapped point, this should not happen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_11
    :goto_4
    invoke-static {}, Lcom/graphhopper/routing/DirectionResolverResult;->impossible()Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object p0

    return-object p0
.end method
