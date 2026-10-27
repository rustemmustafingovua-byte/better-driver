.class public Lorg/maplibre/android/style/layers/FillExtrusionLayer;
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
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetFillExtrusionBase()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionBaseTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionColor()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionHeight()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionHeightTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionOpacity()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionPattern()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionPatternTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionRoundedCornerDistance()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionTranslate()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionTranslateAnchor()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionTranslateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetFillExtrusionVerticalGradient()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetFillExtrusionBaseTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetFillExtrusionColorTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetFillExtrusionHeightTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetFillExtrusionOpacityTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetFillExtrusionPatternTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetFillExtrusionTranslateTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public getFillExtrusionBase()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "fill-extrusion-base"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionBase()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionBaseTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionBaseTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getFillExtrusionColor()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "fill-extrusion-color"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionColor()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionColorAsInt()I
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->getFillExtrusionColor()Lorg/maplibre/android/style/layers/PropertyValue;

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

    const-string v0, "fill-extrusion-color was set as a Function"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFillExtrusionColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getFillExtrusionHeight()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "fill-extrusion-height"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionHeight()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionHeightTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionHeightTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getFillExtrusionOpacity()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "fill-extrusion-opacity"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionOpacity()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getFillExtrusionPattern()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "fill-extrusion-pattern"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionPattern()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionPatternTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionPatternTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getFillExtrusionRoundedCornerDistance()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "fill-extrusion-rounded-corner-distance"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionRoundedCornerDistance()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionTranslate()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "fill-extrusion-translate"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionTranslate()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionTranslateAnchor()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "fill-extrusion-translate-anchor"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionTranslateAnchor()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getFillExtrusionTranslateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionTranslateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getFillExtrusionVerticalGradient()Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    new-instance v0, Lorg/maplibre/android/style/layers/PropertyValue;

    const-string v1, "fill-extrusion-vertical-gradient"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeGetFillExtrusionVerticalGradient()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
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

.method public setFillExtrusionBaseTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionBaseTransition(JJ)V

    return-void
.end method

.method public setFillExtrusionColorTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionColorTransition(JJ)V

    return-void
.end method

.method public setFillExtrusionHeightTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionHeightTransition(JJ)V

    return-void
.end method

.method public setFillExtrusionOpacityTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionOpacityTransition(JJ)V

    return-void
.end method

.method public setFillExtrusionPatternTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionPatternTransition(JJ)V

    return-void
.end method

.method public setFillExtrusionTranslateTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->nativeSetFillExtrusionTranslateTransition(JJ)V

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

.method public withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/FillExtrusionLayer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->setFilter(Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p0
.end method

.method public varargs withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/FillExtrusionLayer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "*>;)",
            "Lorg/maplibre/android/style/layers/FillExtrusionLayer;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public withSourceLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/FillExtrusionLayer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->setSourceLayer(Ljava/lang/String;)V

    return-object p0
.end method
