.class Lorg/maplibre/android/location/LocationCameraController$2;
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
        "Lorg/maplibre/android/geometry/LatLng;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/location/LocationCameraController;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationCameraController;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController$2;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNewAnimationValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationCameraController$2;->onNewAnimationValue(Lorg/maplibre/android/geometry/LatLng;)V

    return-void
.end method

.method public onNewAnimationValue(Lorg/maplibre/android/geometry/LatLng;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController$2;->this$0:Lorg/maplibre/android/location/LocationCameraController;

    invoke-static {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->m(Lorg/maplibre/android/location/LocationCameraController;Lorg/maplibre/android/geometry/LatLng;)V

    return-void
.end method
