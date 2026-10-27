.class public final Lio/sentry/SentryEvent$Deserializer;
.super Ljava/lang/Object;
.source "SentryEvent.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryEvent;
    .locals 6
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 322
    new-instance v0, Lio/sentry/SentryEvent;

    invoke-direct {v0}, Lio/sentry/SentryEvent;-><init>()V

    .line 323
    .local v0, "event":Lio/sentry/SentryEvent;
    const/4 v1, 0x0

    .line 325
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lio/sentry/SentryBaseEvent$Deserializer;

    invoke-direct {v2}, Lio/sentry/SentryBaseEvent$Deserializer;-><init>()V

    .line 327
    .local v2, "baseEventDeserializer":Lio/sentry/SentryBaseEvent$Deserializer;
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_3

    .line 328
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "nextName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "transaction"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_1
    const-string v4, "exception"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    const-string v4, "modules"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_3
    const-string v4, "message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_4
    const-string v4, "level"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_5
    const-string v4, "timestamp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_6
    const-string v4, "logger"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_7
    const-string v4, "threads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_8
    const-string v4, "fingerprint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 375
    invoke-virtual {v2, v0, v3, p1, p2}, Lio/sentry/SentryBaseEvent$Deserializer;->deserializeValue(Lio/sentry/SentryBaseEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 376
    if-nez v1, :cond_1

    .line 377
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v4

    goto/16 :goto_3

    .line 370
    :pswitch_0
    nop

    .line 371
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 372
    .local v4, "deserializedModules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v4}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v0, v5}, Lio/sentry/SentryEvent;->access$802(Lio/sentry/SentryEvent;Ljava/util/Map;)Ljava/util/Map;

    .line 373
    goto/16 :goto_4

    .line 364
    .end local v4    # "deserializedModules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 365
    .local v4, "deserializedFingerprint":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 366
    invoke-static {v0, v4}, Lio/sentry/SentryEvent;->access$702(Lio/sentry/SentryEvent;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_4

    .line 361
    .end local v4    # "deserializedFingerprint":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/sentry/SentryEvent;->access$602(Lio/sentry/SentryEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    goto :goto_4

    .line 358
    :pswitch_3
    new-instance v4, Lio/sentry/SentryLevel$Deserializer;

    invoke-direct {v4}, Lio/sentry/SentryLevel$Deserializer;-><init>()V

    invoke-interface {p1, p2, v4}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/SentryLevel;

    invoke-static {v0, v4}, Lio/sentry/SentryEvent;->access$502(Lio/sentry/SentryEvent;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;

    .line 359
    goto :goto_4

    .line 350
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 351
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    .line 352
    new-instance v4, Lio/sentry/SentryValues;

    new-instance v5, Lio/sentry/protocol/SentryException$Deserializer;

    invoke-direct {v5}, Lio/sentry/protocol/SentryException$Deserializer;-><init>()V

    .line 354
    invoke-interface {p1, p2, v5}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/sentry/SentryValues;-><init>(Ljava/util/List;)V

    .line 352
    invoke-static {v0, v4}, Lio/sentry/SentryEvent;->access$402(Lio/sentry/SentryEvent;Lio/sentry/SentryValues;)Lio/sentry/SentryValues;

    .line 355
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 356
    goto :goto_4

    .line 343
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 344
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    .line 345
    new-instance v4, Lio/sentry/SentryValues;

    new-instance v5, Lio/sentry/protocol/SentryThread$Deserializer;

    invoke-direct {v5}, Lio/sentry/protocol/SentryThread$Deserializer;-><init>()V

    .line 346
    invoke-interface {p1, p2, v5}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/sentry/SentryValues;-><init>(Ljava/util/List;)V

    .line 345
    invoke-static {v0, v4}, Lio/sentry/SentryEvent;->access$302(Lio/sentry/SentryEvent;Lio/sentry/SentryValues;)Lio/sentry/SentryValues;

    .line 347
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 348
    goto :goto_4

    .line 340
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/sentry/SentryEvent;->access$202(Lio/sentry/SentryEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    goto :goto_4

    .line 337
    :pswitch_7
    new-instance v4, Lio/sentry/protocol/Message$Deserializer;

    invoke-direct {v4}, Lio/sentry/protocol/Message$Deserializer;-><init>()V

    invoke-interface {p1, p2, v4}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/protocol/Message;

    invoke-static {v0, v4}, Lio/sentry/SentryEvent;->access$102(Lio/sentry/SentryEvent;Lio/sentry/protocol/Message;)Lio/sentry/protocol/Message;

    .line 338
    goto :goto_4

    .line 331
    :pswitch_8
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v4

    .line 332
    .local v4, "deserializedTimestamp":Ljava/util/Date;
    if-eqz v4, :cond_2

    .line 333
    invoke-static {v0, v4}, Lio/sentry/SentryEvent;->access$002(Lio/sentry/SentryEvent;Ljava/util/Date;)Ljava/util/Date;

    goto :goto_4

    .line 379
    .end local v4    # "deserializedTimestamp":Ljava/util/Date;
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v3}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 383
    .end local v3    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 384
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setUnknown(Ljava/util/Map;)V

    .line 385
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 386
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5203171c -> :sswitch_8
        -0x4fbf4c57 -> :sswitch_7
        -0x41680a70 -> :sswitch_6
        0x3492916 -> :sswitch_5
        0x6219b84 -> :sswitch_4
        0x38eb0007 -> :sswitch_3
        0x49292787 -> :sswitch_2
        0x584fd04f -> :sswitch_1
        0x7fa0d2de -> :sswitch_0
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

    .line 315
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryEvent$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryEvent;

    move-result-object p1

    return-object p1
.end method
