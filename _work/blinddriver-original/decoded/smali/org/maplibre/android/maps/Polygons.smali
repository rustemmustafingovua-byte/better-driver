.class interface abstract Lorg/maplibre/android/maps/Polygons;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addBy(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/PolygonOptions;",
            ">;",
            "Lorg/maplibre/android/maps/MapLibreMap;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Polygon;",
            ">;"
        }
    .end annotation
.end method

.method public abstract addBy(Lorg/maplibre/android/annotations/PolygonOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Polygon;
.end method

.method public abstract obtainAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Polygon;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lorg/maplibre/android/annotations/Polygon;)V
.end method
