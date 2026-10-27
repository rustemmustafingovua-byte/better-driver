.class public final Lio/sentry/protocol/SentrySpan$Deserializer;
.super Ljava/lang/Object;
.source "SentrySpan.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentrySpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentrySpan;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 361
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

    .line 362
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    return-object v1
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentrySpan;
    .locals 29
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface {v2}, Lio/sentry/ObjectReader;->beginObject()V

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "startTimestamp":Ljava/lang/Double;
    const/4 v4, 0x0

    .line 254
    .local v4, "timestamp":Ljava/lang/Double;
    const/4 v5, 0x0

    .line 255
    .local v5, "traceId":Lio/sentry/protocol/SentryId;
    const/4 v6, 0x0

    .line 256
    .local v6, "spanId":Lio/sentry/SpanId;
    const/4 v7, 0x0

    .line 257
    .local v7, "parentSpanId":Lio/sentry/SpanId;
    const/4 v8, 0x0

    .line 258
    .local v8, "op":Ljava/lang/String;
    const/4 v9, 0x0

    .line 259
    .local v9, "description":Ljava/lang/String;
    const/4 v10, 0x0

    .line 260
    .local v10, "status":Lio/sentry/SpanStatus;
    const/4 v11, 0x0

    .line 261
    .local v11, "origin":Ljava/lang/String;
    const/4 v12, 0x0

    .line 262
    .local v12, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 263
    .local v13, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    const/4 v14, 0x0

    .line 265
    .local v14, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v15, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v28, v14

    .line 266
    .end local v0    # "startTimestamp":Ljava/lang/Double;
    .end local v4    # "timestamp":Ljava/lang/Double;
    .end local v5    # "traceId":Lio/sentry/protocol/SentryId;
    .end local v6    # "spanId":Lio/sentry/SpanId;
    .end local v7    # "parentSpanId":Lio/sentry/SpanId;
    .end local v8    # "op":Ljava/lang/String;
    .end local v9    # "description":Ljava/lang/String;
    .end local v10    # "status":Lio/sentry/SpanStatus;
    .end local v11    # "origin":Ljava/lang/String;
    .end local v14    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v15, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v17, "startTimestamp":Ljava/lang/Double;
    .local v18, "timestamp":Ljava/lang/Double;
    .local v19, "traceId":Lio/sentry/protocol/SentryId;
    .local v20, "spanId":Lio/sentry/SpanId;
    .local v21, "parentSpanId":Lio/sentry/SpanId;
    .local v22, "op":Ljava/lang/String;
    .local v23, "description":Ljava/lang/String;
    .local v24, "status":Lio/sentry/SpanStatus;
    .local v25, "origin":Ljava/lang/String;
    .local v28, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v2}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v0

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v5, "trace_id"

    const-string v6, "op"

    const-string v7, "span_id"

    const-string v8, "start_timestamp"

    if-ne v0, v4, :cond_4

    .line 267
    invoke-interface {v2}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "nextName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "timestamp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "tags"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_2

    :sswitch_3
    const-string v0, "data"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_2

    :sswitch_4
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_2

    :sswitch_5
    const-string v0, "measurements"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_2

    :sswitch_6
    const-string v0, "status"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_2

    :sswitch_7
    const-string v0, "origin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_2

    :sswitch_8
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_9
    const-string v0, "description"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_2

    :sswitch_a
    const-string v0, "parent_span_id"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_b
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 316
    if-nez v15, :cond_3

    .line 317
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v15, v0

    goto/16 :goto_3

    .line 313
    :pswitch_0
    new-instance v0, Lio/sentry/protocol/MeasurementValue$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/MeasurementValue$Deserializer;-><init>()V

    invoke-interface {v2, v3, v0}, Lio/sentry/ObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v0

    .line 314
    .end local v13    # "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    .local v0, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    move-object v13, v0

    goto/16 :goto_4

    .line 310
    .end local v0    # "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    .restart local v13    # "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    :pswitch_1
    invoke-interface {v2}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 311
    .end local v28    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v28, v0

    goto/16 :goto_4

    .line 307
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v28    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_2
    invoke-interface {v2}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 308
    .end local v12    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v12, v0

    goto/16 :goto_4

    .line 304
    .end local v0    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    invoke-interface {v2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    .line 305
    .end local v25    # "origin":Ljava/lang/String;
    .local v0, "origin":Ljava/lang/String;
    move-object/from16 v25, v0

    goto/16 :goto_4

    .line 301
    .end local v0    # "origin":Ljava/lang/String;
    .restart local v25    # "origin":Ljava/lang/String;
    :pswitch_4
    new-instance v0, Lio/sentry/SpanStatus$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanStatus$Deserializer;-><init>()V

    invoke-interface {v2, v3, v0}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SpanStatus;

    .line 302
    .end local v24    # "status":Lio/sentry/SpanStatus;
    .local v0, "status":Lio/sentry/SpanStatus;
    move-object/from16 v24, v0

    goto/16 :goto_4

    .line 298
    .end local v0    # "status":Lio/sentry/SpanStatus;
    .restart local v24    # "status":Lio/sentry/SpanStatus;
    :pswitch_5
    invoke-interface {v2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    .line 299
    .end local v23    # "description":Ljava/lang/String;
    .local v0, "description":Ljava/lang/String;
    move-object/from16 v23, v0

    goto :goto_4

    .line 295
    .end local v0    # "description":Ljava/lang/String;
    .restart local v23    # "description":Ljava/lang/String;
    :pswitch_6
    invoke-interface {v2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    .line 296
    .end local v22    # "op":Ljava/lang/String;
    .local v0, "op":Ljava/lang/String;
    move-object/from16 v22, v0

    goto :goto_4

    .line 292
    .end local v0    # "op":Ljava/lang/String;
    .restart local v22    # "op":Ljava/lang/String;
    :pswitch_7
    new-instance v0, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-interface {v2, v3, v0}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SpanId;

    .line 293
    .end local v21    # "parentSpanId":Lio/sentry/SpanId;
    .local v0, "parentSpanId":Lio/sentry/SpanId;
    move-object/from16 v21, v0

    goto :goto_4

    .line 289
    .end local v0    # "parentSpanId":Lio/sentry/SpanId;
    .restart local v21    # "parentSpanId":Lio/sentry/SpanId;
    :pswitch_8
    new-instance v0, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v0}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lio/sentry/SpanId$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanId;

    move-result-object v0

    .line 290
    .end local v20    # "spanId":Lio/sentry/SpanId;
    .local v0, "spanId":Lio/sentry/SpanId;
    move-object/from16 v20, v0

    goto :goto_4

    .line 286
    .end local v0    # "spanId":Lio/sentry/SpanId;
    .restart local v20    # "spanId":Lio/sentry/SpanId;
    :pswitch_9
    new-instance v0, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 287
    .end local v19    # "traceId":Lio/sentry/protocol/SentryId;
    .local v0, "traceId":Lio/sentry/protocol/SentryId;
    move-object/from16 v19, v0

    goto :goto_4

    .line 279
    .end local v0    # "traceId":Lio/sentry/protocol/SentryId;
    .restart local v19    # "traceId":Lio/sentry/protocol/SentryId;
    :pswitch_a
    :try_start_0
    invoke-interface {v2}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v18    # "timestamp":Ljava/lang/Double;
    .local v0, "timestamp":Ljava/lang/Double;
    move-object/from16 v18, v0

    goto :goto_4

    .line 280
    .end local v0    # "timestamp":Ljava/lang/Double;
    .restart local v18    # "timestamp":Ljava/lang/Double;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-interface/range {p1 .. p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v6

    .line 282
    .local v6, "date":Ljava/util/Date;
    if-eqz v6, :cond_1

    invoke-static {v6}, Lio/sentry/DateUtils;->dateToSeconds(Ljava/util/Date;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 284
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "date":Ljava/util/Date;
    .end local v18    # "timestamp":Ljava/lang/Double;
    .local v5, "timestamp":Ljava/lang/Double;
    :cond_1
    move-object/from16 v18, v5

    goto :goto_4

    .line 271
    .end local v5    # "timestamp":Ljava/lang/Double;
    .restart local v18    # "timestamp":Ljava/lang/Double;
    :pswitch_b
    :try_start_1
    invoke-interface {v2}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    .end local v17    # "startTimestamp":Ljava/lang/Double;
    .local v0, "startTimestamp":Ljava/lang/Double;
    move-object/from16 v17, v0

    goto :goto_4

    .line 272
    .end local v0    # "startTimestamp":Ljava/lang/Double;
    .restart local v17    # "startTimestamp":Ljava/lang/Double;
    :catch_1
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-interface/range {p1 .. p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v6

    .line 274
    .restart local v6    # "date":Ljava/util/Date;
    if-eqz v6, :cond_2

    invoke-static {v6}, Lio/sentry/DateUtils;->dateToSeconds(Ljava/util/Date;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 276
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "date":Ljava/util/Date;
    .end local v17    # "startTimestamp":Ljava/lang/Double;
    .local v5, "startTimestamp":Ljava/lang/Double;
    :cond_2
    move-object/from16 v17, v5

    goto :goto_4

    .line 319
    .end local v5    # "startTimestamp":Ljava/lang/Double;
    .restart local v17    # "startTimestamp":Ljava/lang/Double;
    :cond_3
    :goto_3
    invoke-interface {v2, v3, v15, v4}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 322
    .end local v4    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 323
    :cond_4
    if-eqz v17, :cond_a

    .line 326
    if-eqz v19, :cond_9

    .line 329
    if-eqz v20, :cond_8

    .line 332
    if-eqz v22, :cond_7

    .line 335
    if-nez v12, :cond_5

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    move-object/from16 v26, v12

    goto :goto_5

    .line 335
    :cond_5
    move-object/from16 v26, v12

    .line 338
    .end local v12    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v26, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_5
    if-nez v13, :cond_6

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v13, v0

    move-object/from16 v27, v13

    goto :goto_6

    .line 338
    :cond_6
    move-object/from16 v27, v13

    .line 341
    .end local v13    # "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    .local v27, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    :goto_6
    new-instance v16, Lio/sentry/protocol/SentrySpan;

    invoke-direct/range {v16 .. v28}, Lio/sentry/protocol/SentrySpan;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v0, v16

    .line 355
    .local v0, "sentrySpan":Lio/sentry/protocol/SentrySpan;
    invoke-virtual {v0, v15}, Lio/sentry/protocol/SentrySpan;->setUnknown(Ljava/util/Map;)V

    .line 356
    invoke-interface {v2}, Lio/sentry/ObjectReader;->endObject()V

    .line 357
    return-object v0

    .line 333
    .end local v0    # "sentrySpan":Lio/sentry/protocol/SentrySpan;
    .end local v26    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    .restart local v12    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/protocol/MeasurementValue;>;"
    :cond_7
    invoke-direct {v1, v6, v3}, Lio/sentry/protocol/SentrySpan$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 330
    :cond_8
    invoke-direct {v1, v7, v3}, Lio/sentry/protocol/SentrySpan$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 327
    :cond_9
    invoke-direct {v1, v5, v3}, Lio/sentry/protocol/SentrySpan$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 324
    :cond_a
    invoke-direct {v1, v8, v3}, Lio/sentry/protocol/SentrySpan$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_b
        -0x68c5dc65 -> :sswitch_a
        -0x66ca7c04 -> :sswitch_9
        -0x5b03aa87 -> :sswitch_8
        -0x3c1e50da -> :sswitch_7
        -0x3532300e -> :sswitch_6
        -0x159763c9 -> :sswitch_5
        0xde1 -> :sswitch_4
        0x2eefaa -> :sswitch_3
        0x363419 -> :sswitch_2
        0x3492916 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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

    .line 244
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentrySpan$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentrySpan;

    move-result-object p1

    return-object p1
.end method
