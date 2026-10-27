.class final Lorg/maplibre/geojson/MultiLineString$GsonTypeAdapter;
.super Lorg/maplibre/geojson/BaseGeometryTypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/geojson/MultiLineString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GsonTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/geojson/BaseGeometryTypeAdapter<",
        "Lorg/maplibre/geojson/MultiLineString;",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Lorg/maplibre/geojson/Point;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lw7/l;)V
    .locals 1

    new-instance v0, Lorg/maplibre/geojson/ListOfListOfPointCoordinatesTypeAdapter;

    invoke-direct {v0}, Lorg/maplibre/geojson/ListOfListOfPointCoordinatesTypeAdapter;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;-><init>(Lw7/l;Lw7/u;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createCoordinateContainer(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/lang/Object;)Lorg/maplibre/geojson/CoordinateContainer;
    .locals 0

    .line 1
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lorg/maplibre/geojson/MultiLineString$GsonTypeAdapter;->createCoordinateContainer(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)Lorg/maplibre/geojson/CoordinateContainer;

    move-result-object p0

    return-object p0
.end method

.method public createCoordinateContainer(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)Lorg/maplibre/geojson/CoordinateContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/maplibre/geojson/BoundingBox;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;>;)",
            "Lorg/maplibre/geojson/CoordinateContainer<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;>;>;"
        }
    .end annotation

    .line 2
    new-instance p0, Lorg/maplibre/geojson/MultiLineString;

    if-nez p1, :cond_0

    const-string p1, "MultiLineString"

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/maplibre/geojson/MultiLineString;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic read(Le8/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/MultiLineString$GsonTypeAdapter;->read(Le8/b;)Lorg/maplibre/geojson/MultiLineString;

    move-result-object p0

    return-object p0
.end method

.method public read(Le8/b;)Lorg/maplibre/geojson/MultiLineString;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->readCoordinateContainer(Le8/b;)Lorg/maplibre/geojson/CoordinateContainer;

    move-result-object p0

    check-cast p0, Lorg/maplibre/geojson/MultiLineString;

    return-object p0
.end method

.method public bridge synthetic write(Le8/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/maplibre/geojson/MultiLineString;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/geojson/MultiLineString$GsonTypeAdapter;->write(Le8/c;Lorg/maplibre/geojson/MultiLineString;)V

    return-void
.end method

.method public write(Le8/c;Lorg/maplibre/geojson/MultiLineString;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/geojson/BaseGeometryTypeAdapter;->writeCoordinateContainer(Le8/c;Lorg/maplibre/geojson/CoordinateContainer;)V

    return-void
.end method
