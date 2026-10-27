.class public final Lorg/maplibre/turf/TurfJoins;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static inRing(Lorg/maplibre/geojson/Point;Ljava/util/List;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/geojson/Point;",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    move v5, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/maplibre/geojson/Point;

    invoke-virtual {v6}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/maplibre/geojson/Point;

    invoke-virtual {v8}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/maplibre/geojson/Point;

    invoke-virtual {v10}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/maplibre/geojson/Point;

    invoke-virtual {v4}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v14

    cmpl-double v4, v8, v14

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v14

    cmpl-double v14, v12, v14

    if-lez v14, :cond_1

    move v14, v2

    goto :goto_2

    :cond_1
    move v14, v3

    :goto_2
    if-eq v4, v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v14

    sub-double/2addr v10, v6

    invoke-virtual/range {p0 .. p0}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v16

    sub-double v16, v16, v8

    mul-double v16, v16, v10

    sub-double/2addr v12, v8

    div-double v16, v16, v12

    add-double v16, v16, v6

    cmpg-double v4, v14, v16

    if-gez v4, :cond_2

    xor-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v1, 0x1

    move/from16 v18, v4

    move v4, v1

    move/from16 v1, v18

    goto :goto_0

    :cond_3
    return v5
.end method

.method public static inside(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/MultiPolygon;)Z
    .locals 7

    .line 5
    invoke-virtual {p1}, Lorg/maplibre/geojson/MultiPolygon;->coordinates()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    if-nez v2, :cond_3

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {p0, v3}, Lorg/maplibre/turf/TurfJoins;->inRing(Lorg/maplibre/geojson/Point;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v5, v0

    move v4, v3

    .line 8
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    if-nez v5, :cond_1

    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {p0, v6}, Lorg/maplibre/turf/TurfJoins;->inRing(Lorg/maplibre/geojson/Point;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static inside(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Polygon;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/maplibre/geojson/Polygon;->coordinates()Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {v0}, Lorg/maplibre/geojson/MultiPolygon;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/MultiPolygon;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/turf/TurfJoins;->inside(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/MultiPolygon;)Z

    move-result p0

    return p0
.end method

.method public static pointsWithinPolygon(Lorg/maplibre/geojson/FeatureCollection;Lorg/maplibre/geojson/FeatureCollection;)Lorg/maplibre/geojson/FeatureCollection;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {p0}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/maplibre/geojson/Feature;

    invoke-virtual {v4}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v4

    check-cast v4, Lorg/maplibre/geojson/Point;

    invoke-virtual {p1}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/maplibre/geojson/Feature;

    invoke-virtual {v5}, Lorg/maplibre/geojson/Feature;->geometry()Lorg/maplibre/geojson/Geometry;

    move-result-object v5

    check-cast v5, Lorg/maplibre/geojson/Polygon;

    invoke-static {v4, v5}, Lorg/maplibre/turf/TurfJoins;->inside(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Polygon;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    return-object p0
.end method
