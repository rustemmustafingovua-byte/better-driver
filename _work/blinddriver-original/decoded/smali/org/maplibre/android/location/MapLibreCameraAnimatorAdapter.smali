.class Lorg/maplibre/android/location/MapLibreCameraAnimatorAdapter;
.super Lorg/maplibre/android/location/MapLibreFloatAnimator;
.source "SourceFile"


# direct methods
.method public constructor <init>([Ljava/lang/Float;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Lorg/maplibre/android/location/MapLibreFloatAnimator;-><init>([Ljava/lang/Float;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)V

    new-instance p1, Lorg/maplibre/android/location/MapLibreAnimatorListener;

    invoke-direct {p1, p3}, Lorg/maplibre/android/location/MapLibreAnimatorListener;-><init>(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
