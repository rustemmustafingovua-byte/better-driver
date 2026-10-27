.class public final Lod/d2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lod/c0;Lr0/u0;Lr0/u0;Lr0/u0;ZLy8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lod/d2;->l:I

    .line 1
    iput-object p1, p0, Lod/d2;->q:Ljava/lang/Object;

    iput-object p2, p0, Lod/d2;->n:Lr0/u0;

    iput-object p3, p0, Lod/d2;->o:Lr0/u0;

    iput-object p4, p0, Lod/d2;->p:Lr0/u0;

    iput-boolean p5, p0, Lod/d2;->m:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(ZLr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lod/d2;->l:I

    .line 2
    iput-boolean p1, p0, Lod/d2;->m:Z

    iput-object p2, p0, Lod/d2;->n:Lr0/u0;

    iput-object p3, p0, Lod/d2;->o:Lr0/u0;

    iput-object p4, p0, Lod/d2;->p:Lr0/u0;

    iput-object p5, p0, Lod/d2;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 8

    iget p1, p0, Lod/d2;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lod/d2;

    iget-object p1, p0, Lod/d2;->q:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr0/u0;

    iget-boolean v1, p0, Lod/d2;->m:Z

    iget-object v2, p0, Lod/d2;->n:Lr0/u0;

    iget-object v3, p0, Lod/d2;->o:Lr0/u0;

    iget-object v4, p0, Lod/d2;->p:Lr0/u0;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lod/d2;-><init>(ZLr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v0

    :pswitch_0
    move-object v6, p2

    new-instance v1, Lod/d2;

    iget-object p1, p0, Lod/d2;->q:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lod/c0;

    iget-object v5, p0, Lod/d2;->p:Lr0/u0;

    move-object v7, v6

    iget-boolean v6, p0, Lod/d2;->m:Z

    iget-object v3, p0, Lod/d2;->n:Lr0/u0;

    iget-object v4, p0, Lod/d2;->o:Lr0/u0;

    invoke-direct/range {v1 .. v7}, Lod/d2;-><init>(Lod/c0;Lr0/u0;Lr0/u0;Lr0/u0;ZLy8/c;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/d2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/d2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/d2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/d2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/d2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/d2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/d2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lod/d2;->l:I

    iget-boolean v2, v0, Lod/d2;->m:Z

    iget-object v3, v0, Lod/d2;->o:Lr0/u0;

    iget-object v4, v0, Lod/d2;->n:Lr0/u0;

    sget-object v5, Lt8/z;->a:Lt8/z;

    iget-object v6, v0, Lod/d2;->p:Lr0/u0;

    iget-object v0, v0, Lod/d2;->q:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lr0/u0;

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget-boolean v1, v1, Lad/a0;->a:Z

    if-nez v1, :cond_4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/n;

    iget-object v1, v1, Ldd/n;->c:Ldd/l0;

    if-nez v1, :cond_1

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/n;

    iget-object v1, v1, Ldd/n;->d:Ldd/l0;

    :cond_1
    const/16 v2, 0x1f4

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_4

    new-instance v3, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v6, v1, Ldd/l0;->d:D

    iget-wide v8, v1, Ldd/l0;->e:D

    invoke-direct {v3, v6, v7, v8, v9}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-static {v3}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newLatLng(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->e()Ldd/i;

    move-result-object v1

    invoke-virtual {v1}, Ldd/i;->b()Lid/h1;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_4

    new-instance v3, Lorg/maplibre/android/geometry/LatLng;

    iget-object v1, v1, Lid/h1;->a:Lua/nav/routing/GeoPoint;

    iget-wide v6, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v8, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-direct {v3, v6, v7, v8, v9}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-static {v3}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newLatLng(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    :cond_4
    :goto_0
    return-object v5

    :pswitch_0
    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v1

    if-nez v1, :cond_6

    goto/16 :goto_8

    :cond_6
    check-cast v0, Lod/c0;

    const/4 v3, -0x1

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/a0;

    iget-wide v9, v4, Lad/a0;->c:D

    iget-object v4, v0, Lod/c0;->d:[I

    iget-object v6, v0, Lod/c0;->c:[D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    iget-object v12, v0, Lod/c0;->b:[D

    array-length v13, v12

    invoke-virtual {v0}, Lod/c0;->a()I

    move-result v14

    if-eqz v14, :cond_d

    cmpg-double v14, v9, v7

    if-gtz v14, :cond_7

    goto/16 :goto_4

    :cond_7
    const/4 v3, 0x1

    sub-int/2addr v13, v3

    aget-wide v14, v12, v13

    cmpl-double v14, v9, v14

    if-ltz v14, :cond_8

    invoke-virtual {v0}, Lod/c0;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lt8/j;

    invoke-direct {v3, v0, v11}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_8
    invoke-static {v12, v9, v10}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v11

    if-ltz v11, :cond_9

    goto :goto_1

    :cond_9
    neg-int v11, v11

    sub-int/2addr v11, v3

    :goto_1
    invoke-static {v11, v3, v13}, Lg6/c1;->f(III)I

    move-result v11

    aget-wide v13, v12, v11

    add-int/lit8 v15, v11, -0x1

    aget-wide v16, v12, v15

    sub-double v13, v13, v16

    cmpl-double v12, v13, v7

    if-lez v12, :cond_a

    sub-double v9, v9, v16

    div-double/2addr v9, v13

    move-wide/from16 v20, v9

    goto :goto_2

    :cond_a
    move-wide/from16 v20, v7

    :goto_2
    aget-wide v18, v6, v15

    aget-wide v16, v6, v11

    move-wide/from16 v22, v18

    invoke-static/range {v16 .. v23}, Lm/a;->b(DDDD)D

    move-result-wide v9

    invoke-static {v4, v15}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    if-ltz v11, :cond_b

    goto :goto_3

    :cond_b
    neg-int v11, v11

    add-int/lit8 v11, v11, -0x2

    :goto_3
    invoke-virtual {v0}, Lod/c0;->a()I

    move-result v0

    sub-int/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v11, v3, v0}, Lg6/c1;->f(III)I

    move-result v0

    aget v3, v4, v0

    aget-wide v11, v6, v3

    add-int/lit8 v3, v0, 0x1

    aget v3, v4, v3

    aget-wide v3, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    cmpl-double v6, v3, v11

    if-lez v6, :cond_c

    sub-double/2addr v9, v11

    sub-double/2addr v3, v11

    div-double v11, v9, v3

    const-wide/16 v13, 0x0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v11 .. v16}, Lg6/c1;->d(DDD)D

    move-result-wide v7

    :cond_c
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-instance v4, Lt8/j;

    invoke-direct {v4, v0, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lt8/j;

    invoke-direct {v3, v0, v11}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v7, v8}, Ljava/lang/Double;-><init>(D)V

    new-instance v4, Lt8/j;

    invoke-direct {v4, v0, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    move-object v3, v4

    :goto_6
    iget-object v0, v3, Lt8/j;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v3, v3, Lt8/j;->m:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-string v6, "route-done"

    invoke-virtual {v1, v6}, Lorg/maplibre/android/maps/Style;->getLayerAs(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v6

    check-cast v6, Lorg/maplibre/android/style/layers/LineLayer;

    const-string v7, "i"

    if-eqz v6, :cond_10

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v9}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/maplibre/android/style/expressions/Expression;->lt(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/maplibre/android/style/layers/LineLayer;->setFilter(Lorg/maplibre/android/style/expressions/Expression;)V

    if-eqz v2, :cond_f

    const-string v8, "#A8A298"

    goto :goto_7

    :cond_f
    const-string v8, "#B4B8BF"

    :goto_7
    invoke-static {v8}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    filled-new-array {v8}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    :cond_10
    const-string v6, "route-done-g"

    invoke-virtual {v1, v6}, Lorg/maplibre/android/maps/Style;->getLayerAs(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/layers/LineLayer;

    if-eqz v1, :cond_11

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/layers/LineLayer;->setFilter(Lorg/maplibre/android/style/expressions/Expression;)V

    invoke-static {v3, v4, v2}, Lod/g3;->l0(DZ)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineGradient(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    filled-new-array {v0}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    :cond_11
    :goto_8
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
