.class final Lorg/maplibre/android/location/LocationAnimatorCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-LocationAnimatorCoordinator"


# instance fields
.field private accuracyAnimationEnabled:Z

.field final animatorArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/maplibre/android/location/MapLibreAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final animatorProvider:Lorg/maplibre/android/location/MapLibreAnimatorProvider;

.field private final animatorSetProvider:Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;

.field private compassAnimationEnabled:Z

.field private durationMultiplier:F

.field final listeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationUpdateTimestamp:J

.field maxAnimationFps:I

.field private previousAccuracyRadius:F

.field private previousCompassBearing:F

.field private previousLocation:Landroid/location/Location;

.field private final projection:Lorg/maplibre/android/maps/Projection;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;Lorg/maplibre/android/location/MapLibreAnimatorProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    iput v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    const v0, 0x7fffffff

    iput v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->maxAnimationFps:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    iput-object p1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->projection:Lorg/maplibre/android/maps/Projection;

    iput-object p3, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorProvider:Lorg/maplibre/android/location/MapLibreAnimatorProvider;

    iput-object p2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorSetProvider:Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;

    return-void
.end method

.method private cancelAnimator(I)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/location/MapLibreAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_0
    return-void
.end method

.method private checkGpsNorth(ZF)F
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p2
.end method

.method private createNewCameraAdapterAnimator(I[Ljava/lang/Float;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorProvider:Lorg/maplibre/android/location/MapLibreAnimatorProvider;

    invoke-virtual {p0, p2, v0, p3}, Lorg/maplibre/android/location/MapLibreAnimatorProvider;->cameraAnimator([Ljava/lang/Float;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)Lorg/maplibre/android/location/MapLibreCameraAnimatorAdapter;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private createNewFloatAnimator(IFF)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(I[Ljava/lang/Float;)V

    return-void
.end method

.method private createNewFloatAnimator(I[Ljava/lang/Float;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 3
    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    iget-object v2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorProvider:Lorg/maplibre/android/location/MapLibreAnimatorProvider;

    iget p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->maxAnimationFps:I

    invoke-virtual {v2, p2, v0, p0}, Lorg/maplibre/android/location/MapLibreAnimatorProvider;->floatAnimator([Ljava/lang/Float;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)Lorg/maplibre/android/location/MapLibreFloatAnimator;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private createNewLatLngAnimator(ILorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)V
    .locals 0

    .line 1
    filled-new-array {p2, p3}, [Lorg/maplibre/android/geometry/LatLng;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(I[Lorg/maplibre/android/geometry/LatLng;)V

    return-void
.end method

.method private createNewLatLngAnimator(I[Lorg/maplibre/android/geometry/LatLng;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    .line 3
    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    iget-object v2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorProvider:Lorg/maplibre/android/location/MapLibreAnimatorProvider;

    iget p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->maxAnimationFps:I

    invoke-virtual {v2, p2, v0, p0}, Lorg/maplibre/android/location/MapLibreAnimatorProvider;->latLngAnimator([Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)Lorg/maplibre/android/location/MapLibreLatLngAnimator;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private createNewPaddingAnimator(I[[DLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorProvider:Lorg/maplibre/android/location/MapLibreAnimatorProvider;

    invoke-virtual {p0, p2, v0, p3}, Lorg/maplibre/android/location/MapLibreAnimatorProvider;->paddingAnimator([[DLorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)Lorg/maplibre/android/location/MapLibrePaddingAnimator;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private getBearingValues(Ljava/lang/Float;[Landroid/location/Location;)[Ljava/lang/Float;
    .locals 3

    array-length p0, p2

    const/4 v0, 0x1

    add-int/2addr p0, v0

    new-array v1, p0, [Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lorg/maplibre/android/location/Utils;->normalize(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    :goto_0
    if-ge v0, p0, :cond_0

    add-int/lit8 p1, v0, -0x1

    aget-object v2, p2, p1

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v2, p1}, Lorg/maplibre/android/location/Utils;->shortestRotation(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getLatLngValues(Lorg/maplibre/android/geometry/LatLng;[Landroid/location/Location;)[Lorg/maplibre/android/geometry/LatLng;
    .locals 3

    array-length p0, p2

    const/4 v0, 0x1

    add-int/2addr p0, v0

    new-array v1, p0, [Lorg/maplibre/android/geometry/LatLng;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    :goto_0
    if-ge v0, p0, :cond_0

    new-instance p1, Lorg/maplibre/android/geometry/LatLng;

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p2, v2

    invoke-direct {p1, v2}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/location/Location;)V

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getPreviousAccuracyRadius()F
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    return p0
.end method

.method private getPreviousLayerCompassBearing()F
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    return p0
.end method

.method private getPreviousLayerGpsBearing()F
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result p0

    return p0
.end method

.method private getPreviousLayerLatLng()Lorg/maplibre/android/geometry/LatLng;
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/geometry/LatLng;

    return-object p0

    :cond_0
    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    invoke-direct {v0, p0}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/location/Location;)V

    return-object v0
.end method

.method private varargs playAnimators(J[I)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p3, v2

    iget-object v4, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorSetProvider:Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0, p3, p1, p2}, Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;->startAnimation(Ljava/util/List;Landroid/view/animation/Interpolator;J)V

    return-void
.end method

.method private playPulsingAnimator()V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method private resetCameraCompassAnimation(Lorg/maplibre/android/camera/CameraPosition;)V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/maplibre/android/location/MapLibreAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-wide v2, p1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    double-to-float p1, v2

    invoke-static {v0, p1}, Lorg/maplibre/android/location/Utils;->shortestRotation(FF)F

    move-result v0

    invoke-direct {p0, v1, p1, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    return-void
.end method

.method private resetCameraGpsBearingAnimation(Lorg/maplibre/android/camera/CameraPosition;Z)V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/maplibre/android/location/MapLibreAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->checkGpsNorth(ZF)F

    move-result p2

    iget-wide v2, p1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    double-to-float p1, v2

    invoke-static {p2, p1}, Lorg/maplibre/android/location/Utils;->shortestRotation(FF)F

    move-result p2

    invoke-direct {p0, v1, p1, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    return-void
.end method

.method private resetCameraLatLngAnimation(Lorg/maplibre/android/camera/CameraPosition;)Z
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreLatLngAnimator;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lorg/maplibre/android/location/MapLibreAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/geometry/LatLng;

    iget-object p1, p1, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, v1, p1, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(ILorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->projection:Lorg/maplibre/android/maps/Projection;

    invoke-static {p0, p1, v0}, Lorg/maplibre/android/location/Utils;->immediateAnimation(Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)Z

    move-result p0

    return p0
.end method

.method private resetCameraLocationAnimations(Lorg/maplibre/android/camera/CameraPosition;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->resetCameraGpsBearingAnimation(Lorg/maplibre/android/camera/CameraPosition;Z)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->resetCameraLatLngAnimation(Lorg/maplibre/android/camera/CameraPosition;)Z

    move-result p0

    return p0
.end method

.method private updateAccuracyAnimators(FF)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p2, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    return-void
.end method

.method private updateCameraAnimators([Lorg/maplibre/android/geometry/LatLng;[Ljava/lang/Float;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(I[Lorg/maplibre/android/geometry/LatLng;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(I[Ljava/lang/Float;)V

    return-void
.end method

.method private updateCompassAnimators(FFF)V
    .locals 2

    invoke-static {p1, p2}, Lorg/maplibre/android/location/Utils;->shortestRotation(FF)F

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, p2, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    invoke-static {p1, p3}, Lorg/maplibre/android/location/Utils;->shortestRotation(FF)F

    move-result p1

    const/4 p2, 0x5

    invoke-direct {p0, p2, p3, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    return-void
.end method

.method private updateLayerAnimators([Lorg/maplibre/android/geometry/LatLng;[Ljava/lang/Float;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(I[Lorg/maplibre/android/geometry/LatLng;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(I[Ljava/lang/Float;)V

    return-void
.end method

.method private updatePaddingAnimator([D[DLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 1

    const/16 v0, 0xa

    filled-new-array {p2, p1}, [[D

    move-result-object p1

    invoke-direct {p0, v0, p1, p3}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewPaddingAnimator(I[[DLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method private updateTiltAnimator(FFLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Float;

    move-result-object p1

    const/16 p2, 0x8

    invoke-direct {p0, p2, p1, p3}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewCameraAdapterAnimator(I[Ljava/lang/Float;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method private updateZoomAnimator(FFLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x7

    invoke-direct {p0, p2, p1, p3}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewCameraAdapterAnimator(I[Ljava/lang/Float;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method


# virtual methods
.method public cancelAllAnimations()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancelAndRemoveGpsBearingAnimation()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public cancelPaddingAnimation()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    return-void
.end method

.method public cancelTiltAnimation()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    return-void
.end method

.method public cancelZoomAnimation()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    return-void
.end method

.method public feedNewAccuracyRadius(FZ)V
    .locals 2

    iget v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput p1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->getPreviousAccuracyRadius()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->updateAccuracyAnimators(FF)V

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->accuracyAnimationEnabled:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0xfa

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    const/4 p2, 0x6

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, v0, v1, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    iput p1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    return-void
.end method

.method public feedNewCompassBearing(FLorg/maplibre/android/camera/CameraPosition;)V
    .locals 3

    iget v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iput p1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->getPreviousLayerCompassBearing()F

    move-result v0

    iget-wide v1, p2, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    double-to-float p2, v1

    invoke-direct {p0, p1, v0, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->updateCompassAnimators(FFF)V

    iget-boolean p2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->compassAnimationEnabled:Z

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    const/4 p2, 0x3

    const/4 v2, 0x5

    filled-new-array {p2, v2}, [I

    move-result-object p2

    invoke-direct {p0, v0, v1, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    iput p1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousCompassBearing:F

    return-void
.end method

.method public feedNewLocation(Landroid/location/Location;Lorg/maplibre/android/camera/CameraPosition;Z)V
    .locals 1

    .line 1
    filled-new-array {p1}, [Landroid/location/Location;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->feedNewLocation([Landroid/location/Location;Lorg/maplibre/android/camera/CameraPosition;ZZ)V

    return-void
.end method

.method public feedNewLocation([Landroid/location/Location;Lorg/maplibre/android/camera/CameraPosition;ZZ)V
    .locals 9

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    .line 3
    iget-object v2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    if-nez v2, :cond_0

    .line 4
    iput-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2ee

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    .line 6
    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->getPreviousLayerLatLng()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v2

    .line 7
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->getPreviousLayerGpsBearing()F

    move-result v3

    .line 8
    iget-object v4, p2, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 9
    iget-wide v5, p2, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    double-to-float p2, v5

    invoke-static {p2}, Lorg/maplibre/android/location/Utils;->normalize(F)F

    move-result p2

    if-nez v4, :cond_1

    move-object v4, v2

    .line 10
    :cond_1
    invoke-direct {p0, v2, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->getLatLngValues(Lorg/maplibre/android/geometry/LatLng;[Landroid/location/Location;)[Lorg/maplibre/android/geometry/LatLng;

    move-result-object v5

    .line 11
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->getBearingValues(Ljava/lang/Float;[Landroid/location/Location;)[Ljava/lang/Float;

    move-result-object v3

    .line 12
    invoke-direct {p0, v5, v3}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->updateLayerAnimators([Lorg/maplibre/android/geometry/LatLng;[Ljava/lang/Float;)V

    const/4 v3, 0x0

    .line 13
    aput-object v4, v5, v3

    const/4 v6, 0x2

    if-eqz p3, :cond_2

    .line 14
    new-array p1, v6, [Ljava/lang/Float;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p1, v3

    const/4 p3, 0x0

    invoke-static {p3, p2}, Lorg/maplibre/android/location/Utils;->shortestRotation(FF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v1

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->getBearingValues(Ljava/lang/Float;[Landroid/location/Location;)[Ljava/lang/Float;

    move-result-object p1

    .line 16
    :goto_0
    invoke-direct {p0, v5, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->updateCameraAnimators([Lorg/maplibre/android/geometry/LatLng;[Ljava/lang/Float;)V

    .line 17
    new-instance p1, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {p1, v0}, Lorg/maplibre/android/geometry/LatLng;-><init>(Landroid/location/Location;)V

    .line 18
    iget-object p2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->projection:Lorg/maplibre/android/maps/Projection;

    invoke-static {p2, v4, p1}, Lorg/maplibre/android/location/Utils;->immediateAnimation(Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->projection:Lorg/maplibre/android/maps/Projection;

    .line 19
    invoke-static {p2, v2, p1}, Lorg/maplibre/android/location/Utils;->immediateAnimation(Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v3

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v1

    :goto_2
    const-wide/16 p2, 0x0

    if-nez p1, :cond_8

    .line 20
    iget-wide v4, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->locationUpdateTimestamp:J

    cmp-long p1, v4, p2

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p4, :cond_7

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 23
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    cmp-long p1, v4, v7

    if-lez p1, :cond_6

    .line 24
    const-string p1, "LocationAnimatorCoordinator"

    const-string p4, "Lookahead enabled, but the target location\'s timestamp is smaller than current timestamp"

    invoke-static {p1, p4}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide p1

    sub-long p2, p1, v4

    goto :goto_3

    :cond_7
    sub-long/2addr v7, v4

    long-to-float p1, v7

    .line 26
    iget p2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->durationMultiplier:F

    mul-float/2addr p1, p2

    float-to-long p2, p1

    :goto_3
    const-wide/16 v4, 0x7d0

    .line 27
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    :cond_8
    const/4 p1, 0x4

    .line 28
    filled-new-array {v3, v6, v1, p1}, [I

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    .line 29
    iput-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousLocation:Landroid/location/Location;

    return-void
.end method

.method public feedNewPadding([DLorg/maplibre/android/camera/CameraPosition;JLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 0

    iget-object p2, p2, Lorg/maplibre/android/camera/CameraPosition;->padding:[D

    invoke-direct {p0, p1, p2, p5}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->updatePaddingAnimator([D[DLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    const/16 p1, 0xa

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {p0, p3, p4, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    return-void
.end method

.method public feedNewTilt(DLorg/maplibre/android/camera/CameraPosition;JLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 0

    double-to-float p1, p1

    iget-wide p2, p3, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    double-to-float p2, p2

    invoke-direct {p0, p1, p2, p6}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->updateTiltAnimator(FFLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    const/16 p1, 0x8

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {p0, p4, p5, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    return-void
.end method

.method public feedNewZoomLevel(DLorg/maplibre/android/camera/CameraPosition;JLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 0

    double-to-float p1, p1

    iget-wide p2, p3, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    double-to-float p2, p2

    invoke-direct {p0, p1, p2, p6}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->updateZoomAnimator(FFLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    const/4 p1, 0x7

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {p0, p4, p5, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    return-void
.end method

.method public resetAllCameraAnimations(Lorg/maplibre/android/camera/CameraPosition;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->resetCameraCompassAnimation(Lorg/maplibre/android/camera/CameraPosition;)V

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->resetCameraLocationAnimations(Lorg/maplibre/android/camera/CameraPosition;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x2ee

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    return-void
.end method

.method public resetAllLayerAnimations()V
    .locals 11

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreLatLngAnimator;

    iget-object v2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    iget-object v4, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    iget-object v6, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {v0}, Lorg/maplibre/android/location/MapLibreAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {p0, v1, v7, v8}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewLatLngAnimator(ILorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v2}, Lorg/maplibre/android/location/MapLibreAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v3, v7, v2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    filled-new-array {v1, v3}, [I

    move-result-object v0

    invoke-direct {p0, v7, v8, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    :cond_0
    if-eqz v4, :cond_2

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->getPreviousLayerCompassBearing()F

    move-result v0

    invoke-virtual {v4}, Lorg/maplibre/android/location/MapLibreAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v5, v0, v2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->createNewFloatAnimator(IFF)V

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->compassAnimationEnabled:Z

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1f4

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    filled-new-array {v5}, [I

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playAnimators(J[I)V

    :cond_2
    if-eqz v6, :cond_3

    iget v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->previousAccuracyRadius:F

    invoke-virtual {p0, v0, v1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->feedNewAccuracyRadius(FZ)V

    :cond_3
    return-void
.end method

.method public setAccuracyAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->accuracyAnimationEnabled:Z

    return-void
.end method

.method public setCompassAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->compassAnimationEnabled:Z

    return-void
.end method

.method public setMaxAnimationFps(I)V
    .locals 0

    if-gtz p1, :cond_0

    const-string p0, "Mbgl-LocationAnimatorCoordinator"

    const-string p1, "Max animation FPS cannot be less or equal to 0."

    invoke-static {p0, p1}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput p1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->maxAnimationFps:I

    return-void
.end method

.method public setTrackingAnimationDurationMultiplier(F)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->durationMultiplier:F

    return-void
.end method

.method public startLocationComponentCirclePulsing(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 8

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorProvider:Lorg/maplibre/android/location/MapLibreAnimatorProvider;

    iget v4, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->maxAnimationFps:I

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseSingleDuration()F

    move-result v5

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseMaxRadius()F

    move-result v6

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :goto_0
    move-object v7, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    goto :goto_0

    :goto_1
    invoke-virtual/range {v2 .. v7}, Lorg/maplibre/android/location/MapLibreAnimatorProvider;->pulsingCircleAnimator(Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;IFFLandroid/view/animation/Interpolator;)Lorg/maplibre/android/location/PulsingLocationCircleAnimator;

    move-result-object p1

    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->playPulsingAnimator()V

    :cond_1
    return-void
.end method

.method public stopPulsingCircleAnimation()V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAnimator(I)V

    return-void
.end method

.method public updateAnimatorListenerHolders(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/maplibre/android/location/AnimatorListenerHolder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/AnimatorListenerHolder;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lorg/maplibre/android/location/AnimatorListenerHolder;->getAnimatorType()I

    move-result v2

    invoke-virtual {v0}, Lorg/maplibre/android/location/AnimatorListenerHolder;->getListener()Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->animatorArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/location/MapLibreAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/maplibre/android/location/MapLibreAnimator;->makeInvalid()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
