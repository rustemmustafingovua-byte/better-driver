.class public Lcom/graphhopper/isochrone/algorithm/JTSTriangulator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/isochrone/algorithm/Triangulator;


# instance fields
.field private final routerConfig:Lcom/graphhopper/routing/RouterConfig;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/RouterConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/JTSTriangulator;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/ToDoubleFunction;Lcom/graphhopper/storage/NodeAccess;Ljava/util/ArrayList;Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/graphhopper/isochrone/algorithm/JTSTriangulator;->lambda$triangulate$0(Ljava/util/function/ToDoubleFunction;Lcom/graphhopper/storage/NodeAccess;Ljava/util/Collection;Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)V

    return-void
.end method

.method private static synthetic lambda$triangulate$0(Ljava/util/function/ToDoubleFunction;Lcom/graphhopper/storage/NodeAccess;Ljava/util/Collection;Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)V
    .locals 5

    invoke-interface {p0, p4}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    iget p0, p4, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->node:I

    invoke-interface {p1, p0}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v2

    iget p0, p4, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->node:I

    invoke-interface {p1, p0}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide p0

    new-instance v4, Lpb/a;

    invoke-direct {v4, p0, p1, v2, v3}, Lpb/a;-><init>(DD)V

    iput-wide v0, v4, Lpb/a;->n:D

    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p0, p4, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->parent:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    if-eqz p0, :cond_1

    iget p0, p4, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->edge:I

    iget p1, p4, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;->node:I

    invoke-virtual {p3, p0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/util/FetchMode;->PILLAR_ONLY:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result p4

    rem-int/lit8 p4, p4, 0x2

    if-nez p4, :cond_0

    sget-object p4, Lcom/graphhopper/util/EdgeIteratorState;->REVERSE_STATE:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p0, p4}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    invoke-virtual {p1, p3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v2

    invoke-virtual {p1, p3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide p0

    new-instance p3, Lpb/a;

    invoke-direct {p3, p0, p1, v2, v3}, Lpb/a;-><init>(DD)V

    iput-wide v0, p3, Lpb/a;->n:D

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public triangulate(Lcom/graphhopper/storage/index/Snap;Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;Ljava/util/function/ToDoubleFunction;D)Lcom/graphhopper/isochrone/algorithm/Triangulator$Result;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/index/Snap;",
            "Lcom/graphhopper/routing/querygraph/QueryGraph;",
            "Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;",
            "Ljava/util/function/ToDoubleFunction<",
            "Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;",
            ">;D)",
            "Lcom/graphhopper/isochrone/algorithm/Triangulator$Result;"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/graphhopper/routing/querygraph/QueryGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/storage/index/Snap;->getClosestNode()I

    move-result v6

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/c;

    const/4 v5, 0x0

    move-object/from16 v4, p2

    move-object/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/isochrone/algorithm/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v1}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->search(ILjava/util/function/Consumer;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/graphhopper/isochrone/algorithm/JTSTriangulator;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v1}, Lcom/graphhopper/routing/RouterConfig;->getMaxVisitedNodes()I

    move-result v1

    const/4 v2, 0x3

    div-int/2addr v1, v2

    if-gt v0, v1, :cond_37

    new-instance v0, Lhc/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lhc/a;->b:D

    const/4 v1, 0x0

    iput-object v1, v0, Lhc/a;->c:Lic/b;

    sget-object v4, Lpb/b;->a:[Lpb/a;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lpb/a;

    array-length v5, v3

    new-array v5, v5, [Lpb/a;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, v3

    if-ge v7, v8, :cond_0

    aget-object v8, v3, v7

    invoke-virtual {v8}, Lpb/a;->f()Lpb/a;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v3, Lpb/c;

    invoke-direct {v3, v5}, Lpb/c;-><init>([Lpb/a;)V

    iput-object v3, v0, Lhc/a;->a:Lpb/c;

    move-wide/from16 v7, p5

    iput-wide v7, v0, Lhc/a;->b:D

    new-instance v3, Lpb/m;

    invoke-direct {v3}, Lpb/m;-><init>()V

    invoke-virtual {v0}, Lhc/a;->a()V

    iget-object v5, v0, Lhc/a;->c:Lic/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    iget-object v9, v5, Lic/b;->b:Lic/a;

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lic/a;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v10, Lic/a;->b:Lic/c;

    iget-object v11, v11, Lic/c;->a:Lpb/a;

    invoke-virtual {v10}, Lic/a;->b()Lic/c;

    move-result-object v12

    iget-object v12, v12, Lic/c;->a:Lpb/a;

    invoke-virtual {v11, v12}, Lpb/a;->a(Lpb/a;)I

    move-result v11

    if-gtz v11, :cond_2

    move-object v11, v10

    goto :goto_2

    :cond_2
    iget-object v11, v10, Lic/a;->a:Lic/a;

    iget-object v11, v11, Lic/a;->a:Lic/a;

    :goto_2
    iget-object v12, v11, Lic/a;->b:Lic/c;

    invoke-virtual {v5, v12}, Lic/b;->a(Lic/c;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v11}, Lic/a;->b()Lic/c;

    move-result-object v12

    invoke-virtual {v5, v12}, Lic/b;->a(Lic/c;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    iget-object v11, v10, Lic/a;->c:Lic/a;

    invoke-virtual {v8, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v10, Lic/a;->a:Lic/a;

    iget-object v11, v11, Lic/a;->a:Lic/a;

    iget-object v11, v11, Lic/a;->c:Lic/a;

    invoke-virtual {v8, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v10, v10, Lic/a;->a:Lic/a;

    iget-object v10, v10, Lic/a;->a:Lic/a;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lpb/q;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v6

    move v10, v9

    :goto_4
    if-ge v10, v8, :cond_6

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lic/a;

    add-int/lit8 v12, v9, 0x1

    iget-object v13, v11, Lic/a;->b:Lic/c;

    iget-object v13, v13, Lic/c;->a:Lpb/a;

    invoke-virtual {v11}, Lic/a;->b()Lic/c;

    move-result-object v11

    iget-object v11, v11, Lic/c;->a:Lpb/a;

    filled-new-array {v13, v11}, [Lpb/a;

    move-result-object v11

    invoke-virtual {v3, v11}, Lpb/m;->a([Lpb/a;)Lpb/q;

    move-result-object v11

    aput-object v11, v5, v9

    move v9, v12

    goto :goto_4

    :cond_6
    move v7, v6

    :goto_5
    array-length v8, v5

    if-ge v7, v8, :cond_8

    aget-object v8, v5, v7

    if-eqz v8, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "geometries must not contain null elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v7, v6

    move v8, v7

    :goto_6
    array-length v9, v5

    if-ge v7, v9, :cond_9

    aget-object v9, v5, v7

    invoke-virtual {v9}, Lpb/i;->F()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    new-array v7, v8, [Lpb/a;

    const/4 v8, -0x1

    move v9, v6

    move v10, v8

    :goto_7
    array-length v11, v5

    if-ge v9, v11, :cond_b

    aget-object v11, v5, v9

    invoke-virtual {v11}, Lpb/i;->x()[Lpb/a;

    move-result-object v11

    move v12, v6

    :goto_8
    array-length v13, v11

    if-ge v12, v13, :cond_a

    add-int/lit8 v10, v10, 0x1

    aget-object v13, v11, v12

    aput-object v13, v7, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_b
    const/4 v5, 0x2

    invoke-static {v7, v5}, Ly4/s;->o([Lpb/a;I)[Lpb/a;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v9, :cond_c

    move-object v9, v1

    goto :goto_9

    :cond_c
    array-length v11, v9

    if-nez v11, :cond_d

    new-instance v9, Lpb/j;

    invoke-direct {v9, v1, v3}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    goto :goto_9

    :cond_d
    array-length v11, v9

    if-ne v11, v10, :cond_e

    aget-object v9, v9, v6

    invoke-virtual {v3, v9}, Lpb/m;->d(Lpb/a;)Lpb/w;

    move-result-object v9

    goto :goto_9

    :cond_e
    invoke-virtual {v3, v9}, Lpb/m;->a([Lpb/a;)Lpb/q;

    move-result-object v9

    :goto_9
    if-eqz v9, :cond_f

    goto/16 :goto_1d

    :cond_f
    array-length v9, v7

    const/16 v11, 0x32

    if-le v9, v11, :cond_23

    const/16 v8, 0x8

    new-array v9, v8, [Lpb/a;

    move v11, v6

    :goto_a
    if-ge v11, v8, :cond_10

    aget-object v12, v7, v6

    aput-object v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_10
    move v11, v10

    :goto_b
    array-length v12, v7

    if-ge v11, v12, :cond_19

    aget-object v12, v7, v11

    iget-wide v13, v12, Lpb/a;->l:D

    aget-object v15, v9, v6

    move/from16 p0, v10

    move/from16 p1, v11

    iget-wide v10, v15, Lpb/a;->l:D

    cmpg-double v10, v13, v10

    if-gez v10, :cond_11

    aput-object v12, v9, v6

    :cond_11
    aget-object v10, v7, p1

    iget-wide v11, v10, Lpb/a;->l:D

    iget-wide v13, v10, Lpb/a;->m:D

    sub-double/2addr v11, v13

    aget-object v13, v9, p0

    iget-wide v14, v13, Lpb/a;->l:D

    move/from16 p3, v5

    iget-wide v5, v13, Lpb/a;->m:D

    sub-double/2addr v14, v5

    cmpg-double v5, v11, v14

    if-gez v5, :cond_12

    aput-object v10, v9, p0

    :cond_12
    aget-object v5, v7, p1

    iget-wide v10, v5, Lpb/a;->m:D

    aget-object v6, v9, p3

    iget-wide v12, v6, Lpb/a;->m:D

    cmpl-double v6, v10, v12

    if-lez v6, :cond_13

    aput-object v5, v9, p3

    :cond_13
    aget-object v5, v7, p1

    iget-wide v10, v5, Lpb/a;->l:D

    iget-wide v12, v5, Lpb/a;->m:D

    add-double/2addr v10, v12

    aget-object v6, v9, v2

    iget-wide v12, v6, Lpb/a;->l:D

    iget-wide v14, v6, Lpb/a;->m:D

    add-double/2addr v12, v14

    cmpl-double v6, v10, v12

    if-lez v6, :cond_14

    aput-object v5, v9, v2

    :cond_14
    aget-object v5, v7, p1

    iget-wide v10, v5, Lpb/a;->l:D

    const/4 v6, 0x4

    aget-object v12, v9, v6

    iget-wide v12, v12, Lpb/a;->l:D

    cmpl-double v10, v10, v12

    if-lez v10, :cond_15

    aput-object v5, v9, v6

    :cond_15
    aget-object v5, v7, p1

    iget-wide v10, v5, Lpb/a;->l:D

    iget-wide v12, v5, Lpb/a;->m:D

    sub-double/2addr v10, v12

    const/4 v6, 0x5

    aget-object v12, v9, v6

    iget-wide v13, v12, Lpb/a;->l:D

    move/from16 p4, v6

    move-object v15, v7

    iget-wide v6, v12, Lpb/a;->m:D

    sub-double/2addr v13, v6

    cmpl-double v6, v10, v13

    if-lez v6, :cond_16

    aput-object v5, v9, p4

    :cond_16
    aget-object v5, v15, p1

    iget-wide v6, v5, Lpb/a;->m:D

    const/4 v10, 0x6

    aget-object v11, v9, v10

    iget-wide v11, v11, Lpb/a;->m:D

    cmpg-double v6, v6, v11

    if-gez v6, :cond_17

    aput-object v5, v9, v10

    :cond_17
    aget-object v5, v15, p1

    iget-wide v6, v5, Lpb/a;->l:D

    iget-wide v10, v5, Lpb/a;->m:D

    add-double/2addr v6, v10

    const/4 v10, 0x7

    aget-object v11, v9, v10

    iget-wide v12, v11, Lpb/a;->l:D

    move/from16 p4, v10

    iget-wide v10, v11, Lpb/a;->m:D

    add-double/2addr v12, v10

    cmpg-double v6, v6, v12

    if-gez v6, :cond_18

    aput-object v5, v9, p4

    :cond_18
    add-int/lit8 v11, p1, 0x1

    move/from16 v10, p0

    move/from16 v5, p3

    move-object v7, v15

    const/4 v6, 0x0

    goto/16 :goto_b

    :cond_19
    move/from16 p3, v5

    move-object v15, v7

    move/from16 p0, v10

    new-instance v5, Lpb/c;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v8, :cond_1a

    aget-object v7, v9, v6

    invoke-virtual {v5, v7}, Lpb/c;->a(Lpb/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_1a
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v6, v2, :cond_1b

    move-object v5, v1

    goto :goto_d

    :cond_1b
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-lez v6, :cond_1c

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpb/a;

    invoke-virtual {v7}, Lpb/a;->f()Lpb/a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lpb/c;->a(Lpb/a;)V

    :cond_1c
    sget-object v6, Lpb/c;->l:[Lpb/a;

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lpb/a;

    :goto_d
    if-nez v5, :cond_1d

    move-object v7, v15

    goto :goto_13

    :cond_1d
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    :goto_e
    array-length v8, v5

    if-ge v7, v8, :cond_1e

    aget-object v8, v5, v7

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1e
    const/4 v7, 0x0

    :goto_f
    array-length v8, v15

    if-ge v7, v8, :cond_20

    aget-object v8, v15, v7

    invoke-static {v8, v5}, Lc6/o;->T(Lpb/a;[Lpb/a;)I

    move-result v8

    move/from16 v9, p3

    if-eq v8, v9, :cond_1f

    goto :goto_10

    :cond_1f
    aget-object v8, v15, v7

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_10
    add-int/lit8 v7, v7, 0x1

    const/16 p3, 0x2

    goto :goto_f

    :cond_20
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, [Lpb/a;

    array-length v4, v7

    if-ge v4, v2, :cond_24

    new-array v4, v2, [Lpb/a;

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v2, :cond_22

    array-length v6, v7

    if-ge v5, v6, :cond_21

    aget-object v6, v7, v5

    aput-object v6, v4, v5

    goto :goto_12

    :cond_21
    const/4 v6, 0x0

    aget-object v8, v7, v6

    aput-object v8, v4, v5

    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_22
    move-object v7, v4

    goto :goto_13

    :cond_23
    move-object v15, v7

    move/from16 p0, v10

    invoke-static {v15, v8}, Ly4/s;->o([Lpb/a;I)[Lpb/a;

    move-result-object v7

    :cond_24
    :goto_13
    move/from16 v4, p0

    :goto_14
    array-length v5, v7

    if-ge v4, v5, :cond_27

    aget-object v5, v7, v4

    iget-wide v8, v5, Lpb/a;->m:D

    const/4 v6, 0x0

    aget-object v10, v7, v6

    iget-wide v11, v10, Lpb/a;->m:D

    cmpg-double v6, v8, v11

    if-ltz v6, :cond_25

    cmpl-double v6, v8, v11

    if-nez v6, :cond_26

    iget-wide v8, v5, Lpb/a;->l:D

    iget-wide v11, v10, Lpb/a;->l:D

    cmpg-double v6, v8, v11

    if-gez v6, :cond_26

    :cond_25
    const/4 v6, 0x0

    goto :goto_15

    :cond_26
    const/4 v6, 0x0

    goto :goto_16

    :goto_15
    aput-object v5, v7, v6

    aput-object v10, v7, v4

    :goto_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_27
    const/4 v6, 0x0

    array-length v4, v7

    new-instance v5, Lad/m0;

    aget-object v8, v7, v6

    invoke-direct {v5}, Lad/m0;-><init>()V

    iput-object v8, v5, Lad/m0;->b:Ljava/lang/Object;

    move/from16 v8, p0

    invoke-static {v7, v8, v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    aget-object v5, v7, v6

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v5, v7, v8

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x2

    aget-object v5, v7, v9

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v2

    :goto_17
    array-length v6, v7

    if-ge v5, v6, :cond_29

    aget-object v6, v7, v5

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpb/a;

    :goto_18
    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v9

    if-nez v9, :cond_28

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lpb/a;

    invoke-static {v9, v8, v6}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v9

    if-lez v9, :cond_28

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpb/a;

    goto :goto_18

    :cond_28
    invoke-virtual {v4, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_29
    const/4 v6, 0x0

    aget-object v5, v7, v6

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    new-array v6, v5, [Lpb/a;

    const/4 v7, 0x0

    :goto_19
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v7, v8, :cond_2a

    invoke-virtual {v4, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpb/a;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_2a
    const/4 v7, 0x0

    aget-object v4, v6, v7

    add-int/lit8 v7, v5, -0x1

    aget-object v8, v6, v7

    invoke-static {v4, v8}, Ly4/s;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    const/4 v8, 0x0

    const/4 v10, 0x2

    :goto_1a
    add-int/lit8 v11, v5, -0x2

    if-gt v8, v11, :cond_31

    aget-object v11, v6, v8

    add-int/lit8 v8, v8, 0x1

    aget-object v12, v6, v8

    invoke-virtual {v11, v12}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    goto :goto_1c

    :cond_2b
    if-eqz v9, :cond_30

    invoke-static {v9, v11, v12}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v13

    if-eqz v13, :cond_2c

    goto :goto_1b

    :cond_2c
    iget-wide v13, v9, Lpb/a;->l:D

    iget-wide v1, v12, Lpb/a;->l:D

    cmpl-double v15, v13, v1

    if-eqz v15, :cond_2e

    move-wide/from16 p4, v1

    iget-wide v1, v11, Lpb/a;->l:D

    cmpg-double v15, v13, v1

    if-gtz v15, :cond_2d

    cmpg-double v15, v1, p4

    if-gtz v15, :cond_2d

    goto :goto_1c

    :cond_2d
    cmpg-double v15, p4, v1

    if-gtz v15, :cond_2e

    cmpg-double v1, v1, v13

    if-gtz v1, :cond_2e

    goto :goto_1c

    :cond_2e
    iget-wide v1, v9, Lpb/a;->m:D

    iget-wide v12, v12, Lpb/a;->m:D

    cmpl-double v14, v1, v12

    if-eqz v14, :cond_30

    iget-wide v14, v11, Lpb/a;->m:D

    cmpg-double v16, v1, v14

    if-gtz v16, :cond_2f

    cmpg-double v16, v14, v12

    if-gtz v16, :cond_2f

    goto :goto_1c

    :cond_2f
    cmpg-double v12, v12, v14

    if-gtz v12, :cond_30

    cmpg-double v1, v14, v1

    if-gtz v1, :cond_30

    goto :goto_1c

    :cond_30
    :goto_1b
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v11

    :goto_1c
    const/4 v1, 0x0

    const/4 v2, 0x3

    goto :goto_1a

    :cond_31
    aget-object v1, v6, v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lpb/a;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lpb/a;

    array-length v2, v1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_32

    const/4 v6, 0x0

    aget-object v2, v1, v6

    const/4 v8, 0x1

    aget-object v1, v1, v8

    filled-new-array {v2, v1}, [Lpb/a;

    move-result-object v1

    invoke-virtual {v3, v1}, Lpb/m;->a([Lpb/a;)Lpb/q;

    move-result-object v9

    goto :goto_1d

    :cond_32
    const/4 v6, 0x0

    invoke-virtual {v3, v1}, Lpb/m;->b([Lpb/a;)Lpb/s;

    move-result-object v1

    new-instance v9, Lpb/x;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2, v3}, Lpb/x;-><init>(Lpb/s;[Lpb/s;Lpb/m;)V

    :goto_1d
    instance-of v1, v9, Lpb/x;

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lhc/a;->a()V

    iget-object v0, v0, Lhc/a;->c:Lic/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v0, Lic/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1e
    if-ge v6, v3, :cond_33

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    check-cast v4, Lic/a;

    iget-object v5, v4, Lic/a;->b:Lic/c;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lic/a;->b()Lic/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_33
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/c;

    invoke-virtual {v0, v2}, Lic/b;->a(Lic/c;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iget-object v2, v2, Lic/c;->a:Lpb/a;

    iput-wide v3, v2, Lpb/a;->n:D

    goto :goto_1f

    :cond_35
    invoke-static {v0}, Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;->wrap(Lic/b;)Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/isochrone/algorithm/Triangulator$Result;

    invoke-interface {v0}, Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;->getEdges()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/graphhopper/isochrone/algorithm/Triangulator$Result;-><init>(Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;Ljava/util/Collection;)V

    return-object v1

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too few points found. Please try a different \'point\' or a larger \'time_limit\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "Too many nodes would be included in post processing ("

    const-string v3, "). Let us know if you need this increased."

    invoke-static {v1, v2, v3}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
