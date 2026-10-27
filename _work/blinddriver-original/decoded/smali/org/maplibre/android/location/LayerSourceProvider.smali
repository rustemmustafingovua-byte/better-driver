.class Lorg/maplibre/android/location/LayerSourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateAccuracyLayer()Lorg/maplibre/android/style/layers/Layer;
    .locals 5

    new-instance p0, Lorg/maplibre/android/style/layers/CircleLayer;

    const-string v0, "mapbox-location-accuracy-layer"

    const-string v1, "mapbox-location-source"

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mapbox-property-accuracy-radius"

    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleRadius(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    const-string v1, "mapbox-property-accuracy-color"

    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v3, "mapbox-property-accuracy-alpha"

    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    const-string v4, "map"

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->circlePitchAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    filled-new-array {v0, v2, v3, v1, v4}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/style/layers/CircleLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/CircleLayer;

    move-result-object p0

    return-object p0
.end method

.method public generateLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;
    .locals 16

    new-instance v0, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v1, "mapbox-location-source"

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const-string v1, "map"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconRotationAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    const-string v7, "mapbox-property-gps-bearing"

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    const-string v9, "mapbox-location-foreground-layer"

    invoke-static {v9, v8}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v8

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v10

    const-string v11, "mapbox-location-background-layer"

    invoke-static {v11, v10}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v10

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    const-string v12, "mapbox-location-shadow-layer"

    invoke-static {v12, v7}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v7

    const-string v13, "mapbox-property-compass-bearing"

    invoke-static {v13}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v13

    const-string v14, "mapbox-location-bearing-layer"

    invoke-static {v14, v13}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v13

    filled-new-array {v8, v10, v7, v13}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconRotate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    const-string v7, ""

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    const-string v8, "mapbox-property-location-stale"

    invoke-static {v8}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v10

    const-string v13, "mapbox-property-foreground-stale-icon"

    invoke-static {v13}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v13

    const-string v15, "mapbox-property-foreground-icon"

    invoke-static {v15}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v15

    filled-new-array {v10, v13, v15}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v10

    invoke-static {v10}, Lorg/maplibre/android/style/expressions/Expression;->switchCase([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v10

    invoke-static {v8}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    const-string v13, "mapbox-property-background-stale-icon"

    invoke-static {v13}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v13

    const-string v15, "mapbox-property-background-icon"

    invoke-static {v15}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v15

    filled-new-array {v8, v13, v15}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static {v8}, Lorg/maplibre/android/style/expressions/Expression;->switchCase([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static {v11, v8}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v8

    const-string v11, "mapbox-location-shadow-icon"

    invoke-static {v11}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v11

    invoke-static {v12, v11}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v11

    const-string v13, "mapbox-property-shadow-icon"

    invoke-static {v13}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v13

    invoke-static {v14, v13}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v13

    filled-new-array {v10, v8, v11, v13}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconImage(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    filled-new-array {v5, v5}, [Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lorg/maplibre/android/style/expressions/Expression;->literal([Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v5

    invoke-static {v9}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    const-string v9, "mapbox-property-foreground-icon-offset"

    invoke-static {v9}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v8

    invoke-static {v12}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    const-string v10, "mapbox-property-shadow-icon-offset"

    invoke-static {v10}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v9

    filled-new-array {v8, v9}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v8

    invoke-static {v7, v5, v8}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v5

    invoke-static {v5}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconOffset(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v7

    move-object v5, v1

    filled-new-array/range {v2 .. v7}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-object v0
.end method

.method public generateLocationComponentLayer()Lorg/maplibre/android/style/layers/Layer;
    .locals 3

    new-instance p0, Lorg/maplibre/android/location/LocationIndicatorLayer;

    const-string v0, "mapbox-location-foreground-layer"

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationIndicatorLayer;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/maplibre/android/style/layers/TransitionOptions;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/maplibre/android/style/layers/TransitionOptions;-><init>(JJ)V

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationIndicatorLayer;->setLocationTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V

    const v0, 0x3f666666    # 0.9f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/location/LocationPropertyFactory;->perspectiveCompensation(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/location/LocationPropertyFactory;->imageTiltDisplacement(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    filled-new-array {v0, v1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public generatePulsingCircleLayer()Lorg/maplibre/android/style/layers/Layer;
    .locals 2

    new-instance p0, Lorg/maplibre/android/style/layers/CircleLayer;

    const-string v0, "mapbox-location-pulsing-circle-layer"

    const-string v1, "mapbox-location-source"

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {v0}, Lorg/maplibre/android/style/layers/PropertyFactory;->circlePitchAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    filled-new-array {v0}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/style/layers/CircleLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/CircleLayer;

    move-result-object p0

    return-object p0
.end method

.method public generateSource(Lorg/maplibre/geojson/Feature;)Lorg/maplibre/android/style/sources/GeoJsonSource;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/location/LayerSourceProvider;->generateSource(Lorg/maplibre/geojson/Feature;Ljava/lang/Boolean;)Lorg/maplibre/android/style/sources/GeoJsonSource;

    move-result-object p0

    return-object p0
.end method

.method public generateSource(Lorg/maplibre/geojson/Feature;Ljava/lang/Boolean;)Lorg/maplibre/android/style/sources/GeoJsonSource;
    .locals 2

    .line 2
    new-instance p0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonOptions;

    invoke-direct {v0}, Lorg/maplibre/android/style/sources/GeoJsonOptions;-><init>()V

    const/16 v1, 0x10

    .line 3
    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/sources/GeoJsonOptions;->withMaxZoom(I)Lorg/maplibre/android/style/sources/GeoJsonOptions;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p2}, Lorg/maplibre/android/style/sources/GeoJsonOptions;->withSynchronousUpdate(Z)Lorg/maplibre/android/style/sources/GeoJsonOptions;

    move-result-object p2

    const-string v0, "mapbox-location-source"

    invoke-direct {p0, v0, p1, p2}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/Feature;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V

    return-object p0
.end method

.method public getEmptyLayerSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public getIndicatorLocationLayerRenderer()Lorg/maplibre/android/location/LocationLayerRenderer;
    .locals 1

    new-instance v0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;-><init>(Lorg/maplibre/android/location/LayerSourceProvider;)V

    return-object v0
.end method

.method public getSymbolLocationLayerRenderer(Lorg/maplibre/android/location/LayerFeatureProvider;Z)Lorg/maplibre/android/location/LocationLayerRenderer;
    .locals 1

    new-instance v0, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;

    invoke-direct {v0, p0, p1, p2}, Lorg/maplibre/android/location/SymbolLocationLayerRenderer;-><init>(Lorg/maplibre/android/location/LayerSourceProvider;Lorg/maplibre/android/location/LayerFeatureProvider;Z)V

    return-object v0
.end method
