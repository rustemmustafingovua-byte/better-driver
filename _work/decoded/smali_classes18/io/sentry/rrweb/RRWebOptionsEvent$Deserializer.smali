.class public final Lio/sentry/rrweb/RRWebOptionsEvent$Deserializer;
.super Ljava/lang/Object;
.source "RRWebOptionsEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebOptionsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/rrweb/RRWebOptionsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deserializeData(Lio/sentry/rrweb/RRWebOptionsEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/rrweb/RRWebOptionsEvent;
    .param p2, "reader"    # Lio/sentry/ObjectReader;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "dataUnknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Lio/sentry/ObjectReader;->beginObject()V

    .line 206
    :goto_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_3

    .line 207
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 208
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

    .line 217
    if-nez v0, :cond_2

    .line 218
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v2

    goto :goto_4

    .line 214
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/rrweb/RRWebOptionsEvent$Deserializer;->deserializePayload(Lio/sentry/rrweb/RRWebOptionsEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V

    .line 215
    goto :goto_5

    .line 210
    :pswitch_1
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "tag":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v3, ""

    goto :goto_3

    :cond_1
    move-object v3, v2

    :goto_3
    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebOptionsEvent;->access$002(Lio/sentry/rrweb/RRWebOptionsEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    goto :goto_5

    .line 220
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-interface {p2, p3, v0, v1}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 222
    .end local v1    # "nextName":Ljava/lang/String;
    :goto_5
    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {p1, v0}, Lio/sentry/rrweb/RRWebOptionsEvent;->setDataUnknown(Ljava/util/Map;)V

    .line 224
    invoke-interface {p2}, Lio/sentry/ObjectReader;->endObject()V

    .line 225
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

.method private deserializePayload(Lio/sentry/rrweb/RRWebOptionsEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "event"    # Lio/sentry/rrweb/RRWebOptionsEvent;
    .param p2, "reader"    # Lio/sentry/ObjectReader;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "optionsPayload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Lio/sentry/ObjectReader;->beginObject()V

    .line 236
    :goto_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_1

    .line 237
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "nextName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 239
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    .line 241
    :cond_0
    invoke-interface {p2, p3, v0, v1}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 242
    .end local v1    # "nextName":Ljava/lang/String;
    goto :goto_0

    .line 243
    :cond_1
    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {p1, v0}, Lio/sentry/rrweb/RRWebOptionsEvent;->setOptionsPayload(Ljava/util/Map;)V

    .line 246
    :cond_2
    invoke-interface {p2}, Lio/sentry/ObjectReader;->endObject()V

    .line 247
    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebOptionsEvent;
    .locals 5
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lio/sentry/rrweb/RRWebOptionsEvent;

    invoke-direct {v1}, Lio/sentry/rrweb/RRWebOptionsEvent;-><init>()V

    .line 174
    .local v1, "event":Lio/sentry/rrweb/RRWebOptionsEvent;
    new-instance v2, Lio/sentry/rrweb/RRWebEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebEvent$Deserializer;-><init>()V

    .line 176
    .local v2, "baseEventDeserializer":Lio/sentry/rrweb/RRWebEvent$Deserializer;
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_3

    .line 177
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 178
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

    .line 183
    invoke-virtual {v2, v1, v3, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Deserializer;->deserializeValue(Lio/sentry/rrweb/RRWebEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 184
    if-nez v0, :cond_1

    .line 185
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, v4

    goto :goto_3

    .line 180
    :pswitch_1
    invoke-direct {p0, v1, p1, p2}, Lio/sentry/rrweb/RRWebOptionsEvent$Deserializer;->deserializeData(Lio/sentry/rrweb/RRWebOptionsEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V

    .line 181
    goto :goto_4

    .line 187
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v0, v3}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 191
    .end local v3    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {v1, v0}, Lio/sentry/rrweb/RRWebOptionsEvent;->setUnknown(Ljava/util/Map;)V

    .line 194
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 195
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

    .line 165
    invoke-virtual {p0, p1, p2}, Lio/sentry/rrweb/RRWebOptionsEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebOptionsEvent;

    move-result-object p1

    return-object p1
.end method
