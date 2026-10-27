.class public final Lorg/maplibre/android/style/sources/GeoJsonSource;
.super Lorg/maplibre/android/style/sources/Source;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/sources/Source;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    if-eqz p2, :cond_0

    .line 9
    const-string v0, "http"

    const/4 v1, 0x0

    .line 10
    invoke-static {p2, v0, v1}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0, p2}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected a raw json body"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    if-eqz p2, :cond_0

    .line 15
    const-string v0, "http"

    const/4 v1, 0x0

    .line 16
    invoke-static {p2, v0, v1}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    const-string v0, "asset"

    .line 18
    invoke-static {p2, v0, v1}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    const-string v0, "file"

    .line 20
    invoke-static {p2, v0, v1}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0, p1, p3}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0, p2}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected a raw json body"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeSetUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 34
    invoke-virtual {p0, p1, p3}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeSetUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 1
    .annotation runtime Lt8/c;
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeSetUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V
    .locals 1
    .annotation runtime Lt8/c;
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 28
    invoke-virtual {p0, p1, p3}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeSetUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/Feature;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p2}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/Feature;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/Feature;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 46
    invoke-virtual {p0, p1, p3}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0, p2}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/Feature;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 40
    invoke-virtual {p0, p1, p3}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, p2}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0, p2}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/Geometry;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/Geometry;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 52
    invoke-virtual {p0, p1, p3}, Lorg/maplibre/android/style/sources/GeoJsonSource;->initialize(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, p2}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/Geometry;)V

    return-void
.end method

.method private final getUrlInternal()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeGetUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final native nativeGetClusterChildren(Lorg/maplibre/geojson/Feature;)[Lorg/maplibre/geojson/Feature;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeGetClusterExpansionZoom(Lorg/maplibre/geojson/Feature;)I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeGetClusterLeaves(Lorg/maplibre/geojson/Feature;JJ)[Lorg/maplibre/geojson/Feature;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeIsUpdateSynchronous()Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeSetFeature(Lorg/maplibre/geojson/Feature;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeSetFeatureCollection(Lorg/maplibre/geojson/FeatureCollection;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeSetGeoJsonString(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeSetGeometry(Lorg/maplibre/geojson/Geometry;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native nativeSetOverrideSynchronousUpdate(Z)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final native querySourceFeatures([Ljava/lang/Object;)[Lorg/maplibre/geojson/Feature;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private final setUrlInternal(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeSetUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final getClusterChildren(Lorg/maplibre/geojson/Feature;)Lorg/maplibre/geojson/FeatureCollection;
    .locals 1

    const-string v0, "cluster"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-direct {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeGetClusterChildren(Lorg/maplibre/geojson/Feature;)[Lorg/maplibre/geojson/Feature;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures([Lorg/maplibre/geojson/Feature;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    const-string p1, "fromFeatures(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getClusterExpansionZoom(Lorg/maplibre/geojson/Feature;)I
    .locals 1

    const-string v0, "cluster"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-direct {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeGetClusterExpansionZoom(Lorg/maplibre/geojson/Feature;)I

    move-result p0

    return p0
.end method

.method public final getClusterLeaves(Lorg/maplibre/geojson/Feature;JJ)Lorg/maplibre/geojson/FeatureCollection;
    .locals 1

    const-string v0, "cluster"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-direct/range {p0 .. p5}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeGetClusterLeaves(Lorg/maplibre/geojson/Feature;JJ)[Lorg/maplibre/geojson/Feature;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures([Lorg/maplibre/geojson/Feature;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p0

    const-string p1, "fromFeatures(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getFeatureState(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 1

    const-string v0, "featureId"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/maplibre/android/style/sources/Source;->nativeGetFeatureState(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeGetUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation runtime Lt8/c;
    .end annotation

    invoke-direct {p0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->getUrlInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final native initialize(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native nativeGetUrl()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native nativeSetUrl(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final querySourceFeatures(Lorg/maplibre/android/style/expressions/Expression;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/maplibre/android/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->querySourceFeatures([Ljava/lang/Object;)[Lorg/maplibre/geojson/Feature;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "asList(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final removeFeatureState(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "featureId"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v0}, Lorg/maplibre/android/style/sources/Source;->nativeRemoveFeatureState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeFeatureState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lorg/maplibre/android/style/sources/Source;->nativeRemoveFeatureState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final resetFeatureStates()Z
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lorg/maplibre/android/style/sources/Source;->nativeRemoveFeatureState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setFeatureState(Ljava/lang/String;Lcom/google/gson/JsonObject;)Z
    .locals 1

    const-string v0, "featureId"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/maplibre/android/style/sources/Source;->nativeSetFeatureState(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public final setGeoJson(Ljava/lang/String;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lorg/maplibre/android/style/sources/Source;->detached:Z

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 16
    invoke-direct {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeSetGeoJsonString(Ljava/lang/String;)V

    return-void
.end method

.method public final setGeoJson(Lorg/maplibre/geojson/Feature;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/maplibre/android/style/sources/Source;->detached:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 3
    invoke-direct {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeSetFeature(Lorg/maplibre/geojson/Feature;)V

    return-void
.end method

.method public final setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V
    .locals 1

    .line 7
    iget-boolean v0, p0, Lorg/maplibre/android/style/sources/Source;->detached:Z

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-static {v0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object p1

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeSetFeatureCollection(Lorg/maplibre/geojson/FeatureCollection;)V

    return-void
.end method

.method public final setGeoJson(Lorg/maplibre/geojson/Geometry;)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lorg/maplibre/android/style/sources/Source;->detached:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 6
    invoke-direct {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeSetGeometry(Lorg/maplibre/geojson/Geometry;)V

    return-void
.end method

.method public final setOverrideSynchronousUpdate(Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-direct {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeSetOverrideSynchronousUpdate(Z)V

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->nativeSetUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final setUri(Ljava/net/URI;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setUri(Ljava/lang/String;)V

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lt8/c;
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setUrlInternal(Ljava/lang/String;)V

    return-void
.end method

.method public final setUrl(Ljava/net/URL;)V
    .locals 1
    .annotation runtime Lt8/c;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    .line 2
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setUrl(Ljava/lang/String;)V

    return-void
.end method
