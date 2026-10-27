.class public final Lio/sentry/SentryMetricsEvent$Deserializer;
.super Ljava/lang/Object;
.source "SentryMetricsEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryMetricsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryMetricsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryMetricsEvent;
    .locals 13
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 204
    .local v1, "traceId":Lio/sentry/protocol/SentryId;
    const/4 v2, 0x0

    .line 205
    .local v2, "spanId":Lio/sentry/SpanId;
    const/4 v3, 0x0

    .line 206
    .local v3, "timestamp":Ljava/lang/Double;
    const/4 v4, 0x0

    .line 207
    .local v4, "type":Ljava/lang/String;
    const/4 v5, 0x0

    .line 208
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 209
    .local v6, "unit":Ljava/lang/String;
    const/4 v7, 0x0

    .line 210
    .local v7, "value":Ljava/lang/Double;
    const/4 v8, 0x0

    .line 212
    .local v8, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    move-object v9, v8

    move-object v8, v6

    move-object v6, v7

    move-object v7, v2

    move-object v2, v1

    .line 213
    .end local v1    # "traceId":Lio/sentry/protocol/SentryId;
    .local v2, "traceId":Lio/sentry/protocol/SentryId;
    .local v4, "name":Ljava/lang/String;
    .local v5, "type":Ljava/lang/String;
    .local v6, "value":Ljava/lang/Double;
    .local v7, "spanId":Lio/sentry/SpanId;
    .local v8, "unit":Ljava/lang/String;
    .local v9, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v10, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v10, :cond_2

    .line 214
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "nextName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v10, "trace_id"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    goto :goto_2

    :sswitch_1
    const-string v10, "attributes"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x7

    goto :goto_2

    :sswitch_2
    const-string v10, "value"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x6

    goto :goto_2

    :sswitch_3
    const-string v10, "timestamp"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    goto :goto_2

    :sswitch_4
    const-string v10, "unit"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_5
    const-string v10, "type"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    goto :goto_2

    :sswitch_6
    const-string v10, "name"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    goto :goto_2

    :sswitch_7
    const-string v10, "span_id"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_2

    :goto_1
    const/4 v10, -0x1

    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 242
    if-nez v0, :cond_1

    .line 243
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object v0, v10

    goto :goto_3

    .line 238
    :pswitch_0
    new-instance v10, Lio/sentry/SentryLogEventAttributeValue$Deserializer;

    invoke-direct {v10}, Lio/sentry/SentryLogEventAttributeValue$Deserializer;-><init>()V

    .line 239
    invoke-interface {p1, p2, v10}, Lio/sentry/ObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v9

    .line 240
    goto :goto_4

    .line 235
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v6

    .line 236
    goto :goto_4

    .line 232
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v8

    .line 233
    goto :goto_4

    .line 229
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    .line 230
    goto :goto_4

    .line 226
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v5

    .line 227
    goto :goto_4

    .line 223
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    .line 224
    goto :goto_4

    .line 220
    :pswitch_6
    new-instance v10, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v10}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-interface {p1, p2, v10}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v10

    move-object v7, v10

    check-cast v7, Lio/sentry/SpanId;

    .line 221
    goto :goto_4

    .line 217
    :pswitch_7
    new-instance v10, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v10}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-interface {p1, p2, v10}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    check-cast v2, Lio/sentry/protocol/SentryId;

    .line 218
    goto :goto_4

    .line 245
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 248
    .end local v1    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 249
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 251
    if-eqz v2, :cond_7

    .line 258
    if-eqz v3, :cond_6

    .line 265
    if-eqz v5, :cond_5

    .line 272
    if-eqz v4, :cond_4

    .line 279
    if-eqz v6, :cond_3

    .line 286
    new-instance v1, Lio/sentry/SentryMetricsEvent;

    invoke-direct/range {v1 .. v6}, Lio/sentry/SentryMetricsEvent;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    .line 289
    .local v1, "logEvent":Lio/sentry/SentryMetricsEvent;
    invoke-virtual {v1, v9}, Lio/sentry/SentryMetricsEvent;->setAttributes(Ljava/util/Map;)V

    .line 290
    invoke-virtual {v1, v7}, Lio/sentry/SentryMetricsEvent;->setSpanId(Lio/sentry/SpanId;)V

    .line 291
    invoke-virtual {v1, v8}, Lio/sentry/SentryMetricsEvent;->setUnit(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1, v0}, Lio/sentry/SentryMetricsEvent;->setUnknown(Ljava/util/Map;)V

    .line 294
    return-object v1

    .line 280
    .end local v1    # "logEvent":Lio/sentry/SentryMetricsEvent;
    :cond_3
    const-string v1, "Missing required field \"value\""

    .line 281
    .local v1, "message":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Missing required field \"value\""

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 282
    .local v10, "exception":Ljava/lang/Exception;
    sget-object v12, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v12, v11, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    throw v10

    .line 273
    .end local v1    # "message":Ljava/lang/String;
    .end local v10    # "exception":Ljava/lang/Exception;
    :cond_4
    const-string v1, "Missing required field \"name\""

    .line 274
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Missing required field \"name\""

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 275
    .restart local v10    # "exception":Ljava/lang/Exception;
    sget-object v12, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v12, v11, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    throw v10

    .line 266
    .end local v1    # "message":Ljava/lang/String;
    .end local v10    # "exception":Ljava/lang/Exception;
    :cond_5
    const-string v1, "Missing required field \"type\""

    .line 267
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Missing required field \"type\""

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 268
    .restart local v10    # "exception":Ljava/lang/Exception;
    sget-object v12, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v12, v11, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    throw v10

    .line 259
    .end local v1    # "message":Ljava/lang/String;
    .end local v10    # "exception":Ljava/lang/Exception;
    :cond_6
    const-string v1, "Missing required field \"timestamp\""

    .line 260
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Missing required field \"timestamp\""

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 261
    .restart local v10    # "exception":Ljava/lang/Exception;
    sget-object v12, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v12, v11, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    throw v10

    .line 252
    .end local v1    # "message":Ljava/lang/String;
    .end local v10    # "exception":Ljava/lang/Exception;
    :cond_7
    const-string v1, "Missing required field \"trace_id\""

    .line 253
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Missing required field \"trace_id\""

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    .restart local v10    # "exception":Ljava/lang/Exception;
    sget-object v12, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v12, v11, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    throw v10

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_7
        0x337a8b -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36d984 -> :sswitch_4
        0x3492916 -> :sswitch_3
        0x6ac9171 -> :sswitch_2
        0x182da957 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
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

    .line 196
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryMetricsEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryMetricsEvent;

    move-result-object p1

    return-object p1
.end method
