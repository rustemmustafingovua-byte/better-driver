.class public final Lorg/maplibre/turf/TurfConversion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FACTORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/maplibre/turf/TurfConversion;->FACTORS:Ljava/util/Map;

    const-wide v1, 0x40aef00000000000L    # 3960.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "miles"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x40aae24a3d70a3d7L    # 3441.145

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "nauticalmiles"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x404ca5dc1a47a9e3L    # 57.2957795

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "degrees"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "radians"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x41ade90800000000L    # 2.509056E8

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "inches"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x415a964000000000L    # 6969600.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "yards"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, 0x41584fa200000000L    # 6373000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "meters"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v2, 0x41c2fe3690000000L    # 6.373E8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "centimeters"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v3, 0x40b8e50000000000L    # 6373.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "kilometers"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v4, 0x4173f0af8a666666L    # 2.090879265E7

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "feet"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "centimetres"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "metres"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kilometres"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combine(Lorg/maplibre/geojson/FeatureCollection;)Lorg/maplibre/geojson/FeatureCollection;
    .locals 8

    invoke-virtual {p0}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/maplibre/geojson/Feature;

    invoke-virtual {v5}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v5

    instance-of v6, v5, Lorg/maplibre/geojson/Point;

    if-nez v6, :cond_7

    instance-of v7, v5, Lorg/maplibre/geojson/MultiPoint;

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    instance-of v6, v5, Lorg/maplibre/geojson/LineString;

    if-nez v6, :cond_5

    instance-of v7, v5, Lorg/maplibre/geojson/MultiLineString;

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    instance-of v6, v5, Lorg/maplibre/geojson/Polygon;

    if-nez v6, :cond_3

    instance-of v7, v5, Lorg/maplibre/geojson/MultiPolygon;

    if-eqz v7, :cond_0

    :cond_3
    if-eqz v6, :cond_4

    check-cast v5, Lorg/maplibre/geojson/Polygon;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    check-cast v5, Lorg/maplibre/geojson/MultiPolygon;

    invoke-virtual {v5}, Lorg/maplibre/geojson/MultiPolygon;->polygons()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    check-cast v5, Lorg/maplibre/geojson/LineString;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    check-cast v5, Lorg/maplibre/geojson/MultiLineString;

    invoke-virtual {v5}, Lorg/maplibre/geojson/MultiLineString;->lineStrings()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_7
    :goto_2
    if-eqz v6, :cond_8

    check-cast v5, Lorg/maplibre/geojson/Point;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    check-cast v5, Lorg/maplibre/geojson/MultiPoint;

    invoke-virtual {v5}, Lorg/maplibre/geojson/MultiPoint;->coordinates()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v0}, Lorg/maplibre/geojson/MultiPoint;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/MultiPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v2}, Lorg/maplibre/geojson/MultiLineString;->fromLineStrings(Ljava/util/List;)Lorg/maplibre/geojson/MultiLineString;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v3}, Lorg/maplibre/geojson/MultiPolygon;->fromPolygons(Ljava/util/List;)Lorg/maplibre/geojson/MultiPolygon;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    invoke-static {v4}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance p0, Lorg/maplibre/turf/TurfException;

    const-string v0, "Your FeatureCollection doesn\'t have any Feature objects in it."

    invoke-direct {p0, v0}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Lorg/maplibre/turf/TurfException;

    const-string v0, "Your FeatureCollection is null."

    invoke-direct {p0, v0}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertLength(DLjava/lang/String;)D
    .locals 1

    .line 1
    const-string v0, "kilometers"

    invoke-static {p0, p1, p2, v0}, Lorg/maplibre/turf/TurfConversion;->convertLength(DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static convertLength(DLjava/lang/String;Ljava/lang/String;)D
    .locals 0

    if-nez p3, :cond_0

    .line 2
    const-string p3, "kilometers"

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/maplibre/turf/TurfConversion;->lengthToRadians(DLjava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1, p3}, Lorg/maplibre/turf/TurfConversion;->radiansToLength(DLjava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static coordsToLine(Ljava/util/List;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;>;",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lorg/maplibre/geojson/Feature;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lorg/maplibre/geojson/MultiLineString;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/MultiLineString;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lorg/maplibre/geojson/LineString;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/LineString;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static degreesToRadians(D)D
    .locals 2

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static explode(Lorg/maplibre/geojson/Feature;)Lorg/maplibre/geojson/FeatureCollection;
    .locals 2

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v1}, Lorg/maplibre/turf/TurfMeta;->coordAll(Lorg/maplibre/geojson/Feature;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/geojson/Point;

    .line 7
    invoke-static {v1}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    return-object p0
.end method

.method public static explode(Lorg/maplibre/geojson/FeatureCollection;)Lorg/maplibre/geojson/FeatureCollection;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v1}, Lorg/maplibre/turf/TurfMeta;->coordAll(Lorg/maplibre/geojson/FeatureCollection;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/geojson/Point;

    .line 3
    invoke-static {v1}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    return-object p0
.end method

.method public static lengthToDegrees(DLjava/lang/String;)D
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/maplibre/turf/TurfConversion;->lengthToRadians(DLjava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/maplibre/turf/TurfConversion;->radiansToDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static lengthToRadians(D)D
    .locals 1

    .line 1
    const-string v0, "kilometers"

    invoke-static {p0, p1, v0}, Lorg/maplibre/turf/TurfConversion;->lengthToRadians(DLjava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static lengthToRadians(DLjava/lang/String;)D
    .locals 2

    .line 2
    sget-object v0, Lorg/maplibre/turf/TurfConversion;->FACTORS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static multiPolygonToLine(Lorg/maplibre/geojson/Feature;)Lorg/maplibre/geojson/FeatureCollection;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/maplibre/turf/TurfConversion;->multiPolygonToLine(Lorg/maplibre/geojson/Feature;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    return-object p0
.end method

.method public static multiPolygonToLine(Lorg/maplibre/geojson/Feature;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/FeatureCollection;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lorg/maplibre/geojson/MultiPolygon;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lorg/maplibre/geojson/MultiPolygon;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->type()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 6
    :goto_0
    invoke-static {v0, p1}, Lorg/maplibre/turf/TurfConversion;->polygonToLine(Lorg/maplibre/geojson/MultiPolygon;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    new-instance p0, Lorg/maplibre/turf/TurfException;

    const-string p1, "Feature\'s geometry must be MultiPolygon"

    invoke-direct {p0, p1}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static polygonToLine(Lorg/maplibre/geojson/Feature;)Lorg/maplibre/geojson/Feature;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/maplibre/turf/TurfConversion;->polygonToLine(Lorg/maplibre/geojson/Feature;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static polygonToLine(Lorg/maplibre/geojson/Feature;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lorg/maplibre/geojson/Polygon;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lorg/maplibre/geojson/Polygon;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->type()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 6
    :goto_0
    invoke-static {v0, p1}, Lorg/maplibre/turf/TurfConversion;->polygonToLine(Lorg/maplibre/geojson/Polygon;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    new-instance p0, Lorg/maplibre/turf/TurfException;

    const-string p1, "Feature\'s geometry must be Polygon"

    invoke-direct {p0, p1}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static polygonToLine(Lorg/maplibre/geojson/Polygon;)Lorg/maplibre/geojson/Feature;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, v0}, Lorg/maplibre/turf/TurfConversion;->polygonToLine(Lorg/maplibre/geojson/Polygon;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static polygonToLine(Lorg/maplibre/geojson/Polygon;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lorg/maplibre/geojson/Polygon;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/maplibre/turf/TurfConversion;->coordsToLine(Ljava/util/List;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;

    move-result-object p0

    return-object p0
.end method

.method public static polygonToLine(Lorg/maplibre/geojson/MultiPolygon;)Lorg/maplibre/geojson/FeatureCollection;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0}, Lorg/maplibre/turf/TurfConversion;->polygonToLine(Lorg/maplibre/geojson/MultiPolygon;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    return-object p0
.end method

.method public static polygonToLine(Lorg/maplibre/geojson/MultiPolygon;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/FeatureCollection;
    .locals 2

    .line 11
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiPolygon;->coordinates()Ljava/util/List;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 14
    invoke-static {v1, p1}, Lorg/maplibre/turf/TurfConversion;->coordsToLine(Ljava/util/List;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    return-object p0
.end method

.method public static radiansToDegrees(D)D
    .locals 2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static radiansToLength(D)D
    .locals 1

    .line 1
    const-string v0, "kilometers"

    invoke-static {p0, p1, v0}, Lorg/maplibre/turf/TurfConversion;->radiansToLength(DLjava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static radiansToLength(DLjava/lang/String;)D
    .locals 2

    .line 2
    sget-object v0, Lorg/maplibre/turf/TurfConversion;->FACTORS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, p0

    return-wide v0
.end method
