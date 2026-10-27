.class public final Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;
.super Ljava/lang/Object;
.source "RRWebBreadcrumbEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebBreadcrumbEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/rrweb/RRWebBreadcrumbEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deserializeData(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    .param p2, "reader"    # Lio/sentry/ObjectReader;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "dataUnknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Lio/sentry/ObjectReader;->beginObject()V

    .line 245
    :goto_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_3

    .line 246
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "nextName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v2, "tag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_1
    const-string v2, "payload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 256
    if-nez v0, :cond_2

    .line 257
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v2

    goto :goto_4

    .line 253
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;->deserializePayload(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V

    .line 254
    goto :goto_5

    .line 249
    :pswitch_1
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "tag":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v3, ""

    goto :goto_3

    :cond_1
    move-object v3, v2

    :goto_3
    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->access$002(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    goto :goto_5

    .line 259
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-interface {p2, p3, v0, v1}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 261
    .end local v1    # "nextName":Ljava/lang/String;
    :goto_5
    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {p1, v0}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setDataUnknown(Ljava/util/Map;)V

    .line 263
    invoke-interface {p2}, Lio/sentry/ObjectReader;->endObject()V

    .line 264
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2ee41e72 -> :sswitch_1
        0x1bf9a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private deserializePayload(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V
    .locals 6
    .param p1, "event"    # Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    .param p2, "reader"    # Lio/sentry/ObjectReader;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "payloadUnknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Lio/sentry/ObjectReader;->beginObject()V

    .line 275
    :goto_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_3

    .line 276
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "nextName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_1
    const-string v2, "level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_2
    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_3
    const-string v2, "category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_4
    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_2

    :sswitch_5
    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 306
    if-nez v0, :cond_1

    .line 307
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v2

    goto :goto_3

    .line 298
    :pswitch_0
    nop

    .line 300
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 299
    invoke-static {v2}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 301
    .local v2, "deserializedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_2

    .line 302
    invoke-static {p1, v2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->access$602(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_4

    .line 292
    .end local v2    # "deserializedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1
    :try_start_0
    new-instance v2, Lio/sentry/SentryLevel$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryLevel$Deserializer;-><init>()V

    invoke-virtual {v2, p2, p3}, Lio/sentry/SentryLevel$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryLevel;

    move-result-object v2

    invoke-static {p1, v2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->access$502(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    goto :goto_4

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, "exception":Ljava/lang/Exception;
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Error when deserializing SentryLevel"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p3, v4, v2, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    .end local v2    # "exception":Ljava/lang/Exception;
    goto :goto_4

    .line 288
    :pswitch_2
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->access$402(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    goto :goto_4

    .line 285
    :pswitch_3
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->access$302(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    goto :goto_4

    .line 282
    :pswitch_4
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextDouble()D

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->access$202(Lio/sentry/rrweb/RRWebBreadcrumbEvent;D)D

    .line 283
    goto :goto_4

    .line 279
    :pswitch_5
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->access$102(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    goto :goto_4

    .line 309
    :cond_1
    :goto_3
    invoke-interface {p2, p3, v0, v1}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 311
    .end local v1    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 312
    :cond_3
    invoke-virtual {p1, v0}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setPayloadUnknown(Ljava/util/Map;)V

    .line 313
    invoke-interface {p2}, Lio/sentry/ObjectReader;->endObject()V

    .line 314
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2eefaa -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x302bcfe -> :sswitch_3
        0x3492916 -> :sswitch_2
        0x6219b84 -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    .locals 5
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    invoke-direct {v1}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;-><init>()V

    .line 213
    .local v1, "event":Lio/sentry/rrweb/RRWebBreadcrumbEvent;
    new-instance v2, Lio/sentry/rrweb/RRWebEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebEvent$Deserializer;-><init>()V

    .line 215
    .local v2, "baseEventDeserializer":Lio/sentry/rrweb/RRWebEvent$Deserializer;
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_3

    .line 216
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "nextName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 222
    invoke-virtual {v2, v1, v3, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Deserializer;->deserializeValue(Lio/sentry/rrweb/RRWebEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 223
    if-nez v0, :cond_1

    .line 224
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, v4

    goto :goto_3

    .line 219
    :pswitch_1
    invoke-direct {p0, v1, p1, p2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;->deserializeData(Lio/sentry/rrweb/RRWebBreadcrumbEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V

    .line 220
    goto :goto_4

    .line 226
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v0, v3}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 230
    .end local v3    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {v1, v0}, Lio/sentry/rrweb/RRWebBreadcrumbEvent;->setUnknown(Ljava/util/Map;)V

    .line 233
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 234
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2eefaa
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    invoke-virtual {p0, p1, p2}, Lio/sentry/rrweb/RRWebBreadcrumbEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebBreadcrumbEvent;

    move-result-object p1

    return-object p1
.end method
