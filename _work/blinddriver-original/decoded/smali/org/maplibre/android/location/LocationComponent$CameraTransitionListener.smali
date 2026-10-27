.class Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/location/OnLocationCameraTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraTransitionListener"
.end annotation


# instance fields
.field private final externalListener:Lorg/maplibre/android/location/OnLocationCameraTransitionListener;

.field final synthetic this$0:Lorg/maplibre/android/location/LocationComponent;


# direct methods
.method private constructor <init>(Lorg/maplibre/android/location/LocationComponent;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;->this$0:Lorg/maplibre/android/location/LocationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;->externalListener:Lorg/maplibre/android/location/OnLocationCameraTransitionListener;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/android/location/LocationComponent;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;-><init>(Lorg/maplibre/android/location/LocationComponent;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V

    return-void
.end method

.method private reset(I)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;->this$0:Lorg/maplibre/android/location/LocationComponent;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationComponent;->c(Lorg/maplibre/android/location/LocationComponent;)Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    move-result-object v0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;->this$0:Lorg/maplibre/android/location/LocationComponent;

    invoke-static {p0}, Lorg/maplibre/android/location/LocationComponent;->e(Lorg/maplibre/android/location/LocationComponent;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    const/16 v1, 0x24

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p0, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->resetAllCameraAnimations(Lorg/maplibre/android/camera/CameraPosition;Z)V

    return-void
.end method


# virtual methods
.method public onLocationCameraTransitionCanceled(I)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;->externalListener:Lorg/maplibre/android/location/OnLocationCameraTransitionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/maplibre/android/location/OnLocationCameraTransitionListener;->onLocationCameraTransitionCanceled(I)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;->reset(I)V

    return-void
.end method

.method public onLocationCameraTransitionFinished(I)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;->externalListener:Lorg/maplibre/android/location/OnLocationCameraTransitionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/maplibre/android/location/OnLocationCameraTransitionListener;->onLocationCameraTransitionFinished(I)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;->reset(I)V

    return-void
.end method
