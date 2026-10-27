.class abstract Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;
.super Lw7/u;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lw7/u;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readPoint(Le8/b;)Lorg/maplibre/geojson/Point;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;->readPointList(Le8/b;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    new-instance p1, Lorg/maplibre/geojson/Point;

    const-string v0, "Point"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lorg/maplibre/geojson/Point;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p1

    :cond_0
    new-instance p0, Lorg/maplibre/geojson/exception/GeoJsonException;

    const-string p1, " Point coordinates should be non-null double array"

    invoke-direct {p0, p1}, Lorg/maplibre/geojson/exception/GeoJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readPointList(Le8/b;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/b;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Le8/b;->Z()I

    move-result p0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Le8/b;->b()V

    :goto_0
    invoke-virtual {p1}, Le8/b;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Le8/b;->P()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le8/b;->k()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-le p1, v2, :cond_1

    invoke-static {}, Lorg/maplibre/geojson/shifter/CoordinateShifterManager;->getCoordinateShifter()Lorg/maplibre/geojson/shifter/CoordinateShifter;

    move-result-object v3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-interface/range {v3 .. v9}, Lorg/maplibre/geojson/shifter/CoordinateShifter;->shiftLonLatAlt(DDD)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lorg/maplibre/geojson/shifter/CoordinateShifterManager;->getCoordinateShifter()Lorg/maplibre/geojson/shifter/CoordinateShifter;

    move-result-object p1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {p1, v1, v2, v3, v4}, Lorg/maplibre/geojson/shifter/CoordinateShifter;->shiftLonLat(DD)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public writePoint(Le8/c;Lorg/maplibre/geojson/Point;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/maplibre/geojson/Point;->coordinates()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/geojson/BaseCoordinatesTypeAdapter;->writePointList(Le8/c;Ljava/util/List;)V

    return-void
.end method

.method public writePointList(Le8/c;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/c;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Le8/c;->c()V

    invoke-static {}, Lorg/maplibre/geojson/shifter/CoordinateShifterManager;->getCoordinateShifter()Lorg/maplibre/geojson/shifter/CoordinateShifter;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/maplibre/geojson/shifter/CoordinateShifter;->unshiftPoint(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/maplibre/geojson/utils/GeoJsonUtils;->trim(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le8/c;->C(D)V

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/maplibre/geojson/utils/GeoJsonUtils;->trim(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le8/c;->C(D)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-le p2, v0, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p1, p0}, Le8/c;->P(Ljava/lang/Number;)V

    :cond_1
    invoke-virtual {p1}, Le8/c;->k()V

    return-void
.end method
