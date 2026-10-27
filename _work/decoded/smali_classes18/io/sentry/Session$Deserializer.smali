.class public final Lio/sentry/Session$Deserializer;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/Session;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "logger"    # Lio/sentry/ILogger;

    .line 620
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

    .line 621
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 622
    .local v1, "exception":Ljava/lang/Exception;
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 623
    return-object v1
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/Session;
    .locals 33
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 488
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 490
    const/4 v2, 0x0

    .line 491
    .local v2, "started":Ljava/util/Date;
    const/4 v3, 0x0

    .line 492
    .local v3, "timestamp":Ljava/util/Date;
    const/4 v4, 0x0

    .line 493
    .local v4, "errorCount":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 494
    .local v5, "distinctId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 495
    .local v6, "sessionId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 496
    .local v7, "init":Ljava/lang/Boolean;
    const/4 v8, 0x0

    .line 497
    .local v8, "status":Lio/sentry/Session$State;
    const/4 v9, 0x0

    .line 498
    .local v9, "sequence":Ljava/lang/Long;
    const/4 v10, 0x0

    .line 499
    .local v10, "duration":Ljava/lang/Double;
    const/4 v11, 0x0

    .line 500
    .local v11, "ipAddress":Ljava/lang/String;
    const/4 v12, 0x0

    .line 501
    .local v12, "userAgent":Ljava/lang/String;
    const/4 v13, 0x0

    .line 502
    .local v13, "environment":Ljava/lang/String;
    const/4 v14, 0x0

    .line 503
    .local v14, "release":Ljava/lang/String;
    const/4 v15, 0x0

    .line 504
    .local v15, "abnormalMechanism":Ljava/lang/String;
    const/16 v16, 0x0

    .line 506
    .local v16, "hasNonTerminatingUnhandledError":Z
    const/16 v17, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    .line 507
    .end local v5    # "distinctId":Ljava/lang/String;
    .end local v6    # "sessionId":Ljava/lang/String;
    .end local v7    # "init":Ljava/lang/Boolean;
    .end local v8    # "status":Lio/sentry/Session$State;
    .end local v9    # "sequence":Ljava/lang/Long;
    .end local v10    # "duration":Ljava/lang/Double;
    .end local v11    # "ipAddress":Ljava/lang/String;
    .end local v12    # "userAgent":Ljava/lang/String;
    .end local v13    # "environment":Ljava/lang/String;
    .end local v14    # "release":Ljava/lang/String;
    .end local v15    # "abnormalMechanism":Ljava/lang/String;
    .end local v16    # "hasNonTerminatingUnhandledError":Z
    .local v2, "hasNonTerminatingUnhandledError":Z
    .local v3, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v19, "status":Lio/sentry/Session$State;
    .local v20, "started":Ljava/util/Date;
    .local v21, "timestamp":Ljava/util/Date;
    .local v23, "distinctId":Ljava/lang/String;
    .local v24, "sessionId":Ljava/lang/String;
    .local v25, "init":Ljava/lang/Boolean;
    .local v26, "sequence":Ljava/lang/Long;
    .local v27, "duration":Ljava/lang/Double;
    .local v28, "ipAddress":Ljava/lang/String;
    .local v29, "userAgent":Ljava/lang/String;
    .local v30, "environment":Ljava/lang/String;
    .local v31, "release":Ljava/lang/String;
    .local v32, "abnormalMechanism":Ljava/lang/String;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    const-string v7, "release"

    const-string v8, "errors"

    const-string v9, "started"

    const-string v10, "status"

    if-ne v5, v6, :cond_8

    .line 508
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 509
    .local v5, "nextName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v6, "non_terminating_unhandled_error"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v6, "abnormal_mechanism"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v6, "attrs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xb

    goto :goto_2

    :sswitch_3
    const-string v6, "timestamp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    goto :goto_2

    :sswitch_4
    const-string v6, "init"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v11

    goto :goto_2

    :sswitch_5
    const-string v6, "sid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v14

    goto :goto_2

    :sswitch_6
    const-string v6, "seq"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_7
    const-string v6, "did"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v15

    goto :goto_2

    :sswitch_8
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_9
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_a
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v12

    goto :goto_2

    :sswitch_b
    const-string v6, "duration"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto :goto_2

    :goto_1
    move v6, v13

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 578
    if-nez v3, :cond_7

    .line 579
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v3, v6

    goto/16 :goto_8

    .line 555
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 556
    :goto_3
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v6

    sget-object v8, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v6, v8, :cond_2

    .line 557
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, "nextAttrName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :cond_1
    goto :goto_4

    :sswitch_c
    const-string v8, "user_agent"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v12

    goto :goto_5

    :sswitch_d
    const-string v8, "ip_address"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v11

    goto :goto_5

    :sswitch_e
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v14

    goto :goto_5

    :sswitch_f
    const-string v8, "environment"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v15

    goto :goto_5

    :goto_4
    move v8, v13

    :goto_5
    packed-switch v8, :pswitch_data_1

    .line 572
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->skipValue()V

    goto :goto_6

    .line 569
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v8

    .line 570
    .end local v29    # "userAgent":Ljava/lang/String;
    .local v8, "userAgent":Ljava/lang/String;
    move-object/from16 v29, v8

    goto :goto_6

    .line 566
    .end local v8    # "userAgent":Ljava/lang/String;
    .restart local v29    # "userAgent":Ljava/lang/String;
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v8

    .line 567
    .end local v28    # "ipAddress":Ljava/lang/String;
    .local v8, "ipAddress":Ljava/lang/String;
    move-object/from16 v28, v8

    goto :goto_6

    .line 563
    .end local v8    # "ipAddress":Ljava/lang/String;
    .restart local v28    # "ipAddress":Ljava/lang/String;
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v8

    .line 564
    .end local v30    # "environment":Ljava/lang/String;
    .local v8, "environment":Ljava/lang/String;
    move-object/from16 v30, v8

    goto :goto_6

    .line 560
    .end local v8    # "environment":Ljava/lang/String;
    .restart local v30    # "environment":Ljava/lang/String;
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v8

    .line 561
    .end local v31    # "release":Ljava/lang/String;
    .local v8, "release":Ljava/lang/String;
    move-object/from16 v31, v8

    .line 574
    .end local v6    # "nextAttrName":Ljava/lang/String;
    .end local v8    # "release":Ljava/lang/String;
    .restart local v31    # "release":Ljava/lang/String;
    :goto_6
    goto :goto_3

    .line 575
    :cond_2
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 576
    move-object/from16 v6, p1

    goto/16 :goto_9

    .line 549
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v6

    .line 550
    .local v6, "hasNonTerminatingUnhandledErrorValue":Ljava/lang/Boolean;
    if-eqz v6, :cond_3

    .line 552
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    move v14, v15

    goto :goto_7

    :cond_3
    nop

    .line 553
    .end local v2    # "hasNonTerminatingUnhandledError":Z
    .local v14, "hasNonTerminatingUnhandledError":Z
    :goto_7
    move-object/from16 v6, p1

    move v2, v14

    goto/16 :goto_9

    .line 546
    .end local v6    # "hasNonTerminatingUnhandledErrorValue":Ljava/lang/Boolean;
    .end local v14    # "hasNonTerminatingUnhandledError":Z
    .restart local v2    # "hasNonTerminatingUnhandledError":Z
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v6

    .line 547
    .end local v32    # "abnormalMechanism":Ljava/lang/String;
    .local v6, "abnormalMechanism":Ljava/lang/String;
    move-object/from16 v32, v6

    move-object/from16 v6, p1

    goto/16 :goto_9

    .line 543
    .end local v6    # "abnormalMechanism":Ljava/lang/String;
    .restart local v32    # "abnormalMechanism":Ljava/lang/String;
    :pswitch_7
    invoke-interface/range {p1 .. p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v6

    .line 544
    .end local v21    # "timestamp":Ljava/util/Date;
    .local v6, "timestamp":Ljava/util/Date;
    move-object/from16 v21, v6

    move-object/from16 v6, p1

    goto/16 :goto_9

    .line 540
    .end local v6    # "timestamp":Ljava/util/Date;
    .restart local v21    # "timestamp":Ljava/util/Date;
    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v6

    .line 541
    .end local v27    # "duration":Ljava/lang/Double;
    .local v6, "duration":Ljava/lang/Double;
    move-object/from16 v27, v6

    move-object/from16 v6, p1

    goto/16 :goto_9

    .line 537
    .end local v6    # "duration":Ljava/lang/Double;
    .restart local v27    # "duration":Ljava/lang/Double;
    :pswitch_9
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v4

    .line 538
    move-object/from16 v6, p1

    goto/16 :goto_9

    .line 534
    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v6

    .line 535
    .end local v26    # "sequence":Ljava/lang/Long;
    .local v6, "sequence":Ljava/lang/Long;
    move-object/from16 v26, v6

    move-object/from16 v6, p1

    goto :goto_9

    .line 528
    .end local v6    # "sequence":Ljava/lang/Long;
    .restart local v26    # "sequence":Ljava/lang/Long;
    :pswitch_b
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/sentry/util/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, "statusValue":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 530
    invoke-static {v6}, Lio/sentry/Session$State;->valueOf(Ljava/lang/String;)Lio/sentry/Session$State;

    move-result-object v7

    move-object/from16 v6, p1

    move-object/from16 v19, v7

    .end local v19    # "status":Lio/sentry/Session$State;
    .local v7, "status":Lio/sentry/Session$State;
    goto :goto_9

    .line 525
    .end local v6    # "statusValue":Ljava/lang/String;
    .end local v7    # "status":Lio/sentry/Session$State;
    .restart local v19    # "status":Lio/sentry/Session$State;
    :pswitch_c
    invoke-interface/range {p1 .. p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v6

    .line 526
    .end local v20    # "started":Ljava/util/Date;
    .local v6, "started":Ljava/util/Date;
    move-object/from16 v20, v6

    move-object/from16 v6, p1

    goto :goto_9

    .line 522
    .end local v6    # "started":Ljava/util/Date;
    .restart local v20    # "started":Ljava/util/Date;
    :pswitch_d
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v6

    .line 523
    .end local v25    # "init":Ljava/lang/Boolean;
    .local v6, "init":Ljava/lang/Boolean;
    move-object/from16 v25, v6

    move-object/from16 v6, p1

    goto :goto_9

    .line 519
    .end local v6    # "init":Ljava/lang/Boolean;
    .restart local v25    # "init":Ljava/lang/Boolean;
    :pswitch_e
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v6

    .line 520
    .end local v23    # "distinctId":Ljava/lang/String;
    .local v6, "distinctId":Ljava/lang/String;
    move-object/from16 v23, v6

    move-object/from16 v6, p1

    goto :goto_9

    .line 511
    .end local v6    # "distinctId":Ljava/lang/String;
    .restart local v23    # "distinctId":Ljava/lang/String;
    :pswitch_f
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "sid":Ljava/lang/String;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x24

    if-eq v7, v8, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_5

    .line 513
    :cond_4
    move-object v7, v6

    move-object/from16 v6, p1

    move-object/from16 v24, v7

    .end local v24    # "sessionId":Ljava/lang/String;
    .local v7, "sessionId":Ljava/lang/String;
    goto :goto_9

    .line 515
    .end local v7    # "sessionId":Ljava/lang/String;
    .restart local v24    # "sessionId":Ljava/lang/String;
    :cond_5
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v8, "%s sid is not valid."

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v7, v8, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    nop

    .line 584
    .end local v5    # "nextName":Ljava/lang/String;
    .end local v6    # "sid":Ljava/lang/String;
    :cond_6
    move-object/from16 v6, p1

    goto :goto_9

    .line 581
    .restart local v5    # "nextName":Ljava/lang/String;
    :cond_7
    :goto_8
    move-object/from16 v6, p1

    invoke-interface {v6, v1, v3, v5}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 584
    .end local v5    # "nextName":Ljava/lang/String;
    :goto_9
    goto/16 :goto_0

    .line 585
    :cond_8
    move-object/from16 v6, p1

    if-eqz v19, :cond_c

    .line 588
    if-eqz v20, :cond_b

    .line 591
    if-eqz v4, :cond_a

    .line 594
    if-eqz v31, :cond_9

    .line 597
    new-instance v18, Lio/sentry/Session;

    .line 602
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-direct/range {v18 .. v32}, Lio/sentry/Session;-><init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v18

    .line 613
    .local v5, "session":Lio/sentry/Session;
    invoke-static {v5, v2}, Lio/sentry/Session;->access$002(Lio/sentry/Session;Z)Z

    .line 614
    invoke-virtual {v5, v3}, Lio/sentry/Session;->setUnknown(Ljava/util/Map;)V

    .line 615
    invoke-interface {v6}, Lio/sentry/ObjectReader;->endObject()V

    .line 616
    return-object v5

    .line 595
    .end local v5    # "session":Lio/sentry/Session;
    :cond_9
    invoke-direct {v0, v7, v1}, Lio/sentry/Session$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v5

    throw v5

    .line 592
    :cond_a
    invoke-direct {v0, v8, v1}, Lio/sentry/Session$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v5

    throw v5

    .line 589
    :cond_b
    invoke-direct {v0, v9, v1}, Lio/sentry/Session$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v5

    throw v5

    .line 586
    :cond_c
    invoke-direct {v0, v10, v1}, Lio/sentry/Session$Deserializer;->missingRequiredFieldException(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Exception;

    move-result-object v5

    throw v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_b
        -0x7114bf7f -> :sswitch_a
        -0x4d2a9095 -> :sswitch_9
        -0x3532300e -> :sswitch_8
        0x1847f -> :sswitch_7
        0x1bc5f -> :sswitch_6
        0x1bcce -> :sswitch_5
        0x316510 -> :sswitch_4
        0x3492916 -> :sswitch_3
        0x58d64a2 -> :sswitch_2
        0xcbd1022 -> :sswitch_1
        0x642c6379 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x51ecded -> :sswitch_f
        0x41012807 -> :sswitch_e
        0x583738dc -> :sswitch_d
        0x724f4d91 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
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

    .line 482
    invoke-virtual {p0, p1, p2}, Lio/sentry/Session$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/Session;

    move-result-object p1

    return-object p1
.end method
