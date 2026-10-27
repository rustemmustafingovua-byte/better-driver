.class public final Lio/sentry/SpanContext$Deserializer;
.super Ljava/lang/Object;
.source "SpanContext.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SpanContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SpanContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanContext;
    .locals 18
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 407
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0}, Lio/sentry/ObjectReader;->beginObject()V

    .line 408
    const/4 v2, 0x0

    .line 409
    .local v2, "traceId":Lio/sentry/protocol/SentryId;
    const/4 v3, 0x0

    .line 410
    .local v3, "spanId":Lio/sentry/SpanId;
    const/4 v4, 0x0

    .line 411
    .local v4, "parentSpanId":Lio/sentry/SpanId;
    const/4 v5, 0x0

    .line 412
    .local v5, "op":Ljava/lang/String;
    const/4 v6, 0x0

    .line 413
    .local v6, "description":Ljava/lang/String;
    const/4 v7, 0x0

    .line 414
    .local v7, "status":Lio/sentry/SpanStatus;
    const/4 v8, 0x0

    .line 415
    .local v8, "origin":Ljava/lang/String;
    const/4 v9, 0x0

    .line 416
    .local v9, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 418
    .local v10, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x0

    move-object v13, v2

    move-object v14, v3

    move-object/from16 v16, v4

    .line 419
    .end local v2    # "traceId":Lio/sentry/protocol/SentryId;
    .end local v3    # "spanId":Lio/sentry/SpanId;
    .end local v4    # "parentSpanId":Lio/sentry/SpanId;
    .local v11, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "traceId":Lio/sentry/protocol/SentryId;
    .local v14, "spanId":Lio/sentry/SpanId;
    .local v16, "parentSpanId":Lio/sentry/SpanId;
    :goto_0
    invoke-interface {v0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_2

    .line 420
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "trace_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string v3, "tags"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_2
    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_3
    const-string v3, "op"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_4
    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_5
    const-string v3, "origin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_6
    const-string v3, "description"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_7
    const-string v3, "parent_span_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_8
    const-string v3, "span_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 452
    if-nez v11, :cond_1

    .line 453
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v11, v3

    goto :goto_3

    .line 449
    :pswitch_0
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 450
    .end local v10    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v10, v3

    goto :goto_4

    .line 444
    .end local v3    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v10    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1
    nop

    .line 446
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 445
    invoke-static {v3}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 447
    .end local v9    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v9, v3

    goto :goto_4

    .line 441
    .end local v3    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 442
    .end local v8    # "origin":Ljava/lang/String;
    .local v3, "origin":Ljava/lang/String;
    move-object v8, v3

    goto :goto_4

    .line 438
    .end local v3    # "origin":Ljava/lang/String;
    .restart local v8    # "origin":Ljava/lang/String;
    :pswitch_3
    new-instance v3, Lio/sentry/SpanStatus$Deserializer;

    invoke-direct {v3}, Lio/sentry/SpanStatus$Deserializer;-><init>()V

    invoke-interface {v0, v1, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/SpanStatus;

    .line 439
    .end local v7    # "status":Lio/sentry/SpanStatus;
    .local v3, "status":Lio/sentry/SpanStatus;
    move-object v7, v3

    goto :goto_4

    .line 435
    .end local v3    # "status":Lio/sentry/SpanStatus;
    .restart local v7    # "status":Lio/sentry/SpanStatus;
    :pswitch_4
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 436
    .end local v6    # "description":Ljava/lang/String;
    .local v3, "description":Ljava/lang/String;
    move-object v6, v3

    goto :goto_4

    .line 432
    .end local v3    # "description":Ljava/lang/String;
    .restart local v6    # "description":Ljava/lang/String;
    :pswitch_5
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 433
    .end local v5    # "op":Ljava/lang/String;
    .local v3, "op":Ljava/lang/String;
    move-object v5, v3

    goto :goto_4

    .line 429
    .end local v3    # "op":Ljava/lang/String;
    .restart local v5    # "op":Ljava/lang/String;
    :pswitch_6
    new-instance v3, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v3}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-interface {v0, v1, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/SpanId;

    .line 430
    .end local v16    # "parentSpanId":Lio/sentry/SpanId;
    .local v3, "parentSpanId":Lio/sentry/SpanId;
    move-object/from16 v16, v3

    goto :goto_4

    .line 426
    .end local v3    # "parentSpanId":Lio/sentry/SpanId;
    .restart local v16    # "parentSpanId":Lio/sentry/SpanId;
    :pswitch_7
    new-instance v3, Lio/sentry/SpanId$Deserializer;

    invoke-direct {v3}, Lio/sentry/SpanId$Deserializer;-><init>()V

    invoke-virtual {v3, v0, v1}, Lio/sentry/SpanId$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanId;

    move-result-object v3

    .line 427
    .end local v14    # "spanId":Lio/sentry/SpanId;
    .local v3, "spanId":Lio/sentry/SpanId;
    move-object v14, v3

    goto :goto_4

    .line 423
    .end local v3    # "spanId":Lio/sentry/SpanId;
    .restart local v14    # "spanId":Lio/sentry/SpanId;
    :pswitch_8
    new-instance v3, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v3, v0, v1}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v3

    .line 424
    .end local v13    # "traceId":Lio/sentry/protocol/SentryId;
    .local v3, "traceId":Lio/sentry/protocol/SentryId;
    move-object v13, v3

    goto :goto_4

    .line 455
    .end local v3    # "traceId":Lio/sentry/protocol/SentryId;
    .restart local v13    # "traceId":Lio/sentry/protocol/SentryId;
    :cond_1
    :goto_3
    invoke-interface {v0, v1, v11, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 458
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 460
    :cond_2
    if-eqz v13, :cond_7

    .line 467
    if-eqz v14, :cond_6

    .line 474
    if-nez v5, :cond_3

    .line 481
    const-string v5, ""

    move-object v15, v5

    goto :goto_5

    .line 474
    :cond_3
    move-object v15, v5

    .line 484
    .end local v5    # "op":Ljava/lang/String;
    .local v15, "op":Ljava/lang/String;
    :goto_5
    new-instance v12, Lio/sentry/SpanContext;

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v17}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V

    .line 485
    .local v12, "spanContext":Lio/sentry/SpanContext;
    invoke-virtual {v12, v6}, Lio/sentry/SpanContext;->setDescription(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v12, v7}, Lio/sentry/SpanContext;->setStatus(Lio/sentry/SpanStatus;)V

    .line 487
    invoke-virtual {v12, v8}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    .line 489
    if-eqz v9, :cond_4

    .line 490
    iput-object v9, v12, Lio/sentry/SpanContext;->tags:Ljava/util/Map;

    .line 493
    :cond_4
    if-eqz v10, :cond_5

    .line 494
    iput-object v10, v12, Lio/sentry/SpanContext;->data:Ljava/util/Map;

    .line 497
    :cond_5
    invoke-virtual {v12, v11}, Lio/sentry/SpanContext;->setUnknown(Ljava/util/Map;)V

    .line 498
    invoke-interface {v0}, Lio/sentry/ObjectReader;->endObject()V

    .line 499
    return-object v12

    .line 468
    .end local v12    # "spanContext":Lio/sentry/SpanContext;
    .end local v15    # "op":Ljava/lang/String;
    .restart local v5    # "op":Ljava/lang/String;
    :cond_6
    const-string v2, "Missing required field \"span_id\""

    .line 469
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 470
    .local v3, "exception":Ljava/lang/Exception;
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v1, v4, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    throw v3

    .line 461
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "exception":Ljava/lang/Exception;
    :cond_7
    const-string v2, "Missing required field \"trace_id\""

    .line 462
    .restart local v2    # "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 463
    .restart local v3    # "exception":Ljava/lang/Exception;
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v1, v4, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    throw v3

    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_8
        -0x68c5dc65 -> :sswitch_7
        -0x66ca7c04 -> :sswitch_6
        -0x3c1e50da -> :sswitch_5
        -0x3532300e -> :sswitch_4
        0xde1 -> :sswitch_3
        0x2eefaa -> :sswitch_2
        0x363419 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 402
    invoke-virtual {p0, p1, p2}, Lio/sentry/SpanContext$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanContext;

    move-result-object p1

    return-object p1
.end method
