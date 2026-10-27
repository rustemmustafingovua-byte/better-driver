.class public Lorg/maplibre/android/style/layers/RasterLayer;
.super Lorg/maplibre/android/style/layers/Layer;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/layers/Layer;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/maplibre/android/style/layers/Layer;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/layers/RasterLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetRasterBrightnessMax()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterBrightnessMaxTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterBrightnessMin()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterBrightnessMinTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterContrast()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterContrastTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterFadeDuration()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterHueRotate()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterHueRotateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterOpacity()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterResampling()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterSaturation()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetRasterSaturationTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetRasterBrightnessMaxTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetRasterBrightnessMinTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetRasterContrastTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetRasterHueRotateTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetRasterOpacityTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetRasterSaturationTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public getRasterBrightnessMax()Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    new-instance v0, Lorg/maplibre/android/style/layers/PropertyValue;

    const-string v1, "raster-brightness-max"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterBrightnessMax()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterBrightnessMaxTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterBrightnessMaxTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getRasterBrightnessMin()Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    new-instance v0, Lorg/maplibre/android/style/layers/PropertyValue;

    const-string v1, "raster-brightness-min"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterBrightnessMin()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterBrightnessMinTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterBrightnessMinTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getRasterContrast()Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    new-instance v0, Lorg/maplibre/android/style/layers/PropertyValue;

    const-string v1, "raster-contrast"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterContrast()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterContrastTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterContrastTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getRasterFadeDuration()Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    new-instance v0, Lorg/maplibre/android/style/layers/PropertyValue;

    const-string v1, "raster-fade-duration"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterFadeDuration()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterHueRotate()Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    new-instance v0, Lorg/maplibre/android/style/layers/PropertyValue;

    const-string v1, "raster-hue-rotate"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterHueRotate()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterHueRotateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterHueRotateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getRasterOpacity()Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    new-instance v0, Lorg/maplibre/android/style/layers/PropertyValue;

    const-string v1, "raster-opacity"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterOpacity()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getRasterResampling()Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    new-instance v0, Lorg/maplibre/android/style/layers/PropertyValue;

    const-string v1, "raster-resampling"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterResampling()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterSaturation()Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    new-instance v0, Lorg/maplibre/android/style/layers/PropertyValue;

    const-string v1, "raster-saturation"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterSaturation()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getRasterSaturationTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeGetRasterSaturationTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->nativeGetSourceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public native initialize(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public setRasterBrightnessMaxTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeSetRasterBrightnessMaxTransition(JJ)V

    return-void
.end method

.method public setRasterBrightnessMinTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeSetRasterBrightnessMinTransition(JJ)V

    return-void
.end method

.method public setRasterContrastTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeSetRasterContrastTransition(JJ)V

    return-void
.end method

.method public setRasterHueRotateTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeSetRasterHueRotateTransition(JJ)V

    return-void
.end method

.method public setRasterOpacityTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeSetRasterOpacityTransition(JJ)V

    return-void
.end method

.method public setRasterSaturationTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/RasterLayer;->nativeSetRasterSaturationTransition(JJ)V

    return-void
.end method

.method public setSourceLayer(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->nativeSetSourceLayer(Ljava/lang/String;)V

    return-void
.end method

.method public varargs withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/RasterLayer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "*>;)",
            "Lorg/maplibre/android/style/layers/RasterLayer;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public withSourceLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/RasterLayer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/RasterLayer;->setSourceLayer(Ljava/lang/String;)V

    return-object p0
.end method
