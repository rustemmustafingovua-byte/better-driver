.class Lorg/maplibre/android/location/LocationCameraController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;


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

    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$7;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotate(Lorg/maplibre/android/gestures/RotateGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onRotateBegin(Lorg/maplibre/android/gestures/RotateGestureDetector;)V
    .locals 0

    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$7;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {p1}, Lorg/maplibre/android/location/LocationCameraController;->j(Lorg/maplibre/android/location/LocationCameraController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController$7;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->setCameraMode(I)V

    :cond_0
    return-void
.end method

.method public onRotateEnd(Lorg/maplibre/android/gestures/RotateGestureDetector;)V
    .locals 0

    return-void
.end method
