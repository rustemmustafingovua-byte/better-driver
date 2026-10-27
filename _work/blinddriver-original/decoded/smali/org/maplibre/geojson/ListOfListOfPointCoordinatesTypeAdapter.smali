.class Lorg/maplibre/geojson/ListOfListOfPointCoordinatesTypeAdapter;
.super Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter<",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Lorg/maplibre/geojson/Point;",
        ">;>;>;"
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
    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/ListOfListOfPointCoordinatesTypeAdapter;->read(Le8/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public read(Le8/b;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/b;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    .line 3
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p1}, Le8/b;->b()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Le8/b;->b()V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_1
    invoke-virtual {p1}, Le8/b;->Z()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;->readPoint(Le8/b;)Lorg/maplibre/geojson/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Le8/b;->k()V

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Le8/b;->k()V

    return-object v0

    .line 14
    :cond_2
    new-instance p0, Lorg/maplibre/geojson/exception/GeoJsonException;

    const-string p1, "coordinates should be array of array of array of double"

    invoke-direct {p0, p1}, Lorg/maplibre/geojson/exception/GeoJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public bridge synthetic write(Le8/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/geojson/ListOfListOfPointCoordinatesTypeAdapter;->write(Le8/c;Ljava/util/List;)V

    return-void
.end method

.method public write(Le8/c;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/c;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Le8/c;->t()Le8/c;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Le8/c;->c()V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Le8/c;->c()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/geojson/Point;

    .line 7
    invoke-virtual {p0, p1, v1}, Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;->writePoint(Le8/c;Lorg/maplibre/geojson/Point;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Le8/c;->k()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Le8/c;->k()V

    return-void
.end method
