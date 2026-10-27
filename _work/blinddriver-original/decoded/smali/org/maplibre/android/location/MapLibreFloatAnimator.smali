.class Lorg/maplibre/android/location/MapLibreFloatAnimator;
.super Lorg/maplibre/android/location/MapLibreAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/android/location/MapLibreAnimator<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/Float;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/location/MapLibreAnimator;-><init>([Ljava/lang/Object;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)V

    return-void
.end method


# virtual methods
.method public provideEvaluator()Landroid/animation/TypeEvaluator;
    .locals 0

    new-instance p0, Landroid/animation/FloatEvaluator;

    invoke-direct {p0}, Landroid/animation/FloatEvaluator;-><init>()V

    return-object p0
.end method
