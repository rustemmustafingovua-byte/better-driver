.class public final Lod/a2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Landroid/content/Context;Lr0/u0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lod/a2;->l:I

    .line 1
    iput-object p1, p0, Lod/a2;->m:Lr0/u0;

    iput-object p2, p0, Lod/a2;->n:Lr0/u0;

    iput-object p3, p0, Lod/a2;->o:Lr0/u0;

    iput-object p4, p0, Lod/a2;->p:Lr0/u0;

    iput-object p5, p0, Lod/a2;->r:Ljava/lang/Object;

    iput-object p6, p0, Lod/a2;->q:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lua/nav/c;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lod/a2;->l:I

    .line 2
    iput-object p1, p0, Lod/a2;->r:Ljava/lang/Object;

    iput-object p2, p0, Lod/a2;->m:Lr0/u0;

    iput-object p3, p0, Lod/a2;->n:Lr0/u0;

    iput-object p4, p0, Lod/a2;->o:Lr0/u0;

    iput-object p5, p0, Lod/a2;->p:Lr0/u0;

    iput-object p6, p0, Lod/a2;->q:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 9

    iget p1, p0, Lod/a2;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lod/a2;

    iget-object p1, p0, Lod/a2;->r:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lua/nav/c;

    iget-object v5, p0, Lod/a2;->p:Lr0/u0;

    iget-object v6, p0, Lod/a2;->q:Lr0/u0;

    iget-object v2, p0, Lod/a2;->m:Lr0/u0;

    iget-object v3, p0, Lod/a2;->n:Lr0/u0;

    iget-object v4, p0, Lod/a2;->o:Lr0/u0;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lod/a2;-><init>(Lua/nav/c;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v0

    :pswitch_0
    move-object v7, p2

    new-instance v1, Lod/a2;

    iget-object p1, p0, Lod/a2;->r:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Landroid/content/Context;

    move-object v8, v7

    iget-object v7, p0, Lod/a2;->q:Lr0/u0;

    iget-object v2, p0, Lod/a2;->m:Lr0/u0;

    iget-object v3, p0, Lod/a2;->n:Lr0/u0;

    iget-object v4, p0, Lod/a2;->o:Lr0/u0;

    iget-object v5, p0, Lod/a2;->p:Lr0/u0;

    invoke-direct/range {v1 .. v8}, Lod/a2;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Landroid/content/Context;Lr0/u0;Ly8/c;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/a2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/a2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/a2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/a2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/a2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/a2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/a2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lod/a2;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/a2;->p:Lr0/u0;

    sget-object v4, Lt8/z;->a:Lt8/z;

    iget-object v5, v0, Lod/a2;->r:Ljava/lang/Object;

    check-cast v5, Lua/nav/c;

    iget-object v6, v0, Lod/a2;->n:Lr0/u0;

    sget-object v7, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v7, v0, Lod/a2;->m:Lr0/u0;

    sget-object v8, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v8, :cond_d

    iget-object v8, v0, Lod/a2;->o:Lr0/u0;

    invoke-interface {v8}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v5}, Lua/nav/c;->i()Lad/p1;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    iget-object v8, v8, Lad/p1;->a:Ldd/l0;

    goto :goto_0

    :cond_1
    move-object v8, v9

    :goto_0
    if-eqz v8, :cond_2

    new-instance v10, Lua/nav/routing/GeoPoint;

    iget-wide v11, v8, Ldd/l0;->d:D

    iget-wide v13, v8, Ldd/l0;->e:D

    invoke-direct {v10, v11, v12, v13, v14}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lua/nav/c;->E()Lua/nav/routing/GeoPoint;

    move-result-object v10

    if-nez v10, :cond_3

    goto/16 :goto_9

    :cond_3
    :goto_1
    iget-wide v11, v10, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v13, v10, Lua/nav/routing/GeoPoint;->a:D

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v10}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-static {v1}, Lod/g3;->z(Lr0/u0;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v0, v0, Lod/a2;->q:Lr0/u0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/a0;

    iget-boolean v0, v0, Lad/a0;->a:Z

    if-nez v0, :cond_6

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    const-wide/high16 v15, 0x402f000000000000L    # 15.5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_4

    const-wide/16 v17, 0x0

    iget-wide v2, v0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    goto :goto_2

    :cond_4
    const-wide/16 v17, 0x0

    move-wide v2, v15

    :goto_2
    cmpg-double v0, v2, v15

    if-gez v0, :cond_5

    move-wide v2, v15

    :cond_5
    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_7

    new-instance v7, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {v7, v13, v14, v11, v12}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-static {v7, v2, v3}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newLatLngZoom(Lorg/maplibre/android/geometry/LatLng;D)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/maplibre/android/maps/MapLibreMap;->moveCamera(Lorg/maplibre/android/camera/CameraUpdate;)V

    goto :goto_3

    :cond_6
    const-wide/16 v17, 0x0

    :cond_7
    :goto_3
    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v9, v0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    :cond_8
    iget-object v0, v5, Lua/nav/c;->c:Ldd/k0;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v13, v14}, Ljava/lang/Double;-><init>(D)V

    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, v11, v12}, Ljava/lang/Double;-><init>(D)V

    if-eqz v8, :cond_9

    const-string v7, "engine"

    :goto_4
    move-object/from16 v21, v7

    goto :goto_5

    :cond_9
    const-string v7, "cache"

    goto :goto_4

    :goto_5
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v7

    goto :goto_6

    :cond_a
    move-wide/from16 v7, v17

    :goto_6
    new-instance v10, Ljava/lang/Double;

    invoke-direct {v10, v7, v8}, Ljava/lang/Double;-><init>(D)V

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v7

    goto :goto_7

    :cond_b
    move-wide/from16 v7, v17

    :goto_7
    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, v7, v8}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-wide v6, v6, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    goto :goto_8

    :cond_c
    move-wide/from16 v6, v17

    :goto_8
    new-instance v8, Ljava/lang/Double;

    invoke-direct {v8, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Ljava/lang/Boolean;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v24, v8

    move-object/from16 v23, v9

    move-object/from16 v22, v10

    filled-new-array/range {v19 .. v25}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x7

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "map_start here=%.5f,%.5f src=%s camera=%.5f,%.5f zoom=%.1f follow=%s"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_d
    :goto_9
    return-object v4

    :pswitch_0
    const-wide/16 v17, 0x0

    iget-object v1, v0, Lod/a2;->p:Lr0/u0;

    sget-object v2, Lt8/z;->a:Lt8/z;

    sget-object v3, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v0, Lod/a2;->m:Lr0/u0;

    sget-object v4, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v3

    if-nez v3, :cond_e

    :goto_a
    goto :goto_b

    :cond_e
    iget-object v4, v0, Lod/a2;->n:Lr0/u0;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_a

    :cond_f
    iget-object v4, v0, Lod/a2;->o:Lr0/u0;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luc/c;

    const-string v5, "cameras_signals"

    invoke-virtual {v4, v5}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "cams-src"

    if-nez v4, :cond_11

    invoke-virtual {v3, v5}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-eqz v0, :cond_10

    sget-object v1, Lu8/r;->l:Lu8/r;

    invoke-static {v1}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_10
    :goto_b
    move-object/from16 v22, v2

    goto/16 :goto_16

    :cond_11
    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_a

    :cond_12
    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lua/nav/cameras/SpeedCamera;

    iget-object v8, v8, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_d

    :cond_13
    const/4 v9, 0x0

    :goto_d
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    invoke-static {v6}, Lu8/m;->b0(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    iget-object v6, v0, Lod/a2;->r:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Lod/g3;->i0(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/maplibre/android/maps/Style;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_19

    invoke-static {v8}, Lod/g3;->i0(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    const/16 v12, 0x22

    int-to-float v12, v12

    mul-float/2addr v12, v11

    float-to-int v12, v12

    const/16 v13, 0x2e

    int-to-float v13, v13

    mul-float/2addr v13, v11

    float-to-int v13, v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    const-string v15, "createBitmap(...)"

    invoke-static {v14, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/RectF;

    int-to-float v12, v12

    const v16, 0x3e4ccccd    # 0.2f

    mul-float v7, v12, v16

    const v16, 0x3f4ccccd    # 0.8f

    move-object/from16 v20, v1

    mul-float v1, v12, v16

    int-to-float v13, v13

    const v21, 0x3e99999a    # 0.3f

    move-object/from16 v22, v2

    mul-float v2, v13, v21

    move-object/from16 v21, v4

    const/4 v4, 0x0

    invoke-direct {v9, v7, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x3

    int-to-float v1, v1

    mul-float/2addr v1, v11

    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v7, -0x1000000

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v15, v9, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v12, v1

    const v9, 0x3e19999a    # 0.15f

    mul-float/2addr v9, v13

    const v11, 0x3db851ec    # 0.09f

    mul-float/2addr v11, v12

    move/from16 v23, v1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v15, v2, v9, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v1, 0x3f23d70a    # 0.64f

    mul-float/2addr v13, v1

    const v1, 0x3ef0a3d7    # 0.47f

    mul-float/2addr v12, v1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v15, v2, v13, v12, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v1, 0x3f6147ae    # 0.88f

    mul-float/2addr v1, v12

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v9, 0xd3

    const/16 v11, 0x2f

    invoke-static {v9, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v9, 0x3e75c28f    # 0.24f

    mul-float/2addr v9, v12

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v15, v2, v13, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-lez v8, :cond_17

    sget-object v1, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v1, v5

    int-to-double v4, v8

    const-wide v25, 0x3ff9bfdf7e8038a0L    # 1.609344

    div-double v4, v4, v25

    const/4 v9, 0x5

    move v11, v8

    int-to-double v7, v9

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ll9/a;->y(D)I

    move-result v4

    mul-int/2addr v4, v9

    if-ge v4, v9, :cond_15

    goto :goto_f

    :cond_15
    move v9, v4

    goto :goto_f

    :cond_16
    move-object v1, v5

    move v11, v8

    move v9, v11

    :goto_f
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_17
    move-object v1, v5

    move v11, v8

    const-string v4, "?"

    :goto_10
    new-instance v5, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v7, -0x1000000

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/16 v7, 0x64

    if-lt v11, v7, :cond_18

    mul-float v12, v12, v16

    goto :goto_11

    :cond_18
    const v7, 0x3f866666    # 1.05f

    mul-float/2addr v12, v7

    :goto_11
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    add-float/2addr v8, v7

    div-float v8, v8, v23

    sub-float/2addr v13, v8

    invoke-virtual {v15, v4, v2, v13, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3, v10, v14}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_12

    :cond_19
    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move-object/from16 v21, v4

    move-object v1, v5

    :goto_12
    move-object v5, v1

    move-object/from16 v1, v20

    move-object/from16 v4, v21

    move-object/from16 v2, v22

    const/16 v7, 0xa

    goto/16 :goto_e

    :cond_1a
    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move-object v1, v5

    invoke-virtual {v3, v1}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-eqz v1, :cond_1e

    invoke-interface/range {v20 .. v20}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v0, v0, Lod/a2;->q:Lr0/u0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lua/nav/cameras/SpeedCamera;

    iget-wide v6, v5, Lua/nav/cameras/SpeedCamera;->c:D

    iget-wide v8, v5, Lua/nav/cameras/SpeedCamera;->b:D

    invoke-static {v6, v7, v8, v9}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v6

    iget-object v7, v5, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_14

    :cond_1b
    const/4 v7, 0x0

    :goto_14
    invoke-static {v7}, Lod/g3;->i0(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "icon"

    invoke-virtual {v6, v8, v7}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "id"

    iget-object v8, v5, Lua/nav/cameras/SpeedCamera;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/google/gson/JsonArray;

    invoke-direct {v7}, Lcom/google/gson/JsonArray;-><init>()V

    iget-object v5, v5, Lua/nav/cameras/SpeedCamera;->i:Ljava/lang/Integer;

    if-eqz v5, :cond_1c

    const-string v8, "bearing"

    invoke-virtual {v6, v8, v5}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v8, v5

    sub-double/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4040000000000000L    # 32.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    goto :goto_15

    :cond_1c
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    const-wide/high16 v8, -0x3fe0000000000000L    # -8.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    :goto_15
    const-string v5, "off"

    invoke-virtual {v6, v5, v7}, Lorg/maplibre/geojson/Feature;->addProperty(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1d
    invoke-static {v0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v0

    const-string v2, "fromFeatures(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_1e
    :goto_16
    return-object v22

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
