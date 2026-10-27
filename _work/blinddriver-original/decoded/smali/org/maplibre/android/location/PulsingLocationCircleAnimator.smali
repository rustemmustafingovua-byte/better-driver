.class public Lorg/maplibre/android/location/PulsingLocationCircleAnimator;
.super Lorg/maplibre/android/location/MapLibreFloatAnimator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;IF)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {v0, p3}, [Ljava/lang/Float;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lorg/maplibre/android/location/MapLibreFloatAnimator;-><init>([Ljava/lang/Float;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)V

    return-void
.end method
