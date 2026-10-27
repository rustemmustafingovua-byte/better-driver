.class interface abstract Lorg/maplibre/android/maps/Markers;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addBy(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/maplibre/android/annotations/BaseMarkerOptions;",
            ">;",
            "Lorg/maplibre/android/maps/MapLibreMap;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Marker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract addBy(Lorg/maplibre/android/annotations/BaseMarkerOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Marker;
.end method

.method public abstract obtainAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Marker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract obtainAllIn(Landroid/graphics/RectF;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Marker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reload()V
.end method

.method public abstract update(Lorg/maplibre/android/annotations/Marker;Lorg/maplibre/android/maps/MapLibreMap;)V
.end method
