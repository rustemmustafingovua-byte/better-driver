.class Lorg/maplibre/android/location/LocationCameraController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/location/LocationCameraController;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationCameraController;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$3;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewAnimationValue(Ljava/lang/Float;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$3;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->d(Lorg/maplibre/android/location/LocationCameraController;)I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$3;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->f(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    iget-wide v0, v0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController$3;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->l(Lorg/maplibre/android/location/LocationCameraController;F)V

    return-void
.end method

.method public bridge synthetic onNewAnimationValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationCameraController$3;->onNewAnimationValue(Ljava/lang/Float;)V

    return-void
.end method
