.class public Lorg/maplibre/android/style/layers/CircleLayer;
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
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/layers/CircleLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetCircleBlur()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleBlurTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleColor()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleOpacity()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCirclePitchAlignment()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCirclePitchScale()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleRadius()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleRadiusTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleSortKey()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleStrokeColor()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleStrokeColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleStrokeOpacity()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleStrokeOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleStrokeWidth()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleStrokeWidthTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleTranslate()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleTranslateAnchor()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetCircleTranslateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetCircleBlurTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetCircleColorTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetCircleOpacityTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetCircleRadiusTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetCircleStrokeColorTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetCircleStrokeOpacityTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetCircleStrokeWidthTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetCircleTranslateTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public getCircleBlur()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "circle-blur"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleBlur()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleBlurTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleBlurTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getCircleColor()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "circle-color"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleColor()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleColorAsInt()I
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->getCircleColor()Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/PropertyValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "circle-color was set as a Function"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCircleColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getCircleOpacity()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "circle-opacity"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleOpacity()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getCirclePitchAlignment()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "circle-pitch-alignment"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCirclePitchAlignment()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCirclePitchScale()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "circle-pitch-scale"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCirclePitchScale()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleRadius()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "circle-radius"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleRadius()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleRadiusTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleRadiusTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getCircleSortKey()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "circle-sort-key"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleSortKey()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleStrokeColor()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "circle-stroke-color"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleStrokeColor()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleStrokeColorAsInt()I
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->getCircleStrokeColor()Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/PropertyValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/PropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "circle-stroke-color was set as a Function"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCircleStrokeColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleStrokeColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getCircleStrokeOpacity()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "circle-stroke-opacity"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleStrokeOpacity()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleStrokeOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleStrokeOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getCircleStrokeWidth()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "circle-stroke-width"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleStrokeWidth()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleStrokeWidthTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleStrokeWidthTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getCircleTranslate()Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    new-instance v0, Lorg/maplibre/android/style/layers/PropertyValue;

    const-string v1, "circle-translate"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleTranslate()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleTranslateAnchor()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "circle-translate-anchor"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleTranslateAnchor()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCircleTranslateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeGetCircleTranslateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getFilter()Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->nativeGetFilter()Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonElement;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->nativeGetSourceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSourceLayer()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->nativeGetSourceLayer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public native initialize(Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public setCircleBlurTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeSetCircleBlurTransition(JJ)V

    return-void
.end method

.method public setCircleColorTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeSetCircleColorTransition(JJ)V

    return-void
.end method

.method public setCircleOpacityTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeSetCircleOpacityTransition(JJ)V

    return-void
.end method

.method public setCircleRadiusTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeSetCircleRadiusTransition(JJ)V

    return-void
.end method

.method public setCircleStrokeColorTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeSetCircleStrokeColorTransition(JJ)V

    return-void
.end method

.method public setCircleStrokeOpacityTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeSetCircleStrokeOpacityTransition(JJ)V

    return-void
.end method

.method public setCircleStrokeWidthTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeSetCircleStrokeWidthTransition(JJ)V

    return-void
.end method

.method public setCircleTranslateTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/CircleLayer;->nativeSetCircleTranslateTransition(JJ)V

    return-void
.end method

.method public setFilter(Lorg/maplibre/android/style/expressions/Expression;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->nativeSetFilter([Ljava/lang/Object;)V

    return-void
.end method

.method public setSourceLayer(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->nativeSetSourceLayer(Ljava/lang/String;)V

    return-void
.end method

.method public withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/CircleLayer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/CircleLayer;->setFilter(Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p0
.end method

.method public varargs withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/CircleLayer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "*>;)",
            "Lorg/maplibre/android/style/layers/CircleLayer;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public withSourceLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/CircleLayer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/CircleLayer;->setSourceLayer(Ljava/lang/String;)V

    return-object p0
.end method
