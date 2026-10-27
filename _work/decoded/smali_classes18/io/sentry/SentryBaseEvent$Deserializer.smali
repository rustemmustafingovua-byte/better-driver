.class public final Lio/sentry/SentryBaseEvent$Deserializer;
.super Ljava/lang/Object;
.source "SentryBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeValue(Lio/sentry/SentryBaseEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z
    .locals 3
    .param p1, "baseEvent"    # Lio/sentry/SentryBaseEvent;
    .param p2, "nextName"    # Ljava/lang/String;
    .param p3, "reader"    # Lio/sentry/ObjectReader;
    .param p4, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 420
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "platform"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "request"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "release"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "event_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "extra"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "user"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_6
    const-string v0, "tags"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "dist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_8
    const-string v0, "sdk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v0, "breadcrumbs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_a
    const-string v0, "environment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_b
    const-string v0, "contexts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_c
    const-string v0, "server_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_d
    const-string v0, "debug_meta"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 467
    return v1

    .line 463
    :pswitch_0
    invoke-interface {p3}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 464
    .local v0, "deserializedExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lio/sentry/SentryBaseEvent;->access$1302(Lio/sentry/SentryBaseEvent;Ljava/util/Map;)Ljava/util/Map;

    .line 465
    return v2

    .line 460
    .end local v0    # "deserializedExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1
    new-instance v0, Lio/sentry/protocol/DebugMeta$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/DebugMeta$Deserializer;-><init>()V

    invoke-interface {p3, p4, v0}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/DebugMeta;

    invoke-static {p1, v0}, Lio/sentry/SentryBaseEvent;->access$1202(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/DebugMeta;)Lio/sentry/protocol/DebugMeta;

    .line 461
    return v2

    .line 457
    :pswitch_2
    new-instance v0, Lio/sentry/Breadcrumb$Deserializer;

    invoke-direct {v0}, Lio/sentry/Breadcrumb$Deserializer;-><init>()V

    invoke-interface {p3, p4, v0}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lio/sentry/SentryBaseEvent;->access$1102(Lio/sentry/SentryBaseEvent;Ljava/util/List;)Ljava/util/List;

    .line 458
    return v2

    .line 454
    :pswitch_3
    invoke-interface {p3}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/sentry/SentryBaseEvent;->access$1002(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    return v2

    .line 451
    :pswitch_4
    invoke-interface {p3}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/sentry/SentryBaseEvent;->access$902(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    return v2

    .line 448
    :pswitch_5
    new-instance v0, Lio/sentry/protocol/User$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/User$Deserializer;-><init>()V

    invoke-interface {p3, p4, v0}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/User;

    invoke-static {p1, v0}, Lio/sentry/SentryBaseEvent;->access$802(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/User;)Lio/sentry/protocol/User;

    .line 449
    return v2

    .line 445
    :pswitch_6
    invoke-interface {p3}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/sentry/SentryBaseEvent;->access$702(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    return v2

    .line 442
    :pswitch_7
    invoke-interface {p3}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/sentry/SentryBaseEvent;->access$602(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    return v2

    .line 439
    :pswitch_8
    invoke-interface {p3}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/sentry/SentryBaseEvent;->access$502(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    return v2

    .line 435
    :pswitch_9
    invoke-interface {p3}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 436
    .local v0, "deserializedTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lio/sentry/SentryBaseEvent;->access$402(Lio/sentry/SentryBaseEvent;Ljava/util/Map;)Ljava/util/Map;

    .line 437
    return v2

    .line 432
    .end local v0    # "deserializedTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_a
    new-instance v0, Lio/sentry/protocol/Request$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Request$Deserializer;-><init>()V

    invoke-interface {p3, p4, v0}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Request;

    invoke-static {p1, v0}, Lio/sentry/SentryBaseEvent;->access$302(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/Request;)Lio/sentry/protocol/Request;

    .line 433
    return v2

    .line 429
    :pswitch_b
    new-instance v0, Lio/sentry/protocol/SdkVersion$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SdkVersion$Deserializer;-><init>()V

    invoke-interface {p3, p4, v0}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SdkVersion;

    invoke-static {p1, v0}, Lio/sentry/SentryBaseEvent;->access$202(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/SdkVersion;)Lio/sentry/protocol/SdkVersion;

    .line 430
    return v2

    .line 425
    :pswitch_c
    new-instance v0, Lio/sentry/protocol/Contexts$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts$Deserializer;-><init>()V

    invoke-virtual {v0, p3, p4}, Lio/sentry/protocol/Contexts$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Contexts;

    move-result-object v0

    .line 426
    .local v0, "deserializedContexts":Lio/sentry/protocol/Contexts;
    invoke-static {p1}, Lio/sentry/SentryBaseEvent;->access$100(Lio/sentry/SentryBaseEvent;)Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/protocol/Contexts;->putAll(Lio/sentry/protocol/Contexts;)V

    .line 427
    return v2

    .line 422
    .end local v0    # "deserializedContexts":Lio/sentry/protocol/Contexts;
    :pswitch_d
    new-instance v0, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-interface {p3, p4, v0}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentryId;

    invoke-static {p1, v0}, Lio/sentry/SentryBaseEvent;->access$002(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/SentryId;)Lio/sentry/protocol/SentryId;

    .line 423
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x6db2cb8f -> :sswitch_d
        -0x2d39e9f9 -> :sswitch_c
        -0x21d07f5c -> :sswitch_b
        -0x51ecded -> :sswitch_a
        -0x3112f30 -> :sswitch_9
        0x1bc3a -> :sswitch_8
        0x2f0da6 -> :sswitch_7
        0x363419 -> :sswitch_6
        0x36ebcb -> :sswitch_5
        0x5c79410 -> :sswitch_4
        0x1093c0e0 -> :sswitch_3
        0x41012807 -> :sswitch_2
        0x414ef28f -> :sswitch_1
        0x6fbd6873 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
