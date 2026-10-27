.class public Lorg/maplibre/android/style/expressions/Expression$FormatOption;
.super Lorg/maplibre/android/style/expressions/Expression$Option;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/style/expressions/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatOption"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression$Option;-><init>(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)V

    return-void
.end method

.method public static formatFontScale(D)Lorg/maplibre/android/style/expressions/Expression$FormatOption;
    .locals 1

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$FormatOption;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "font-scale"

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression$FormatOption;-><init>(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static formatFontScale(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression$FormatOption;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$FormatOption;

    const-string v1, "font-scale"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression$FormatOption;-><init>(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static formatTextColor(I)Lorg/maplibre/android/style/expressions/Expression$FormatOption;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$FormatOption;

    const-string v1, "text-color"

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->color(I)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression$FormatOption;-><init>(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static formatTextColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression$FormatOption;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$FormatOption;

    const-string v1, "text-color"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression$FormatOption;-><init>(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static formatTextFont(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression$FormatOption;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$FormatOption;

    const-string v1, "text-font"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression$FormatOption;-><init>(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static formatTextFont([Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression$FormatOption;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$FormatOption;

    const-string v1, "text-font"

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal([Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression$FormatOption;-><init>(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method
