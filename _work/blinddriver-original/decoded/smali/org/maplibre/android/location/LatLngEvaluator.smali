.class Lorg/maplibre/android/location/LatLngEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lorg/maplibre/android/geometry/LatLng;",
        ">;"
    }
.end annotation


# instance fields
.field private final latLng:Lorg/maplibre/android/geometry/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {v0}, Lorg/maplibre/android/geometry/LatLng;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LatLngEvaluator;->latLng:Lorg/maplibre/android/geometry/LatLng;

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/maplibre/android/geometry/LatLng;

    check-cast p3, Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p0, p1, p2, p3}, Lorg/maplibre/android/location/LatLngEvaluator;->evaluate(FLorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public evaluate(FLorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLng;
    .locals 7

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/location/LatLngEvaluator;->latLng:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p2}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v1

    .line 3
    invoke-virtual {p3}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v5

    sub-double/2addr v3, v5

    float-to-double v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v3, v1

    .line 4
    invoke-virtual {v0, v3, v4}, Lorg/maplibre/android/geometry/LatLng;->setLatitude(D)V

    .line 5
    iget-object p1, p0, Lorg/maplibre/android/location/LatLngEvaluator;->latLng:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p2}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    .line 6
    invoke-virtual {p3}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide p2

    sub-double/2addr v2, p2

    mul-double/2addr v2, v5

    add-double/2addr v2, v0

    .line 7
    invoke-virtual {p1, v2, v3}, Lorg/maplibre/android/geometry/LatLng;->setLongitude(D)V

    .line 8
    iget-object p0, p0, Lorg/maplibre/android/location/LatLngEvaluator;->latLng:Lorg/maplibre/android/geometry/LatLng;

    return-object p0
.end method
