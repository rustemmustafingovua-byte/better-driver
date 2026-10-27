.class Lorg/maplibre/android/maps/MapView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/MapView;->createCompassAnimationListener(Lorg/maplibre/android/maps/CameraChangeDispatcher;)Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/MapView;

.field final synthetic val$cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView$2;->this$0:Lorg/maplibre/android/maps/MapView;

    iput-object p2, p0, Lorg/maplibre/android/maps/MapView$2;->val$cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompassAnimation()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$2;->val$cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove()V

    return-void
.end method

.method public onCompassAnimationFinished()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$2;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->b(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/widgets/CompassView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView$2;->this$0:Lorg/maplibre/android/maps/MapView;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView;->b(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/widgets/CompassView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/widgets/CompassView;->isAnimating(Z)V

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView$2;->val$cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    return-void
.end method
