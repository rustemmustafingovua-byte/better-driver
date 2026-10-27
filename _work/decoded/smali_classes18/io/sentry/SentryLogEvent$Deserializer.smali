.class public final Lio/sentry/SentryLogEvent$Deserializer;
.super Ljava/lang/Object;
.source "SentryLogEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryLogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryLogEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryLogEvent;
    .locals 12
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 169
    .local v1, "traceId":Lio/sentry/protocol/SentryId;
    const/4 v2, 0x0

    .line 170
    .local v2, "spanId":Lio/sentry/SpanId;
    const/4 v3, 0x0

    .line 171
    .local v3, "timestamp":Ljava/lang/Double;
    const/4 v4, 0x0

    .line 172
    .local v4, "body":Ljava/lang/String;
    const/4 v5, 0x0

    .line 173
    .local v5, "level":Lio/sentry/SentryLogLevel;
    const/4 v6, 0x0

    .line 174
    .local v6, "severityNumber":Ljava/lang/Integer;
    const/4 v7, 0x0

    .line 176
    .local v7, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLogEventAttributeValue;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 177
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v8

    sget-object v9, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v8, v9, :cond_2

    .line 178
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "nextName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v9, "trace_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    goto :goto_2

    :sswitch_1
    const-string v9, "attributes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x6

    goto :goto_2

    :sswitch_2
    const-string v9, "level"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x4

    goto :goto_2

    :sswitch_3
    const-string v9, "timestamp"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    goto :goto_2

    :sswitch_4
    const-string v9, "body"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x3

    goto :goto_2

    :sswitch_5
    const-string v9, "severity_number"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x5

    goto :goto_2

    :sswitch_6
    const-string v9, "span_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :goto_1
    const/4 v9, -0x1

    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 203
    if-nez v0, :cond_1

    .line 204
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v0, v9

    goto :goto_3

    .line 199
    :pswitch_0
    new-instance v9, Lio/sentry/SentryLogEventAttributeValue$Deserializer;

    invoke-direct {v9}, Lio/sentry/SentryLogEventAttributeValue$Deserializer;-><init>()V

    .line 200
    invoke-interface {p1, p2, v9}, Lio/sentry/ObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v7

    .line 201
    goto :goto_4

    .line 196
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v6

    .line 197
    goto :goto_4

    .line 193
    :pswitch_2
    new-instance v9, Lio/sentry/SentryLogLevel$Deserializer;

    invoke-direct {v9}, Lio/sentry/SentryLogLevel$Deserializer;-><init>()V

    invoke-interface {p1, p2, v9}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    check-cast v5, Lio/sentry/SentryLogLevel;

    .line 194
    goto :goto_4

    .line 190
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    .line 191
    goto :goto_4

    .line 187
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v3

    .line 188
    goto :goto_4

    .line 184
    :pswitch_5
    new-instance v9, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v9}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-interface {p1, p2, v9}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Lio/sentry/SpanId;

    .line 185
    goto :goto_4

    .line 181
    :pswitch_6
    new-instance v9, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v9}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-interface {p1, p2, v9}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    check-cast v1, Lio/sentry/protocol/SentryId;

    .line 182
    goto :goto_4

    .line 206
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v0, v8}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 209
    .end local v8    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 210
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 212
    if-eqz v1, :cond_6

    .line 219
    if-eqz v3, :cond_5

    .line 226
    if-eqz v4, :cond_4

    .line 233
    if-eqz v5, :cond_3

    .line 240
    new-instance v8, Lio/sentry/SentryLogEvent;

    invoke-direct {v8, v1, v3, v4, v5}, Lio/sentry/SentryLogEvent;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/SentryLogLevel;)V

    .line 242
    .local v8, "logEvent":Lio/sentry/SentryLogEvent;
    invoke-virtual {v8, v7}, Lio/sentry/SentryLogEvent;->setAttributes(Ljava/util/Map;)V

    .line 243
    invoke-virtual {v8, v6}, Lio/sentry/SentryLogEvent;->setSeverityNumber(Ljava/lang/Integer;)V

    .line 244
    invoke-virtual {v8, v2}, Lio/sentry/SentryLogEvent;->setSpanId(Lio/sentry/SpanId;)V

    .line 245
    invoke-virtual {v8, v0}, Lio/sentry/SentryLogEvent;->setUnknown(Ljava/util/Map;)V

    .line 247
    return-object v8

    .line 234
    .end local v8    # "logEvent":Lio/sentry/SentryLogEvent;
    :cond_3
    const-string v8, "Missing required field \"level\""

    .line 235
    .local v8, "message":Ljava/lang/String;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Missing required field \"level\""

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 236
    .local v9, "exception":Ljava/lang/Exception;
    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v11, v10, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    throw v9

    .line 227
    .end local v8    # "message":Ljava/lang/String;
    .end local v9    # "exception":Ljava/lang/Exception;
    :cond_4
    const-string v8, "Missing required field \"body\""

    .line 228
    .restart local v8    # "message":Ljava/lang/String;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Missing required field \"body\""

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 229
    .restart local v9    # "exception":Ljava/lang/Exception;
    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v11, v10, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    throw v9

    .line 220
    .end local v8    # "message":Ljava/lang/String;
    .end local v9    # "exception":Ljava/lang/Exception;
    :cond_5
    const-string v8, "Missing required field \"timestamp\""

    .line 221
    .restart local v8    # "message":Ljava/lang/String;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Missing required field \"timestamp\""

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v9    # "exception":Ljava/lang/Exception;
    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v11, v10, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    throw v9

    .line 213
    .end local v8    # "message":Ljava/lang/String;
    .end local v9    # "exception":Ljava/lang/Exception;
    :cond_6
    const-string v8, "Missing required field \"trace_id\""

    .line 214
    .restart local v8    # "message":Ljava/lang/String;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Missing required field \"trace_id\""

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v9    # "exception":Ljava/lang/Exception;
    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v11, v10, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    throw v9

    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_6
        -0x60432135 -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x3492916 -> :sswitch_3
        0x6219b84 -> :sswitch_2
        0x182da957 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 161
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryLogEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryLogEvent;

    move-result-object p1

    return-object p1
.end method
