.class public final Lorg/maplibre/turf/TurfMeasurement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static EARTH_RADIUS:D = 6378137.0


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "No Instances."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static along(Ljava/util/List;DLjava/lang/String;)Lorg/maplibre/geojson/Point;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;D",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/geojson/Point;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    cmpl-double v5, p1, v3

    if-ltz v5, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    cmpl-double v5, v3, p1

    if-ltz v5, :cond_2

    sub-double v7, p1, v3

    cmpl-double p1, v7, v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/geojson/Point;

    return-object p0

    .line 5
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/maplibre/geojson/Point;

    add-int/lit8 p2, v2, -0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/maplibre/geojson/Point;

    invoke-static {p1, p2}, Lorg/maplibre/turf/TurfMeasurement;->bearing(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)D

    move-result-wide p1

    const-wide v0, 0x4066800000000000L    # 180.0

    sub-double v9, p1, v0

    .line 6
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lorg/maplibre/geojson/Point;

    move-object v11, p3

    invoke-static/range {v6 .. v11}, Lorg/maplibre/turf/TurfMeasurement;->destination(Lorg/maplibre/geojson/Point;DDLjava/lang/String;)Lorg/maplibre/geojson/Point;

    move-result-object p0

    return-object p0

    :cond_2
    move-object v11, p3

    .line 7
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/maplibre/geojson/Point;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/maplibre/geojson/Point;

    invoke-static {p3, v5, v11}, Lorg/maplibre/turf/TurfMeasurement;->distance(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v3, v5

    move-object p3, v11

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/geojson/Point;

    return-object p0
.end method

.method public static along(Lorg/maplibre/geojson/LineString;DLjava/lang/String;)Lorg/maplibre/geojson/Point;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/maplibre/turf/TurfMeasurement;->along(Ljava/util/List;DLjava/lang/String;)Lorg/maplibre/geojson/Point;

    move-result-object p0

    return-object p0
.end method

.method public static area(Lorg/maplibre/geojson/Feature;)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->area(Lorg/maplibre/geojson/Geometry;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static area(Lorg/maplibre/geojson/FeatureCollection;)D
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/geojson/Feature;

    .line 4
    invoke-static {v2}, Lorg/maplibre/turf/TurfMeasurement;->area(Lorg/maplibre/geojson/Feature;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static area(Lorg/maplibre/geojson/Geometry;)D
    .locals 2

    .line 5
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->calculateArea(Lorg/maplibre/geojson/Geometry;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bbox(Lorg/maplibre/geojson/Feature;)[D
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0}, Lorg/maplibre/turf/TurfMeta;->coordAll(Lorg/maplibre/geojson/Feature;Z)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bboxCalculator(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lorg/maplibre/geojson/FeatureCollection;)[D
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-static {p0, v0}, Lorg/maplibre/turf/TurfMeta;->coordAll(Lorg/maplibre/geojson/FeatureCollection;Z)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bboxCalculator(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lorg/maplibre/geojson/GeoJson;)[D
    .locals 9

    .line 13
    invoke-interface {p0}, Lorg/maplibre/geojson/GeoJson;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lorg/maplibre/geojson/BoundingBox;->west()D

    move-result-wide v1

    .line 15
    invoke-virtual {v0}, Lorg/maplibre/geojson/BoundingBox;->south()D

    move-result-wide v3

    .line 16
    invoke-virtual {v0}, Lorg/maplibre/geojson/BoundingBox;->east()D

    move-result-wide v5

    .line 17
    invoke-virtual {v0}, Lorg/maplibre/geojson/BoundingBox;->north()D

    move-result-wide v7

    const/4 p0, 0x4

    new-array p0, p0, [D

    const/4 v0, 0x0

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aput-wide v3, p0, v0

    const/4 v0, 0x2

    aput-wide v5, p0, v0

    const/4 v0, 0x3

    aput-wide v7, p0, v0

    return-object p0

    .line 18
    :cond_0
    instance-of v0, p0, Lorg/maplibre/geojson/Geometry;

    if-eqz v0, :cond_1

    .line 19
    check-cast p0, Lorg/maplibre/geojson/Geometry;

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/Geometry;)[D

    move-result-object p0

    return-object p0

    .line 20
    :cond_1
    instance-of v0, p0, Lorg/maplibre/geojson/FeatureCollection;

    if-eqz v0, :cond_2

    .line 21
    check-cast p0, Lorg/maplibre/geojson/FeatureCollection;

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/FeatureCollection;)[D

    move-result-object p0

    return-object p0

    .line 22
    :cond_2
    instance-of v0, p0, Lorg/maplibre/geojson/Feature;

    if-eqz v0, :cond_3

    .line 23
    check-cast p0, Lorg/maplibre/geojson/Feature;

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/Feature;)[D

    move-result-object p0

    return-object p0

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "bbox type not supported for GeoJson instance"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bbox(Lorg/maplibre/geojson/Geometry;)[D
    .locals 8

    .line 27
    instance-of v0, p0, Lorg/maplibre/geojson/Point;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Lorg/maplibre/geojson/Point;

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/Point;)[D

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    instance-of v0, p0, Lorg/maplibre/geojson/MultiPoint;

    if-eqz v0, :cond_1

    .line 30
    check-cast p0, Lorg/maplibre/geojson/MultiPoint;

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/MultiPoint;)[D

    move-result-object p0

    return-object p0

    .line 31
    :cond_1
    instance-of v0, p0, Lorg/maplibre/geojson/LineString;

    if-eqz v0, :cond_2

    .line 32
    check-cast p0, Lorg/maplibre/geojson/LineString;

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/LineString;)[D

    move-result-object p0

    return-object p0

    .line 33
    :cond_2
    instance-of v0, p0, Lorg/maplibre/geojson/MultiLineString;

    if-eqz v0, :cond_3

    .line 34
    check-cast p0, Lorg/maplibre/geojson/MultiLineString;

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/MultiLineString;)[D

    move-result-object p0

    return-object p0

    .line 35
    :cond_3
    instance-of v0, p0, Lorg/maplibre/geojson/Polygon;

    if-eqz v0, :cond_4

    .line 36
    check-cast p0, Lorg/maplibre/geojson/Polygon;

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/Polygon;)[D

    move-result-object p0

    return-object p0

    .line 37
    :cond_4
    instance-of v0, p0, Lorg/maplibre/geojson/MultiPolygon;

    if-eqz v0, :cond_5

    .line 38
    check-cast p0, Lorg/maplibre/geojson/MultiPolygon;

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/MultiPolygon;)[D

    move-result-object p0

    return-object p0

    .line 39
    :cond_5
    instance-of v0, p0, Lorg/maplibre/geojson/GeometryCollection;

    if-eqz v0, :cond_7

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    check-cast p0, Lorg/maplibre/geojson/GeometryCollection;

    invoke-virtual {p0}, Lorg/maplibre/geojson/GeometryCollection;->geometries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/geojson/Geometry;

    .line 42
    invoke-static {v1}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/Geometry;)[D

    move-result-object v1

    const/4 v2, 0x0

    .line 43
    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    invoke-static {v3, v4, v6, v7}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 44
    aget-wide v6, v1, v3

    aget-wide v4, v1, v5

    invoke-static {v6, v7, v4, v5}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    aget-wide v3, v1, v3

    const/4 v5, 0x3

    aget-wide v6, v1, v5

    invoke-static {v3, v4, v6, v7}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    aget-wide v2, v1, v2

    aget-wide v4, v1, v5

    invoke-static {v2, v3, v4, v5}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_6
    invoke-static {v0}, Lorg/maplibre/geojson/MultiPoint;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/MultiPoint;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/MultiPoint;)[D

    move-result-object p0

    return-object p0

    .line 48
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown geometry class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bbox(Lorg/maplibre/geojson/LineString;)[D
    .locals 0

    .line 3
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeta;->coordAll(Lorg/maplibre/geojson/LineString;)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bboxCalculator(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lorg/maplibre/geojson/MultiLineString;)[D
    .locals 0

    .line 9
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeta;->coordAll(Lorg/maplibre/geojson/MultiLineString;)Ljava/util/List;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bboxCalculator(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lorg/maplibre/geojson/MultiPoint;)[D
    .locals 0

    .line 5
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeta;->coordAll(Lorg/maplibre/geojson/MultiPoint;)Ljava/util/List;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bboxCalculator(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lorg/maplibre/geojson/MultiPolygon;)[D
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, v0}, Lorg/maplibre/turf/TurfMeta;->coordAll(Lorg/maplibre/geojson/MultiPolygon;Z)Ljava/util/List;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bboxCalculator(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lorg/maplibre/geojson/Point;)[D
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeta;->coordAll(Lorg/maplibre/geojson/Point;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bboxCalculator(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method public static bbox(Lorg/maplibre/geojson/Polygon;)[D
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lorg/maplibre/turf/TurfMeta;->coordAll(Lorg/maplibre/geojson/Polygon;Z)Ljava/util/List;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bboxCalculator(Ljava/util/List;)[D

    move-result-object p0

    return-object p0
.end method

.method private static bboxCalculator(Ljava/util/List;)[D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;)[D"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    aput-wide v2, v0, v4

    const/4 v2, 0x2

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    aput-wide v5, v0, v2

    const/4 v3, 0x3

    aput-wide v5, v0, v3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/maplibre/geojson/Point;

    aget-wide v6, v0, v1

    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v6

    aput-wide v6, v0, v1

    :cond_1
    aget-wide v6, v0, v4

    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v6

    aput-wide v6, v0, v4

    :cond_2
    aget-wide v6, v0, v2

    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_3

    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v6

    aput-wide v6, v0, v2

    :cond_3
    aget-wide v6, v0, v3

    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v5

    aput-wide v5, v0, v3

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static bboxPolygon(Lorg/maplibre/geojson/BoundingBox;)Lorg/maplibre/geojson/Feature;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lorg/maplibre/turf/TurfMeasurement;->bboxPolygon(Lorg/maplibre/geojson/BoundingBox;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static bboxPolygon(Lorg/maplibre/geojson/BoundingBox;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;
    .locals 8

    .line 2
    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->west()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->south()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->east()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->south()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->east()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->north()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->west()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->north()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->west()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->south()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Lorg/maplibre/geojson/Point;

    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 8
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-static {p0}, Lorg/maplibre/geojson/Polygon;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/Polygon;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static bboxPolygon([D)Lorg/maplibre/geojson/Feature;
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0, v0}, Lorg/maplibre/turf/TurfMeasurement;->bboxPolygon([DLcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static bboxPolygon([DLcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;
    .locals 10

    const/4 v0, 0x0

    .line 11
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 12
    invoke-static {v1, v2, v4, v5}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v1

    const/4 v2, 0x2

    aget-wide v4, p0, v2

    aget-wide v6, p0, v3

    .line 13
    invoke-static {v4, v5, v6, v7}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v4

    aget-wide v5, p0, v2

    const/4 v2, 0x3

    aget-wide v7, p0, v2

    .line 14
    invoke-static {v5, v6, v7, v8}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v5

    aget-wide v6, p0, v0

    aget-wide v8, p0, v2

    .line 15
    invoke-static {v6, v7, v8, v9}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v2

    aget-wide v6, p0, v0

    aget-wide v8, p0, v3

    .line 16
    invoke-static {v6, v7, v8, v9}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object p0

    filled-new-array {v1, v4, v5, v2, p0}, [Lorg/maplibre/geojson/Point;

    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lorg/maplibre/geojson/Polygon;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/Polygon;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static bearing(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)D
    .locals 10

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/maplibre/turf/TurfConversion;->degreesToRadians(D)D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/maplibre/turf/TurfConversion;->degreesToRadians(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/maplibre/turf/TurfConversion;->degreesToRadians(D)D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/maplibre/turf/TurfConversion;->degreesToRadians(D)D

    move-result-wide p0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    sub-double/2addr v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/maplibre/turf/TurfConversion;->radiansToDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static calculateArea(Lorg/maplibre/geojson/Geometry;)D
    .locals 5

    instance-of v0, p0, Lorg/maplibre/geojson/Polygon;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/maplibre/geojson/Polygon;

    invoke-virtual {p0}, Lorg/maplibre/geojson/Polygon;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->polygonArea(Ljava/util/List;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    instance-of v0, p0, Lorg/maplibre/geojson/MultiPolygon;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lorg/maplibre/geojson/MultiPolygon;

    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiPolygon;->coordinates()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lorg/maplibre/turf/TurfMeasurement;->polygonArea(Ljava/util/List;)D

    move-result-wide v3

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public static center(Lorg/maplibre/geojson/Feature;)Lorg/maplibre/geojson/Feature;
    .locals 1

    .line 2
    invoke-static {p0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeature(Lorg/maplibre/geojson/Feature;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/maplibre/turf/TurfMeasurement;->center(Lorg/maplibre/geojson/FeatureCollection;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static center(Lorg/maplibre/geojson/Feature;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeature(Lorg/maplibre/geojson/Feature;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/maplibre/turf/TurfMeasurement;->center(Lorg/maplibre/geojson/FeatureCollection;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static center(Lorg/maplibre/geojson/FeatureCollection;)Lorg/maplibre/geojson/Feature;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0, v0}, Lorg/maplibre/turf/TurfMeasurement;->center(Lorg/maplibre/geojson/FeatureCollection;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static center(Lorg/maplibre/geojson/FeatureCollection;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;
    .locals 8

    .line 3
    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/FeatureCollection;)[D

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    aget-wide v0, p0, v0

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const/4 v4, 0x1

    .line 5
    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    .line 6
    invoke-static {v0, v1, v4, v5}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;Ljava/lang/String;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static destination(Lorg/maplibre/geojson/Point;DDLjava/lang/String;)Lorg/maplibre/geojson/Point;
    .locals 10

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/maplibre/turf/TurfConversion;->degreesToRadians(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/maplibre/turf/TurfConversion;->degreesToRadians(D)D

    move-result-wide v2

    invoke-static {p3, p4}, Lorg/maplibre/turf/TurfConversion;->degreesToRadians(D)D

    move-result-wide p3

    invoke-static {p1, p2, p5}, Lorg/maplibre/turf/TurfConversion;->lengthToRadians(DLjava/lang/String;)D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double/2addr p4, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr p2, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, p4

    sub-double/2addr p0, v2

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/maplibre/turf/TurfConversion;->radiansToDegrees(D)D

    move-result-wide p0

    invoke-static {v4, v5}, Lorg/maplibre/turf/TurfConversion;->radiansToDegrees(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object p0

    return-object p0
.end method

.method public static distance(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)D
    .locals 1

    .line 1
    const-string v0, "kilometers"

    invoke-static {p0, p1, v0}, Lorg/maplibre/turf/TurfMeasurement;->distance(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distance(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;Ljava/lang/String;)D
    .locals 8

    .line 2
    invoke-virtual {p1}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/maplibre/turf/TurfConversion;->degreesToRadians(D)D

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/maplibre/turf/TurfConversion;->degreesToRadians(D)D

    move-result-wide v2

    .line 4
    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/maplibre/turf/TurfConversion;->degreesToRadians(D)D

    move-result-wide v4

    .line 5
    invoke-virtual {p1}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/maplibre/turf/TurfConversion;->degreesToRadians(D)D

    move-result-wide p0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v6

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v2, v6

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v4

    add-double/2addr p0, v0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double/2addr p0, v6

    .line 9
    invoke-static {p0, p1, p2}, Lorg/maplibre/turf/TurfConversion;->radiansToLength(DLjava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static envelope(Lorg/maplibre/geojson/GeoJson;)Lorg/maplibre/geojson/Polygon;
    .locals 0

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bbox(Lorg/maplibre/geojson/GeoJson;)[D

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeasurement;->bboxPolygon([D)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object p0

    check-cast p0, Lorg/maplibre/geojson/Polygon;

    return-object p0
.end method

.method public static length(Ljava/util/List;Ljava/lang/String;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/geojson/Point;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 13
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/maplibre/geojson/Point;

    .line 14
    invoke-static {v0, v4, p1}, Lorg/maplibre/turf/TurfMeasurement;->distance(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    move-object v0, v4

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static length(Lorg/maplibre/geojson/LineString;Ljava/lang/String;)D
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lorg/maplibre/turf/TurfMeasurement;->length(Ljava/util/List;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static length(Lorg/maplibre/geojson/MultiLineString;Ljava/lang/String;)D
    .locals 4

    .line 3
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiLineString;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 4
    invoke-static {v2, p1}, Lorg/maplibre/turf/TurfMeasurement;->length(Ljava/util/List;Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static length(Lorg/maplibre/geojson/MultiPolygon;Ljava/lang/String;)D
    .locals 5

    .line 7
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiPolygon;->coordinates()Ljava/util/List;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 10
    invoke-static {v3, p1}, Lorg/maplibre/turf/TurfMeasurement;->length(Ljava/util/List;Ljava/lang/String;)D

    move-result-wide v3

    add-double/2addr v0, v3

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static length(Lorg/maplibre/geojson/Polygon;Ljava/lang/String;)D
    .locals 4

    .line 5
    invoke-virtual {p0}, Lorg/maplibre/geojson/Polygon;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 6
    invoke-static {v2, p1}, Lorg/maplibre/turf/TurfMeasurement;->length(Ljava/util/List;Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static midpoint(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)Lorg/maplibre/geojson/Point;
    .locals 8

    const-string v0, "miles"

    invoke-static {p0, p1, v0}, Lorg/maplibre/turf/TurfMeasurement;->distance(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p0, p1}, Lorg/maplibre/turf/TurfMeasurement;->bearing(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)D

    move-result-wide v5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v3, v0, v2

    const-string v7, "miles"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lorg/maplibre/turf/TurfMeasurement;->destination(Lorg/maplibre/geojson/Point;DDLjava/lang/String;)Lorg/maplibre/geojson/Point;

    move-result-object p0

    return-object p0
.end method

.method private static polygonArea(Ljava/util/List;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;>;)D"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lorg/maplibre/turf/TurfMeasurement;->ringArea(Ljava/util/List;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    add-double/2addr v3, v1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lorg/maplibre/turf/TurfMeasurement;->ringArea(Ljava/util/List;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    sub-double/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v3

    :cond_1
    return-wide v1
.end method

.method private static rad(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static ringArea(Ljava/util/List;)D
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;)D"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-le v0, v1, :cond_3

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    add-int/lit8 v5, v0, -0x2

    if-ne v4, v5, :cond_0

    add-int/lit8 v6, v0, -0x1

    move v7, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_1

    const/4 v6, 0x1

    move v7, v6

    move v6, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v5, v4, 0x2

    move v7, v5

    move v5, v4

    :goto_1
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/maplibre/geojson/Point;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/maplibre/geojson/Point;

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/maplibre/geojson/Point;

    invoke-virtual {v7}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/maplibre/turf/TurfMeasurement;->rad(D)D

    move-result-wide v7

    invoke-virtual {v5}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/maplibre/turf/TurfMeasurement;->rad(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-virtual {v6}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/maplibre/turf/TurfMeasurement;->rad(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-wide v0, Lorg/maplibre/turf/TurfMeasurement;->EARTH_RADIUS:D

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v0

    :cond_3
    return-wide v2
.end method

.method public static square(Lorg/maplibre/geojson/BoundingBox;)Lorg/maplibre/geojson/BoundingBox;
    .locals 15

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->southwest()Lorg/maplibre/geojson/Point;

    move-result-object v0

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->east()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->south()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/maplibre/turf/TurfMeasurement;->distance(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->west()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->south()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v2

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->west()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->north()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/maplibre/turf/TurfMeasurement;->distance(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->south()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->north()D

    move-result-wide v5

    add-double/2addr v5, v3

    div-double/2addr v5, v1

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->west()D

    move-result-wide v7

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->east()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->west()D

    move-result-wide v9

    sub-double/2addr v3, v9

    div-double/2addr v3, v1

    sub-double v9, v5, v3

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->east()D

    move-result-wide v11

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->east()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->west()D

    move-result-wide v13

    sub-double/2addr v3, v13

    div-double/2addr v3, v1

    add-double v13, v3, v5

    invoke-static/range {v7 .. v14}, Lorg/maplibre/geojson/BoundingBox;->fromLngLats(DDDD)Lorg/maplibre/geojson/BoundingBox;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->west()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->east()D

    move-result-wide v5

    add-double/2addr v5, v3

    div-double/2addr v5, v1

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->north()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->south()D

    move-result-wide v7

    sub-double/2addr v3, v7

    div-double/2addr v3, v1

    sub-double v7, v5, v3

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->south()D

    move-result-wide v9

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->north()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->south()D

    move-result-wide v11

    sub-double/2addr v3, v11

    div-double/2addr v3, v1

    add-double v11, v3, v5

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->north()D

    move-result-wide v13

    invoke-static/range {v7 .. v14}, Lorg/maplibre/geojson/BoundingBox;->fromLngLats(DDDD)Lorg/maplibre/geojson/BoundingBox;

    move-result-object p0

    return-object p0
.end method
