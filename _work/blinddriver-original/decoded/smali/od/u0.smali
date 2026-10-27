.class public final synthetic Lod/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;


# instance fields
.field public final synthetic a:Lf2/k2;

.field public final synthetic b:Lk1/l;

.field public final synthetic c:Lua/nav/c;

.field public final synthetic d:Lorg/maplibre/android/maps/MapLibreMap;

.field public final synthetic e:Lr0/u0;

.field public final synthetic f:Lr0/u0;

.field public final synthetic g:Lr0/u0;

.field public final synthetic h:Lr0/u0;

.field public final synthetic i:Lr0/u0;

.field public final synthetic j:Lu9/t;


# direct methods
.method public synthetic constructor <init>(Lf2/k2;Lk1/l;Lua/nav/c;Lorg/maplibre/android/maps/MapLibreMap;Lr0/u0;Lr0/u0;Lorg/maplibre/android/maps/MapView;Lr0/u0;Lr0/u0;Lr0/u0;Lu9/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/u0;->a:Lf2/k2;

    iput-object p2, p0, Lod/u0;->b:Lk1/l;

    iput-object p3, p0, Lod/u0;->c:Lua/nav/c;

    iput-object p4, p0, Lod/u0;->d:Lorg/maplibre/android/maps/MapLibreMap;

    iput-object p5, p0, Lod/u0;->e:Lr0/u0;

    iput-object p6, p0, Lod/u0;->f:Lr0/u0;

    iput-object p8, p0, Lod/u0;->g:Lr0/u0;

    iput-object p9, p0, Lod/u0;->h:Lr0/u0;

    iput-object p10, p0, Lod/u0;->i:Lr0/u0;

    iput-object p11, p0, Lod/u0;->j:Lu9/t;

    return-void
.end method


# virtual methods
.method public final onMapClick(Lorg/maplibre/android/geometry/LatLng;)Z
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ll"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lod/u0;->a:Lf2/k2;

    if-eqz v2, :cond_0

    check-cast v2, Lf2/n1;

    invoke-virtual {v2}, Lf2/n1;->a()V

    :cond_0
    iget-object v2, v1, Lod/u0;->b:Lk1/l;

    check-cast v2, Lk1/o;

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lk1/o;->b(IZZ)Z

    iget-object v2, v1, Lod/u0;->e:Lr0/u0;

    invoke-static {v2}, Lod/g3;->u(Lr0/u0;)V

    iget-object v2, v1, Lod/u0;->f:Lr0/u0;

    invoke-static {v2}, Lod/g3;->v(Lr0/u0;)V

    iget-object v6, v1, Lod/u0;->c:Lua/nav/c;

    iget-object v2, v6, Lua/nav/c;->r:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsc/q0;

    iget-object v3, v3, Lsc/q0;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v6}, Lua/nav/c;->l()V

    :cond_1
    iget-object v3, v1, Lod/u0;->d:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v3}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/maplibre/android/maps/Projection;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v7

    const-string v0, "toScreenLocation(...)"

    invoke-static {v7, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points-layer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Lorg/maplibre/android/maps/MapLibreMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v8, "queryRenderedFeatures(...)"

    invoke-static {v0, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/maplibre/geojson/Feature;

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    const-string v0, "label"

    invoke-virtual {v9, v0}, Lorg/maplibre/geojson/Feature;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_2
    move-object v11, v10

    :goto_0
    if-eqz v11, :cond_4

    :try_start_0
    invoke-static {v11}, Lsc/d;->valueOf(Ljava/lang/String;)Lsc/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_1
    instance-of v12, v0, Lt8/l;

    if-eqz v12, :cond_3

    move-object v0, v10

    :cond_3
    check-cast v0, Lsc/d;

    goto :goto_2

    :cond_4
    move-object v0, v10

    :goto_2
    if-eqz v11, :cond_5

    invoke-static {v11}, Lr9/r;->U(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_3

    :cond_5
    move-object v11, v10

    :goto_3
    if-nez v9, :cond_6

    const-string v9, "places-layer"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Lorg/maplibre/android/maps/MapLibreMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/maplibre/geojson/Feature;

    goto :goto_4

    :cond_6
    move-object v3, v10

    :goto_4
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsc/q0;

    iget-object v7, v7, Lsc/q0;->g:Lsc/d;

    if-nez v7, :cond_13

    iget-object v7, v6, Lua/nav/c;->d:Lad/j0;

    iget-object v7, v7, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lad/a0;

    iget-boolean v7, v7, Lad/a0;->a:Z

    if-nez v7, :cond_13

    sget-object v7, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object v7

    iget-object v7, v7, Lua/nav/update/a;->e:Lx9/l0;

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lqd/q;

    iget-object v7, v7, Lqd/q;->a:Lqd/o;

    sget-object v8, Lqd/o;->n:Lqd/o;

    if-ne v7, v8, :cond_7

    goto/16 :goto_8

    :cond_7
    iget-object v9, v1, Lod/u0;->g:Lr0/u0;

    iget-object v8, v1, Lod/u0;->h:Lr0/u0;

    if-eqz v0, :cond_d

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/maplibre/android/maps/MapLibreMap;

    sget-object v4, Lsc/d;->l:Lsc/d;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsc/q0;

    if-ne v0, v4, :cond_8

    iget-object v2, v2, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    goto :goto_5

    :cond_8
    iget-object v2, v2, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    :goto_5
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v4}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lod/u0;->i:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v4

    iget-wide v7, v4, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_9
    new-instance v1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-virtual {v3}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Lorg/maplibre/android/camera/CameraPosition;)V

    new-instance v4, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v7, v2, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v9, v2, Lua/nav/routing/GeoPoint;->b:D

    invoke-direct {v4, v7, v8, v9, v10}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v1, v4}, Lorg/maplibre/android/camera/CameraPosition$Builder;->target(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/maplibre/android/camera/CameraPosition$Builder;->tilt(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v9

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v9 .. v17}, Lorg/maplibre/android/camera/CameraPosition$Builder;->padding(DDDD)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v3, v1, v2}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    :cond_a
    iget-object v2, v6, Lua/nav/c;->q:Lx9/l0;

    :goto_6
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lsc/q0;

    const/16 v28, 0x0

    const v29, 0xffbf

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v12 .. v29}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_7
    move v4, v5

    goto/16 :goto_8

    :cond_c
    move-object/from16 v0, v19

    goto :goto_6

    :cond_d
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v6, v0}, Lua/nav/c;->M(I)V

    goto :goto_7

    :cond_e
    if-eqz v3, :cond_13

    const-string v0, "kind"

    invoke-virtual {v3, v0}, Lorg/maplibre/geojson/Feature;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "home"

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v0, Lsc/e;->l:Lsc/e;

    invoke-virtual {v6, v0}, Lua/nav/c;->X(Lsc/e;)Z

    goto :goto_7

    :cond_f
    const-string v2, "work"

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lsc/e;->m:Lsc/e;

    invoke-virtual {v6, v0}, Lua/nav/c;->X(Lsc/e;)Z

    goto :goto_7

    :cond_10
    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/maplibre/geojson/Feature;->getNumberProperty(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v0, v6, Lua/nav/c;->i:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lua/nav/routing/SavedAddress;

    iget-wide v11, v7, Lua/nav/routing/SavedAddress;->a:J

    cmp-long v7, v11, v2

    if-nez v7, :cond_11

    move-object v10, v4

    :cond_12
    check-cast v10, Lua/nav/routing/SavedAddress;

    if-eqz v10, :cond_b

    invoke-virtual {v6, v10}, Lua/nav/c;->I(Lua/nav/routing/SavedAddress;)Lsc/d;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v11, v10, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    const/4 v12, 0x1

    iget-object v7, v1, Lod/u0;->j:Lu9/t;

    move-object v10, v0

    invoke-static/range {v6 .. v12}, Lod/g3;->g(Lua/nav/c;Lu9/t;Lr0/u0;Lr0/u0;Lsc/d;Lua/nav/routing/GeoPoint;Z)V

    goto :goto_7

    :cond_13
    :goto_8
    return v4
.end method
