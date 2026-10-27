.class final Lorg/maplibre/android/location/MapLibreAnimatorProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lorg/maplibre/android/location/MapLibreAnimatorProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/maplibre/android/location/MapLibreAnimatorProvider;
    .locals 1

    sget-object v0, Lorg/maplibre/android/location/MapLibreAnimatorProvider;->INSTANCE:Lorg/maplibre/android/location/MapLibreAnimatorProvider;

    if-nez v0, :cond_0

    new-instance v0, Lorg/maplibre/android/location/MapLibreAnimatorProvider;

    invoke-direct {v0}, Lorg/maplibre/android/location/MapLibreAnimatorProvider;-><init>()V

    sput-object v0, Lorg/maplibre/android/location/MapLibreAnimatorProvider;->INSTANCE:Lorg/maplibre/android/location/MapLibreAnimatorProvider;

    :cond_0
    sget-object v0, Lorg/maplibre/android/location/MapLibreAnimatorProvider;->INSTANCE:Lorg/maplibre/android/location/MapLibreAnimatorProvider;

    return-object v0
.end method


# virtual methods
.method public cameraAnimator([Ljava/lang/Float;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)Lorg/maplibre/android/location/MapLibreCameraAnimatorAdapter;
    .locals 0

    new-instance p0, Lorg/maplibre/android/location/MapLibreCameraAnimatorAdapter;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/location/MapLibreCameraAnimatorAdapter;-><init>([Ljava/lang/Float;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-object p0
.end method

.method public floatAnimator([Ljava/lang/Float;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)Lorg/maplibre/android/location/MapLibreFloatAnimator;
    .locals 0

    new-instance p0, Lorg/maplibre/android/location/MapLibreFloatAnimator;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/location/MapLibreFloatAnimator;-><init>([Ljava/lang/Float;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)V

    return-object p0
.end method

.method public latLngAnimator([Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)Lorg/maplibre/android/location/MapLibreLatLngAnimator;
    .locals 0

    new-instance p0, Lorg/maplibre/android/location/MapLibreLatLngAnimator;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/location/MapLibreLatLngAnimator;-><init>([Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)V

    return-object p0
.end method

.method public paddingAnimator([[DLorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)Lorg/maplibre/android/location/MapLibrePaddingAnimator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[D",
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "[D>;",
            "Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;",
            ")",
            "Lorg/maplibre/android/location/MapLibrePaddingAnimator;"
        }
    .end annotation

    new-instance p0, Lorg/maplibre/android/location/MapLibrePaddingAnimator;

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/location/MapLibrePaddingAnimator;-><init>([[DLorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-object p0
.end method

.method public pulsingCircleAnimator(Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;IFFLandroid/view/animation/Interpolator;)Lorg/maplibre/android/location/PulsingLocationCircleAnimator;
    .locals 0

    new-instance p0, Lorg/maplibre/android/location/PulsingLocationCircleAnimator;

    invoke-direct {p0, p1, p2, p4}, Lorg/maplibre/android/location/PulsingLocationCircleAnimator;-><init>(Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;IF)V

    float-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {p0, p5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method
