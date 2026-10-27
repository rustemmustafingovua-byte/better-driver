.class Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;
.super Lcom/google/gson/TypeAdapter;
.source "RuntimeTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

.field final synthetic val$labelToDelegate:Ljava/util/Map;

.field final synthetic val$subtypeToDelegate:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 235
    .local p0, "this":Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;, "Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;"
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->this$0:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    iput-object p2, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->val$labelToDelegate:Ljava/util/Map;

    iput-object p3, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->val$subtypeToDelegate:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 7
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    .local p0, "this":Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;, "Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;"
    invoke-static {p1}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 239
    .local v0, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->this$0:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->access$000(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 240
    .local v1, "labelJsonElement":Lcom/google/gson/JsonElement;
    const-string v2, "cannot deserialize "

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "label":Ljava/lang/String;
    iget-object v4, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->val$labelToDelegate:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/TypeAdapter;

    .line 250
    .local v4, "delegate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TR;>;"
    if-eqz v4, :cond_0

    .line 258
    invoke-virtual {v4, v0}, Lcom/google/gson/TypeAdapter;->fromJsonTree(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 251
    :cond_0
    new-instance v5, Lcom/google/gson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->this$0:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 253
    invoke-static {v6}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->access$100(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " subtype named "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "; did you forget to register a subtype?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 241
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "delegate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TR;>;"
    :cond_1
    new-instance v3, Lcom/google/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->this$0:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 243
    invoke-static {v4}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->access$100(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " because it does not define a field named "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->this$0:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 245
    invoke-static {v4}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->access$000(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 9
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TR;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    .local p0, "this":Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;, "Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;"
    .local p2, "value":Ljava/lang/Object;, "TR;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 264
    .local v0, "srcType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->this$0:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->access$200(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    .local v1, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->val$subtypeToDelegate:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/TypeAdapter;

    .line 267
    .local v2, "delegate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TR;>;"
    const-string v3, "cannot serialize "

    if-eqz v2, :cond_2

    .line 271
    invoke-virtual {v2, p2}, Lcom/google/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 272
    .local v4, "jsonObject":Lcom/google/gson/JsonObject;
    iget-object v5, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->this$0:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    invoke-static {v5}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->access$000(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 279
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 280
    .local v3, "clone":Lcom/google/gson/JsonObject;
    iget-object v5, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->this$0:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    invoke-static {v5}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->access$000(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v6, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 281
    invoke-virtual {v4}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 282
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    invoke-virtual {v3, v7, v8}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 283
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    goto :goto_0

    .line 284
    :cond_0
    invoke-static {v3, p1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    .line 285
    return-void

    .line 273
    .end local v3    # "clone":Lcom/google/gson/JsonObject;
    :cond_1
    new-instance v5, Lcom/google/gson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 275
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " because it already defines a field named "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory$1;->this$0:Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    .line 277
    invoke-static {v6}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->access$000(Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 268
    .end local v4    # "jsonObject":Lcom/google/gson/JsonObject;
    :cond_2
    new-instance v4, Lcom/google/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 269
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; did you forget to register a subtype?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
