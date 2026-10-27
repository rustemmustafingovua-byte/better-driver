.class public final Lod/e2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Lorg/maplibre/android/maps/MapView;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/u0;

.field public final synthetic p:Lr0/u0;

.field public final synthetic q:Lr0/u0;


# direct methods
.method public constructor <init>(ZLorg/maplibre/android/maps/MapView;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 0

    iput-boolean p1, p0, Lod/e2;->l:Z

    iput-object p2, p0, Lod/e2;->m:Lorg/maplibre/android/maps/MapView;

    iput-object p3, p0, Lod/e2;->n:Lr0/u0;

    iput-object p4, p0, Lod/e2;->o:Lr0/u0;

    iput-object p5, p0, Lod/e2;->p:Lr0/u0;

    iput-object p6, p0, Lod/e2;->q:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 8

    new-instance v0, Lod/e2;

    iget-object v5, p0, Lod/e2;->p:Lr0/u0;

    iget-object v6, p0, Lod/e2;->q:Lr0/u0;

    iget-boolean v1, p0, Lod/e2;->l:Z

    iget-object v2, p0, Lod/e2;->m:Lorg/maplibre/android/maps/MapView;

    iget-object v3, p0, Lod/e2;->n:Lr0/u0;

    iget-object v4, p0, Lod/e2;->o:Lr0/u0;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lod/e2;-><init>(ZLorg/maplibre/android/maps/MapView;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/e2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/e2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/e2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    iget-object p1, p0, Lod/e2;->n:Lr0/u0;

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/a0;

    iget-object v0, v0, Lad/a0;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    sget-object v2, Lt8/z;->a:Lt8/z;

    iget-object v3, p0, Lod/e2;->o:Lr0/u0;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/a0;

    iget-boolean p0, p0, Lad/a0;->a:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    invoke-static {v3, p0}, Lod/g3;->A(Lr0/u0;Z)V

    return-object v2

    :cond_0
    new-instance p1, Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    invoke-direct {p1}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/Route;

    iget-object v1, v1, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/GeoPoint;

    new-instance v5, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v6, v4, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v8, v4, Lua/nav/routing/GeoPoint;->b:D

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-virtual {p1, v5}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->include(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds$Builder;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lod/g3;->A(Lr0/u0;Z)V

    iget-boolean v0, p0, Lod/e2;->l:Z

    const/16 v1, 0x258

    iget-object v3, p0, Lod/e2;->p:Lr0/u0;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lod/e2;->m:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3ee66666    # 0.45f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/16 v0, 0x3c

    add-int/2addr p0, v0

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->build()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p1

    invoke-static {p1, v0, v0, p0, v0}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;IIII)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p0

    invoke-virtual {v3, p0, v1}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    return-object v2

    :cond_3
    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLngBounds$Builder;->build()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object p1

    iget-object p0, p0, Lod/e2;->q:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    add-int/lit16 p0, p0, 0x104

    const/16 v3, 0x78

    const/16 v4, 0x12c

    invoke-static {p1, v3, v4, v3, p0}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;IIII)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    :cond_4
    return-object v2
.end method
