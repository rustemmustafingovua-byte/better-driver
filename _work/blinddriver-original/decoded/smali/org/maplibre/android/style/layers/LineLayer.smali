.class public Lorg/maplibre/android/style/layers/LineLayer;
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
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/style/layers/LineLayer;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeGetLineBlur()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineBlurTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineCap()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineColor()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineDasharray()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineDasharrayTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineGapWidth()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineGapWidthTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineGradient()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineJoin()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineMiterLimit()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineOffset()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineOffsetTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineOpacity()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLinePattern()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLinePatternTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineRoundLimit()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineSortKey()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineTranslate()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineTranslateAnchor()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineTranslateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineWidth()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeGetLineWidthTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetLineBlurTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetLineColorTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetLineDasharrayTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetLineGapWidthTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetLineOffsetTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetLineOpacityTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetLinePatternTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetLineTranslateTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method private native nativeSetLineWidthTransition(JJ)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
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

.method public getLineBlur()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-blur"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineBlur()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineBlurTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineBlurTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getLineCap()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-cap"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineCap()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineColor()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-color"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineColor()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineColorAsInt()I
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/LineLayer;->getLineColor()Lorg/maplibre/android/style/layers/PropertyValue;

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

    const-string v0, "line-color was set as a Function"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLineColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineColorTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getLineDasharray()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-dasharray"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineDasharray()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineDasharrayTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineDasharrayTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getLineGapWidth()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-gap-width"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineGapWidth()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineGapWidthTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineGapWidthTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getLineGradient()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-gradient"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineGradient()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineGradientAsInt()I
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/LineLayer;->getLineGradient()Lorg/maplibre/android/style/layers/PropertyValue;

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

    const-string v0, "line-gradient was set as a Function"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLineJoin()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-join"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineJoin()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineMiterLimit()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-miter-limit"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineMiterLimit()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineOffset()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-offset"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineOffset()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineOffsetTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineOffsetTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getLineOpacity()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-opacity"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineOpacity()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineOpacityTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getLinePattern()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-pattern"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLinePattern()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLinePatternTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLinePatternTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getLineRoundLimit()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-round-limit"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineRoundLimit()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineSortKey()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-sort-key"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineSortKey()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineTranslate()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-translate"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineTranslate()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineTranslateAnchor()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-translate-anchor"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineTranslateAnchor()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineTranslateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineTranslateTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

    move-result-object p0

    return-object p0
.end method

.method public getLineWidth()Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "line-width"

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineWidth()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getLineWidthTransition()Lorg/maplibre/android/style/layers/TransitionOptions;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-direct {p0}, Lorg/maplibre/android/style/layers/LineLayer;->nativeGetLineWidthTransition()Lorg/maplibre/android/style/layers/TransitionOptions;

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

.method public setFilter(Lorg/maplibre/android/style/expressions/Expression;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->nativeSetFilter([Ljava/lang/Object;)V

    return-void
.end method

.method public setLineBlurTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/LineLayer;->nativeSetLineBlurTransition(JJ)V

    return-void
.end method

.method public setLineColorTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/LineLayer;->nativeSetLineColorTransition(JJ)V

    return-void
.end method

.method public setLineDasharrayTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/LineLayer;->nativeSetLineDasharrayTransition(JJ)V

    return-void
.end method

.method public setLineGapWidthTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/LineLayer;->nativeSetLineGapWidthTransition(JJ)V

    return-void
.end method

.method public setLineOffsetTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/LineLayer;->nativeSetLineOffsetTransition(JJ)V

    return-void
.end method

.method public setLineOpacityTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/LineLayer;->nativeSetLineOpacityTransition(JJ)V

    return-void
.end method

.method public setLinePatternTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/LineLayer;->nativeSetLinePatternTransition(JJ)V

    return-void
.end method

.method public setLineTranslateTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/LineLayer;->nativeSetLineTranslateTransition(JJ)V

    return-void
.end method

.method public setLineWidthTransition(Lorg/maplibre/android/style/layers/TransitionOptions;)V
    .locals 4

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/style/layers/TransitionOptions;->getDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/maplibre/android/style/layers/LineLayer;->nativeSetLineWidthTransition(JJ)V

    return-void
.end method

.method public setSourceLayer(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/Layer;->checkThread()V

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->nativeSetSourceLayer(Ljava/lang/String;)V

    return-void
.end method

.method public withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/LineLayer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/LineLayer;->setFilter(Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p0
.end method

.method public varargs withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/LineLayer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "*>;)",
            "Lorg/maplibre/android/style/layers/LineLayer;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-object p0
.end method

.method public withSourceLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/LineLayer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/LineLayer;->setSourceLayer(Ljava/lang/String;)V

    return-object p0
.end method
