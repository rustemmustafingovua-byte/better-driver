.class public abstract Lod/w6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lod/w6;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lorg/maplibre/android/maps/Style;D)V
    .locals 5

    double-to-float p1, p1

    const p2, 0x3f4ccccd    # 0.8f

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {p1, p2, v0}, Lg6/c1;->e(FFF)F

    move-result p1

    sget-object p2, Lod/w6;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt8/j;

    iget-object v2, v0, Lt8/j;->l:Ljava/lang/Object;

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v1}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v3

    instance-of v4, v3, Lorg/maplibre/android/style/layers/SymbolLayer;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/maplibre/android/style/layers/SymbolLayer;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const v4, 0x3fa66666    # 1.3f

    cmpg-float v4, v0, v4

    if-nez v4, :cond_3

    :try_start_0
    invoke-static {v3}, Lod/w6;->e(Lorg/maplibre/android/style/layers/SymbolLayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-static {v4}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_3
    :goto_2
    :try_start_1
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_4

    check-cast v2, Ljava/lang/String;

    mul-float/2addr v0, p1

    invoke-static {v2, v0}, Lod/w6;->d(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression$Converter;->convert(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/style/layers/PropertyFactory;->textSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    filled-new-array {v0}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_4
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_5

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    mul-float/2addr v2, p1

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/style/layers/PropertyFactory;->textSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    filled-new-array {v0}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    :cond_5
    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreetLabels"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static b(Lorg/maplibre/android/maps/Style;)V
    .locals 8

    sget-object v0, Lod/w6;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Style;->getLayers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/layers/Layer;

    :try_start_0
    instance-of v2, v1, Lorg/maplibre/android/style/layers/SymbolLayer;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lorg/maplibre/android/style/layers/SymbolLayer;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_1
    move-object v1, v3

    :goto_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/maplibre/android/style/layers/SymbolLayer;->getSourceLayer()Ljava/lang/String;

    move-result-object v2

    const-string v4, "transportation_name"

    invoke-static {v2, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const v4, 0x3fa66666    # 1.3f

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/maplibre/android/style/layers/SymbolLayer;->getIconImage()Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/maplibre/android/style/layers/PropertyValue;->isNull()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/maplibre/android/style/layers/SymbolLayer;->getSymbolPlacement()Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/maplibre/android/style/layers/PropertyValue;->isNull()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/maplibre/android/style/layers/SymbolLayer;->getSymbolPlacement()Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Lorg/maplibre/android/style/layers/PropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "toString(...)"

    invoke-static {v2, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "line"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "housenumber-layer"

    invoke-static {v2, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1}, Lorg/maplibre/android/style/layers/SymbolLayer;->getTextSize()Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v6, "getTextSize(...)"

    invoke-static {v5, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/maplibre/android/style/layers/PropertyValue;->isExpression()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lorg/maplibre/android/style/layers/PropertyValue;->getExpression()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/maplibre/android/style/expressions/Expression;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    iget-object v3, v5, Lorg/maplibre/android/style/layers/PropertyValue;->value:Ljava/lang/Object;

    :cond_5
    :goto_3
    invoke-virtual {v1}, Lorg/maplibre/android/style/layers/Layer;->getId()Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_6

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_6
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    new-instance v7, Lt8/j;

    invoke-direct {v7, v3, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmpg-float v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {v1}, Lod/w6;->e(Lorg/maplibre/android/style/layers/SymbolLayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_4
    invoke-static {v1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static c(Lcom/google/gson/JsonElement;F)Lcom/google/gson/JsonElement;
    .locals 7

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v1

    float-to-double p0, p1

    mul-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {p0}, Lu8/m;->f0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const-string v2, "interpolate"

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "get(...)"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    :goto_1
    if-ge v4, v1, :cond_8

    if-lt v4, v6, :cond_4

    add-int/lit8 v2, v4, -0x4

    rem-int/2addr v2, v5

    if-nez v2, :cond_4

    invoke-virtual {p0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lod/w6;->c(Lcom/google/gson/JsonElement;F)Lcom/google/gson/JsonElement;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const-string v2, "step"

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    :goto_3
    if-ge v4, v1, :cond_8

    if-eq v4, v5, :cond_7

    if-lt v4, v6, :cond_6

    add-int/lit8 v2, v4, -0x4

    rem-int/2addr v2, v5

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    goto :goto_5

    :cond_7
    :goto_4
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lod/w6;->c(Lcom/google/gson/JsonElement;F)Lcom/google/gson/JsonElement;

    move-result-object v2

    :goto_5
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    return-object v0

    :cond_9
    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/Number;)V

    invoke-virtual {v0, p0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;F)Ljava/lang/String;
    .locals 2

    const-string v0, "json"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Le8/b;

    invoke-direct {p0, v0}, Le8/b;-><init>(Ljava/io/Reader;)V

    invoke-static {p0}, Ll7/a;->u(Le8/b;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result p0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lw7/n;

    const-string p1, "Did not consume the entire document."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Le8/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {v0, p1}, Lod/w6;->c(Lcom/google/gson/JsonElement;F)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lw7/n;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static e(Lorg/maplibre/android/style/layers/SymbolLayer;)V
    .locals 4

    sget-object v0, Lcd/a;->a:Lcd/b;

    sget-object v0, Lcd/a;->a:Lcd/b;

    sget-object v1, Lcd/b;->n:Lcd/b;

    const-string v2, "name"

    const-string v3, "name:uk"

    if-ne v0, v1, :cond_0

    const-string v0, "name:en"

    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    const-string v1, "name_en"

    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v2}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    filled-new-array {v0, v1, v3, v2}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->coalesce([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static {v2}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    filled-new-array {v0, v1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->coalesce([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/maplibre/android/style/layers/PropertyFactory;->textField(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    filled-new-array {v0}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-void
.end method
