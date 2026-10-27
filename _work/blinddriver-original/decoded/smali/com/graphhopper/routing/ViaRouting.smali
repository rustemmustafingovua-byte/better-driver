.class public Lcom/graphhopper/routing/ViaRouting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/ViaRouting$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/routing/util/DirectedEdgeFilter;Lcom/graphhopper/util/EdgeIteratorState;Z)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/routing/ViaRouting;->lambda$buildEdgeRestrictions$0(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/routing/util/DirectedEdgeFilter;Lcom/graphhopper/util/EdgeIteratorState;Z)Z

    move-result p0

    return p0
.end method

.method private static buildEdgeRestrictions(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/storage/index/Snap;Lcom/graphhopper/storage/index/Snap;DDIZLjava/lang/String;Ljava/lang/String;Lcom/graphhopper/routing/util/DirectedEdgeFilter;)Lcom/graphhopper/routing/EdgeRestrictions;
    .locals 9

    move/from16 v0, p7

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    new-instance v3, Lcom/graphhopper/routing/EdgeRestrictions;

    invoke-direct {v3}, Lcom/graphhopper/routing/EdgeRestrictions;-><init>()V

    const-string v4, "any"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    new-instance v5, Lb0/b3;

    const/4 v6, 0x2

    move-object/from16 v7, p11

    invoke-direct {v5, v6, p0, v7}, Lb0/b3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/graphhopper/routing/DirectionResolver;

    invoke-direct {v6, p0, v5}, Lcom/graphhopper/routing/DirectionResolver;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/DirectedEdgeFilter;)V

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result v5

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->getQueryPoint()Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/graphhopper/routing/DirectionResolver;->resolveDirections(ILcom/graphhopper/util/shapes/GHPoint;)Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object v5

    invoke-virtual {p2}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result v7

    invoke-virtual {p2}, Lcom/graphhopper/storage/index/Snap;->getQueryPoint()Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/graphhopper/routing/DirectionResolver;->resolveDirections(ILcom/graphhopper/util/shapes/GHPoint;)Lcom/graphhopper/routing/DirectionResolverResult;

    move-result-object v6

    invoke-static {v5, v1}, Lcom/graphhopper/routing/DirectionResolverResult;->getOutEdge(Lcom/graphhopper/routing/DirectionResolverResult;Ljava/lang/String;)I

    move-result v5

    invoke-static {v6, v2}, Lcom/graphhopper/routing/DirectionResolverResult;->getInEdge(Lcom/graphhopper/routing/DirectionResolverResult;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result v7

    invoke-virtual {p2}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-static {v1}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v2}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p9 .. p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v5, -0x2

    move v6, v5

    :cond_2
    invoke-virtual {v3, v5}, Lcom/graphhopper/routing/EdgeRestrictions;->setSourceOutEdge(I)V

    invoke-virtual {v3, v6}, Lcom/graphhopper/routing/EdgeRestrictions;->setTargetInEdge(I)V

    :cond_3
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_4
    new-instance v1, Lcom/graphhopper/routing/HeadingResolver;

    invoke-direct {v1, p0}, Lcom/graphhopper/routing/HeadingResolver;-><init>(Lcom/graphhopper/storage/Graph;)V

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v3}, Lcom/graphhopper/routing/EdgeRestrictions;->getUnfavoredEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result p1

    invoke-virtual {v1, p1, p3, p4}, Lcom/graphhopper/routing/HeadingResolver;->getEdgesWithDifferentHeading(ID)Lcom/carrotsearch/hppc/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->addAll(Lcom/carrotsearch/hppc/z;)I

    :cond_5
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_7

    const-wide p0, 0x4066800000000000L    # 180.0

    add-double/2addr p0, p5

    const-wide p3, 0x4076800000000000L    # 360.0

    cmpl-double v2, p0, p3

    if-lez v2, :cond_6

    sub-double/2addr p0, p3

    :cond_6
    invoke-virtual {v3}, Lcom/graphhopper/routing/EdgeRestrictions;->getUnfavoredEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p3

    invoke-virtual {p2}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result p2

    invoke-virtual {v1, p2, p0, p1}, Lcom/graphhopper/routing/HeadingResolver;->getEdgesWithDifferentHeading(ID)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/carrotsearch/hppc/x;->addAll(Lcom/carrotsearch/hppc/z;)I

    :cond_7
    const/4 p0, -0x1

    if-eq v0, p0, :cond_8

    if-eqz p8, :cond_8

    invoke-virtual {v3}, Lcom/graphhopper/routing/EdgeRestrictions;->getUnfavoredEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/x;->add(I)V

    :cond_8
    return-object v3
.end method

.method public static calcPaths(Ljava/util/List;Lcom/graphhopper/routing/querygraph/QueryGraph;Ljava/util/List;Lcom/graphhopper/routing/util/DirectedEdgeFilter;Lcom/graphhopper/routing/PathCalculator;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)Lcom/graphhopper/routing/ViaRouting$Result;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/shapes/GHPoint;",
            ">;",
            "Lcom/graphhopper/routing/querygraph/QueryGraph;",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;",
            "Lcom/graphhopper/routing/util/DirectedEdgeFilter;",
            "Lcom/graphhopper/routing/PathCalculator;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)",
            "Lcom/graphhopper/routing/ViaRouting$Result;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If you pass curbside, you need to pass exactly one curbside for every point, empty curbsides will be ignored"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot use curbsides and headings or pass_through at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    new-instance v5, Lcom/graphhopper/routing/ViaRouting$Result;

    invoke-direct {v5, v4}, Lcom/graphhopper/routing/ViaRouting$Result;-><init>(I)V

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v4, :cond_b

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/graphhopper/storage/index/Snap;

    add-int/lit8 v8, v7, 0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/graphhopper/storage/index/Snap;

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    if-nez v7, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    goto :goto_3

    :cond_4
    move-wide v14, v12

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v9, v6, :cond_5

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    :cond_5
    if-eqz v7, :cond_6

    iget-object v6, v5, Lcom/graphhopper/routing/ViaRouting$Result;->paths:Ljava/util/List;

    add-int/lit8 v9, v7, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/graphhopper/routing/Path;

    invoke-virtual {v6}, Lcom/graphhopper/routing/Path;->getEdgeCount()I

    move-result v9

    if-lez v9, :cond_6

    invoke-virtual {v6}, Lcom/graphhopper/routing/Path;->getFinalEdge()Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v6

    invoke-interface {v6}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v6

    :goto_4
    move/from16 v16, v6

    goto :goto_5

    :cond_6
    const/4 v6, -0x1

    goto :goto_4

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const-string v9, "any"

    if-eqz v6, :cond_7

    move-object/from16 v18, v9

    goto :goto_6

    :cond_7
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v18, v6

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_7
    move-wide/from16 v19, v14

    move-wide v14, v12

    move-wide/from16 v12, v19

    move-object/from16 v20, p3

    move/from16 v17, p8

    move-object/from16 v19, v9

    move-object/from16 v9, p1

    goto :goto_8

    :cond_8
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    goto :goto_7

    :goto_8
    invoke-static/range {v9 .. v20}, Lcom/graphhopper/routing/ViaRouting;->buildEdgeRestrictions(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/storage/index/Snap;Lcom/graphhopper/storage/index/Snap;DDIZLjava/lang/String;Ljava/lang/String;Lcom/graphhopper/routing/util/DirectedEdgeFilter;)Lcom/graphhopper/routing/EdgeRestrictions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/graphhopper/routing/EdgeRestrictions;->getSourceOutEdge()I

    move-result v9

    invoke-static {v1, v9, v7, v2}, Lcom/graphhopper/routing/ViaRouting;->ignoreThrowOrAcceptImpossibleCurbsides(Ljava/util/List;IILjava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/graphhopper/routing/EdgeRestrictions;->setSourceOutEdge(I)V

    invoke-virtual {v6}, Lcom/graphhopper/routing/EdgeRestrictions;->getTargetInEdge()I

    move-result v7

    invoke-static {v1, v7, v8, v2}, Lcom/graphhopper/routing/ViaRouting;->ignoreThrowOrAcceptImpossibleCurbsides(Ljava/util/List;IILjava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/graphhopper/routing/EdgeRestrictions;->setTargetInEdge(I)V

    invoke-virtual {v10}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result v7

    invoke-virtual {v11}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result v9

    move-object/from16 v10, p4

    invoke-interface {v10, v7, v9, v6}, Lcom/graphhopper/routing/PathCalculator;->calcPaths(IILcom/graphhopper/routing/EdgeRestrictions;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v5, Lcom/graphhopper/routing/ViaRouting$Result;->debug:Ljava/lang/String;

    invoke-interface {v10}, Lcom/graphhopper/routing/PathCalculator;->getDebugString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/graphhopper/routing/ViaRouting$Result;->debug:Ljava/lang/String;

    const/4 v7, 0x0

    :goto_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_a

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/graphhopper/routing/Path;

    invoke-virtual {v9}, Lcom/graphhopper/routing/Path;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_9

    iget-object v11, v5, Lcom/graphhopper/routing/ViaRouting$Result;->paths:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v5, Lcom/graphhopper/routing/ViaRouting$Result;->debug:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/graphhopper/routing/Path;->getDebugInfo()Ljava/lang/String;

    move-result-object v9

    const-string v12, ", "

    invoke-static {v11, v12, v9}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/graphhopper/routing/ViaRouting$Result;->debug:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v9}, Lcom/graphhopper/routing/Path;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Time was negative "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " for index "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-wide v6, v5, Lcom/graphhopper/routing/ViaRouting$Result;->visitedNodes:J

    invoke-interface {v10}, Lcom/graphhopper/routing/PathCalculator;->getVisitedNodes()I

    move-result v9

    int-to-long v11, v9

    add-long/2addr v6, v11

    iput-wide v6, v5, Lcom/graphhopper/routing/ViaRouting$Result;->visitedNodes:J

    iget-object v9, v5, Lcom/graphhopper/routing/ViaRouting$Result;->debug:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", visited nodes sum: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/graphhopper/routing/ViaRouting$Result;->debug:Ljava/lang/String;

    move v7, v8

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_b
    return-object v5
.end method

.method private static ignoreThrowOrAcceptImpossibleCurbsides(Ljava/util/List;IILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    const-string p1, "strict"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, p2}, Lcom/graphhopper/routing/ViaRouting;->throwImpossibleCurbsideConstraint(Ljava/util/List;I)I

    move-result p0

    return p0

    :cond_1
    const-string p0, "soft"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, -0x2

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown curbside_strictness "

    invoke-static {p1, p3}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$buildEdgeRestrictions$0(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/routing/util/DirectedEdgeFilter;Lcom/graphhopper/util/EdgeIteratorState;Z)Z
    .locals 1

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->isVirtualEdge(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getEdgeIteratorStateForKey(I)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p2

    check-cast p2, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    invoke-virtual {p2}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->getOriginalEdgeKey()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getEdgeIteratorStateForKey(I)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lcom/graphhopper/routing/util/DirectedEdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/graphhopper/routing/util/DirectedEdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;Z)Z

    move-result p0

    return p0
.end method

.method public static lookup(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/List;Lcom/graphhopper/routing/util/EdgeFilter;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/List;Ljava/util/List;Lcom/graphhopper/routing/util/DirectedEdgeFilter;Ljava/util/List;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/shapes/GHPoint;",
            ">;",
            "Lcom/graphhopper/routing/util/EdgeFilter;",
            "Lcom/graphhopper/storage/index/LocationIndex;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/graphhopper/routing/util/DirectedEdgeFilter;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_b

    const-string v3, "road_class"

    const-class v4, Lcom/graphhopper/routing/ev/RoadClass;

    invoke-interface {v0, v3, v4}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v3

    const-string v4, "road_environment"

    const-class v5, Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-interface {v0, v4, v5}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v10, p2

    move-object v13, v10

    move-object/from16 v11, p4

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    invoke-direct {v4, v10, v3, v0, v11}, Lcom/graphhopper/routing/util/SnapPreventionEdgeFilter;-><init>(Lcom/graphhopper/routing/util/EdgeFilter;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Ljava/util/List;)V

    move-object v13, v4

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lcom/carrotsearch/hppc/x;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot specify heading and point_hint at the same time. Make sure you specify either an empty point_hint (String) or a NaN heading (double) for point "

    invoke-static {v4, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    iget-wide v6, v15, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v8, v15, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    new-instance v12, Lcom/graphhopper/routing/util/HeadingEdgeFilter;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    move-wide/from16 v17, v6

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object/from16 v7, p6

    invoke-direct {v12, v7, v5, v6, v15}, Lcom/graphhopper/routing/util/HeadingEdgeFilter;-><init>(Lcom/graphhopper/routing/util/DirectedEdgeFilter;DLcom/graphhopper/util/shapes/GHPoint;)V

    move-object/from16 v16, p3

    move-wide/from16 v19, v8

    move-object/from16 v21, v12

    invoke-interface/range {v16 .. v21}, Lcom/graphhopper/storage/index/LocationIndex;->findClosest(DDLcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;

    move-result-object v5

    move-object v6, v15

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-wide v5, v15, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v8, v15, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    new-instance v12, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-wide v16, 0x4065400000000000L    # 170.0

    invoke-direct/range {v12 .. v17}, Lcom/graphhopper/routing/util/NameSimilarityEdgeFilter;-><init>(Lcom/graphhopper/routing/util/EdgeFilter;Ljava/lang/String;Lcom/graphhopper/util/shapes/GHPoint;D)V

    move-object/from16 v16, p3

    move-wide/from16 v17, v5

    move-wide/from16 v19, v8

    move-object/from16 v21, v12

    move-object v6, v15

    invoke-interface/range {v16 .. v21}, Lcom/graphhopper/storage/index/LocationIndex;->findClosest(DDLcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v6, v15

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v17, v13

    iget-wide v13, v6, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v8, v6, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-object/from16 v12, p3

    move-wide v15, v8

    invoke-interface/range {v12 .. v17}, Lcom/graphhopper/storage/index/LocationIndex;->findClosest(DDLcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;

    move-result-object v5

    move-object/from16 v13, v17

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/graphhopper/storage/index/Snap;->isValid()Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    iget-wide v8, v6, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v5, v6, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    move-wide/from16 v22, v8

    move-wide v8, v5

    move-wide/from16 v6, v22

    move-object/from16 v5, p3

    invoke-interface/range {v5 .. v10}, Lcom/graphhopper/storage/index/LocationIndex;->findClosest(DDLcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;

    move-result-object v6

    move-object v5, v6

    :cond_7
    invoke-virtual {v5}, Lcom/graphhopper/storage/index/Snap;->isValid()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v3, v4}, Lcom/carrotsearch/hppc/x;->add(I)V

    :cond_8
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, p2

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v3}, Lcom/carrotsearch/hppc/x;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_a
    new-instance v0, Lcom/graphhopper/routing/MultiplePointsNotFoundException;

    invoke-direct {v0, v3}, Lcom/graphhopper/routing/MultiplePointsNotFoundException;-><init>(Lcom/carrotsearch/hppc/x;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "At least 2 points have to be specified, but was:"

    invoke-static {v1, v2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwImpossibleCurbsideConstraint(Ljava/util/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Impossible curbside constraint: \'curbside="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' at point "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
