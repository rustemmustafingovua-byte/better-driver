.class public final Lio/sentry/protocol/SentryStackFrame$Deserializer;
.super Ljava/lang/Object;
.source "SentryStackFrame.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentryStackFrame;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryStackFrame;
    .locals 4
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 512
    new-instance v0, Lio/sentry/protocol/SentryStackFrame;

    invoke-direct {v0}, Lio/sentry/protocol/SentryStackFrame;-><init>()V

    .line 513
    .local v0, "sentryStackFrame":Lio/sentry/protocol/SentryStackFrame;
    const/4 v1, 0x0

    .line 514
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 515
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_2

    .line 516
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "platform"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "abs_path"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "function"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "context_line"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "addr_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_2

    :sswitch_5
    const-string v3, "pre_context"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_2

    :sswitch_6
    const-string v3, "instruction_addr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_2

    :sswitch_7
    const-string v3, "colno"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_2

    :sswitch_8
    const-string v3, "vars"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_2

    :sswitch_9
    const-string v3, "lock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_2

    :sswitch_a
    const-string v3, "symbol_addr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_2

    :sswitch_b
    const-string v3, "filename"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_c
    const-string v3, "package"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_d
    const-string v3, "symbol"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto :goto_2

    :sswitch_e
    const-string v3, "native"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_f
    const-string v3, "module"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_10
    const-string v3, "lineno"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_11
    const-string v3, "raw_function"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto :goto_2

    :sswitch_12
    const-string v3, "in_app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_13
    const-string v3, "image_addr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_2

    :sswitch_14
    const-string v3, "post_context"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 582
    if-nez v1, :cond_1

    .line 583
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto/16 :goto_3

    .line 579
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$2002(Lio/sentry/protocol/SentryStackFrame;Ljava/util/Map;)Ljava/util/Map;

    .line 580
    goto/16 :goto_4

    .line 576
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$1902(Lio/sentry/protocol/SentryStackFrame;Ljava/util/List;)Ljava/util/List;

    .line 577
    goto/16 :goto_4

    .line 573
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$1802(Lio/sentry/protocol/SentryStackFrame;Ljava/util/List;)Ljava/util/List;

    .line 574
    goto/16 :goto_4

    .line 570
    :pswitch_3
    new-instance v3, Lio/sentry/SentryLockReason$Deserializer;

    invoke-direct {v3}, Lio/sentry/SentryLockReason$Deserializer;-><init>()V

    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/SentryLockReason;

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$1702(Lio/sentry/protocol/SentryStackFrame;Lio/sentry/SentryLockReason;)Lio/sentry/SentryLockReason;

    .line 571
    goto/16 :goto_4

    .line 567
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$1602(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 568
    goto/16 :goto_4

    .line 564
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$1502(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    goto/16 :goto_4

    .line 561
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$1402(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    goto/16 :goto_4

    .line 558
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$1302(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    goto/16 :goto_4

    .line 555
    :pswitch_8
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$1202(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 556
    goto :goto_4

    .line 552
    :pswitch_9
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$1102(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    goto :goto_4

    .line 549
    :pswitch_a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$1002(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 550
    goto :goto_4

    .line 546
    :pswitch_b
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$902(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 547
    goto :goto_4

    .line 543
    :pswitch_c
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$802(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 544
    goto :goto_4

    .line 540
    :pswitch_d
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$702(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 541
    goto :goto_4

    .line 537
    :pswitch_e
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$602(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    goto :goto_4

    .line 534
    :pswitch_f
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$502(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    goto :goto_4

    .line 531
    :pswitch_10
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$402(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 532
    goto :goto_4

    .line 528
    :pswitch_11
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$302(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 529
    goto :goto_4

    .line 525
    :pswitch_12
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$202(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    goto :goto_4

    .line 522
    :pswitch_13
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$102(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 523
    goto :goto_4

    .line 519
    :pswitch_14
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryStackFrame;->access$002(Lio/sentry/protocol/SentryStackFrame;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    goto :goto_4

    .line 585
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 588
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 589
    :cond_2
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryStackFrame;->setUnknown(Ljava/util/Map;)V

    .line 590
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 591
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61d72af0 -> :sswitch_14
        -0x5607b3ab -> :sswitch_13
        -0x469863f9 -> :sswitch_12
        -0x426465f1 -> :sswitch_11
        -0x41b96f4b -> :sswitch_10
        -0x3fb45994 -> :sswitch_f
        -0x3ebdafe9 -> :sswitch_e
        -0x34e68a68 -> :sswitch_d
        -0x301acbba -> :sswitch_c
        -0x2bcbadf9 -> :sswitch_b
        -0x13af61c8 -> :sswitch_a
        0x32c52b -> :sswitch_9
        0x371e2c -> :sswitch_8
        0x5a72f41 -> :sswitch_7
        0x18731102 -> :sswitch_6
        0x31093c13 -> :sswitch_5
        0x33c92531 -> :sswitch_4
        0x428f6884 -> :sswitch_3
        0x524f73d8 -> :sswitch_2
        0x66211bd2 -> :sswitch_1
        0x6fbd6873 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

    .line 507
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryStackFrame$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryStackFrame;

    move-result-object p1

    return-object p1
.end method
