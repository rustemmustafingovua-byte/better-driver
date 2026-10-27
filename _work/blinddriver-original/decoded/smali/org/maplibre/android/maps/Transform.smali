.class public Lorg/maplibre/android/maps/Transform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-Transform"


# instance fields
.field private cameraCancelableCallback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

.field private cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

.field private cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

.field private final handler:Landroid/os/Handler;

.field private final mapView:Lorg/maplibre/android/maps/MapView;

.field private final moveByChangeListener:Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;

.field private final nativeMap:Lorg/maplibre/android/maps/NativeMap;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/NativeMap;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/Transform;->handler:Landroid/os/Handler;

    new-instance v0, Lorg/maplibre/android/maps/Transform$1;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/Transform$1;-><init>(Lorg/maplibre/android/maps/Transform;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/Transform;->moveByChangeListener:Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;

    iput-object p1, p0, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    iput-object p2, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    iput-object p3, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/maps/Transform;)Lorg/maplibre/android/maps/CameraChangeDispatcher;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/maps/Transform;)Lorg/maplibre/android/maps/MapView;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    return-object p0
.end method

.method private isValidCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    invoke-virtual {p1, p0}, Lorg/maplibre/android/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public animateCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;ILorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 11

    invoke-interface {p2, p1}, Lorg/maplibre/android/camera/CameraUpdate;->getCameraPosition(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/Transform;->isValidCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object p2, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Lorg/maplibre/android/maps/Transform;->cameraCancelableCallback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    :cond_0
    iget-object p2, p0, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p2, p0}, Lorg/maplibre/android/maps/MapView;->addOnCameraDidChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    iget-object v1, p1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    iget-wide v2, p1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    iget-wide v4, p1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    iget-wide v6, p1, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    iget-object v8, p1, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    int-to-long v9, p3

    invoke-interface/range {v0 .. v10}, Lorg/maplibre/android/maps/NativeMap;->flyTo(Lorg/maplibre/android/geometry/LatLng;DDD[DJ)V

    return-void

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4}, Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;->onFinish()V

    :cond_2
    return-void
.end method

.method public cancelTransitions()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveCanceled()V

    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraCancelableCallback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/maplibre/android/maps/Transform;->cameraCancelableCallback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->handler:Landroid/os/Handler;

    new-instance v2, Lorg/maplibre/android/maps/Transform$4;

    invoke-direct {v2, p0, v0}, Lorg/maplibre/android/maps/Transform$4;-><init>(Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0}, Lorg/maplibre/android/maps/NativeMap;->cancelTransitions()V

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    return-void
.end method

.method public easeCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;IZLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 14

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-interface {v1, p1}, Lorg/maplibre/android/camera/CameraUpdate;->getCameraPosition(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/Transform;->isValidCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    if-eqz v2, :cond_0

    iput-object v2, p0, Lorg/maplibre/android/maps/Transform;->cameraCancelableCallback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    :cond_0
    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v1, p0}, Lorg/maplibre/android/maps/MapView;->addOnCameraDidChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;)V

    iget-object v2, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    iget-object v3, v0, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    iget-wide v4, v0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    iget-wide v6, v0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    iget-wide v8, v0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    iget-object v10, v0, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    move/from16 p0, p3

    int-to-long v11, p0

    move/from16 v13, p4

    invoke-interface/range {v2 .. v13}, Lorg/maplibre/android/maps/NativeMap;->easeTo(Lorg/maplibre/android/geometry/LatLng;DDD[DJZ)V

    return-void

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;->onFinish()V

    :cond_2
    return-void
.end method

.method public getBearing()D
    .locals 6

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getBearing()D

    move-result-wide v0

    neg-double v0, v0

    :goto_0
    const-wide v2, 0x4076800000000000L    # 360.0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    sub-double/2addr v0, v2

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v4, 0x0

    cmpg-double p0, v0, v4

    if-gez p0, :cond_1

    add-double/2addr v0, v2

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    return-object p0
.end method

.method public getCenterCoordinate()Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getLatLng()Lorg/maplibre/android/geometry/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public getLatLng()Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getLatLng()Lorg/maplibre/android/geometry/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public getMaxPitch()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getMaxPitch()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxZoom()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getMaxZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMinPitch()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getMinPitch()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMinZoom()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getMinZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRawBearing()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getBearing()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRawZoom()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTilt()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getPitch()D

    move-result-wide v0

    return-wide v0
.end method

.method public initialise(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 2

    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getCamera()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/maplibre/android/camera/CameraPosition;->DEFAULT:Lorg/maplibre/android/camera/CameraPosition;

    invoke-virtual {v0, v1}, Lorg/maplibre/android/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    :cond_0
    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getMinZoomPreference()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/maplibre/android/maps/Transform;->setMinZoom(D)V

    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getMaxZoomPreference()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/maplibre/android/maps/Transform;->setMaxZoom(D)V

    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getMinPitchPreference()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/maplibre/android/maps/Transform;->setMinPitch(D)V

    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getMaxPitchPreference()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/Transform;->setMaxPitch(D)V

    return-void
.end method

.method public invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/maplibre/android/maps/NativeMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/maplibre/android/camera/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove()V

    :cond_0
    iput-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->cameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    return-object p0
.end method

.method public moveBy(DDJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->moveByChangeListener:Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/MapView;->addOnCameraDidChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;)V

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface/range {p0 .. p6}, Lorg/maplibre/android/maps/NativeMap;->moveBy(DDJ)V

    return-void
.end method

.method public moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 10

    invoke-interface {p2, p1}, Lorg/maplibre/android/camera/CameraUpdate;->getCameraPosition(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/Transform;->isValidCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object p2, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    iget-object v1, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    iget-object v2, p1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    iget-wide v3, p1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    iget-wide v5, p1, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    iget-wide v7, p1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    iget-object v9, p1, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    invoke-interface/range {v1 .. v9}, Lorg/maplibre/android/maps/NativeMap;->jumpTo(Lorg/maplibre/android/geometry/LatLng;DDD[D)V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    iget-object p1, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    iget-object p1, p0, Lorg/maplibre/android/maps/Transform;->handler:Landroid/os/Handler;

    new-instance p2, Lorg/maplibre/android/maps/Transform$3;

    invoke-direct {p2, p0, p3}, Lorg/maplibre/android/maps/Transform$3;-><init>(Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;->onFinish()V

    :cond_1
    return-void
.end method

.method public onCameraDidChange(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    iget-object p1, p0, Lorg/maplibre/android/maps/Transform;->cameraCancelableCallback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/maplibre/android/maps/Transform;->cameraCancelableCallback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/maplibre/android/maps/Transform$2;

    invoke-direct {v1, p0, p1}, Lorg/maplibre/android/maps/Transform$2;-><init>(Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lorg/maplibre/android/maps/Transform;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    iget-object p1, p0, Lorg/maplibre/android/maps/Transform;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapView;->removeOnCameraDidChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;)V

    :cond_1
    return-void
.end method

.method public resetNorth()V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->resetNorth()V

    return-void
.end method

.method public setBearing(D)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, p2, v0, v1}, Lorg/maplibre/android/maps/NativeMap;->setBearing(DJ)V

    return-void
.end method

.method public setBearing(DFF)V
    .locals 9

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    float-to-double v3, p3

    float-to-double v5, p4

    const-wide/16 v7, 0x0

    move-wide v1, p1

    invoke-interface/range {v0 .. v8}, Lorg/maplibre/android/maps/NativeMap;->setBearing(DDDJ)V

    return-void
.end method

.method public setBearing(DFFJ)V
    .locals 9

    .line 3
    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    float-to-double v3, p3

    float-to-double v5, p4

    move-wide v1, p1

    move-wide v7, p5

    invoke-interface/range {v0 .. v8}, Lorg/maplibre/android/maps/NativeMap;->setBearing(DDDJ)V

    return-void
.end method

.method public setCenterCoordinate(Lorg/maplibre/android/geometry/LatLng;)V
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lorg/maplibre/android/maps/NativeMap;->setLatLng(Lorg/maplibre/android/geometry/LatLng;J)V

    return-void
.end method

.method public setGestureInProgress(Z)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/NativeMap;->setGestureInProgress(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    :cond_0
    return-void
.end method

.method public setMaxPitch(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->setMaxPitch(D)V

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Not setting maxPitchPreference, value is in unsupported range: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mbgl-Transform"

    invoke-static {p1, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMaxZoom(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x4039800000000000L    # 25.5

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->setMaxZoom(D)V

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Not setting maxZoomPreference, value is in unsupported range: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mbgl-Transform"

    invoke-static {p1, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMinPitch(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->setMinPitch(D)V

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Not setting minPitchPreference, value is in unsupported range: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mbgl-Transform"

    invoke-static {p1, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMinZoom(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x4039800000000000L    # 25.5

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->setMinZoom(D)V

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Not setting minZoomPreference, value is in unsupported range: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mbgl-Transform"

    invoke-static {p1, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTilt(Ljava/lang/Double;)V
    .locals 4

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-interface {p0, v0, v1, v2, v3}, Lorg/maplibre/android/maps/NativeMap;->setPitch(DJ)V

    return-void
.end method

.method public setZoom(DLandroid/graphics/PointF;)V
    .locals 6

    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    const-wide/16 v4, 0x0

    move-wide v1, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/maplibre/android/maps/NativeMap;->setZoom(DLandroid/graphics/PointF;J)V

    return-void
.end method

.method public zoomBy(DLandroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/Transform;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0}, Lorg/maplibre/android/maps/NativeMap;->getZoom()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-virtual {p0, v0, v1, p3}, Lorg/maplibre/android/maps/Transform;->setZoom(DLandroid/graphics/PointF;)V

    return-void
.end method
