.class public abstract Lorg/maplibre/geojson/GeometryAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/v;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static geometryTypeFactory:Lw7/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lw7/v;
    .locals 3

    .line 1
    sget-object v0, Lorg/maplibre/geojson/GeometryAdapterFactory;->geometryTypeFactory:Lw7/v;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "type"

    const/4 v1, 0x1

    const-class v2, Lorg/maplibre/geojson/Geometry;

    invoke-static {v2, v0, v1}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->of(Ljava/lang/Class;Ljava/lang/String;Z)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/GeometryCollection;

    const-string v2, "GeometryCollection"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/Point;

    const-string v2, "Point"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/MultiPoint;

    const-string v2, "MultiPoint"

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/LineString;

    const-string v2, "LineString"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/MultiLineString;

    const-string v2, "MultiLineString"

    .line 7
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/Polygon;

    const-string v2, "Polygon"

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/MultiPolygon;

    const-string v2, "MultiPolygon"

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;Ljava/lang/String;)Lorg/maplibre/geojson/internal/typeadapters/RuntimeTypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lorg/maplibre/geojson/GeometryAdapterFactory;->geometryTypeFactory:Lw7/v;

    .line 10
    :cond_0
    sget-object v0, Lorg/maplibre/geojson/GeometryAdapterFactory;->geometryTypeFactory:Lw7/v;

    return-object v0
.end method


# virtual methods
.method public abstract synthetic create(Lw7/l;Ld8/a;)Lw7/u;
.end method
