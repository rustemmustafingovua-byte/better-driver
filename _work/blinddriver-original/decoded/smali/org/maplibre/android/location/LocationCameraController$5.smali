.class Lorg/maplibre/android/location/LocationCameraController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/location/LocationCameraController;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationCameraController;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$5;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraMove()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$5;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->k(Lorg/maplibre/android/location/LocationCameraController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$5;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->e(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$5;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$5;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->f(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController$5;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v1}, Lorg/maplibre/android/location/LocationCameraController;->e(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/Projection;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController$5;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {p0}, Lorg/maplibre/android/location/LocationCameraController;->f(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getUiSettings()Lorg/maplibre/android/maps/UiSettings;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->setFocalPoint(Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method
