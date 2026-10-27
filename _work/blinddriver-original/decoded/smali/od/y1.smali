.class public final Lod/y1;
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


# direct methods
.method public synthetic constructor <init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V
    .locals 0

    iput p6, p0, Lod/y1;->l:I

    iput-object p1, p0, Lod/y1;->m:Lr0/u0;

    iput-object p2, p0, Lod/y1;->n:Lr0/u0;

    iput-object p3, p0, Lod/y1;->o:Lr0/u0;

    iput-object p4, p0, Lod/y1;->p:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 8

    iget p1, p0, Lod/y1;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lod/y1;

    iget-object v4, p0, Lod/y1;->p:Lr0/u0;

    const/4 v6, 0x2

    iget-object v1, p0, Lod/y1;->m:Lr0/u0;

    iget-object v2, p0, Lod/y1;->n:Lr0/u0;

    iget-object v3, p0, Lod/y1;->o:Lr0/u0;

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lod/y1;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V

    return-object v0

    :pswitch_0
    move-object v6, p2

    new-instance v1, Lod/y1;

    iget-object v5, p0, Lod/y1;->p:Lr0/u0;

    const/4 v7, 0x1

    iget-object v2, p0, Lod/y1;->m:Lr0/u0;

    iget-object v3, p0, Lod/y1;->n:Lr0/u0;

    iget-object v4, p0, Lod/y1;->o:Lr0/u0;

    invoke-direct/range {v1 .. v7}, Lod/y1;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V

    return-object v1

    :pswitch_1
    move-object v6, p2

    new-instance v1, Lod/y1;

    iget-object v5, p0, Lod/y1;->p:Lr0/u0;

    const/4 v7, 0x0

    iget-object v2, p0, Lod/y1;->m:Lr0/u0;

    iget-object v3, p0, Lod/y1;->n:Lr0/u0;

    iget-object v4, p0, Lod/y1;->o:Lr0/u0;

    invoke-direct/range {v1 .. v7}, Lod/y1;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/y1;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lod/y1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/y1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/y1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lod/y1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/y1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/y1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lod/y1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/y1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/y1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lod/y1;->l:I

    const-string v2, "fromFeatures(...)"

    iget-object v3, v0, Lod/y1;->o:Lr0/u0;

    iget-object v4, v0, Lod/y1;->n:Lr0/u0;

    iget-object v5, v0, Lod/y1;->m:Lr0/u0;

    sget-object v6, Lt8/z;->a:Lt8/z;

    iget-object v0, v0, Lod/y1;->p:Lr0/u0;

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v4, "cell-zone-src"

    invoke-virtual {v1, v4}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd/g;

    sget-object v4, Lu8/r;->l:Lu8/r;

    if-nez v3, :cond_2

    invoke-static {v4}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    goto/16 :goto_5

    :cond_2
    iget-object v5, v3, Ldd/g;->a:Ldd/c;

    iget-wide v9, v5, Ldd/c;->c:D

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldd/n;

    iget-object v11, v11, Ldd/n;->c:Ldd/l0;

    if-nez v11, :cond_3

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd/n;

    iget-object v11, v0, Ldd/n;->d:Ldd/l0;

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v14, v3, Ldd/g;->c:J

    sub-long/2addr v12, v14

    const-wide/32 v14, 0x927c0

    cmp-long v0, v12, v14

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v11, :cond_6

    sget-object v3, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v12, v11, Ldd/l0;->d:D

    iget-wide v14, v11, Ldd/l0;->e:D

    iget-wide v7, v5, Ldd/c;->a:D

    move-wide/from16 v16, v12

    iget-wide v11, v5, Ldd/c;->b:D

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v18, v11

    move-wide/from16 v12, v16

    move-wide/from16 v16, v7

    invoke-static/range {v12 .. v19}, Ldd/s0;->a(DDDD)D

    move-result-wide v7

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v11

    const/4 v3, 0x2

    int-to-double v11, v3

    mul-double/2addr v11, v9

    const-wide/high16 v13, 0x402e000000000000L    # 15.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    cmpl-double v3, v7, v11

    if-lez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v0, :cond_9

    if-nez v3, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-wide v3, v5, Ldd/c;->a:D

    iget-wide v7, v5, Ldd/c;->b:D

    new-instance v0, Lo9/d;

    const/16 v5, 0x48

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v0, v12, v5, v11}, Lo9/b;-><init>(III)V

    new-instance v5, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v0, v11}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    move-object v11, v0

    check-cast v11, Lo9/c;

    iget-boolean v12, v11, Lo9/c;->n:Z

    if-eqz v12, :cond_8

    invoke-virtual {v11}, Lo9/c;->nextInt()I

    move-result v11

    int-to-double v11, v11

    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    const-wide v17, 0x405bd47ae147ae14L    # 111.32

    mul-double v15, v15, v17

    div-double/2addr v13, v15

    add-double/2addr v13, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    const-wide v15, 0x405ba28f5c28f5c3L    # 110.54

    div-double/2addr v11, v15

    add-double/2addr v11, v3

    invoke-static {v13, v14, v11, v12}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-static {v5}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/geojson/Polygon;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/Polygon;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v0

    invoke-static {v7, v8, v3, v4}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v3

    filled-new-array {v0, v3}, [Lorg/maplibre/geojson/Feature;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v0

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    goto :goto_5

    :cond_9
    :goto_4
    invoke-static {v4}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_a
    :goto_5
    return-object v6

    :pswitch_0
    const/4 v12, 0x0

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_7

    :cond_b
    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v4, "points-src"

    invoke-virtual {v1, v4}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-eqz v1, :cond_10

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsc/q0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/a0;

    iget-boolean v0, v0, Lad/a0;->a:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v3, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    iget-object v7, v3, Lsc/q0;->g:Lsc/d;

    iget-object v8, v3, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    const-string v9, "label"

    if-eqz v5, :cond_c

    sget-object v10, Lsc/d;->l:Lsc/d;

    if-eq v7, v10, :cond_c

    if-nez v0, :cond_c

    iget-wide v10, v5, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v13, v5, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v10, v11, v13, v14}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v5

    invoke-static {v5}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v5

    const-string v10, "A"

    invoke-virtual {v5, v9, v10}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-nez v0, :cond_e

    iget-object v0, v3, Lsc/q0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v12, 0x1

    if-ltz v12, :cond_d

    check-cast v3, Lua/nav/routing/GeoPoint;

    iget-wide v10, v3, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v12, v3, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v10, v11, v12, v13}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v5

    goto :goto_6

    :cond_d
    invoke-static {}, Lg5/f;->P()V

    const/4 v0, 0x0

    throw v0

    :cond_e
    if-eqz v8, :cond_f

    sget-object v0, Lsc/d;->m:Lsc/d;

    if-eq v7, v0, :cond_f

    iget-wide v10, v8, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v7, v8, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v10, v11, v7, v8}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v0

    const-string v3, "B"

    invoke-virtual {v0, v9, v3}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {v4}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v0

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_10
    :goto_7
    return-object v6

    :pswitch_1
    const/4 v11, 0x1

    const/4 v12, 0x0

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_b

    :cond_11
    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_b

    :cond_12
    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsc/q0;

    iget-object v0, v0, Lsc/q0;->g:Lsc/d;

    if-nez v0, :cond_13

    move v7, v11

    goto :goto_8

    :cond_13
    move v7, v12

    :goto_8
    const-string v0, "building-3d"

    invoke-virtual {v1, v0}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v0

    const-string v2, "none"

    const-string v3, "visible"

    if-eqz v0, :cond_15

    if-eqz v7, :cond_14

    move-object v4, v3

    goto :goto_9

    :cond_14
    move-object v4, v2

    :goto_9
    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->visibility(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    filled-new-array {v4}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    :cond_15
    const-string v0, "building-outline-layer"

    invoke-virtual {v1, v0}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v0

    if-eqz v0, :cond_17

    if-eqz v7, :cond_16

    goto :goto_a

    :cond_16
    move-object v2, v3

    :goto_a
    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->visibility(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    filled-new-array {v1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    :cond_17
    :goto_b
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
