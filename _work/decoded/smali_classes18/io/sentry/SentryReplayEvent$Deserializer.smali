.class public final Lio/sentry/SentryReplayEvent$Deserializer;
.super Ljava/lang/Object;
.source "SentryReplayEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryReplayEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryReplayEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryReplayEvent;
    .locals 17
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Lio/sentry/SentryBaseEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryBaseEvent$Deserializer;-><init>()V

    .line 258
    .local v2, "baseEventDeserializer":Lio/sentry/SentryBaseEvent$Deserializer;
    new-instance v3, Lio/sentry/SentryReplayEvent;

    invoke-direct {v3}, Lio/sentry/SentryReplayEvent;-><init>()V

    .line 260
    .local v3, "replay":Lio/sentry/SentryReplayEvent;
    const/4 v4, 0x0

    .line 261
    .local v4, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 262
    .local v5, "type":Ljava/lang/String;
    const/4 v6, 0x0

    .line 263
    .local v6, "replayType":Lio/sentry/SentryReplayEvent$ReplayType;
    const/4 v7, 0x0

    .line 264
    .local v7, "replayId":Lio/sentry/protocol/SentryId;
    const/4 v8, 0x0

    .line 265
    .local v8, "segmentId":Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 266
    .local v9, "timestamp":Ljava/util/Date;
    const/4 v10, 0x0

    .line 267
    .local v10, "replayStartTimestamp":Ljava/util/Date;
    const/4 v11, 0x0

    .line 268
    .local v11, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 269
    .local v12, "errorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 270
    .local v13, "traceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 272
    .local v14, "segmentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Lio/sentry/ObjectReader;->beginObject()V

    .line 273
    :goto_0
    invoke-interface {v0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v15

    move-object/from16 v16, v8

    .end local v8    # "segmentId":Ljava/lang/Integer;
    .local v16, "segmentId":Ljava/lang/Integer;
    sget-object v8, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v15, v8, :cond_3

    .line 274
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, "nextName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v15, "segment_id"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x3

    goto :goto_2

    :sswitch_1
    const-string v15, "replay_type"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    goto :goto_2

    :sswitch_2
    const-string v15, "trace_ids"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x8

    goto :goto_2

    :sswitch_3
    const-string v15, "error_ids"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x7

    goto :goto_2

    :sswitch_4
    const-string v15, "timestamp"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x4

    goto :goto_2

    :sswitch_5
    const-string v15, "urls"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x6

    goto :goto_2

    :sswitch_6
    const-string v15, "type"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    goto :goto_2

    :sswitch_7
    const-string v15, "replay_start_timestamp"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x5

    goto :goto_2

    :sswitch_8
    const-string v15, "replay_id"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x2

    goto :goto_2

    :sswitch_9
    const-string v15, "segment_names"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x9

    goto :goto_2

    :goto_1
    const/4 v15, -0x1

    :goto_2
    packed-switch v15, :pswitch_data_0

    .line 307
    invoke-virtual {v2, v3, v8, v0, v1}, Lio/sentry/SentryBaseEvent$Deserializer;->deserializeValue(Lio/sentry/SentryBaseEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 308
    if-nez v4, :cond_1

    .line 309
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object v4, v15

    goto/16 :goto_3

    .line 304
    :pswitch_0
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Ljava/util/List;

    .line 305
    move-object/from16 v8, v16

    goto/16 :goto_4

    .line 301
    :pswitch_1
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v15

    move-object v13, v15

    check-cast v13, Ljava/util/List;

    .line 302
    move-object/from16 v8, v16

    goto :goto_4

    .line 298
    :pswitch_2
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v15

    move-object v12, v15

    check-cast v12, Ljava/util/List;

    .line 299
    move-object/from16 v8, v16

    goto :goto_4

    .line 295
    :pswitch_3
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v15

    move-object v11, v15

    check-cast v11, Ljava/util/List;

    .line 296
    move-object/from16 v8, v16

    goto :goto_4

    .line 292
    :pswitch_4
    invoke-interface/range {p1 .. p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v10

    .line 293
    move-object/from16 v8, v16

    goto :goto_4

    .line 289
    :pswitch_5
    invoke-interface/range {p1 .. p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v9

    .line 290
    move-object/from16 v8, v16

    goto :goto_4

    .line 286
    :pswitch_6
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v15

    .line 287
    .end local v16    # "segmentId":Ljava/lang/Integer;
    .local v15, "segmentId":Ljava/lang/Integer;
    move-object v8, v15

    goto :goto_4

    .line 283
    .end local v15    # "segmentId":Ljava/lang/Integer;
    .restart local v16    # "segmentId":Ljava/lang/Integer;
    :pswitch_7
    new-instance v15, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v15}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-interface {v0, v1, v15}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v15

    move-object v7, v15

    check-cast v7, Lio/sentry/protocol/SentryId;

    .line 284
    move-object/from16 v8, v16

    goto :goto_4

    .line 280
    :pswitch_8
    new-instance v15, Lio/sentry/SentryReplayEvent$ReplayType$Deserializer;

    invoke-direct {v15}, Lio/sentry/SentryReplayEvent$ReplayType$Deserializer;-><init>()V

    invoke-interface {v0, v1, v15}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Lio/sentry/SentryReplayEvent$ReplayType;

    .line 281
    move-object/from16 v8, v16

    goto :goto_4

    .line 277
    :pswitch_9
    invoke-interface {v0}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v5

    .line 278
    move-object/from16 v8, v16

    goto :goto_4

    .line 311
    :cond_1
    :goto_3
    invoke-interface {v0, v1, v4, v8}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    move-object/from16 v8, v16

    goto :goto_4

    .line 307
    :cond_2
    move-object/from16 v8, v16

    .line 315
    .end local v16    # "segmentId":Ljava/lang/Integer;
    .local v8, "segmentId":Ljava/lang/Integer;
    :goto_4
    goto/16 :goto_0

    .line 316
    .end local v8    # "segmentId":Ljava/lang/Integer;
    .restart local v16    # "segmentId":Ljava/lang/Integer;
    :cond_3
    invoke-interface {v0}, Lio/sentry/ObjectReader;->endObject()V

    .line 318
    if-eqz v5, :cond_4

    .line 319
    invoke-virtual {v3, v5}, Lio/sentry/SentryReplayEvent;->setType(Ljava/lang/String;)V

    .line 321
    :cond_4
    if-eqz v6, :cond_5

    .line 322
    invoke-virtual {v3, v6}, Lio/sentry/SentryReplayEvent;->setReplayType(Lio/sentry/SentryReplayEvent$ReplayType;)V

    .line 324
    :cond_5
    if-eqz v16, :cond_6

    .line 325
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Lio/sentry/SentryReplayEvent;->setSegmentId(I)V

    .line 327
    :cond_6
    if-eqz v9, :cond_7

    .line 328
    invoke-virtual {v3, v9}, Lio/sentry/SentryReplayEvent;->setTimestamp(Ljava/util/Date;)V

    .line 330
    :cond_7
    invoke-virtual {v3, v7}, Lio/sentry/SentryReplayEvent;->setReplayId(Lio/sentry/protocol/SentryId;)V

    .line 331
    invoke-virtual {v3, v10}, Lio/sentry/SentryReplayEvent;->setReplayStartTimestamp(Ljava/util/Date;)V

    .line 332
    invoke-virtual {v3, v11}, Lio/sentry/SentryReplayEvent;->setUrls(Ljava/util/List;)V

    .line 333
    invoke-virtual {v3, v12}, Lio/sentry/SentryReplayEvent;->setErrorIds(Ljava/util/List;)V

    .line 334
    invoke-virtual {v3, v13}, Lio/sentry/SentryReplayEvent;->setTraceIds(Ljava/util/List;)V

    .line 335
    invoke-virtual {v3, v14}, Lio/sentry/SentryReplayEvent;->setSegmentNames(Ljava/util/List;)V

    .line 336
    invoke-virtual {v3, v4}, Lio/sentry/SentryReplayEvent;->setUnknown(Ljava/util/Map;)V

    .line 337
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x245898c4 -> :sswitch_9
        -0x1b1b338d -> :sswitch_8
        -0xfbcbadf -> :sswitch_7
        0x368f3a -> :sswitch_6
        0x36e8e4 -> :sswitch_5
        0x3492916 -> :sswitch_4
        0x13a95401 -> :sswitch_3
        0x2b308cbe -> :sswitch_2
        0x3ee8d892 -> :sswitch_1
        0x403ba1a7 -> :sswitch_0
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

    .line 249
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryReplayEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryReplayEvent;

    move-result-object p1

    return-object p1
.end method
