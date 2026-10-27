.class Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/location/LocationLayerRenderer;


# instance fields
.field private lastAccuracy:F

.field private lastBearing:D

.field private lastLatLng:Lorg/maplibre/android/geometry/LatLng;

.field private layer:Lorg/maplibre/android/style/layers/Layer;

.field private final layerSourceProvider:Lorg/maplibre/android/location/LayerSourceProvider;

.field private style:Lorg/maplibre/android/maps/Style;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LayerSourceProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->lastBearing:D

    const/4 v0, 0x0

    iput v0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->lastAccuracy:F

    iput-object p1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layerSourceProvider:Lorg/maplibre/android/location/LayerSourceProvider;

    return-void
.end method

.method private setImages(IZ)V
    .locals 8

    const/4 v0, 0x4

    const-string v1, "mapbox-location-shadow-icon"

    const-string v2, "mapbox-location-icon"

    const-string v3, "mapbox-location-stale-icon"

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8

    const-string v4, "mapbox-location-stroke-icon"

    const-string v5, "mapbox-location-background-stale-icon"

    const-string v6, ""

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    move-object v1, v6

    move-object v2, v1

    goto :goto_3

    :cond_0
    if-eqz p2, :cond_1

    move-object v2, v3

    :cond_1
    if-eqz p2, :cond_2

    move-object v4, v5

    :cond_2
    move-object v6, v2

    move-object v2, v4

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    move-object v2, v3

    :cond_4
    if-eqz p2, :cond_5

    move-object v1, v5

    goto :goto_0

    :cond_5
    move-object v1, v4

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->setAccuracyRadius(Ljava/lang/Float;)V

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    move-object v2, v3

    :cond_7
    if-eqz p2, :cond_8

    const-string p1, "mapbox-location-bearing-stale-icon"

    :goto_1
    move-object v6, p1

    goto :goto_2

    :cond_8
    const-string p1, "mapbox-location-bearing-icon"

    goto :goto_1

    :goto_2
    move-object v7, v6

    move-object v6, v2

    move-object v2, v7

    :goto_3
    iget-object p0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layer:Lorg/maplibre/android/style/layers/Layer;

    invoke-static {v6}, Lorg/maplibre/android/location/LocationPropertyFactory;->topImage(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    invoke-static {v2}, Lorg/maplibre/android/location/LocationPropertyFactory;->bearingImage(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p2

    invoke-static {v1}, Lorg/maplibre/android/location/LocationPropertyFactory;->shadowImage(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-void
.end method

.method private setLayerBearing(D)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layer:Lorg/maplibre/android/style/layers/Layer;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/location/LocationPropertyFactory;->bearing(Ljava/lang/Double;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    filled-new-array {v1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    iput-wide p1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->lastBearing:D

    return-void
.end method

.method private setLayerLocation(Lorg/maplibre/android/geometry/LatLng;)V
    .locals 4

    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layer:Lorg/maplibre/android/style/layers/Layer;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationPropertyFactory;->location([Ljava/lang/Double;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    filled-new-array {v0}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    iput-object p1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->lastLatLng:Lorg/maplibre/android/geometry/LatLng;

    return-void
.end method

.method private setLayerVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layer:Lorg/maplibre/android/style/layers/Layer;

    if-eqz p1, :cond_0

    const-string p1, "visible"

    goto :goto_0

    :cond_0
    const-string p1, "none"

    :goto_0
    invoke-static {p1}, Lorg/maplibre/android/location/LocationPropertyFactory;->visibility(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    filled-new-array {p1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-void
.end method


# virtual methods
.method public addBitmaps(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "mapbox-location-shadow-icon"

    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {v1, v0, p2}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {p2, v0}, Lorg/maplibre/android/maps/Style;->removeImage(Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string v0, "mapbox-location-icon"

    invoke-virtual {p2, v0, p6}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string p6, "mapbox-location-stale-icon"

    invoke-virtual {p2, p6, p7}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p2, 0x4

    const-string p6, "mapbox-location-bearing-icon"

    if-ne p1, p2, :cond_1

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p7

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr p7, v0

    int-to-float p7, p7

    div-float/2addr p7, p2

    iget-object v0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-static {p5, p3, p1, p7}, Lorg/maplibre/android/utils/BitmapUtils;->mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p6, p1}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p6

    sub-int/2addr p3, p6

    int-to-float p3, p3

    div-float/2addr p3, p2

    iget-object p0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string p2, "mapbox-location-bearing-stale-icon"

    invoke-static {p5, p4, p1, p3}, Lorg/maplibre/android/utils/BitmapUtils;->mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string p2, "mapbox-location-stroke-icon"

    invoke-virtual {p1, p2, p3}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    const-string p2, "mapbox-location-background-stale-icon"

    invoke-virtual {p1, p2, p4}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    invoke-virtual {p0, p6, p5}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public addLayers(Lorg/maplibre/android/location/LocationComponentPositionManager;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layer:Lorg/maplibre/android/style/layers/Layer;

    invoke-virtual {p1, p0}, Lorg/maplibre/android/location/LocationComponentPositionManager;->addLayerToMap(Lorg/maplibre/android/style/layers/Layer;)V

    return-void
.end method

.method public adjustPulsingCircleLayerVisibility(Z)V
    .locals 0

    return-void
.end method

.method public cameraBearingUpdated(D)V
    .locals 0

    return-void
.end method

.method public cameraTiltUpdated(D)V
    .locals 0

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->setLayerVisibility(Z)V

    return-void
.end method

.method public initializeComponents(Lorg/maplibre/android/maps/Style;)V
    .locals 2

    iput-object p1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    iget-object p1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layerSourceProvider:Lorg/maplibre/android/location/LayerSourceProvider;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LayerSourceProvider;->generateLocationComponentLayer()Lorg/maplibre/android/style/layers/Layer;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layer:Lorg/maplibre/android/style/layers/Layer;

    iget-object p1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->lastLatLng:Lorg/maplibre/android/geometry/LatLng;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->setLatLng(Lorg/maplibre/android/geometry/LatLng;)V

    :cond_0
    iget-wide v0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->lastBearing:D

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->setLayerBearing(D)V

    iget p1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->lastAccuracy:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->setAccuracyRadius(Ljava/lang/Float;)V

    return-void
.end method

.method public removeLayers()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->style:Lorg/maplibre/android/maps/Style;

    iget-object p0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layer:Lorg/maplibre/android/style/layers/Layer;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/Style;->removeLayer(Lorg/maplibre/android/style/layers/Layer;)Z

    return-void
.end method

.method public setAccuracyRadius(Ljava/lang/Float;)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layer:Lorg/maplibre/android/style/layers/Layer;

    invoke-static {p1}, Lorg/maplibre/android/location/LocationPropertyFactory;->accuracyRadius(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    filled-new-array {v1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->lastAccuracy:F

    return-void
.end method

.method public setCompassBearing(Ljava/lang/Float;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->setLayerBearing(D)V

    return-void
.end method

.method public setGpsBearing(Ljava/lang/Float;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->setLayerBearing(D)V

    return-void
.end method

.method public setLatLng(Lorg/maplibre/android/geometry/LatLng;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->setLayerLocation(Lorg/maplibre/android/geometry/LatLng;)V

    return-void
.end method

.method public setLocationStale(ZI)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->setImages(IZ)V

    return-void
.end method

.method public show(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->setImages(IZ)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->setLayerVisibility(Z)V

    return-void
.end method

.method public styleAccuracy(FI)V
    .locals 3

    invoke-static {p2}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaArray(I)[F

    move-result-object p2

    const/4 v0, 0x3

    aput p1, p2, v0

    const/4 p1, 0x0

    aget p1, p2, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lorg/maplibre/android/style/expressions/Expression;->rgba(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    iget-object p0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layer:Lorg/maplibre/android/style/layers/Layer;

    invoke-static {p1}, Lorg/maplibre/android/location/LocationPropertyFactory;->accuracyRadiusColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p2

    invoke-static {p1}, Lorg/maplibre/android/location/LocationPropertyFactory;->accuracyRadiusBorderColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    filled-new-array {p2, p1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-void
.end method

.method public stylePulsingCircle(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 0

    return-void
.end method

.method public styleScaling(Lorg/maplibre/android/style/expressions/Expression;)V
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/location/IndicatorLocationLayerRenderer;->layer:Lorg/maplibre/android/style/layers/Layer;

    invoke-static {p1}, Lorg/maplibre/android/location/LocationPropertyFactory;->shadowImageSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-static {p1}, Lorg/maplibre/android/location/LocationPropertyFactory;->bearingImageSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-static {p1}, Lorg/maplibre/android/location/LocationPropertyFactory;->topImageSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-void
.end method

.method public updateIconIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updatePulsingUi(FLjava/lang/Float;)V
    .locals 0

    return-void
.end method
