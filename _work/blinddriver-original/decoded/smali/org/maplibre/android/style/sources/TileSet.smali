.class public final Lorg/maplibre/android/style/sources/TileSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attribution:Ljava/lang/String;

.field private bounds:[Ljava/lang/Float;

.field private center:[Ljava/lang/Float;

.field private data:[Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private grids:[Ljava/lang/String;

.field private legend:Ljava/lang/String;

.field public maxZoom:Ljava/lang/Float;

.field public minZoom:Ljava/lang/Float;

.field private name:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private template:Ljava/lang/String;

.field private final tilejson:Ljava/lang/String;

.field private final tiles:[Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "tilejson"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tiles"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->tilejson:Ljava/lang/String;

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->tiles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAttribution()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->attribution:Ljava/lang/String;

    return-object p0
.end method

.method public final getBounds()[Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->bounds:[Ljava/lang/Float;

    return-object p0
.end method

.method public final getCenter()[Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->center:[Ljava/lang/Float;

    return-object p0
.end method

.method public final getData()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->data:[Ljava/lang/String;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public final getGrids()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->grids:[Ljava/lang/String;

    return-object p0
.end method

.method public final getLegend()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->legend:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaxZoom()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->maxZoom:Ljava/lang/Float;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getMinZoom()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->minZoom:Ljava/lang/Float;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemplate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->template:Ljava/lang/String;

    return-object p0
.end method

.method public final getTilejson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->tilejson:Ljava/lang/String;

    return-object p0
.end method

.method public final getTiles()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->tiles:[Ljava/lang/String;

    return-object p0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->version:Ljava/lang/String;

    return-object p0
.end method

.method public final setAttribution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->attribution:Ljava/lang/String;

    return-void
.end method

.method public final setBounds(FFFF)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->bounds:[Ljava/lang/Float;

    return-void
.end method

.method public final setBounds(Lorg/maplibre/android/geometry/LatLngBounds;)V
    .locals 5

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-wide v0, p1, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    double-to-float v0, v0

    iget-wide v1, p1, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    double-to-float v1, v1

    iget-wide v2, p1, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    double-to-float v2, v2

    iget-wide v3, p1, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    double-to-float p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/maplibre/android/style/sources/TileSet;->setBounds(FFFF)V

    return-void
.end method

.method public final varargs setBounds([F)V
    .locals 4

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Float;

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v0, p0, Lorg/maplibre/android/style/sources/TileSet;->bounds:[Ljava/lang/Float;

    return-void
.end method

.method public final setBounds([Ljava/lang/Float;)V
    .locals 1
    .annotation runtime Lt8/c;
    .end annotation

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->bounds:[Ljava/lang/Float;

    return-void
.end method

.method public final setCenter(Lorg/maplibre/android/geometry/LatLng;)V
    .locals 3

    const-string v0, "center"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->center:[Ljava/lang/Float;

    return-void
.end method

.method public final varargs setCenter([F)V
    .locals 5
    .annotation runtime Lt8/c;
    .end annotation

    const-string v0, "center"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    const/4 v1, 0x1

    aget v1, p1, v1

    float-to-double v1, v1

    const/4 v3, 0x0

    aget p1, p1, v3

    float-to-double v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/maplibre/android/style/sources/TileSet;->setCenter(Lorg/maplibre/android/geometry/LatLng;)V

    return-void
.end method

.method public final varargs setData([Ljava/lang/String;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->data:[Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->description:Ljava/lang/String;

    return-void
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->encoding:Ljava/lang/String;

    return-void
.end method

.method public final varargs setGrids([Ljava/lang/String;)V
    .locals 1

    const-string v0, "grids"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->grids:[Ljava/lang/String;

    return-void
.end method

.method public final setLegend(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->legend:Ljava/lang/String;

    return-void
.end method

.method public final setMaxZoom(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->maxZoom:Ljava/lang/Float;

    return-void
.end method

.method public final setMinZoom(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->minZoom:Ljava/lang/Float;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->name:Ljava/lang/String;

    return-void
.end method

.method public final setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->scheme:Ljava/lang/String;

    return-void
.end method

.method public final setTemplate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->template:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/style/sources/TileSet;->version:Ljava/lang/String;

    return-void
.end method

.method public final toValueObject()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tilejson"

    iget-object v2, p0, Lorg/maplibre/android/style/sources/TileSet;->tilejson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tiles"

    iget-object v2, p0, Lorg/maplibre/android/style/sources/TileSet;->tiles:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "description"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->version:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->attribution:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "attribution"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->template:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "template"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->legend:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "legend"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "scheme"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->grids:[Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "grids"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->data:[Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->minZoom:Ljava/lang/Float;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "minzoom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->maxZoom:Ljava/lang/Float;

    if-eqz v1, :cond_a

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "maxzoom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->bounds:[Ljava/lang/Float;

    if-eqz v1, :cond_b

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "bounds"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v1, p0, Lorg/maplibre/android/style/sources/TileSet;->center:[Ljava/lang/Float;

    if-eqz v1, :cond_c

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v2, "center"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object p0, p0, Lorg/maplibre/android/style/sources/TileSet;->encoding:Ljava/lang/String;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v1, "encoding"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object v0
.end method
