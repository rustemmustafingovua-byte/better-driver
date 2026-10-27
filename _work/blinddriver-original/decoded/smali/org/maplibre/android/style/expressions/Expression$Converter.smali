.class public final Lorg/maplibre/android/style/expressions/Expression$Converter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/style/expressions/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Converter"
.end annotation


# static fields
.field private static final gson:Lw7/l;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lw7/l;

    sget-object v1, Ly7/g;->n:Ly7/g;

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v8, Lw7/t;->l:Lw7/p;

    sget-object v9, Lw7/t;->m:Lw7/q;

    sget-object v2, Lw7/h;->l:Lw7/a;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v10, v7

    invoke-direct/range {v0 .. v10}, Lw7/l;-><init>(Ly7/g;Lw7/a;Ljava/util/Map;ZZILjava/util/List;Lw7/p;Lw7/q;Ljava/util/List;)V

    sput-object v0, Lorg/maplibre/android/style/expressions/Expression$Converter;->gson:Lw7/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Lcom/google/gson/JsonArray;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const-string v3, "within"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/geojson/Polygon;->fromJson(Ljava/lang/String;)Lorg/maplibre/geojson/Polygon;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->within(Lorg/maplibre/geojson/Polygon;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    const-string v3, "distance"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/geojson/gson/GeometryGeoJson;->fromJson(Ljava/lang/String;)Lorg/maplibre/geojson/Geometry;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression;->distance(Lorg/maplibre/geojson/GeoJson;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v4, v3, :cond_5

    .line 9
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 10
    const-string v5, "literal"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    instance-of v5, v3, Lcom/google/gson/JsonArray;

    if-eqz v5, :cond_4

    .line 11
    check-cast v3, Lcom/google/gson/JsonArray;

    .line 12
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    move v6, v0

    .line 13
    :goto_1
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 14
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    .line 15
    instance-of v8, v7, Lcom/google/gson/JsonPrimitive;

    if-eqz v8, :cond_2

    .line 16
    check-cast v7, Lcom/google/gson/JsonPrimitive;

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression$Converter;->convertToValue(Lcom/google/gson/JsonPrimitive;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Nested literal arrays are not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_3
    new-instance v3, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteralArray;

    invoke-direct {v3, v5}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteralArray;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonElement;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_5
    new-instance p0, Lorg/maplibre/android/style/expressions/Expression;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/maplibre/android/style/expressions/Expression;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/maplibre/android/style/expressions/Expression;

    invoke-direct {p0, v1, v0}, Lorg/maplibre/android/style/expressions/Expression;-><init>(Ljava/lang/String;[Lorg/maplibre/android/style/expressions/Expression;)V

    return-object p0

    .line 21
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t convert empty jsonArray expressions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convert(Lcom/google/gson/JsonElement;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 4

    .line 22
    instance-of v0, p0, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_0

    .line 23
    check-cast p0, Lcom/google/gson/JsonArray;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonArray;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz v0, :cond_1

    .line 25
    check-cast p0, Lcom/google/gson/JsonPrimitive;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonPrimitive;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0

    .line 26
    :cond_1
    instance-of v0, p0, Lw7/o;

    if-eqz v0, :cond_2

    .line 27
    new-instance p0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 28
    :cond_2
    instance-of v0, p0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_4

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    check-cast p0, Lcom/google/gson/JsonObject;

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonElement;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_3
    new-instance p0, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;

    invoke-direct {p0, v0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionMap;-><init>(Ljava/util/Map;)V

    return-object p0

    .line 33
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported expression conversion for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convert(Lcom/google/gson/JsonPrimitive;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 1

    .line 34
    new-instance v0, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression$Converter;->convertToValue(Lcom/google/gson/JsonPrimitive;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/maplibre/android/style/expressions/Expression$ExpressionLiteral;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;
    .locals 2

    .line 35
    sget-object v0, Lorg/maplibre/android/style/expressions/Expression$Converter;->gson:Lw7/l;

    const-class v1, Lcom/google/gson/JsonArray;

    invoke-virtual {v0, v1, p0}, Lw7/l;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonArray;

    invoke-static {p0}, Lorg/maplibre/android/style/expressions/Expression$Converter;->convert(Lcom/google/gson/JsonArray;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method private static convertToValue(Lcom/google/gson/JsonPrimitive;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported literal expression conversion for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
