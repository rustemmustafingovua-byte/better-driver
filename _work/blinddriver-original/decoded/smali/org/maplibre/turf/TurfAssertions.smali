.class public final Lorg/maplibre/turf/TurfAssertions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectionOf(Lorg/maplibre/geojson/FeatureCollection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Invalid input to "

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/maplibre/geojson/FeatureCollection;->type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FeatureCollection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/geojson/Feature;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/maplibre/geojson/Feature;->type()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Feature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v2

    invoke-interface {v2}, Lorg/maplibre/geojson/GeoJson;->type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/maplibre/turf/TurfException;

    invoke-virtual {v1}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v1

    invoke-interface {v1}, Lorg/maplibre/geojson/GeoJson;->type()Ljava/lang/String;

    move-result-object v1

    const-string v2, ": must be a "

    const-string v3, ", given "

    invoke-static {v0, p2, v2, p1, v3}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/maplibre/turf/TurfException;

    const-string p1, ", Feature with geometry required"

    invoke-static {v0, p2, p1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lorg/maplibre/turf/TurfException;

    const-string p1, ", FeatureCollection required"

    invoke-static {v0, p2, p1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/maplibre/turf/TurfException;

    const-string p1, "collectionOf() requires a name"

    invoke-direct {p0, p1}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static featureOf(Lorg/maplibre/geojson/Feature;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Invalid input to "

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v1

    invoke-interface {v1}, Lorg/maplibre/geojson/GeoJson;->type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/maplibre/turf/TurfException;

    invoke-virtual {p0}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object p0

    invoke-interface {p0}, Lorg/maplibre/geojson/GeoJson;->type()Ljava/lang/String;

    move-result-object p0

    const-string v2, ": must be a "

    const-string v3, ", given "

    invoke-static {v0, p2, v2, p1, v3}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance p0, Lorg/maplibre/turf/TurfException;

    const-string p1, ", Feature with geometry required"

    invoke-static {v0, p2, p1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/maplibre/turf/TurfException;

    const-string p1, ".featureOf() requires a name"

    invoke-direct {p0, p1}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static geojsonType(Lorg/maplibre/geojson/GeoJson;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/maplibre/geojson/GeoJson;->type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lorg/maplibre/turf/TurfException;

    const-string v1, ": must be a "

    const-string v2, ", given "

    const-string v3, "Invalid input to "

    invoke-static {v3, p2, v1, p1, v2}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/maplibre/geojson/GeoJson;->type()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, " null"

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Lorg/maplibre/turf/TurfException;

    const-string p1, "Type and name required"

    invoke-direct {p0, p1}, Lorg/maplibre/turf/TurfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCoord(Lorg/maplibre/geojson/Feature;)Lorg/maplibre/geojson/Point;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/maplibre/turf/TurfMeta;->getCoord(Lorg/maplibre/geojson/Feature;)Lorg/maplibre/geojson/Point;

    move-result-object p0

    return-object p0
.end method
