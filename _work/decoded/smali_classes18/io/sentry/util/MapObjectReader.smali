.class public final Lio/sentry/util/MapObjectReader;
.super Ljava/lang/Object;
.source "MapObjectReader.java"

# interfaces
.implements Lio/sentry/ObjectReader;


# instance fields
.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "root":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    .line 30
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method private nextValueOrNull()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private nextValueOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;
    .locals 3
    .param p1, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/ILogger;",
            "Lio/sentry/JsonDeserializer<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 421
    .local p2, "deserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<TT;>;"
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 422
    .local v0, "currentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 423
    const/4 v1, 0x0

    return-object v1

    .line 425
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 426
    .local v1, "value":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 427
    invoke-interface {p2, p0, p1}, Lio/sentry/JsonDeserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 429
    :cond_1
    iget-object v2, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 430
    return-object v1
.end method

.method private recoverValue(I)V
    .locals 1
    .param p1, "stackSizeBefore"    # I

    .line 401
    nop

    :goto_0
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 402
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 404
    :cond_0
    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    .local v0, "currentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_2

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 244
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 247
    iget-object v2, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->END_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 249
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 250
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 251
    .local v3, "entry":Ljava/lang/Object;
    iget-object v4, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    new-instance v6, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v6, v5, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v6}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 249
    .end local v3    # "entry":Ljava/lang/Object;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 256
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 254
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Current token is not an object"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v1    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No more entries"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginObject()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 213
    .local v0, "currentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_2

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 220
    iget-object v2, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v4, 0x0

    sget-object v5, Lio/sentry/vendor/gson/stream/JsonToken;->END_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 222
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 223
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 224
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    :cond_0
    nop

    .line 228
    return-void

    .line 226
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Current token is not an object"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .end local v1    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No more entries"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 436
    return-void
.end method

.method public endArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 263
    :cond_0
    return-void
.end method

.method public endObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 235
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nextBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 329
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 332
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected boolean"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextBooleanOrNull()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;
    .locals 2
    .param p1, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "dateString":Ljava/lang/String;
    invoke-static {v0, p1}, Lio/sentry/ObjectReader;->dateOrNull(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public nextDouble()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    .line 345
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 346
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 348
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected double"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDoubleOrNull()Ljava/lang/Double;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 357
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 359
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public nextFloat()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    .line 375
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 376
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    return v1

    .line 378
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected float"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextFloatOrNull()Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    .line 366
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 367
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 369
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public nextInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 274
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1

    .line 276
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected int"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextIntegerOrNull()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    .line 284
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 285
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 287
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;
    .locals 5
    .param p1, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/ILogger;",
            "Lio/sentry/JsonDeserializer<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    .local p2, "deserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<TT;>;"
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->nextNull()V

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->beginArray()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->END_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    .line 58
    iget-object v1, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .local v1, "stackSizeBefore":I
    :try_start_1
    invoke-interface {p2, p0, p1}, Lio/sentry/JsonDeserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    goto :goto_1

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Failed to deserialize object in list."

    invoke-interface {p1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    invoke-direct {p0, v1}, Lio/sentry/util/MapObjectReader;->recoverValue(I)V

    .line 65
    .end local v1    # "stackSizeBefore":I
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->endArray()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 67
    return-object v0

    .line 68
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 294
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 296
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected long"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextLongOrNull()Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    .line 304
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 305
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 307
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public nextMapOfListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;
    .locals 6
    .param p1, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/ILogger;",
            "Lio/sentry/JsonDeserializer<",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    .local p2, "deserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<TT;>;"
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->nextNull()V

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<TT;>;>;"
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->beginObject()V

    .line 115
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_3

    .line 117
    :cond_1
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .local v2, "stackSizeBefore":I
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lio/sentry/util/MapObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v3

    .line 121
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v3, :cond_2

    .line 122
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_2
    goto :goto_0

    .line 124
    :catch_0
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to deserialize list in map."

    invoke-interface {p1, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    invoke-direct {p0, v2}, Lio/sentry/util/MapObjectReader;->recoverValue(I)V

    .line 128
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "stackSizeBefore":I
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    .line 130
    :cond_3
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->endObject()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    return-object v0

    .line 132
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;
    .locals 6
    .param p1, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/ILogger;",
            "Lio/sentry/JsonDeserializer<",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    .local p2, "deserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<TT;>;"
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->nextNull()V

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->beginObject()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_2

    .line 87
    :cond_1
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    .local v2, "stackSizeBefore":I
    :try_start_1
    invoke-interface {p2, p0, p1}, Lio/sentry/JsonDeserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    goto :goto_0

    .line 91
    :catch_0
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Failed to deserialize object in map."

    invoke-interface {p1, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    invoke-direct {p0, v2}, Lio/sentry/util/MapObjectReader;->recoverValue(I)V

    .line 95
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "stackSizeBefore":I
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    .line 97
    :cond_2
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->endObject()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    return-object v0

    .line 99
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    .local v0, "currentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 207
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextNull()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    .line 385
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 388
    return-void

    .line 386
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected null but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextObjectOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/ILogger;",
            "Lio/sentry/JsonDeserializer<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    .local p2, "deserializer":Lio/sentry/JsonDeserializer;, "Lio/sentry/JsonDeserializer<TT;>;"
    invoke-direct {p0, p1, p2}, Lio/sentry/util/MapObjectReader;->nextValueOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 313
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 314
    return-object v0

    .line 316
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected string"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextStringOrNull()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-direct {p0}, Lio/sentry/util/MapObjectReader;->nextValueOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public nextTimeZoneOrNull(Lio/sentry/ILogger;)Ljava/util/TimeZone;
    .locals 2
    .param p1, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "timeZoneId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ILogger;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    .local p2, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    .line 38
    .local v0, "stackSizeBefore":I
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/util/MapObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error deserializing unknown key: %s"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2, v1, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-direct {p0, v0}, Lio/sentry/util/MapObjectReader;->recoverValue(I)V

    .line 43
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public peek()Lio/sentry/vendor/gson/stream/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonToken;->END_DOCUMENT:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    .local v0, "currentEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 174
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->END_DOCUMENT:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    .line 177
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 178
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v1

    .line 181
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 183
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 184
    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v2

    .line 185
    :cond_3
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_4

    .line 186
    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v2

    .line 187
    :cond_4
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 188
    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->STRING:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v2

    .line 189
    :cond_5
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_6

    .line 190
    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NUMBER:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v2

    .line 191
    :cond_6
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    .line 192
    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->BOOLEAN:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v2

    .line 193
    :cond_7
    instance-of v2, v1, Lio/sentry/vendor/gson/stream/JsonToken;

    if-eqz v2, :cond_8

    .line 194
    move-object v2, v1

    check-cast v2, Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v2

    .line 196
    :cond_8
    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->END_DOCUMENT:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object v2
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .line 391
    return-void
.end method

.method public skipValue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lio/sentry/util/MapObjectReader;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 398
    :cond_0
    return-void
.end method
