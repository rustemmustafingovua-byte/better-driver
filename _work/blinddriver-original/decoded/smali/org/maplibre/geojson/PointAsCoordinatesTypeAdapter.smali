.class public Lorg/maplibre/geojson/PointAsCoordinatesTypeAdapter;
.super Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter<",
        "Lorg/maplibre/geojson/Point;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Le8/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/PointAsCoordinatesTypeAdapter;->read(Le8/b;)Lorg/maplibre/geojson/Point;

    move-result-object p0

    return-object p0
.end method

.method public read(Le8/b;)Lorg/maplibre/geojson/Point;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;->readPoint(Le8/b;)Lorg/maplibre/geojson/Point;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic write(Le8/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/maplibre/geojson/Point;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/geojson/PointAsCoordinatesTypeAdapter;->write(Le8/c;Lorg/maplibre/geojson/Point;)V

    return-void
.end method

.method public write(Le8/c;Lorg/maplibre/geojson/Point;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;->writePoint(Le8/c;Lorg/maplibre/geojson/Point;)V

    return-void
.end method
