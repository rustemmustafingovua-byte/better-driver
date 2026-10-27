.class public Lorg/maplibre/android/style/layers/PropertyValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-PropertyValue"


# instance fields
.field public final name:Ljava/lang/String;

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/maplibre/android/style/layers/PropertyValue;

    iget-object v2, p0, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    if-eqz p0, :cond_4

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    check-cast p0, [Ljava/lang/Object;

    iget-object p1, p1, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-object p1, p1, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    iget-object p0, p1, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    if-nez p0, :cond_5

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getColorInt()Ljava/lang/Integer;
    .locals 5

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/PropertyValue;->isValue()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Mbgl-PropertyValue"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/maplibre/android/utils/ColorUtils;->rgbaToColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Lorg/maplibre/android/exceptions/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " could not be converted to a Color int: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/maplibre/android/MapStrictMode;->strictModeViolation(Ljava/lang/Throwable;)V

    return-object v1

    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a String value and can not be converted to a color it"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getExpression()Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/PropertyValue;->isExpression()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/gson/JsonArray;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonArray;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lorg/maplibre/android/style/expressions/Expression;

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not an expression, try PropertyValue#getValue()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Mbgl-PropertyValue"

    invoke-static {v0, p0}, Lorg/maplibre/android/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/PropertyValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not a value, try PropertyValue#getExpression()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Mbgl-PropertyValue"

    invoke-static {v0, p0}, Lorg/maplibre/android/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public isExpression()Z
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/PropertyValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/gson/JsonArray;

    if-nez v0, :cond_0

    instance-of p0, p0, Lorg/maplibre/android/style/expressions/Expression;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isNull()Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isValue()Z
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/PropertyValue;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/style/layers/PropertyValue;->isExpression()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->name:Ljava/lang/String;

    iget-object p0, p0, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s: %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
