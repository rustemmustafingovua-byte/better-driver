.class public final synthetic Lod/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;


# instance fields
.field public final synthetic a:Li9/c;

.field public final synthetic b:Lua/nav/c;

.field public final synthetic c:Lorg/maplibre/android/maps/MapLibreMap;

.field public final synthetic d:Lr0/u0;

.field public final synthetic e:Lr0/u0;

.field public final synthetic f:Lr0/u0;

.field public final synthetic g:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Li9/c;Lua/nav/c;Lorg/maplibre/android/maps/MapLibreMap;Lr0/u0;Lr0/u0;Lr0/u0;Lorg/maplibre/android/maps/MapView;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/t0;->a:Li9/c;

    iput-object p2, p0, Lod/t0;->b:Lua/nav/c;

    iput-object p3, p0, Lod/t0;->c:Lorg/maplibre/android/maps/MapLibreMap;

    iput-object p4, p0, Lod/t0;->d:Lr0/u0;

    iput-object p5, p0, Lod/t0;->e:Lr0/u0;

    iput-object p6, p0, Lod/t0;->f:Lr0/u0;

    iput-object p8, p0, Lod/t0;->g:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final onMapLongClick(Lorg/maplibre/android/geometry/LatLng;)Z
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "ll"

    invoke-static {v2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lod/t0;->d:Lr0/u0;

    invoke-static {v0}, Lod/g3;->u(Lr0/u0;)V

    iget-object v0, v1, Lod/t0;->e:Lr0/u0;

    invoke-static {v0}, Lod/g3;->v(Lr0/u0;)V

    iget-object v0, v1, Lod/t0;->f:Lr0/u0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, v1, Lod/t0;->a:Li9/c;

    invoke-interface {v3, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, v1, Lod/t0;->b:Lua/nav/c;

    iget-object v0, v3, Lua/nav/c;->r:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsc/q0;

    iget-object v0, v0, Lsc/q0;->g:Lsc/d;

    if-nez v0, :cond_9

    iget-object v0, v3, Lua/nav/c;->d:Lad/j0;

    iget-object v0, v0, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/a0;

    iget-boolean v0, v0, Lad/a0;->a:Z

    if-nez v0, :cond_9

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object v0

    iget-object v0, v0, Lua/nav/update/a;->e:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqd/q;

    iget-object v0, v0, Lqd/q;->a:Lqd/o;

    sget-object v4, Lqd/o;->n:Lqd/o;

    if-ne v0, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, v1, Lod/t0;->c:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/maplibre/android/maps/Projection;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v4

    const-string v5, "toScreenLocation(...)"

    invoke-static {v4, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "points-layer"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/maplibre/android/maps/MapLibreMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v4, "queryRenderedFeatures(...)"

    invoke-static {v0, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/geojson/Feature;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    const-string v5, "label"

    invoke-virtual {v0, v5}, Lorg/maplibre/geojson/Feature;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {v0}, Lsc/d;->valueOf(Ljava/lang/String;)Lsc/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_0
    instance-of v5, v0, Lt8/l;

    if-eqz v5, :cond_2

    move-object v0, v4

    :cond_2
    check-cast v0, Lsc/d;

    goto :goto_1

    :cond_3
    move-object v0, v4

    :goto_1
    sget-object v5, Lsc/d;->l:Lsc/d;

    if-eq v0, v5, :cond_8

    sget-object v5, Lsc/d;->m:Lsc/d;

    if-ne v0, v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lua/nav/routing/GeoPoint;

    invoke-virtual {v2}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v2}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v1

    invoke-direct {v0, v5, v6, v1, v2}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    iget-object v2, v3, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsc/q0;

    iget-object v5, v1, Lsc/q0;->f:Lsc/d;

    sget-object v1, Lsc/d;->n:Lsc/d;

    if-ne v5, v1, :cond_5

    invoke-virtual {v3, v0}, Lua/nav/c;->g(Lua/nav/routing/GeoPoint;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v5, v0, v4}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lsc/q0;

    sget-object v1, Lsc/d;->l:Lsc/d;

    if-ne v5, v1, :cond_7

    sget-object v1, Lsc/d;->m:Lsc/d;

    :cond_7
    move-object v12, v1

    const/16 v22, 0x0

    const v23, 0xffdf

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v6 .. v23}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v1, v1, Lod/t0;->g:Lr0/u0;

    invoke-interface {v1, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_9
    :goto_3
    const/4 v0, 0x1

    return v0
.end method
