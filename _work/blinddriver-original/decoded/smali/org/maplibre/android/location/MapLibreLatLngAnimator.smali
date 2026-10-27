.class Lorg/maplibre/android/location/MapLibreLatLngAnimator;
.super Lorg/maplibre/android/location/MapLibreAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/android/location/MapLibreAnimator<",
        "Lorg/maplibre/android/geometry/LatLng;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/android/location/MapLibreAnimator;-><init>([Ljava/lang/Object;Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;I)V

    return-void
.end method


# virtual methods
.method public provideEvaluator()Landroid/animation/TypeEvaluator;
    .locals 0

    new-instance p0, Lorg/maplibre/android/location/LatLngEvaluator;

    invoke-direct {p0}, Lorg/maplibre/android/location/LatLngEvaluator;-><init>()V

    return-object p0
.end method
