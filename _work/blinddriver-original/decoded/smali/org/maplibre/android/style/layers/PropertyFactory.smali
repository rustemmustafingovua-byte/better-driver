.class public Lorg/maplibre/android/style/layers/PropertyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backgroundColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "background-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "background-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "background-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "background-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "background-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundPattern(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "background-pattern"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static backgroundPattern(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "background-pattern"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleBlur(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-blur"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleBlur(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-blur"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circlePitchAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circlePitchAlignment(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circlePitchScale(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-pitch-scale"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circlePitchScale(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-pitch-scale"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleRadius(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-radius"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleRadius(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-radius"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleSortKey(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "circle-sort-key"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleSortKey(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "circle-sort-key"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleStrokeWidth(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-stroke-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleTranslate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleTranslate([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleTranslateAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static circleTranslateAnchor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "circle-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static colorReliefColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "color-relief-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static colorReliefColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "color-relief-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static colorReliefColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "color-relief-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static colorReliefOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "color-relief-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static colorReliefOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "color-relief-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillAntialias(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-antialias"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillAntialias(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-antialias"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionBase(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-base"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionBase(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-base"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionHeight(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-height"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionHeight(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-height"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionPattern(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-pattern"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionPattern(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-pattern"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionRoundedCornerDistance(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "fill-extrusion-rounded-corner-distance"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionRoundedCornerDistance(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "fill-extrusion-rounded-corner-distance"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionTranslate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionTranslate([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionTranslateAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionTranslateAnchor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionVerticalGradient(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-vertical-gradient"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillExtrusionVerticalGradient(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-extrusion-vertical-gradient"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillOutlineColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-outline-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillOutlineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-outline-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillOutlineColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-outline-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillPattern(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-pattern"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillPattern(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-pattern"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillSortKey(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "fill-sort-key"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillSortKey(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "fill-sort-key"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillTranslate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillTranslate([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillTranslateAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fillTranslateAnchor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "fill-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapIntensity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-intensity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapIntensity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-intensity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapRadius(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-radius"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapRadius(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-radius"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapWeight(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-weight"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static heatmapWeight(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "heatmap-weight"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeAccentColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-accent-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeAccentColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-accent-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeAccentColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-accent-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeExaggeration(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-exaggeration"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeExaggeration(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-exaggeration"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeHighlightColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-highlight-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeHighlightColor([Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-highlight-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeIlluminationAltitude(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-illumination-altitude"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeIlluminationAltitude([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-illumination-altitude"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeIlluminationAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-illumination-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeIlluminationAnchor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-illumination-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeIlluminationDirection(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-illumination-direction"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeIlluminationDirection([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-illumination-direction"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeMethod(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-method"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeMethod(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-method"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeShadowColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-shadow-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hillshadeShadowColor([Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "hillshade-shadow-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-allow-overlap"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconAllowOverlap(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-allow-overlap"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconAnchor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloBlur(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-blur"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloBlur(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-blur"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconHaloWidth(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-halo-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-ignore-placement"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconIgnorePlacement(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-ignore-placement"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconImage(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-image"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconImage(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-image"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconKeepUpright(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-keep-upright"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconKeepUpright(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-keep-upright"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOffset(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-offset"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOffset([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-offset"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOptional(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-optional"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconOptional(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-optional"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconPadding(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-padding"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconPadding(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-padding"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconPadding([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-padding"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconPitchAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconPitchAlignment(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconRotate(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-rotate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconRotate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-rotate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconRotationAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-rotation-alignment"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconRotationAlignment(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-rotation-alignment"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-size"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-size"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTextFit(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-text-fit"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTextFit(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-text-fit"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTextFitPadding(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-text-fit-padding"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTextFitPadding([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "icon-text-fit-padding"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTranslate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTranslate([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTranslateAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static iconTranslateAnchor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "icon-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineBlur(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-blur"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineBlur(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-blur"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineCap(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "line-cap"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineCap(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "line-cap"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineDasharray(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-dasharray"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineDasharray([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-dasharray"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineGapWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-gap-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineGapWidth(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-gap-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineGradient(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-gradient"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineGradient(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-gradient"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineGradient(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-gradient"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineJoin(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "line-join"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineJoin(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "line-join"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineMiterLimit(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "line-miter-limit"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineMiterLimit(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "line-miter-limit"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineOffset(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-offset"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineOffset(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-offset"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static linePattern(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-pattern"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static linePattern(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-pattern"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineRoundLimit(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "line-round-limit"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineRoundLimit(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "line-round-limit"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineSortKey(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "line-sort-key"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineSortKey(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "line-sort-key"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineTranslate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineTranslate([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineTranslateAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineTranslateAnchor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lineWidth(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "line-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterBrightnessMax(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-brightness-max"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterBrightnessMax(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-brightness-max"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterBrightnessMin(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-brightness-min"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterBrightnessMin(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-brightness-min"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterContrast(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-contrast"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterContrast(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-contrast"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterFadeDuration(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-fade-duration"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterFadeDuration(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-fade-duration"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterHueRotate(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-hue-rotate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterHueRotate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-hue-rotate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterResampling(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-resampling"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterResampling(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-resampling"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterSaturation(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-saturation"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static rasterSaturation(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "raster-saturation"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolAvoidEdges(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-avoid-edges"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolAvoidEdges(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-avoid-edges"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolPlacement(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-placement"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolPlacement(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-placement"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolScreenSpace(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-screen-space"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolScreenSpace(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-screen-space"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolSortKey(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-sort-key"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolSortKey(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-sort-key"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolSpacing(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-spacing"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolSpacing(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-spacing"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolZOrder(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-z-order"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static symbolZOrder(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "symbol-z-order"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-allow-overlap"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textAllowOverlap(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-allow-overlap"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textAnchor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textField(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-field"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textField(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-field"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textField(Lorg/maplibre/android/style/types/Formatted;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/types/Formatted;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/types/Formatted;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-field"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textFont(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-font"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textFont([Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-font"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloBlur(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-blur"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloBlur(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-blur"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textHaloWidth(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-halo-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-ignore-placement"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textIgnorePlacement(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-ignore-placement"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textJustify(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-justify"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textJustify(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-justify"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textKeepUpright(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-keep-upright"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textKeepUpright(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-keep-upright"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textLetterSpacing(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-letter-spacing"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textLetterSpacing(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-letter-spacing"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textLineHeight(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-line-height"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textLineHeight(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-line-height"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textMaxAngle(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-max-angle"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textMaxAngle(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-max-angle"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textMaxWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-max-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textMaxWidth(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-max-width"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOffset(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-offset"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOffset([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-offset"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-opacity"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOptional(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-optional"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textOptional(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-optional"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textPadding(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-padding"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textPadding(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-padding"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textPitchAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textPitchAlignment(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-pitch-alignment"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRadialOffset(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-radial-offset"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRadialOffset(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-radial-offset"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRotate(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-rotate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRotate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-rotate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRotationAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-rotation-alignment"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textRotationAlignment(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-rotation-alignment"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-size"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-size"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTransform(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-transform"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTransform(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-transform"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTranslate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTranslate([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-translate"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTranslateAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textTranslateAnchor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "text-translate-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textVariableAnchor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-variable-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textVariableAnchor([Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-variable-anchor"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textVariableAnchorOffset(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-variable-anchor-offset"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textVariableAnchorOffset([Ljava/lang/Object;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-variable-anchor-offset"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textWritingMode(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Lorg/maplibre/android/style/expressions/Expression;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-writing-mode"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static textWritingMode([Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "text-writing-mode"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static visibility(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/maplibre/android/style/layers/LayoutPropertyValue;

    const-string v1, "visibility"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
