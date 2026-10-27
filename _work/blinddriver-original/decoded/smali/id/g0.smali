.class public final synthetic Lid/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/index/LocationIndex$Visitor;


# instance fields
.field public final synthetic l:Ljava/util/HashSet;

.field public final synthetic m:Lid/l0;

.field public final synthetic n:Lua/nav/routing/GeoPoint;

.field public final synthetic o:D

.field public final synthetic p:D

.field public final synthetic q:Ljava/lang/Double;

.field public final synthetic r:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;Lid/l0;Lua/nav/routing/GeoPoint;DDLjava/lang/Double;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/g0;->l:Ljava/util/HashSet;

    iput-object p2, p0, Lid/g0;->m:Lid/l0;

    iput-object p3, p0, Lid/g0;->n:Lua/nav/routing/GeoPoint;

    iput-wide p4, p0, Lid/g0;->o:D

    iput-wide p6, p0, Lid/g0;->p:D

    iput-object p8, p0, Lid/g0;->q:Ljava/lang/Double;

    iput-object p9, p0, Lid/g0;->r:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onEdge(I)V
    .locals 50

    move-object/from16 v0, p0

    move/from16 v2, p1

    iget-object v8, v0, Lid/g0;->n:Lua/nav/routing/GeoPoint;

    iget-wide v9, v8, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, v0, Lid/g0;->l:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v11, v0, Lid/g0;->m:Lid/l0;

    iget-object v1, v11, Lid/l0;->a:Lcom/graphhopper/storage/BaseGraph;

    iget-object v3, v11, Lid/l0;->b:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    const/high16 v4, -0x80000000

    invoke-virtual {v1, v2, v4}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v1

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    new-instance v6, Lt8/j;

    invoke-direct {v6, v4, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Lt8/j;

    invoke-direct {v3, v4, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, v3}, [Lt8/j;

    move-result-object v1

    invoke-static {v1}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt8/j;

    iget-object v3, v1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v1, v1, Lt8/j;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v11, v2, v3}, Lid/l0;->a(II)Lid/i0;

    move-result-object v1

    iget-object v4, v1, Lid/i0;->c:[D

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    const-wide v13, 0x40fb2d8000000000L    # 111320.0

    mul-double/2addr v5, v13

    array-length v7, v4

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v15, 0x0

    const/16 v17, 0x1

    move/from16 v2, v17

    move-wide/from16 v17, v15

    :goto_1
    if-ge v2, v7, :cond_3

    move/from16 v19, v2

    iget-object v2, v1, Lid/i0;->b:[D

    add-int/lit8 v20, v19, -0x1

    aget-wide v21, v2, v20

    move-object/from16 v24, v2

    move/from16 v23, v3

    iget-wide v2, v8, Lua/nav/routing/GeoPoint;->b:D

    sub-double v21, v21, v2

    mul-double v21, v21, v5

    move-wide/from16 v25, v2

    iget-object v2, v1, Lid/i0;->a:[D

    aget-wide v27, v2, v20

    sub-double v27, v27, v9

    const-wide v29, 0x40fafcc000000000L    # 110540.0

    mul-double v27, v27, v29

    aget-wide v31, v24, v19

    sub-double v31, v31, v25

    mul-double v31, v31, v5

    aget-wide v2, v2, v19

    sub-double/2addr v2, v9

    mul-double v2, v2, v29

    move-object/from16 v24, v1

    move-wide/from16 v25, v2

    sub-double v1, v31, v21

    move-object/from16 v29, v4

    sub-double v3, v25, v27

    mul-double v25, v1, v1

    mul-double v30, v3, v3

    add-double v30, v30, v25

    const-wide v25, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v25, v30, v25

    if-ltz v25, :cond_1

    mul-double v25, v21, v1

    mul-double v32, v27, v3

    move-wide/from16 v34, v5

    add-double v5, v32, v25

    neg-double v5, v5

    div-double v36, v5, v30

    const-wide/16 v38, 0x0

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v36 .. v41}, Lg6/c1;->d(DDD)D

    move-result-wide v46

    mul-double v5, v46, v1

    add-double v5, v5, v21

    mul-double v21, v46, v3

    move/from16 v26, v7

    move-object/from16 v25, v8

    add-double v7, v21, v27

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    cmpg-double v7, v5, v13

    if-gez v7, :cond_2

    aget-wide v44, v29, v20

    aget-wide v42, v29, v19

    move-wide/from16 v48, v44

    invoke-static/range {v42 .. v49}, Lm/a;->b(DDDD)D

    move-result-wide v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const/16 v3, 0x168

    int-to-double v3, v3

    add-double/2addr v1, v3

    rem-double/2addr v1, v3

    move-wide/from16 v17, v1

    move-wide v13, v5

    move-wide v15, v7

    goto :goto_2

    :cond_1
    move-wide/from16 v34, v5

    move/from16 v26, v7

    move-object/from16 v25, v8

    :cond_2
    :goto_2
    add-int/lit8 v2, v19, 0x1

    move/from16 v3, v23

    move-object/from16 v1, v24

    move-object/from16 v8, v25

    move/from16 v7, v26

    move-object/from16 v4, v29

    move-wide/from16 v5, v34

    goto/16 :goto_1

    :cond_3
    move/from16 v23, v3

    move-object/from16 v25, v8

    iget-wide v1, v0, Lid/g0;->o:D

    cmpl-double v1, v13, v1

    if-gtz v1, :cond_5

    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    iget-wide v3, v0, Lid/g0;->p:D

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    neg-double v3, v13

    mul-double/2addr v3, v13

    const/4 v5, 0x2

    int-to-double v5, v5

    mul-double/2addr v5, v1

    mul-double/2addr v5, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    iget-object v3, v0, Lid/g0;->q:Ljava/lang/Double;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double v17, v17, v3

    const-wide v3, 0x4076800000000000L    # 360.0

    rem-double v17, v17, v3

    const-wide v5, 0x4080e00000000000L    # 540.0

    add-double v17, v17, v5

    rem-double v17, v17, v3

    const-wide v3, 0x4066800000000000L    # 180.0

    sub-double v17, v17, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    neg-double v5, v3

    mul-double/2addr v5, v3

    const-wide v3, 0x40a3240000000000L    # 2450.0

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    add-double/2addr v3, v5

    mul-double/2addr v1, v3

    :cond_4
    move-wide v6, v1

    new-instance v1, Lid/k0;

    move/from16 v2, p1

    move-wide v4, v15

    move/from16 v3, v23

    invoke-direct/range {v1 .. v7}, Lid/k0;-><init>(IIDD)V

    iget-object v2, v0, Lid/g0;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move/from16 v2, p1

    move-object/from16 v8, v25

    goto/16 :goto_0

    :cond_6
    move/from16 v2, p1

    goto/16 :goto_0

    :cond_7
    :goto_3
    return-void
.end method
