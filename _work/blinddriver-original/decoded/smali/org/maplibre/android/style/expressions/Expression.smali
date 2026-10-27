.class public Lorg/maplibre/android/style/expressions/Expression;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;,
        Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteralArray;,
        Lorg/maplibre/android/style/expressions/Expression$Stop;,
        Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;,
        Lorg/maplibre/android/style/expressions/Expression$NumberFormatOption;,
        Lorg/maplibre/android/style/expressions/Expression$FormatEntry;,
        Lorg/maplibre/android/style/expressions/Expression$FormatOption;,
        Lorg/maplibre/android/style/expressions/Expression$Interpolator;,
        Lorg/maplibre/android/style/expressions/Expression$ValueExpression;,
        Lorg/maplibre/android/style/expressions/Expression$Converter;,
        Lorg/maplibre/android/style/expressions/Expression$Option;,
        Lorg/maplibre/android/style/expressions/Expression$Array;
    }
.end annotation


# instance fields
.field private final arguments:[Lorg/maplibre/android/style/expressions/Expression;

.field private final operator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    return-void
.end method

.method public static abs(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->abs(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static abs(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "abs"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static accumulated()Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const-string v2, "accumulated"

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static acos(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->acos(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static acos(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "acos"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs all([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "all"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs any([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "any"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static array(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "array"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static asin(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->asin(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static asin(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "asin"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static at(Ljava/lang/Number;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->at(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static at(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "at"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static atan(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->atan(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static atan(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "atan"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs bool([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "boolean"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static ceil(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->ceil(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static ceil(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "ceil"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs coalesce([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "coalesce"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static collator(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    const-string v1, "case-sensitive"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string p0, "diacritic-sensitive"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance p0, Lorg/maplibre/android/style/expressions/Expression;

    new-instance p1, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;

    invoke-direct {p1, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "collator"

    invoke-direct {p0, p1, v0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p0
.end method

.method public static collator(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    const-string v1, "case-sensitive"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p0, "diacritic-sensitive"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p0, "locale"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance p0, Lorg/maplibre/android/style/expressions/Expression;

    new-instance p1, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;

    invoke-direct {p1, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;-><init>(Ljava/util/Map;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "collator"

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p0
.end method

.method public static collator(ZZ)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    const-string v1, "case-sensitive"

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string p0, "diacritic-sensitive"

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p0, Lorg/maplibre/android/style/expressions/Expression;

    new-instance p1, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;

    invoke-direct {p1, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "collator"

    invoke-direct {p0, p1, v0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p0
.end method

.method public static collator(ZZLjava/util/Locale;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "case-sensitive"

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-string p0, "diacritic-sensitive"

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    const-string p2, "-"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "locale"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance p0, Lorg/maplibre/android/style/expressions/Expression;

    new-instance p1, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;

    invoke-direct {p1, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;-><init>(Ljava/util/Map;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "collator"

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p0
.end method

.method public static color(I)Lorg/maplibre/android/style/expressions/Expression;
    .locals 4

    invoke-static {p0}, Lorg/maplibre/android/utils/ColorUtils;->colorToRgbaArray(I)[F

    move-result-object p0

    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lorg/maplibre/android/style/expressions/Expression;->rgba(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concat([Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    .line 2
    array-length v0, p0

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->concat([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concat([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "concat"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static cos(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string v1, "cos"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static cos(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "cos"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static cubicBezier(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression$Interpolator;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p2}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p2

    invoke-static {p3}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lorg/maplibre/android/style/expressions/Expression;->cubicBezier(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    move-result-object p0

    return-object p0
.end method

.method public static cubicBezier(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression$Interpolator;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    const-string v1, "cubic-bezier"

    filled-new-array {p0, p1, p2, p3}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression$Interpolator;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static distance(Lorg/maplibre/geojson/GeoJson;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Lorg/maplibre/geojson/GeoJson;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string v1, "json"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/maplibre/android/style/expressions/Expression;

    new-instance v1, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;

    invoke-direct {v1, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "distance"

    invoke-direct {p0, v1, v0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p0
.end method

.method public static division(Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->division(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static division(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "/"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static downcase(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->downcase(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static downcase(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "downcase"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static e()Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const-string v2, "e"

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static eq(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 6
    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static eq(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 4
    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static eq(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 5
    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "=="

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "=="

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static eq(Lorg/maplibre/android/style/expressions/Expression;Z)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static exponential(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression$Interpolator;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->exponential(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    move-result-object p0

    return-object p0
.end method

.method public static exponential(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression$Interpolator;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    const-string v1, "exponential"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression$Interpolator;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static featureState(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string v1, "feature-state"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static floor(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->floor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static floor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "floor"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs format([Lorg/maplibre/android/style/expressions/Expression$FormatEntry;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 12

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, p0, v3

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5}, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;->b(Lorg/maplibre/android/style/expressions/Expression$FormatEntry;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    aput-object v7, v0, v4

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5}, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;->a(Lorg/maplibre/android/style/expressions/Expression$FormatEntry;)[Lorg/maplibre/android/style/expressions/Expression$FormatOption;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {v5}, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;->a(Lorg/maplibre/android/style/expressions/Expression$FormatEntry;)[Lorg/maplibre/android/style/expressions/Expression$FormatOption;

    move-result-object v5

    array-length v8, v5

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v5, v9

    iget-object v11, v10, Lorg/maplibre/android/style/expressions/Expression$Option;->type:Ljava/lang/String;

    iget-object v10, v10, Lorg/maplibre/android/style/expressions/Expression$Option;->value:Lorg/maplibre/android/style/expressions/Expression;

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x2

    new-instance v5, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;

    invoke-direct {v5, v7}, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;-><init>(Ljava/util/Map;)V

    aput-object v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "format"

    invoke-direct {p0, v1, v0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p0
.end method

.method public static formatEntry(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression$FormatEntry;
    .locals 2

    .line 4
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;-><init>(Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$FormatOption;)V

    return-object v0
.end method

.method public static varargs formatEntry(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression$FormatOption;)Lorg/maplibre/android/style/expressions/Expression$FormatEntry;
    .locals 1

    .line 3
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;-><init>(Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$FormatOption;)V

    return-object v0
.end method

.method public static formatEntry(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression$FormatEntry;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;-><init>(Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$FormatOption;)V

    return-object v0
.end method

.method public static varargs formatEntry(Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$FormatOption;)Lorg/maplibre/android/style/expressions/Expression$FormatEntry;
    .locals 1

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;

    invoke-direct {v0, p0, p1}, Lorg/maplibre/android/style/expressions/Expression$FormatEntry;-><init>(Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$FormatOption;)V

    return-object v0
.end method

.method public static geometryType()Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const-string v2, "geometry-type"

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->get(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 4
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->get(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "get"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static get(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 3
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "get"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static gt(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 3
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, ">"

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static gt(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 4
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, ">"

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static gt(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 5
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, ">"

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static gt(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, ">"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static gt(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, ">"

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static gte(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 3
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, ">="

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static gte(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 4
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, ">="

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static gte(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 5
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, ">="

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static gte(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, ">="

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static gte(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, ">="

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static has(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->has(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static has(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 4
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->has(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static has(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "has"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static has(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 3
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "has"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static heatmapDensity()Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const-string v2, "heatmap-density"

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static id()Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const-string v2, "id"

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static image(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "image"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static in(Ljava/lang/Number;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "in"

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static in(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 3
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "in"

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static in(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "in"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static indexOf(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "index-of"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static indexOf(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "index-of"

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs interpolate(Lorg/maplibre/android/style/expressions/Expression$Interpolator;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p2}, Lorg/maplibre/android/style/expressions/Expression$Stop;->toExpressionArray([Lorg/maplibre/android/style/expressions/Expression$Stop;)[Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;->interpolate(Lorg/maplibre/android/style/expressions/Expression$Interpolator;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs interpolate(Lorg/maplibre/android/style/expressions/Expression$Interpolator;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1, p2}, Lorg/maplibre/android/style/expressions/Expression;->join([Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)[Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "interpolate"

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static isSupportedScript(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string v1, "is-supported-script"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static isSupportedScript(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "is-supported-script"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method private static join([Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)[Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static length(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->length(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static length(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "length"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs let([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "let"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static lineProgress()Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const-string v2, "line-progress"

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static linear()Lorg/maplibre/android/style/expressions/Expression$Interpolator;
    .locals 3

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const-string v2, "linear"

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/expressions/Expression$Interpolator;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    invoke-direct {v0, p0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static literal(Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal([Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Lorg/maplibre/android/style/expressions/Expression;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    invoke-direct {v0, p0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t convert an expression to a literal"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    invoke-direct {v0, p0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static literal(Z)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 3
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static literal([Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    .line 9
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    new-instance v1, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteralArray;

    invoke-direct {v1, p0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteralArray;-><init>([Ljava/lang/Object;)V

    const/4 p0, 0x1

    new-array p0, p0, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    const-string v1, "literal"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static ln(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->ln(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static ln(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "ln"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static ln2()Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const-string v2, "ln2"

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static log10(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->log10(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static log10(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "log10"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static log2(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->log2(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static log2(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "log2"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static lt(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 3
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "<"

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static lt(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 4
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "<"

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static lt(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 5
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "<"

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static lt(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "<"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static lt(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "<"

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static lte(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 3
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "<="

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static lte(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 4
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "<="

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static lte(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 5
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "<="

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static lte(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "<="

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static lte(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "<="

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p2}, Lorg/maplibre/android/style/expressions/Expression$Stop;->toExpressionArray([Lorg/maplibre/android/style/expressions/Expression$Stop;)[Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/maplibre/android/style/expressions/Expression;->join([Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)[Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    filled-new-array {p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->join([Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)[Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->match([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs match([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "match"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs max([Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 2
    array-length v0, p0

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->max([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs max([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "max"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs min([Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 2
    array-length v0, p0

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->min([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs min([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "min"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static mod(Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->mod(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static mod(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "%"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static neq(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 6
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "!="

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static neq(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 4
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "!="

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static neq(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 5
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "!="

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static neq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "!="

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static neq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "!="

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static neq(Lorg/maplibre/android/style/expressions/Expression;Z)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 3
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "!="

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static not(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "!"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static not(Z)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->not(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs number([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "number"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs numberFormat(Ljava/lang/Number;[Lorg/maplibre/android/style/expressions/Expression$NumberFormatOption;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 5
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->numberFormat(Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$NumberFormatOption;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs numberFormat(Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$NumberFormatOption;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 3
    iget-object v5, v4, Lorg/maplibre/android/style/expressions/Expression$Option;->type:Ljava/lang/String;

    iget-object v4, v4, Lorg/maplibre/android/style/expressions/Expression$Option;->value:Lorg/maplibre/android/style/expressions/Expression;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lorg/maplibre/android/style/expressions/Expression;

    new-instance v1, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;

    invoke-direct {v1, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    aput-object p0, v0, v2

    const/4 p0, 0x1

    aput-object v1, v0, p0

    const-string p0, "number-format"

    invoke-direct {p1, p0, v0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p1
.end method

.method public static object(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "object"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static pi()Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const-string v2, "pi"

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static pow(Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->pow(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static pow(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "^"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs product([Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 2
    array-length v0, p0

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->product([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs product([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "*"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static properties()Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const-string v2, "properties"

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static raw(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression$Converter;->convert(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static resolvedLocale(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "resolved-locale"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p2}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static rgb(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "rgb"

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static rgba(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p2}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p2

    invoke-static {p3}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lorg/maplibre/android/style/expressions/Expression;->rgba(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static rgba(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "rgba"

    filled-new-array {p0, p1, p2, p3}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static round(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->round(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static round(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "round"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static sin(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->sin(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static sin(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "sin"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static slice(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "slice"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static slice(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "slice"

    filled-new-array {p0, p1, p2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static sqrt(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->sqrt(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static sqrt(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "sqrt"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs step(Ljava/lang/Number;Ljava/lang/Number;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 7
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p2}, Lorg/maplibre/android/style/expressions/Expression$Stop;->toExpressionArray([Lorg/maplibre/android/style/expressions/Expression$Stop;)[Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;->step(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/Number;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs step(Ljava/lang/Number;Ljava/lang/Number;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 5
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;->step(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/Number;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs step(Ljava/lang/Number;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 3
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p2}, Lorg/maplibre/android/style/expressions/Expression$Stop;->toExpressionArray([Lorg/maplibre/android/style/expressions/Expression$Stop;)[Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;->step(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs step(Ljava/lang/Number;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;->step(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs step(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/Number;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 8
    invoke-static {p2}, Lorg/maplibre/android/style/expressions/Expression$Stop;->toExpressionArray([Lorg/maplibre/android/style/expressions/Expression$Stop;)[Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;->step(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/Number;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs step(Lorg/maplibre/android/style/expressions/Expression;Ljava/lang/Number;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 6
    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;->step(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs step(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 4
    invoke-static {p2}, Lorg/maplibre/android/style/expressions/Expression$Stop;->toExpressionArray([Lorg/maplibre/android/style/expressions/Expression$Stop;)[Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/maplibre/android/style/expressions/Expression;->step(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs step(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/maplibre/android/style/expressions/Expression;->join([Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression;)[Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string p1, "step"

    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;
    .locals 1

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$Stop;

    invoke-direct {v0, p0, p1}, Lorg/maplibre/android/style/expressions/Expression$Stop;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs string([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "string"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static subtract(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->subtract(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static subtract(Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 4
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/maplibre/android/style/expressions/Expression;->subtract(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static subtract(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "-"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static subtract(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 3
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "-"

    filled-new-array {p0, p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs sum([Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .line 2
    array-length v0, p0

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->sum([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static varargs sum([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "+"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static varargs switchCase([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "case"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static tan(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 2
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string v1, "tan"

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static tan(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "tan"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static toBool(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "to-boolean"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static toColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "to-color"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static toNumber(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "to-number"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method private static toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toPadding(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "to-padding"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static toRgba(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "to-rgba"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static toString(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "to-string"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static typeOf(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "typeof"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static upcase(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->upcase(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static upcase(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "upcase"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static var(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->var(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static var(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 1
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const-string v1, "var"

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method

.method public static within(Lorg/maplibre/geojson/Polygon;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/maplibre/geojson/Polygon;->type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/maplibre/geojson/Polygon;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const-string v1, "json"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/maplibre/android/style/expressions/Expression;

    new-instance v1, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;

    invoke-direct {v1, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "within"

    invoke-direct {p0, v1, v0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p0
.end method

.method public static zoom()Lorg/maplibre/android/style/expressions/Expression;
    .locals 3

    new-instance v0, Lorg/maplibre/android/style/expressions/Expression;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/maplibre/android/style/expressions/Expression;

    const-string v2, "zoom"

    invoke-direct {v0, v2, v1}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/maplibre/android/style/expressions/Expression;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/maplibre/android/style/expressions/Expression;

    iget-object v1, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v0

    :cond_3
    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    iget-object p1, p1, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    instance-of v4, v3, Lorg/maplibre/android/style/expressions/Expression$ValueExpression;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/maplibre/android/style/expressions/Expression$ValueExpression;

    invoke-interface {v3}, Lorg/maplibre/android/style/expressions/Expression$ValueExpression;->toValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lorg/maplibre/android/style/expressions/Expression;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lorg/maplibre/android/style/expressions/Expression;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p0, p0, Lorg/maplibre/android/style/expressions/Expression;->arguments:[Lorg/maplibre/android/style/expressions/Expression;

    if-eqz p0, :cond_0

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 6
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v3}, Lorg/maplibre/android/style/expressions/Expression;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
