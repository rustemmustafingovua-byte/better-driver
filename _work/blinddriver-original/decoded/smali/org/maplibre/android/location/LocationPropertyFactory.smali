.class Lorg/maplibre/android/location/LocationPropertyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accuracyRadius(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "accuracy-radius"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static accuracyRadius(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "accuracy-radius"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static accuracyRadiusBorderColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "accuracy-radius-border-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static accuracyRadiusBorderColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "accuracy-radius-border-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static accuracyRadiusBorderColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "accuracy-radius-border-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static accuracyRadiusColor(I)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "accuracy-radius-color"

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static accuracyRadiusColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "accuracy-radius-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static accuracyRadiusColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "accuracy-radius-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static bearing(Ljava/lang/Double;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "bearing"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static bearing(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "bearing"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static bearingImage(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "bearing-image"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static bearingImage(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "bearing-image"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static bearingImageSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "bearing-image-size"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static bearingImageSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "bearing-image-size"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static imageTiltDisplacement(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "image-tilt-displacement"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static imageTiltDisplacement(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "image-tilt-displacement"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static location(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "location"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static location([Ljava/lang/Double;)Lorg/maplibre/android/style/layers/PropertyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Double;",
            ")",
            "Lorg/maplibre/android/style/layers/PropertyValue<",
            "[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/android/style/layers/PaintPropertyValue;

    const-string v1, "location"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static perspectiveCompensation(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "perspective-compensation"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static perspectiveCompensation(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "perspective-compensation"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static shadowImage(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "shadow-image"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static shadowImage(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "shadow-image"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static shadowImageSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "shadow-image-size"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static shadowImageSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "shadow-image-size"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static topImage(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "top-image"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static topImage(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "top-image"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/LayoutPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static topImageSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "top-image-size"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static topImageSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;
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

    const-string v1, "top-image-size"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/layers/PaintPropertyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

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
