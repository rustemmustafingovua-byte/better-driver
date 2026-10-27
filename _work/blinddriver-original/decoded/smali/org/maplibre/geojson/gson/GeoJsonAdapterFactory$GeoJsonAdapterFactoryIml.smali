.class public final Lorg/maplibre/geojson/gson/GeoJsonAdapterFactory$GeoJsonAdapterFactoryIml;
.super Lorg/maplibre/geojson/gson/GeoJsonAdapterFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/geojson/gson/GeoJsonAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeoJsonAdapterFactoryIml"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/geojson/gson/GeoJsonAdapterFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lw7/l;Ld8/a;)Lw7/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/l;",
            "Ld8/a;",
            ")",
            "Lw7/u;"
        }
    .end annotation

    iget-object p0, p2, Ld8/a;->a:Ljava/lang/Class;

    const-class p2, Lorg/maplibre/geojson/BoundingBox;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/maplibre/geojson/BoundingBox;->typeAdapter(Lw7/l;)Lw7/u;

    move-result-object p0

    return-object p0

    :cond_0
    const-class p2, Lorg/maplibre/geojson/Feature;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/maplibre/geojson/Feature;->typeAdapter(Lw7/l;)Lw7/u;

    move-result-object p0

    return-object p0

    :cond_1
    const-class p2, Lorg/maplibre/geojson/FeatureCollection;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/maplibre/geojson/FeatureCollection;->typeAdapter(Lw7/l;)Lw7/u;

    move-result-object p0

    return-object p0

    :cond_2
    const-class p2, Lorg/maplibre/geojson/GeometryCollection;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lorg/maplibre/geojson/GeometryCollection;->typeAdapter(Lw7/l;)Lw7/u;

    move-result-object p0

    return-object p0

    :cond_3
    const-class p2, Lorg/maplibre/geojson/LineString;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1}, Lorg/maplibre/geojson/LineString;->typeAdapter(Lw7/l;)Lw7/u;

    move-result-object p0

    return-object p0

    :cond_4
    const-class p2, Lorg/maplibre/geojson/MultiLineString;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p1}, Lorg/maplibre/geojson/MultiLineString;->typeAdapter(Lw7/l;)Lw7/u;

    move-result-object p0

    return-object p0

    :cond_5
    const-class p2, Lorg/maplibre/geojson/MultiPoint;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p1}, Lorg/maplibre/geojson/MultiPoint;->typeAdapter(Lw7/l;)Lw7/u;

    move-result-object p0

    return-object p0

    :cond_6
    const-class p2, Lorg/maplibre/geojson/MultiPolygon;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p1}, Lorg/maplibre/geojson/MultiPolygon;->typeAdapter(Lw7/l;)Lw7/u;

    move-result-object p0

    return-object p0

    :cond_7
    const-class p2, Lorg/maplibre/geojson/Polygon;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {p1}, Lorg/maplibre/geojson/Polygon;->typeAdapter(Lw7/l;)Lw7/u;

    move-result-object p0

    return-object p0

    :cond_8
    const-class p2, Lorg/maplibre/geojson/Point;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {p1}, Lorg/maplibre/geojson/Point;->typeAdapter(Lw7/l;)Lw7/u;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
