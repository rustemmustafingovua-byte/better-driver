.class public final Lsc/z;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:D

.field public final synthetic n:D

.field public final synthetic o:D

.field public synthetic p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(DDDLy8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lsc/z;->l:I

    .line 1
    iput-wide p1, p0, Lsc/z;->m:D

    iput-wide p3, p0, Lsc/z;->n:D

    iput-wide p5, p0, Lsc/z;->o:D

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/maps/MapLibreMap;DDDLy8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lsc/z;->l:I

    .line 2
    iput-object p1, p0, Lsc/z;->p:Ljava/lang/Object;

    iput-wide p2, p0, Lsc/z;->m:D

    iput-wide p4, p0, Lsc/z;->n:D

    iput-wide p6, p0, Lsc/z;->o:D

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 10

    iget v0, p0, Lsc/z;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lsc/z;

    iget-object p1, p0, Lsc/z;->p:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lorg/maplibre/android/maps/MapLibreMap;

    iget-wide v5, p0, Lsc/z;->n:D

    iget-wide v7, p0, Lsc/z;->o:D

    iget-wide v3, p0, Lsc/z;->m:D

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lsc/z;-><init>(Lorg/maplibre/android/maps/MapLibreMap;DDDLy8/c;)V

    return-object v1

    :pswitch_0
    move-object v9, p2

    new-instance v2, Lsc/z;

    iget-wide v5, p0, Lsc/z;->n:D

    iget-wide v7, p0, Lsc/z;->o:D

    iget-wide v3, p0, Lsc/z;->m:D

    invoke-direct/range {v2 .. v9}, Lsc/z;-><init>(DDDLy8/c;)V

    iput-object p1, v2, Lsc/z;->p:Ljava/lang/Object;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lsc/z;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lsc/z;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/z;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/z;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lsc/z;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/z;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/z;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lsc/z;->l:I

    sget-object v2, Lu8/r;->l:Lu8/r;

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lod/x6;->a:Ljava/util/Set;

    iget-object v1, v0, Lsc/z;->p:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object v3

    new-instance v4, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v5, v0, Lsc/z;->m:D

    iget-wide v7, v0, Lsc/z;->n:D

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v3, v4}, Lorg/maplibre/android/maps/Projection;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v3

    const-string v4, "toScreenLocation(...)"

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lorg/maplibre/android/maps/Projection;->getMetersPerPixelAtLatitude(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-wide/16 v7, 0x0

    cmpl-double v4, v4, v7

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-wide v8, v0, Lsc/z;->o:D

    div-double/2addr v8, v6

    double-to-float v0, v8

    const/high16 v4, 0x44fa0000    # 2000.0f

    cmpl-float v6, v0, v4

    if-lez v6, :cond_1

    move v0, v4

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    new-instance v6, Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    sub-float v8, v7, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v9, v3, v0

    add-float/2addr v7, v0

    add-float/2addr v3, v0

    invoke-direct {v6, v8, v9, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Lorg/maplibre/android/maps/MapLibreMap;->queryRenderedFeatures(Landroid/graphics/RectF;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_1
    instance-of v1, v0, Lt8/l;

    if-eqz v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/maplibre/geojson/Feature;

    :try_start_1
    const-string v0, "class"

    invoke-virtual {v6, v0}, Lorg/maplibre/geojson/Feature;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_3
    instance-of v7, v0, Lt8/l;

    if-eqz v7, :cond_4

    const/4 v0, 0x0

    :cond_4
    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Lod/x6;->a:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_2
    const-string v0, "oneway"

    invoke-virtual {v6, v0}, Lorg/maplibre/geojson/Feature;->getNumberProperty(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :goto_4
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_5
    instance-of v8, v0, Lt8/l;

    if-eqz v8, :cond_7

    const/4 v0, 0x0

    :cond_7
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    :cond_8
    move v0, v4

    :goto_6
    invoke-virtual {v6}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v6

    instance-of v8, v6, Lorg/maplibre/geojson/LineString;

    const-string v9, "coordinates(...)"

    const/16 v10, 0xa

    if-eqz v8, :cond_a

    check-cast v6, Lorg/maplibre/geojson/LineString;

    invoke-virtual {v6}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6, v10}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/maplibre/geojson/Point;

    new-instance v10, Lua/nav/routing/GeoPoint;

    invoke-virtual {v9}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v11

    invoke-virtual {v9}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v13

    invoke-direct {v10, v11, v12, v13, v14}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    invoke-static {v8}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_a

    :cond_a
    instance-of v8, v6, Lorg/maplibre/geojson/MultiLineString;

    if-eqz v8, :cond_d

    check-cast v6, Lorg/maplibre/geojson/MultiLineString;

    invoke-virtual {v6}, Lorg/maplibre/geojson/MultiLineString;->coordinates()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6, v10}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/maplibre/geojson/Point;

    new-instance v13, Lua/nav/routing/GeoPoint;

    invoke-virtual {v12}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v14

    invoke-virtual {v12}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v4

    invoke-direct {v13, v14, v15, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_9

    :cond_b
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_8

    :cond_c
    move-object v6, v8

    goto :goto_a

    :cond_d
    move-object v6, v2

    :goto_a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x2

    if-lt v6, v8, :cond_e

    const/4 v6, -0x1

    if-ne v0, v6, :cond_f

    invoke-static {v5}, Lu8/m;->t0(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object v12, v6

    goto :goto_c

    :cond_f
    move-object v12, v5

    :goto_c
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v8, v6

    const/16 v6, 0x20

    shl-long/2addr v8, v6

    invoke-static {v5}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/GeoPoint;

    iget-wide v10, v6, Lua/nav/routing/GeoPoint;->a:D

    const-wide v13, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v13

    double-to-long v10, v10

    xor-long/2addr v8, v10

    invoke-static {v5}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lua/nav/routing/GeoPoint;

    iget-wide v5, v5, Lua/nav/routing/GeoPoint;->b:D

    mul-double/2addr v5, v13

    double-to-long v5, v5

    const/16 v10, 0xc

    shl-long/2addr v5, v10

    xor-long v9, v8, v5

    new-instance v8, Lid/a0;

    sget-object v5, Lid/f0;->Companion:Lid/e0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lid/e0;->a(Ljava/lang/String;)Lid/f0;

    move-result-object v11

    if-eqz v0, :cond_10

    const/4 v5, 0x1

    move v13, v5

    goto :goto_d

    :cond_10
    const/4 v13, 0x0

    :goto_d
    invoke-direct/range {v8 .. v13}, Lid/a0;-><init>(JLid/f0;Ljava/util/List;Z)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_12
    move-object v2, v1

    :cond_13
    return-object v2

    :pswitch_0
    iget-object v1, v0, Lsc/z;->p:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-wide v4, v0, Lsc/z;->m:D

    iget-wide v6, v0, Lsc/z;->n:D

    iget-wide v8, v0, Lsc/z;->o:D

    :try_start_3
    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->k()Lid/e;

    move-result-object v3

    invoke-virtual/range {v3 .. v9}, Lid/e;->c(DDD)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_e

    :catchall_3
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_e
    instance-of v1, v0, Lt8/l;

    if-eqz v1, :cond_14

    goto :goto_f

    :cond_14
    move-object v2, v0

    :goto_f
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
