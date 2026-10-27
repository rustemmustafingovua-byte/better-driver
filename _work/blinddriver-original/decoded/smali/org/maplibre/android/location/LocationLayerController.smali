.class final Lorg/maplibre/android/location/LocationLayerController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-LocationLayerController"


# instance fields
.field private final accuracyValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final bitmapProvider:Lorg/maplibre/android/location/LayerBitmapProvider;

.field private final compassBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final gpsBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final internalRenderModeChangedListener:Lorg/maplibre/android/location/OnRenderModeChangedListener;

.field private isHidden:Z

.field private isStale:Z

.field private final latLngValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

.field private final maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

.field private options:Lorg/maplibre/android/location/LocationComponentOptions;

.field private positionManager:Lorg/maplibre/android/location/LocationComponentPositionManager;

.field private final pulsingCircleRadiusListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private renderMode:I

.field private final useSpecializedLocationLayer:Z


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/LayerSourceProvider;Lorg/maplibre/android/location/LayerFeatureProvider;Lorg/maplibre/android/location/LayerBitmapProvider;Lorg/maplibre/android/location/LocationComponentOptions;Lorg/maplibre/android/location/OnRenderModeChangedListener;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    new-instance v0, Lorg/maplibre/android/location/LocationLayerController$1;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationLayerController$1;-><init>(Lorg/maplibre/android/location/LocationLayerController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->latLngValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    new-instance v0, Lorg/maplibre/android/location/LocationLayerController$2;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationLayerController$2;-><init>(Lorg/maplibre/android/location/LocationLayerController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->gpsBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    new-instance v0, Lorg/maplibre/android/location/LocationLayerController$3;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationLayerController$3;-><init>(Lorg/maplibre/android/location/LocationLayerController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->compassBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    new-instance v0, Lorg/maplibre/android/location/LocationLayerController$4;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationLayerController$4;-><init>(Lorg/maplibre/android/location/LocationLayerController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->accuracyValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    new-instance v0, Lorg/maplibre/android/location/LocationLayerController$5;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationLayerController$5;-><init>(Lorg/maplibre/android/location/LocationLayerController;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->pulsingCircleRadiusListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    iput-object p1, p0, Lorg/maplibre/android/location/LocationLayerController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iput-object p5, p0, Lorg/maplibre/android/location/LocationLayerController;->bitmapProvider:Lorg/maplibre/android/location/LayerBitmapProvider;

    iput-object p7, p0, Lorg/maplibre/android/location/LocationLayerController;->internalRenderModeChangedListener:Lorg/maplibre/android/location/OnRenderModeChangedListener;

    iput-boolean p8, p0, Lorg/maplibre/android/location/LocationLayerController;->useSpecializedLocationLayer:Z

    invoke-virtual {p6}, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState()Z

    move-result p1

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationLayerController;->isStale:Z

    if-eqz p8, :cond_0

    invoke-virtual {p3}, Lorg/maplibre/android/location/LayerSourceProvider;->getIndicatorLocationLayerRenderer()Lorg/maplibre/android/location/LocationLayerRenderer;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p4, p1}, Lorg/maplibre/android/location/LayerSourceProvider;->getSymbolLocationLayerRenderer(Lorg/maplibre/android/location/LayerFeatureProvider;Z)Lorg/maplibre/android/location/LocationLayerRenderer;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    :goto_0
    invoke-virtual {p0, p2, p6}, Lorg/maplibre/android/location/LocationLayerController;->initializeComponents(Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/LocationComponentOptions;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/location/LocationLayerController;)Lorg/maplibre/android/location/LocationLayerRenderer;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/location/LocationLayerController;)Lorg/maplibre/android/location/LocationComponentOptions;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    return-object p0
.end method

.method private buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationLayerController;->useSpecializedLocationLayer:Z

    if-eqz p0, :cond_0

    const-string p0, " replacement ID provided for an unsupported specialized location layer"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mbgl-LocationLayerController"

    invoke-static {p1, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_0
    return-object p1

    :cond_1
    return-object p2
.end method

.method private determineIconsSource(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 8

    iget v0, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->gpsName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "mapbox-location-icon"

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/location/LocationLayerController;->buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapbox-location-stale-icon"

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/location/LocationLayerController;->buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapbox-location-stroke-icon"

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/location/LocationLayerController;->buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapbox-location-background-stale-icon"

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/location/LocationLayerController;->buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->bearingName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mapbox-location-bearing-icon"

    invoke-direct {p0, p1, v0}, Lorg/maplibre/android/location/LocationLayerController;->buildIconString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    invoke-interface/range {v2 .. v7}, Lorg/maplibre/android/location/LocationLayerRenderer;->updateIconIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private styleBitmaps(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 9

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->elevation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->bitmapProvider:Lorg/maplibre/android/location/LayerBitmapProvider;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/location/LayerBitmapProvider;->generateShadowBitmap(Lorg/maplibre/android/location/LocationComponentOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->bitmapProvider:Lorg/maplibre/android/location/LayerBitmapProvider;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawable()I

    move-result v1

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundTintColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->bitmapProvider:Lorg/maplibre/android/location/LayerBitmapProvider;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundDrawableStale()I

    move-result v1

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->backgroundStaleTintColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->bitmapProvider:Lorg/maplibre/android/location/LayerBitmapProvider;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->bearingDrawable()I

    move-result v1

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->bearingTintColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->bitmapProvider:Lorg/maplibre/android/location/LayerBitmapProvider;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawable()I

    move-result v1

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationLayerController;->bitmapProvider:Lorg/maplibre/android/location/LayerBitmapProvider;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundDrawableStale()I

    move-result v2

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lorg/maplibre/android/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->bitmapProvider:Lorg/maplibre/android/location/LayerBitmapProvider;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable()I

    move-result v1

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundTintColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationLayerController;->bitmapProvider:Lorg/maplibre/android/location/LayerBitmapProvider;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->gpsDrawable()I

    move-result v2

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->foregroundStaleTintColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/maplibre/android/location/LayerBitmapProvider;->generateBitmap(ILjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    move-object v7, v0

    move-object v8, v1

    iget-object v1, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    iget v2, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    invoke-interface/range {v1 .. v8}, Lorg/maplibre/android/location/LocationLayerRenderer;->addBitmaps(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private styleScaling(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 5

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->linear()Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    move-result-object v0

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->zoom()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    iget-object v2, p0, Lorg/maplibre/android/location/LocationLayerController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v2}, Lorg/maplibre/android/maps/MapLibreMap;->getMinZoomLevel()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->minZoomIconScale()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v2

    iget-object v3, p0, Lorg/maplibre/android/location/LocationLayerController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v3}, Lorg/maplibre/android/maps/MapLibreMap;->getMaxZoomLevel()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->maxZoomIconScale()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object p1

    filled-new-array {v2, p1}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/maplibre/android/style/expressions/Expression;->interpolate(Lorg/maplibre/android/style/expressions/Expression$Interpolator;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    invoke-interface {p0, p1}, Lorg/maplibre/android/location/LocationLayerRenderer;->styleScaling(Lorg/maplibre/android/style/expressions/Expression;)V

    return-void
.end method


# virtual methods
.method public adjustPulsingCircleLayerVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    invoke-interface {p0, p1}, Lorg/maplibre/android/location/LocationLayerRenderer;->adjustPulsingCircleLayerVisibility(Z)V

    return-void
.end method

.method public applyStyle(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->positionManager:Lorg/maplibre/android/location/LocationComponentPositionManager;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->bearingOnTop()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/maplibre/android/location/LocationComponentPositionManager;->update(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    invoke-interface {v0}, Lorg/maplibre/android/location/LocationLayerRenderer;->removeLayers()V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationLayerController;->positionManager:Lorg/maplibre/android/location/LocationComponentPositionManager;

    invoke-interface {v0, v1}, Lorg/maplibre/android/location/LocationLayerRenderer;->addLayers(Lorg/maplibre/android/location/LocationComponentPositionManager;)V

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationLayerController;->hide()V

    :cond_0
    iput-object p1, p0, Lorg/maplibre/android/location/LocationLayerController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationLayerController;->styleBitmaps(Lorg/maplibre/android/location/LocationComponentOptions;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAlpha()F

    move-result v1

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyColor()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/maplibre/android/location/LocationLayerRenderer;->styleAccuracy(FI)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationLayerController;->styleScaling(Lorg/maplibre/android/location/LocationComponentOptions;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    invoke-interface {v0, p1}, Lorg/maplibre/android/location/LocationLayerRenderer;->stylePulsingCircle(Lorg/maplibre/android/location/LocationComponentOptions;)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationLayerController;->determineIconsSource(Lorg/maplibre/android/location/LocationComponentOptions;)V

    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationLayerController;->show()V

    :cond_1
    return-void
.end method

.method public cameraBearingUpdated(D)V
    .locals 2

    iget v0, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/location/LocationLayerRenderer;->cameraBearingUpdated(D)V

    :cond_0
    return-void
.end method

.method public cameraTiltUpdated(D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/location/LocationLayerRenderer;->cameraTiltUpdated(D)V

    return-void
.end method

.method public getAnimationListeners()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/maplibre/android/location/AnimatorListenerHolder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/maplibre/android/location/LocationLayerController;->latLngValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    const/4 v2, 0x2

    iget-object v4, p0, Lorg/maplibre/android/location/LocationLayerController;->gpsBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v4}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    new-instance v1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    const/4 v2, 0x3

    iget-object v4, p0, Lorg/maplibre/android/location/LocationLayerController;->compassBearingValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v4}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget v1, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    if-eq v1, v3, :cond_2

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    :cond_2
    new-instance v1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/maplibre/android/location/LocationLayerController;->accuracyValueListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, v3}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lorg/maplibre/android/location/LocationLayerController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/maplibre/android/location/AnimatorListenerHolder;

    const/16 v2, 0x9

    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->pulsingCircleRadiusListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    invoke-direct {v1, v2, p0}, Lorg/maplibre/android/location/AnimatorListenerHolder;-><init>(ILorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getRenderMode()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    return p0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    invoke-interface {p0}, Lorg/maplibre/android/location/LocationLayerRenderer;->hide()V

    return-void
.end method

.method public initializeComponents(Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 4

    new-instance v0, Lorg/maplibre/android/location/LocationComponentPositionManager;

    invoke-virtual {p2}, Lorg/maplibre/android/location/LocationComponentOptions;->layerAbove()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/maplibre/android/location/LocationComponentOptions;->layerBelow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/maplibre/android/location/LocationComponentOptions;->bearingOnTop()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/maplibre/android/location/LocationComponentPositionManager;-><init>(Lorg/maplibre/android/maps/Style;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->positionManager:Lorg/maplibre/android/location/LocationComponentPositionManager;

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    invoke-interface {v0, p1}, Lorg/maplibre/android/location/LocationLayerRenderer;->initializeComponents(Lorg/maplibre/android/maps/Style;)V

    iget-object p1, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->positionManager:Lorg/maplibre/android/location/LocationComponentPositionManager;

    invoke-interface {p1, v0}, Lorg/maplibre/android/location/LocationLayerRenderer;->addLayers(Lorg/maplibre/android/location/LocationComponentPositionManager;)V

    invoke-virtual {p0, p2}, Lorg/maplibre/android/location/LocationLayerController;->applyStyle(Lorg/maplibre/android/location/LocationComponentOptions;)V

    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationLayerController;->hide()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationLayerController;->show()V

    return-void
.end method

.method public isConsumingCompass()Z
    .locals 1

    iget p0, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    return p0
.end method

.method public onMapClick(Lorg/maplibre/android/geometry/LatLng;)Z
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/Projection;->toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    const-string v0, "mapbox-location-foreground-layer"

    const-string v1, "mapbox-location-bearing-layer"

    const-string v2, "mapbox-location-background-layer"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setGpsBearing(F)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/maplibre/android/location/LocationLayerRenderer;->setGpsBearing(Ljava/lang/Float;)V

    return-void
.end method

.method public setLocationsStale(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationLayerController;->isStale:Z

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    iget p0, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    invoke-interface {v0, p1, p0}, Lorg/maplibre/android/location/LocationLayerRenderer;->setLocationStale(ZI)V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iget v0, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationLayerController;->styleBitmaps(Lorg/maplibre/android/location/LocationComponentOptions;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationLayerController;->determineIconsSource(Lorg/maplibre/android/location/LocationComponentOptions;)V

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationLayerController;->show()V

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/location/LocationLayerController;->internalRenderModeChangedListener:Lorg/maplibre/android/location/OnRenderModeChangedListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/location/OnRenderModeChangedListener;->onRenderModeChanged(I)V

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationLayerController;->isHidden:Z

    iget-object v0, p0, Lorg/maplibre/android/location/LocationLayerController;->locationLayerRenderer:Lorg/maplibre/android/location/LocationLayerRenderer;

    iget v1, p0, Lorg/maplibre/android/location/LocationLayerController;->renderMode:I

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationLayerController;->isStale:Z

    invoke-interface {v0, v1, p0}, Lorg/maplibre/android/location/LocationLayerRenderer;->show(IZ)V

    return-void
.end method
