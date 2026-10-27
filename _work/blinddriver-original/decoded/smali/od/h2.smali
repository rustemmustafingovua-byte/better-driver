.class public final Lod/h2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lr0/u0;

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Lr0/u0;


# direct methods
.method public constructor <init>(Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lod/h2;->l:Lr0/u0;

    iput-object p2, p0, Lod/h2;->m:Lr0/u0;

    iput-object p3, p0, Lod/h2;->n:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    new-instance p1, Lod/h2;

    iget-object v0, p0, Lod/h2;->m:Lr0/u0;

    iget-object v1, p0, Lod/h2;->n:Lr0/u0;

    iget-object p0, p0, Lod/h2;->l:Lr0/u0;

    invoke-direct {p1, p0, v0, v1, p2}, Lod/h2;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/h2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/h2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/h2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    iget-object p1, p0, Lod/h2;->l:Lr0/u0;

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lad/a0;

    iget-boolean p1, p1, Lad/a0;->a:Z

    sget-object v0, Lt8/z;->a:Lt8/z;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lod/h2;->m:Lr0/u0;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lod/h2;->n:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz p0, :cond_2

    new-instance v1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-direct {v1, p1}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Lorg/maplibre/android/camera/CameraPosition;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/maplibre/android/camera/CameraPosition$Builder;->bearing(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lorg/maplibre/android/camera/CameraPosition$Builder;->tilt(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v4 .. v12}, Lorg/maplibre/android/camera/CameraPosition$Builder;->padding(DDDD)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p1

    invoke-static {p1}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p1

    const/16 v1, 0x190

    invoke-virtual {p0, p1, v1}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    :cond_2
    :goto_0
    return-object v0
.end method
