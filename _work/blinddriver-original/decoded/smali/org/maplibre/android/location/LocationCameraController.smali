.class final Lorg/maplibre/android/location/LocationCameraController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;
    }
.end annotation


# instance fields
.field private cameraMode:I

.field private final compassBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final gpsBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final initialGesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

.field private final internalCameraTrackingChangedListener:Lorg/maplibre/android/location/OnCameraTrackingChangedListener;

.field private final internalGesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

.field private isEnabled:Z

.field private isTransitioning:Z

.field private lastLocation:Lorg/maplibre/android/geometry/LatLng;

.field private final latLngValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private final maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

.field private final moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

.field private final onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

.field private onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

.field private onFlingListener:Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;

.field onMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;

.field private onRotateListener:Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;

.field private options:Lorg/maplibre/android/location/LocationComponentOptions;

.field private final paddingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "[D>;"
        }
    .end annotation
.end field

.field private final tiltValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final transform:Lorg/maplibre/android/maps/Transform;

.field private final zoomValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/location/OnCameraTrackingChangedListener;Lorg/maplibre/android/location/LocationComponentOptions;Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$2;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$2;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->latLngValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 3
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$3;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$3;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->gpsBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 4
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$4;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$4;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->compassBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 5
    new-instance v0, Lorg/maplibre/android/location/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/a;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->zoomValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 6
    new-instance v0, Lorg/maplibre/android/location/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/a;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->paddingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 7
    new-instance v0, Lorg/maplibre/android/location/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/a;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->tiltValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 8
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$5;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$5;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    .line 9
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$6;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$6;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->onMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;

    .line 10
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$7;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$7;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->onRotateListener:Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;

    .line 11
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$8;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$8;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->onFlingListener:Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;

    .line 12
    iput-object p2, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 13
    iput-object p3, p0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    .line 14
    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMap;->getGesturesManager()Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object p3

    iput-object p3, p0, Lorg/maplibre/android/location/LocationCameraController;->initialGesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    .line 15
    new-instance p3, Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;

    invoke-direct {p3, p0, p1}, Lorg/maplibre/android/location/LocationCameraController$LocationGesturesManager;-><init>(Lorg/maplibre/android/location/LocationCameraController;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/maplibre/android/location/LocationCameraController;->internalGesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    .line 16
    invoke-virtual {p3}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getMoveGestureDetector()Lorg/maplibre/android/gestures/MoveGestureDetector;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 17
    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->onRotateListener:Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;

    invoke-virtual {p2, p1}, Lorg/maplibre/android/maps/MapLibreMap;->addOnRotateListener(Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;)V

    .line 18
    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->onFlingListener:Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;

    invoke-virtual {p2, p1}, Lorg/maplibre/android/maps/MapLibreMap;->addOnFlingListener(Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;)V

    .line 19
    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->onMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;

    invoke-virtual {p2, p1}, Lorg/maplibre/android/maps/MapLibreMap;->addOnMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;)V

    .line 20
    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    invoke-virtual {p2, p1}, Lorg/maplibre/android/maps/MapLibreMap;->addOnCameraMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;)V

    .line 21
    iput-object p4, p0, Lorg/maplibre/android/location/LocationCameraController;->internalCameraTrackingChangedListener:Lorg/maplibre/android/location/OnCameraTrackingChangedListener;

    .line 22
    iput-object p6, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

    .line 23
    invoke-virtual {p0, p5}, Lorg/maplibre/android/location/LocationCameraController;->initializeOptions(Lorg/maplibre/android/location/LocationComponentOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/gestures/MoveGestureDetector;Lorg/maplibre/android/location/OnCameraTrackingChangedListener;Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;Lorg/maplibre/android/gestures/AndroidGesturesManager;Lorg/maplibre/android/gestures/AndroidGesturesManager;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$2;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$2;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->latLngValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 26
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$3;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$3;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->gpsBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 27
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$4;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$4;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->compassBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 28
    new-instance v0, Lorg/maplibre/android/location/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/a;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->zoomValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 29
    new-instance v0, Lorg/maplibre/android/location/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/a;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->paddingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 30
    new-instance v0, Lorg/maplibre/android/location/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/location/a;-><init>(Lorg/maplibre/android/location/LocationCameraController;I)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->tiltValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 31
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$5;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$5;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    .line 32
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$6;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$6;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->onMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;

    .line 33
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$7;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$7;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->onRotateListener:Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;

    .line 34
    new-instance v0, Lorg/maplibre/android/location/LocationCameraController$8;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationCameraController$8;-><init>(Lorg/maplibre/android/location/LocationCameraController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->onFlingListener:Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;

    .line 35
    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 36
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->addOnCameraMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;)V

    .line 37
    iput-object p2, p0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    .line 38
    iput-object p3, p0, Lorg/maplibre/android/location/LocationCameraController;->moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 39
    iput-object p4, p0, Lorg/maplibre/android/location/LocationCameraController;->internalCameraTrackingChangedListener:Lorg/maplibre/android/location/OnCameraTrackingChangedListener;

    .line 40
    iput-object p5, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

    .line 41
    iput-object p7, p0, Lorg/maplibre/android/location/LocationCameraController;->internalGesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    .line 42
    iput-object p6, p0, Lorg/maplibre/android/location/LocationCameraController;->initialGesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    return-void
.end method

.method public static synthetic a(Lorg/maplibre/android/location/LocationCameraController;[D)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->lambda$new$1([D)V

    return-void
.end method

.method private adjustGesturesThresholds()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingInitialMoveThreshold()F

    move-result p0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->setMoveThreshold(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->initialGesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/AndroidGesturesManager;->getMoveGestureDetector()Lorg/maplibre/android/gestures/MoveGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->getMoveThreshold()F

    move-result v0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController;->moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

    invoke-virtual {v1, v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->setMoveThreshold(F)V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->moveGestureDetector:Lorg/maplibre/android/gestures/MoveGestureDetector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/gestures/MoveGestureDetector;->setMoveThresholdRect(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lorg/maplibre/android/location/LocationCameraController;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->lambda$new$0(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic c(Lorg/maplibre/android/location/LocationCameraController;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->lambda$new$2(Ljava/lang/Float;)V

    return-void
.end method

.method public static bridge synthetic d(Lorg/maplibre/android/location/LocationCameraController;)I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    return p0
.end method

.method public static bridge synthetic e(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->lastLocation:Lorg/maplibre/android/geometry/LatLng;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/maps/MapLibreMap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/maplibre/android/location/LocationCameraController;)Lorg/maplibre/android/location/LocationComponentOptions;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    return-object p0
.end method

.method public static bridge synthetic h(Lorg/maplibre/android/location/LocationCameraController;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    return-void
.end method

.method public static bridge synthetic i(Lorg/maplibre/android/location/LocationCameraController;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->adjustGesturesThresholds()V

    return-void
.end method

.method private isBearingTracking()Z
    .locals 1

    iget p0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x22

    if-eq p0, v0, :cond_1

    const/16 v0, 0x24

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isLocationBearingTracking()Z
    .locals 1

    iget p0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    const/16 v0, 0x22

    if-eq p0, v0, :cond_1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isLocationTracking()Z
    .locals 1

    iget p0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x22

    if-eq p0, v0, :cond_1

    const/16 v0, 0x24

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic j(Lorg/maplibre/android/location/LocationCameraController;)Z
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->isBearingTracking()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic k(Lorg/maplibre/android/location/LocationCameraController;)Z
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lorg/maplibre/android/location/LocationCameraController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->setBearing(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Float;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->setZoom(F)V

    return-void
.end method

.method private synthetic lambda$new$1([D)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->setPadding([D)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Float;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->setTilt(F)V

    return-void
.end method

.method public static bridge synthetic m(Lorg/maplibre/android/location/LocationCameraController;Lorg/maplibre/android/geometry/LatLng;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->setLatLng(Lorg/maplibre/android/geometry/LatLng;)V

    return-void
.end method

.method private notifyCameraTrackingChangeListener(Z)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->internalCameraTrackingChangedListener:Lorg/maplibre/android/location/OnCameraTrackingChangedListener;

    iget v1, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    invoke-interface {v0, v1}, Lorg/maplibre/android/location/OnCameraTrackingChangedListener;->onCameraTrackingChanged(I)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getUiSettings()Lorg/maplibre/android/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/UiSettings;->setFocalPoint(Landroid/graphics/PointF;)V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->internalCameraTrackingChangedListener:Lorg/maplibre/android/location/OnCameraTrackingChangedListener;

    invoke-interface {p0}, Lorg/maplibre/android/location/OnCameraTrackingChangedListener;->onCameraTrackingDismissed()V

    :cond_0
    return-void
.end method

.method private setBearing(F)V
    .locals 4

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    float-to-double v2, p1

    invoke-static {v2, v3}, Lorg/maplibre/android/camera/CameraUpdateFactory;->bearingTo(D)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

    invoke-interface {p0}, Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;->onInvalidateCameraMove()V

    return-void
.end method

.method private setLatLng(Lorg/maplibre/android/geometry/LatLng;)V
    .locals 3

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->lastLocation:Lorg/maplibre/android/geometry/LatLng;

    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-static {p1}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newLatLng(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

    invoke-interface {p0}, Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;->onInvalidateCameraMove()V

    return-void
.end method

.method private setPadding([D)V
    .locals 3

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-static {p1}, Lorg/maplibre/android/camera/CameraUpdateFactory;->paddingTo([D)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

    invoke-interface {p0}, Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;->onInvalidateCameraMove()V

    return-void
.end method

.method private setTilt(F)V
    .locals 4

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    float-to-double v2, p1

    invoke-static {v2, v3}, Lorg/maplibre/android/camera/CameraUpdateFactory;->tiltTo(D)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

    invoke-interface {p0}, Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;->onInvalidateCameraMove()V

    return-void
.end method

.method private setZoom(F)V
    .locals 4

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    float-to-double v2, p1

    invoke-static {v2, v3}, Lorg/maplibre/android/camera/CameraUpdateFactory;->zoomTo(D)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

    invoke-interface {p0}, Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;->onInvalidateCameraMove()V

    return-void
.end method

.method private transitionToCurrentLocation(ZLandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V
    .locals 3

    if-nez p1, :cond_6

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationCameraController;->isEnabled:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    new-instance p1, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {p1, p2}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/location/Location;)V

    new-instance v0, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-direct {v0}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->target(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v0

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/camera/CameraPosition$Builder;->zoom(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    :cond_0
    if-eqz p7, :cond_1

    invoke-virtual {p7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/camera/CameraPosition$Builder;->tilt(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    invoke-virtual {v0, p5, p6}, Lorg/maplibre/android/camera/CameraPosition$Builder;->bearing(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationBearingTracking()Z

    move-result p5

    if-eqz p5, :cond_4

    iget p5, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    const/16 p6, 0x24

    if-ne p5, p6, :cond_3

    const-wide/16 p5, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result p2

    float-to-double p5, p2

    :goto_0
    invoke-virtual {v0, p5, p6}, Lorg/maplibre/android/camera/CameraPosition$Builder;->bearing(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p2

    invoke-static {p2}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p2

    new-instance p5, Lorg/maplibre/android/location/LocationCameraController$1;

    invoke-direct {p5, p0, p8}, Lorg/maplibre/android/location/LocationCameraController$1;-><init>(Lorg/maplibre/android/location/LocationCameraController;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V

    iget-object p6, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p6}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p6

    iget-object p7, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p7}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object p7

    iget-object p6, p6, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {p7, p6, p1}, Lorg/maplibre/android/location/Utils;->immediateAnimation(Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p1, p0, p2, p5}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void

    :cond_5
    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->transform:Lorg/maplibre/android/maps/Transform;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    long-to-int p3, p3

    invoke-virtual {p1, p0, p2, p3, p5}, Lorg/maplibre/android/maps/Transform;->animateCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;ILorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void

    :cond_6
    if-eqz p8, :cond_7

    iget p0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    invoke-interface {p8, p0}, Lorg/maplibre/android/location/OnLocationCameraTransitionListener;->onLocationCameraTransitionFinished(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public getAnimationListeners()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/maplibre/android/location/AnimatorListenerHolder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/maplibre/android/location/LocationCameraController;->latLngValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationBearingTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/maplibre/android/location/LocationCameraController;->gpsBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationCameraController;->isConsumingCompass()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/maplibre/android/location/LocationCameraController;->compassBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    const/4 v2, 0x7

    iget-object v3, p0, Lorg/maplibre/android/location/LocationCameraController;->zoomValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    const/16 v2, 0x8

    iget-object v3, p0, Lorg/maplibre/android/location/LocationCameraController;->tiltValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    const/16 v2, 0xa

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->paddingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, p0}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCameraMode()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    return p0
.end method

.method public initializeOptions(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 2

    iput-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingGesturesManagement()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getGesturesManager()Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object p1

    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController;->internalGesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p1, v1, v0, v0}, Lorg/maplibre/android/maps/MapLibreMap;->setGesturesManager(Lorg/maplibre/android/gestures/AndroidGesturesManager;ZZ)V

    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->adjustGesturesThresholds()V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getGesturesManager()Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object p1

    iget-object v1, p0, Lorg/maplibre/android/location/LocationCameraController;->initialGesturesManager:Lorg/maplibre/android/gestures/AndroidGesturesManager;

    if-eq p1, v1, :cond_2

    iget-object p0, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p0, v1, v0, v0}, Lorg/maplibre/android/maps/MapLibreMap;->setGesturesManager(Lorg/maplibre/android/gestures/AndroidGesturesManager;ZZ)V

    :cond_2
    return-void
.end method

.method public isConsumingCompass()Z
    .locals 1

    iget p0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isTransitioning()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning:Z

    return p0
.end method

.method public setCameraMode(I)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x2ee

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-virtual/range {v0 .. v8}, Lorg/maplibre/android/location/LocationCameraController;->setCameraMode(ILandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V

    return-void
.end method

.method public setCameraMode(ILandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V
    .locals 2

    .line 2
    iget v0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    if-ne v0, p1, :cond_1

    if-eqz p8, :cond_0

    .line 3
    invoke-interface {p8, p1}, Lorg/maplibre/android/location/OnLocationCameraTransitionListener;->onLocationCameraTransitionFinished(I)V

    :cond_0
    return-void

    :cond_1
    move v0, p1

    .line 4
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->isLocationTracking()Z

    move-result p1

    .line 5
    iput v0, p0, Lorg/maplibre/android/location/LocationCameraController;->cameraMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lorg/maplibre/android/location/LocationCameraController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->cancelTransitions()V

    .line 7
    :cond_2
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationCameraController;->adjustGesturesThresholds()V

    .line 8
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->notifyCameraTrackingChangeListener(Z)V

    .line 9
    invoke-direct/range {p0 .. p8}, Lorg/maplibre/android/location/LocationCameraController;->transitionToCurrentLocation(ZLandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationCameraController;->isEnabled:Z

    return-void
.end method
