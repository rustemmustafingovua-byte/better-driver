.class public final Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;
.super Ljava/lang/Object;
.source "RRWebVideoEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebVideoEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/rrweb/RRWebVideoEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deserializeData(Lio/sentry/rrweb/RRWebVideoEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "event"    # Lio/sentry/rrweb/RRWebVideoEvent;
    .param p2, "reader"    # Lio/sentry/ObjectReader;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, "dataUnknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Lio/sentry/ObjectReader;->beginObject()V

    .line 343
    :goto_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_3

    .line 344
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 345
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

    .line 354
    if-nez v0, :cond_2

    .line 355
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v2

    goto :goto_4

    .line 351
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;->deserializePayload(Lio/sentry/rrweb/RRWebVideoEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V

    .line 352
    goto :goto_5

    .line 347
    :pswitch_1
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "tag":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v3, ""

    goto :goto_3

    :cond_1
    move-object v3, v2

    :goto_3
    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebVideoEvent;->access$002(Lio/sentry/rrweb/RRWebVideoEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    goto :goto_5

    .line 357
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-interface {p2, p3, v0, v1}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 359
    .end local v1    # "nextName":Ljava/lang/String;
    :goto_5
    goto :goto_0

    .line 360
    :cond_3
    invoke-virtual {p1, v0}, Lio/sentry/rrweb/RRWebVideoEvent;->setDataUnknown(Ljava/util/Map;)V

    .line 361
    invoke-interface {p2}, Lio/sentry/ObjectReader;->endObject()V

    .line 362
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

.method private deserializePayload(Lio/sentry/rrweb/RRWebVideoEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V
    .locals 5
    .param p1, "event"    # Lio/sentry/rrweb/RRWebVideoEvent;
    .param p2, "reader"    # Lio/sentry/ObjectReader;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "payloadUnknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Lio/sentry/ObjectReader;->beginObject()V

    .line 372
    :goto_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v1, v2, :cond_c

    .line 373
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "nextName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v2, "frameRateType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "encoding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "frameRate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_2

    :sswitch_3
    const-string v2, "width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_4
    const-string v2, "size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_5
    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_2

    :sswitch_6
    const-string v2, "top"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_2

    :sswitch_7
    const-string v2, "frameCount"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_2

    :sswitch_8
    const-string v2, "container"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_9
    const-string v2, "height"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_a
    const-string v2, "segmentId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_2

    :sswitch_b
    const-string v2, "duration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :goto_1
    const/4 v2, -0x1

    :goto_2
    const-string v4, ""

    packed-switch v2, :pswitch_data_0

    .line 422
    if-nez v0, :cond_b

    .line 423
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v2

    goto/16 :goto_d

    .line 418
    :pswitch_0
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v2

    .line 419
    .local v2, "top":Ljava/lang/Integer;
    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_3
    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebVideoEvent;->access$1202(Lio/sentry/rrweb/RRWebVideoEvent;I)I

    .line 420
    goto/16 :goto_e

    .line 414
    .end local v2    # "top":Ljava/lang/Integer;
    :pswitch_1
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v2

    .line 415
    .local v2, "left":Ljava/lang/Integer;
    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_4
    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebVideoEvent;->access$1102(Lio/sentry/rrweb/RRWebVideoEvent;I)I

    .line 416
    goto/16 :goto_e

    .line 410
    .end local v2    # "left":Ljava/lang/Integer;
    :pswitch_2
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "frameRateType":Ljava/lang/String;
    if-nez v2, :cond_3

    goto :goto_5

    :cond_3
    move-object v4, v2

    :goto_5
    invoke-static {p1, v4}, Lio/sentry/rrweb/RRWebVideoEvent;->access$1002(Lio/sentry/rrweb/RRWebVideoEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    goto/16 :goto_e

    .line 406
    .end local v2    # "frameRateType":Ljava/lang/String;
    :pswitch_3
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v2

    .line 407
    .local v2, "frameRate":Ljava/lang/Integer;
    if-nez v2, :cond_4

    goto :goto_6

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_6
    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebVideoEvent;->access$902(Lio/sentry/rrweb/RRWebVideoEvent;I)I

    .line 408
    goto/16 :goto_e

    .line 402
    .end local v2    # "frameRate":Ljava/lang/Integer;
    :pswitch_4
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v2

    .line 403
    .local v2, "frameCount":Ljava/lang/Integer;
    if-nez v2, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_7
    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebVideoEvent;->access$802(Lio/sentry/rrweb/RRWebVideoEvent;I)I

    .line 404
    goto :goto_e

    .line 398
    .end local v2    # "frameCount":Ljava/lang/Integer;
    :pswitch_5
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v2

    .line 399
    .local v2, "width":Ljava/lang/Integer;
    if-nez v2, :cond_6

    goto :goto_8

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_8
    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebVideoEvent;->access$702(Lio/sentry/rrweb/RRWebVideoEvent;I)I

    .line 400
    goto :goto_e

    .line 394
    .end local v2    # "width":Ljava/lang/Integer;
    :pswitch_6
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v2

    .line 395
    .local v2, "height":Ljava/lang/Integer;
    if-nez v2, :cond_7

    goto :goto_9

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_9
    invoke-static {p1, v3}, Lio/sentry/rrweb/RRWebVideoEvent;->access$602(Lio/sentry/rrweb/RRWebVideoEvent;I)I

    .line 396
    goto :goto_e

    .line 390
    .end local v2    # "height":Ljava/lang/Integer;
    :pswitch_7
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "encoding":Ljava/lang/String;
    if-nez v2, :cond_8

    goto :goto_a

    :cond_8
    move-object v4, v2

    :goto_a
    invoke-static {p1, v4}, Lio/sentry/rrweb/RRWebVideoEvent;->access$502(Lio/sentry/rrweb/RRWebVideoEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    goto :goto_e

    .line 386
    .end local v2    # "encoding":Ljava/lang/String;
    :pswitch_8
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "container":Ljava/lang/String;
    if-nez v2, :cond_9

    goto :goto_b

    :cond_9
    move-object v4, v2

    :goto_b
    invoke-static {p1, v4}, Lio/sentry/rrweb/RRWebVideoEvent;->access$402(Lio/sentry/rrweb/RRWebVideoEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    goto :goto_e

    .line 383
    .end local v2    # "container":Ljava/lang/String;
    :pswitch_9
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextLong()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lio/sentry/rrweb/RRWebVideoEvent;->access$302(Lio/sentry/rrweb/RRWebVideoEvent;J)J

    .line 384
    goto :goto_e

    .line 379
    :pswitch_a
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v2

    .line 380
    .local v2, "size":Ljava/lang/Long;
    if-nez v2, :cond_a

    const-wide/16 v3, 0x0

    goto :goto_c

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_c
    invoke-static {p1, v3, v4}, Lio/sentry/rrweb/RRWebVideoEvent;->access$202(Lio/sentry/rrweb/RRWebVideoEvent;J)J

    .line 381
    goto :goto_e

    .line 376
    .end local v2    # "size":Ljava/lang/Long;
    :pswitch_b
    invoke-interface {p2}, Lio/sentry/ObjectReader;->nextInt()I

    move-result v2

    invoke-static {p1, v2}, Lio/sentry/rrweb/RRWebVideoEvent;->access$102(Lio/sentry/rrweb/RRWebVideoEvent;I)I

    .line 377
    goto :goto_e

    .line 425
    :cond_b
    :goto_d
    invoke-interface {p2, p3, v0, v1}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 427
    .end local v1    # "nextName":Ljava/lang/String;
    :goto_e
    goto/16 :goto_0

    .line 428
    :cond_c
    invoke-virtual {p1, v0}, Lio/sentry/rrweb/RRWebVideoEvent;->setPayloadUnknown(Ljava/util/Map;)V

    .line 429
    invoke-interface {p2}, Lio/sentry/ObjectReader;->endObject()V

    .line 430
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_b
        -0x61065852 -> :sswitch_a
        -0x48c76ed9 -> :sswitch_9
        -0x187eb37f -> :sswitch_8
        -0x11ac6c5e -> :sswitch_7
        0x1c155 -> :sswitch_6
        0x32a007 -> :sswitch_5
        0x35e001 -> :sswitch_4
        0x6be2dc6 -> :sswitch_3
        0x207cebed -> :sswitch_2
        0x65ff2d53 -> :sswitch_1
        0x7f4330c7 -> :sswitch_0
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


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebVideoEvent;
    .locals 5
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lio/sentry/rrweb/RRWebVideoEvent;

    invoke-direct {v1}, Lio/sentry/rrweb/RRWebVideoEvent;-><init>()V

    .line 312
    .local v1, "event":Lio/sentry/rrweb/RRWebVideoEvent;
    new-instance v2, Lio/sentry/rrweb/RRWebEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/rrweb/RRWebEvent$Deserializer;-><init>()V

    .line 314
    .local v2, "baseEventDeserializer":Lio/sentry/rrweb/RRWebEvent$Deserializer;
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_3

    .line 315
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 316
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

    .line 321
    invoke-virtual {v2, v1, v3, p1, p2}, Lio/sentry/rrweb/RRWebEvent$Deserializer;->deserializeValue(Lio/sentry/rrweb/RRWebEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 322
    if-nez v0, :cond_1

    .line 323
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, v4

    goto :goto_3

    .line 318
    :pswitch_1
    invoke-direct {p0, v1, p1, p2}, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;->deserializeData(Lio/sentry/rrweb/RRWebVideoEvent;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)V

    .line 319
    goto :goto_4

    .line 325
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v0, v3}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 329
    .end local v3    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {v1, v0}, Lio/sentry/rrweb/RRWebVideoEvent;->setUnknown(Ljava/util/Map;)V

    .line 331
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 332
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

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebVideoEvent;

    move-result-object p1

    return-object p1
.end method
