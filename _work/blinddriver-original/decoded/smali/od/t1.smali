.class public final synthetic Lod/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/OnMapReadyCallback;


# instance fields
.field public final synthetic A:Lu9/t;

.field public final synthetic l:Lua/nav/c;

.field public final synthetic m:Li9/e;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Li9/c;

.field public final synthetic s:Lr0/u0;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lorg/maplibre/android/maps/MapView;

.field public final synthetic w:Lr0/u0;

.field public final synthetic x:Lf2/k2;

.field public final synthetic y:Lk1/l;

.field public final synthetic z:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lf2/k2;Li9/c;Li9/e;Lk1/l;Lorg/maplibre/android/maps/MapView;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lu9/t;Lua/nav/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p16

    iput-object v0, p0, Lod/t1;->l:Lua/nav/c;

    iput-object p3, p0, Lod/t1;->m:Li9/e;

    iput-object p6, p0, Lod/t1;->n:Lr0/u0;

    iput-object p7, p0, Lod/t1;->o:Lr0/u0;

    iput-object p8, p0, Lod/t1;->p:Lr0/u0;

    iput-object p9, p0, Lod/t1;->q:Lr0/u0;

    iput-object p2, p0, Lod/t1;->r:Li9/c;

    iput-object p10, p0, Lod/t1;->s:Lr0/u0;

    iput-object p11, p0, Lod/t1;->t:Lr0/u0;

    iput-object p12, p0, Lod/t1;->u:Lr0/u0;

    iput-object p5, p0, Lod/t1;->v:Lorg/maplibre/android/maps/MapView;

    iput-object p13, p0, Lod/t1;->w:Lr0/u0;

    iput-object p1, p0, Lod/t1;->x:Lf2/k2;

    iput-object p4, p0, Lod/t1;->y:Lk1/l;

    iput-object p14, p0, Lod/t1;->z:Lr0/u0;

    move-object/from16 p1, p15

    iput-object p1, p0, Lod/t1;->A:Lu9/t;

    return-void
.end method


# virtual methods
.method public final onMapReady(Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 13

    const-string v1, "m"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, p0, Lod/t1;->n:Lr0/u0;

    invoke-interface {v10, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lsc/i0;->S:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lod/t1;->l:Lua/nav/c;

    invoke-virtual {v3}, Lua/nav/c;->E()Lua/nav/routing/GeoPoint;

    move-result-object v1

    new-instance v2, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-direct {v2}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>()V

    if-eqz v1, :cond_0

    new-instance v5, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v6, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v8, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    goto :goto_0

    :cond_0
    sget-object v5, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    :goto_0
    invoke-virtual {v2, v5}, Lorg/maplibre/android/camera/CameraPosition$Builder;->target(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v2

    if-eqz v1, :cond_1

    const-wide/high16 v5, 0x402f000000000000L    # 15.5

    goto :goto_1

    :cond_1
    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    :goto_1
    invoke-virtual {v2, v5, v6}, Lorg/maplibre/android/camera/CameraPosition$Builder;->zoom(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/maplibre/android/maps/MapLibreMap;->setCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getUiSettings()Lorg/maplibre/android/maps/UiSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/maplibre/android/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getUiSettings()Lorg/maplibre/android/maps/UiSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/maplibre/android/maps/UiSettings;->setCompassEnabled(Z)V

    new-instance v1, Lod/q0;

    iget-object v2, p0, Lod/t1;->o:Lr0/u0;

    invoke-direct {v1, p1, v2}, Lod/q0;-><init>(Lorg/maplibre/android/maps/MapLibreMap;Lr0/u0;)V

    invoke-virtual {p1, v1}, Lorg/maplibre/android/maps/MapLibreMap;->addOnCameraMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;)V

    new-instance v1, Lod/r0;

    iget-object v2, p0, Lod/t1;->p:Lr0/u0;

    invoke-direct {v1, p1, v2}, Lod/r0;-><init>(Lorg/maplibre/android/maps/MapLibreMap;Lr0/u0;)V

    invoke-virtual {p1, v1}, Lorg/maplibre/android/maps/MapLibreMap;->addOnCameraIdleListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;)V

    new-instance v1, Lod/s0;

    move-object v11, v10

    iget-object v10, p0, Lod/t1;->q:Lr0/u0;

    invoke-direct {v1, v10}, Lod/s0;-><init>(Lr0/u0;)V

    invoke-virtual {p1, v1}, Lorg/maplibre/android/maps/MapLibreMap;->addOnCameraMoveStartedListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;)V

    new-instance v1, Lod/t0;

    iget-object v2, p0, Lod/t1;->r:Li9/c;

    iget-object v5, p0, Lod/t1;->s:Lr0/u0;

    iget-object v6, p0, Lod/t1;->t:Lr0/u0;

    iget-object v7, p0, Lod/t1;->u:Lr0/u0;

    iget-object v8, p0, Lod/t1;->v:Lorg/maplibre/android/maps/MapView;

    iget-object v9, p0, Lod/t1;->w:Lr0/u0;

    move-object v4, p1

    invoke-direct/range {v1 .. v9}, Lod/t0;-><init>(Li9/c;Lua/nav/c;Lorg/maplibre/android/maps/MapLibreMap;Lr0/u0;Lr0/u0;Lr0/u0;Lorg/maplibre/android/maps/MapView;Lr0/u0;)V

    invoke-virtual {p1, v1}, Lorg/maplibre/android/maps/MapLibreMap;->addOnMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V

    new-instance v1, Lod/u0;

    iget-object v2, p0, Lod/t1;->x:Lf2/k2;

    move-object v4, v3

    iget-object v3, p0, Lod/t1;->y:Lk1/l;

    move-object v9, v11

    iget-object v11, p0, Lod/t1;->z:Lr0/u0;

    iget-object v12, p0, Lod/t1;->A:Lu9/t;

    move-object v7, v6

    move-object v6, v5

    move-object v5, p1

    invoke-direct/range {v1 .. v12}, Lod/u0;-><init>(Lf2/k2;Lk1/l;Lua/nav/c;Lorg/maplibre/android/maps/MapLibreMap;Lr0/u0;Lr0/u0;Lorg/maplibre/android/maps/MapView;Lr0/u0;Lr0/u0;Lr0/u0;Lu9/t;)V

    invoke-virtual {p1, v1}, Lorg/maplibre/android/maps/MapLibreMap;->addOnMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lod/t1;->m:Li9/e;

    invoke-interface {v0, p1, v1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
