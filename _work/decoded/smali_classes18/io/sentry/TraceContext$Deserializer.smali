.class public final Lio/sentry/TraceContext$Deserializer;
.super Ljava/lang/Object;
.source "TraceContext.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/TraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/TraceContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing required field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    return-object v1
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/TraceContext;
    .locals 25
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 195
    const/4 v3, 0x0

    .line 196
    .local v3, "traceId":Lio/sentry/protocol/SentryId;
    const/4 v4, 0x0

    .line 197
    .local v4, "publicKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 198
    .local v5, "release":Ljava/lang/String;
    const/4 v6, 0x0

    .line 199
    .local v6, "environment":Ljava/lang/String;
    const/4 v7, 0x0

    .line 200
    .local v7, "userId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 201
    .local v8, "transaction":Ljava/lang/String;
    const/4 v9, 0x0

    .line 202
    .local v9, "sampleRate":Ljava/lang/String;
    const/4 v10, 0x0

    .line 203
    .local v10, "sampleRand":Ljava/lang/String;
    const/4 v11, 0x0

    .line 204
    .local v11, "sampled":Ljava/lang/String;
    const/4 v12, 0x0

    .line 206
    .local v12, "replayId":Lio/sentry/protocol/SentryId;
    const/4 v13, 0x0

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v24, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    .line 207
    .end local v3    # "traceId":Lio/sentry/protocol/SentryId;
    .end local v4    # "publicKey":Ljava/lang/String;
    .end local v5    # "release":Ljava/lang/String;
    .end local v6    # "environment":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/String;
    .end local v8    # "transaction":Ljava/lang/String;
    .end local v9    # "sampleRate":Ljava/lang/String;
    .end local v10    # "sampleRand":Ljava/lang/String;
    .end local v11    # "sampled":Ljava/lang/String;
    .end local v12    # "replayId":Lio/sentry/protocol/SentryId;
    .local v13, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v15, "traceId":Lio/sentry/protocol/SentryId;
    .local v16, "publicKey":Ljava/lang/String;
    .local v17, "release":Ljava/lang/String;
    .local v18, "environment":Ljava/lang/String;
    .local v19, "userId":Ljava/lang/String;
    .local v20, "transaction":Ljava/lang/String;
    .local v21, "sampleRate":Ljava/lang/String;
    .local v22, "sampled":Ljava/lang/String;
    .local v23, "replayId":Lio/sentry/protocol/SentryId;
    .local v24, "sampleRand":Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v5, "public_key"

    const-string v6, "trace_id"

    if-ne v3, v4, :cond_2

    .line 208
    invoke-interface {v1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "nextName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v4, "transaction"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_2
    const-string v4, "sampled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_4
    const-string v4, "release"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_5
    const-string v4, "sample_rate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_6
    const-string v4, "sample_rand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_7
    const-string v4, "environment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_8
    const-string v4, "user_id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_9
    const-string v4, "replay_id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 241
    if-nez v13, :cond_1

    .line 242
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v13, v4

    goto :goto_3

    .line 238
    :pswitch_0
    new-instance v4, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v4}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v4, v1, v2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v4

    .line 239
    .end local v23    # "replayId":Lio/sentry/protocol/SentryId;
    .local v4, "replayId":Lio/sentry/protocol/SentryId;
    move-object/from16 v23, v4

    goto :goto_4

    .line 235
    .end local v4    # "replayId":Lio/sentry/protocol/SentryId;
    .restart local v23    # "replayId":Lio/sentry/protocol/SentryId;
    :pswitch_1
    invoke-interface {v1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    .line 236
    .end local v22    # "sampled":Ljava/lang/String;
    .local v4, "sampled":Ljava/lang/String;
    move-object/from16 v22, v4

    goto :goto_4

    .line 232
    .end local v4    # "sampled":Ljava/lang/String;
    .restart local v22    # "sampled":Ljava/lang/String;
    :pswitch_2
    invoke-interface {v1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    .line 233
    .end local v24    # "sampleRand":Ljava/lang/String;
    .local v4, "sampleRand":Ljava/lang/String;
    move-object/from16 v24, v4

    goto :goto_4

    .line 229
    .end local v4    # "sampleRand":Ljava/lang/String;
    .restart local v24    # "sampleRand":Ljava/lang/String;
    :pswitch_3
    invoke-interface {v1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    .line 230
    .end local v21    # "sampleRate":Ljava/lang/String;
    .local v4, "sampleRate":Ljava/lang/String;
    move-object/from16 v21, v4

    goto :goto_4

    .line 226
    .end local v4    # "sampleRate":Ljava/lang/String;
    .restart local v21    # "sampleRate":Ljava/lang/String;
    :pswitch_4
    invoke-interface {v1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    .line 227
    .end local v20    # "transaction":Ljava/lang/String;
    .local v4, "transaction":Ljava/lang/String;
    move-object/from16 v20, v4

    goto :goto_4

    .line 223
    .end local v4    # "transaction":Ljava/lang/String;
    .restart local v20    # "transaction":Ljava/lang/String;
    :pswitch_5
    invoke-interface {v1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    .line 224
    .end local v19    # "userId":Ljava/lang/String;
    .local v4, "userId":Ljava/lang/String;
    move-object/from16 v19, v4

    goto :goto_4

    .line 220
    .end local v4    # "userId":Ljava/lang/String;
    .restart local v19    # "userId":Ljava/lang/String;
    :pswitch_6
    invoke-interface {v1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    .line 221
    .end local v18    # "environment":Ljava/lang/String;
    .local v4, "environment":Ljava/lang/String;
    move-object/from16 v18, v4

    goto :goto_4

    .line 217
    .end local v4    # "environment":Ljava/lang/String;
    .restart local v18    # "environment":Ljava/lang/String;
    :pswitch_7
    invoke-interface {v1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    .line 218
    .end local v17    # "release":Ljava/lang/String;
    .local v4, "release":Ljava/lang/String;
    move-object/from16 v17, v4

    goto :goto_4

    .line 214
    .end local v4    # "release":Ljava/lang/String;
    .restart local v17    # "release":Ljava/lang/String;
    :pswitch_8
    invoke-interface {v1}, Lio/sentry/ObjectReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 215
    .end local v16    # "publicKey":Ljava/lang/String;
    .local v4, "publicKey":Ljava/lang/String;
    move-object/from16 v16, v4

    goto :goto_4

    .line 211
    .end local v4    # "publicKey":Ljava/lang/String;
    .restart local v16    # "publicKey":Ljava/lang/String;
    :pswitch_9
    new-instance v4, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v4}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v4, v1, v2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v4

    .line 212
    .end local v15    # "traceId":Lio/sentry/protocol/SentryId;
    .local v4, "traceId":Lio/sentry/protocol/SentryId;
    move-object v15, v4

    goto :goto_4

    .line 244
    .end local v4    # "traceId":Lio/sentry/protocol/SentryId;
    .restart local v15    # "traceId":Lio/sentry/protocol/SentryId;
    :cond_1
    :goto_3
    invoke-interface {v1, v2, v13, v3}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 247
    .end local v3    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 248
    :cond_2
    if-eqz v15, :cond_4

    .line 251
    if-eqz v16, :cond_3

    .line 254
    new-instance v14, Lio/sentry/TraceContext;

    invoke-direct/range {v14 .. v24}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/SentryId;Ljava/lang/String;)V

    .line 266
    .local v14, "traceContext":Lio/sentry/TraceContext;
    invoke-virtual {v14, v13}, Lio/sentry/TraceContext;->setUnknown(Ljava/util/Map;)V

    .line 267
    invoke-interface {v1}, Lio/sentry/ObjectReader;->endObject()V

    .line 268
    return-object v14

    .line 252
    .end local v14    # "traceContext":Lio/sentry/TraceContext;
    :cond_3
    invoke-direct {v0, v5, v2}, Lio/sentry/TraceContext$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v3

    throw v3

    .line 249
    :cond_4
    invoke-direct {v0, v6, v2}, Lio/sentry/TraceContext$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v3

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1b1b338d -> :sswitch_9
        -0x8c511f1 -> :sswitch_8
        -0x51ecded -> :sswitch_7
        0x921899a -> :sswitch_6
        0x9218a55 -> :sswitch_5
        0x41012807 -> :sswitch_4
        0x4bb73e55 -> :sswitch_3
        0x6f273ffa -> :sswitch_2
        0x71892389 -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

    .line 189
    invoke-virtual {p0, p1, p2}, Lio/sentry/TraceContext$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/TraceContext;

    move-result-object p1

    return-object p1
.end method
