.class Lorg/maplibre/android/location/LocationCameraController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/location/LocationCameraController;->transitionToCurrentLocation(ZLandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/location/LocationCameraController;

.field final synthetic val$internalTransitionListener:Lorg/maplibre/android/location/OnLocationCameraTransitionListener;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationCameraController;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$1;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    iput-object p2, p0, Lorg/maplibre/android/location/LocationCameraController$1;->val$internalTransitionListener:Lorg/maplibre/android/location/OnLocationCameraTransitionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$1;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->h(Lorg/maplibre/android/location/LocationCameraController;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$1;->val$internalTransitionListener:Lorg/maplibre/android/location/OnLocationCameraTransitionListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController$1;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {p0}, Lorg/maplibre/android/location/LocationCameraController;->d(Lorg/maplibre/android/location/LocationCameraController;)I

    move-result p0

    invoke-interface {v0, p0}, Lorg/maplibre/android/location/OnLocationCameraTransitionListener;->onLocationCameraTransitionCanceled(I)V

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$1;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationCameraController;->h(Lorg/maplibre/android/location/LocationCameraController;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController$1;->val$internalTransitionListener:Lorg/maplibre/android/location/OnLocationCameraTransitionListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController$1;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {p0}, Lorg/maplibre/android/location/LocationCameraController;->d(Lorg/maplibre/android/location/LocationCameraController;)I

    move-result p0

    invoke-interface {v0, p0}, Lorg/maplibre/android/location/OnLocationCameraTransitionListener;->onLocationCameraTransitionFinished(I)V

    :cond_0
    return-void
.end method
