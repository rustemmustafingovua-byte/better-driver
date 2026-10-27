.class final Lorg/maplibre/android/location/SymbolLocationLayerRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/location/LocationLayerRenderer;


# instance fields
.field private final layerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final layerSourceProvider:Lorg/maplibre/android/location/LayerSourceProvider;

.field private locationFeature:Lorg/maplibre/geojson/Feature;

.field private locationSource:Lorg/maplibre/android/style/sources/GeoJsonSource;

.field private style:Lorg/maplibre/android/maps/Style;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LayerSourceProvider;Lorg/maplibre/android/location/LayerFeatureProvider;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSourceProvider:Lorg/maplibre/android/location/LayerSourceProvider;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LayerSourceProvider;->getEmptyLayerSet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSet:Ljava/util/Set;

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    invoke-virtual {p2, p1, p3}, Lorg/maplibre/android/location/LayerFeatureProvider;->generateLocationFeature(Lorg/maplibre/geojson/Feature;Z)Lorg/maplibre/geojson/Feature;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    return-void
.end method

.method private addAccuracyLayer()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSourceProvider:Lorg/maplibre/android/location/LayerSourceProvider;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LayerSourceProvider;->generateAccuracyLayer()Lorg/maplibre/android/style/layers/Layer;

    move-result-object v0

    const-string v1, "mapbox-location-background-layer"

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addLayerToMap(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    return-void
.end method

.method private addLayerToMap(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSet:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLocationSource()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSourceProvider:Lorg/maplibre/android/location/LayerSourceProvider;

    iget-object v1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/LayerSourceProvider;->generateSource(Lorg/maplibre/geojson/Feature;Ljava/lang/Boolean;)Lorg/maplibre/android/style/sources/GeoJsonSource;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationSource:Lorg/maplibre/android/style/sources/GeoJsonSource;

    iget-object p0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    return-void
.end method

.method private addPulsingCircleLayerToMap()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSourceProvider:Lorg/maplibre/android/location/LayerSourceProvider;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LayerSourceProvider;->generatePulsingCircleLayer()Lorg/maplibre/android/style/layers/Layer;

    move-result-object v0

    const-string v1, "mapbox-location-accuracy-layer"

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addLayerToMap(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    return-void
.end method

.method private addSymbolLayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSourceProvider:Lorg/maplibre/android/location/LayerSourceProvider;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/location/LayerSourceProvider;->generateLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addLayerToMap(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    return-void
.end method

.method private refreshSource()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Style;->isFullyLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string v1, "mapbox-location-source"

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationSource:Lorg/maplibre/android/style/sources/GeoJsonSource;

    iget-object p0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/Feature;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setBearingProperty(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-direct {p0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->refreshSource()V

    return-void
.end method

.method private setLayerVisibility(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Style;->isFullyLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, "none"

    const-string v0, "visible"

    if-eqz p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->getVisibility()Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    iget-object v2, v2, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    move-object p1, v0

    :cond_2
    invoke-static {p1}, Lorg/maplibre/android/style/layers/PropertyFactory;->visibility(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    filled-new-array {p1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setLocationPoint(Lorg/maplibre/geojson/Point;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    invoke-virtual {v0}, Lorg/maplibre/geojson/Feature;->properties()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;Lcom/google/gson/JsonObject;)Lorg/maplibre/geojson/Feature;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    invoke-direct {p0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->refreshSource()V

    :cond_0
    return-void
.end method

.method private updateAccuracyRadius(F)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string v1, "mapbox-property-accuracy-radius"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-direct {p0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->refreshSource()V

    return-void
.end method

.method private updateForegroundBearing(F)V
    .locals 1

    const-string v0, "mapbox-property-gps-bearing"

    invoke-direct {p0, v0, p1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setBearingProperty(Ljava/lang/String;F)V

    return-void
.end method

.method private updateForegroundOffset(D)V
    .locals 4

    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    const-wide v2, -0x4056666666666666L    # -0.05

    mul-double/2addr v2, p1

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    iget-object v2, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string v3, "mapbox-property-foreground-icon-offset"

    invoke-virtual {v2, v3, v0}, Lorg/maplibre/geojson/Feature;->addProperty(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    const-wide v1, 0x3fa999999999999aL    # 0.05

    mul-double/2addr p1, v1

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string p2, "mapbox-property-shadow-icon-offset"

    invoke-virtual {p1, p2, v0}, Lorg/maplibre/geojson/Feature;->addProperty(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-direct {p0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->refreshSource()V

    return-void
.end method


# virtual methods
.method public addBitmaps(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string p1, "mapbox-location-shadow-icon"

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {p2, p1}, Lorg/maplibre/android/maps/Style;->removeImage(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string p2, "mapbox-location-stroke-icon"

    invoke-virtual {p1, p2, p3}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string p2, "mapbox-location-background-stale-icon"

    invoke-virtual {p1, p2, p4}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string p2, "mapbox-location-bearing-icon"

    invoke-virtual {p1, p2, p5}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string p2, "mapbox-location-icon"

    invoke-virtual {p1, p2, p6}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string p1, "mapbox-location-stale-icon"

    invoke-virtual {p0, p1, p7}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public addLayers(Lorg/maplibre/android/location/LocationComponentPositionManager;)V
    .locals 5

    iget-boolean v0, p1, Lorg/maplibre/android/location/LocationComponentPositionManager;->bearingOnTop:Z

    const-string v1, "mapbox-location-shadow-layer"

    const-string v2, "mapbox-location-background-layer"

    const-string v3, "mapbox-location-foreground-layer"

    const-string v4, "mapbox-location-bearing-layer"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSourceProvider:Lorg/maplibre/android/location/LayerSourceProvider;

    invoke-virtual {v0, v4}, Lorg/maplibre/android/location/LayerSourceProvider;->generateLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/maplibre/android/location/LocationComponentPositionManager;->addLayerToMap(Lorg/maplibre/android/style/layers/Layer;)V

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSet:Ljava/util/Set;

    invoke-virtual {v0}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3, v4}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addSymbolLayer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addSymbolLayer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addSymbolLayer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSourceProvider:Lorg/maplibre/android/location/LayerSourceProvider;

    invoke-virtual {v0, v3}, Lorg/maplibre/android/location/LayerSourceProvider;->generateLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/maplibre/android/location/LocationComponentPositionManager;->addLayerToMap(Lorg/maplibre/android/style/layers/Layer;)V

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSet:Ljava/util/Set;

    invoke-virtual {v0}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, v3}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addSymbolLayer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v2}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addSymbolLayer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v4}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addSymbolLayer(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addAccuracyLayer()V

    invoke-direct {p0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addPulsingCircleLayerToMap()V

    return-void
.end method

.method public adjustPulsingCircleLayerVisibility(Z)V
    .locals 1

    const-string v0, "mapbox-location-pulsing-circle-layer"

    invoke-direct {p0, v0, p1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public cameraBearingUpdated(D)V
    .locals 0

    double-to-float p1, p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->updateForegroundBearing(F)V

    return-void
.end method

.method public cameraTiltUpdated(D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->updateForegroundOffset(D)V

    return-void
.end method

.method public hide()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initializeComponents(Lorg/maplibre/android/maps/Style;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-direct {p0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->addLocationSource()V

    return-void
.end method

.method public removeLayers()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {v2, v1}, Lorg/maplibre/android/maps/Style;->removeLayer(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public setAccuracyRadius(Ljava/lang/Float;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->updateAccuracyRadius(F)V

    return-void
.end method

.method public setCompassBearing(Ljava/lang/Float;)V
    .locals 1

    const-string v0, "mapbox-property-compass-bearing"

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setBearingProperty(Ljava/lang/String;F)V

    return-void
.end method

.method public setGpsBearing(Ljava/lang/Float;)V
    .locals 1

    const-string v0, "mapbox-property-gps-bearing"

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setBearingProperty(Ljava/lang/String;F)V

    return-void
.end method

.method public setLatLng(Lorg/maplibre/android/geometry/LatLng;)V
    .locals 4

    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLocationPoint(Lorg/maplibre/geojson/Point;)V

    return-void
.end method

.method public setLocationStale(ZI)V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string v1, "mapbox-property-location-stale"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/geojson/Feature;->addBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->refreshSource()V

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "mapbox-location-accuracy-layer"

    invoke-direct {p0, p2, p1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public show(IZ)V
    .locals 8

    const/4 v0, 0x4

    const-string v1, "mapbox-location-bearing-layer"

    const-string v2, "mapbox-location-accuracy-layer"

    const-string v3, "mapbox-location-background-layer"

    const-string v4, "mapbox-location-foreground-layer"

    const-string v5, "mapbox-location-shadow-layer"

    const/4 v6, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    const/4 v7, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v5, v6}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0, v4, v6}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v6}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    xor-int/lit8 p1, p2, 0x1

    invoke-direct {p0, v2, p1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0, v1, v7}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-direct {p0, v5, v7}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0, v4, v6}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v6}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0, v2, v7}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0, v1, v7}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    return-void

    :cond_2
    invoke-direct {p0, v5, v6}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0, v4, v6}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v6}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    xor-int/lit8 p1, p2, 0x1

    invoke-direct {p0, v2, p1}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    invoke-direct {p0, v1, v6}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public styleAccuracy(FI)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string v1, "mapbox-property-accuracy-alpha"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string v0, "mapbox-property-accuracy-color"

    invoke-static {p2}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->refreshSource()V

    return-void
.end method

.method public stylePulsingCircle(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string v1, "mapbox-location-pulsing-circle-layer"

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->setLayerVisibility(Ljava/lang/String;Z)V

    iget-object p0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object p0

    const-string v0, "mapbox-property-pulsing-circle-radius"

    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleRadius(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleColor(I)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeColor(I)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    const-string v2, "mapbox-property-pulsing-circle-opacity"

    invoke-static {v2}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    filled-new-array {v0, v1, p1, v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    :cond_0
    return-void
.end method

.method public styleScaling(Lorg/maplibre/android/style/expressions/Expression;)V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->layerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {v2, v1}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v1

    instance-of v2, v1, Lorg/maplibre/android/style/layers/SymbolLayer;

    if-eqz v2, :cond_0

    invoke-static {p1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    filled-new-array {v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateIconIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string v1, "mapbox-property-foreground-icon"

    invoke-virtual {v0, v1, p1}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string v0, "mapbox-property-background-icon"

    invoke-virtual {p1, v0, p3}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string p3, "mapbox-property-foreground-stale-icon"

    invoke-virtual {p1, p3, p2}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string p2, "mapbox-property-background-stale-icon"

    invoke-virtual {p1, p2, p4}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string p2, "mapbox-property-shadow-icon"

    invoke-virtual {p1, p2, p5}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->refreshSource()V

    return-void
.end method

.method public updatePulsingUi(FLjava/lang/Float;)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string v1, "mapbox-property-pulsing-circle-radius"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->locationFeature:Lorg/maplibre/geojson/Feature;

    const-string v0, "mapbox-property-pulsing-circle-opacity"

    invoke-virtual {p1, v0, p2}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;->refreshSource()V

    return-void
.end method
