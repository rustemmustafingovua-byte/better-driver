.class public final Lio/sentry/protocol/SentryThread$Deserializer;
.super Ljava/lang/Object;
.source "SentryThread.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentryThread;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryThread;
    .locals 5
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    new-instance v0, Lio/sentry/protocol/SentryThread;

    invoke-direct {v0}, Lio/sentry/protocol/SentryThread;-><init>()V

    .line 309
    .local v0, "sentryThread":Lio/sentry/protocol/SentryThread;
    const/4 v1, 0x0

    .line 310
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 311
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_3

    .line 312
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "stacktrace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_1
    const-string v3, "current"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_2
    const-string v3, "crashed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_3
    const-string v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_4
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_5
    const-string v3, "main"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_6
    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_7
    const-string v3, "held_locks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_8
    const-string v3, "priority"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_9
    const-string v3, "daemon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 350
    if-nez v1, :cond_1

    .line 351
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    goto :goto_3

    .line 343
    :pswitch_0
    new-instance v3, Lio/sentry/SentryLockReason$Deserializer;

    invoke-direct {v3}, Lio/sentry/SentryLockReason$Deserializer;-><init>()V

    .line 344
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextMapOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/Map;

    move-result-object v3

    .line 345
    .local v3, "heldLocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLockReason;>;"
    if-eqz v3, :cond_2

    .line 346
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v4}, Lio/sentry/protocol/SentryThread;->access$902(Lio/sentry/protocol/SentryThread;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_4

    .line 339
    .end local v3    # "heldLocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryLockReason;>;"
    :pswitch_1
    new-instance v3, Lio/sentry/protocol/SentryStackTrace$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/SentryStackTrace$Deserializer;-><init>()V

    .line 340
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentryStackTrace;

    .line 339
    invoke-static {v0, v3}, Lio/sentry/protocol/SentryThread;->access$802(Lio/sentry/protocol/SentryThread;Lio/sentry/protocol/SentryStackTrace;)Lio/sentry/protocol/SentryStackTrace;

    .line 341
    goto :goto_4

    .line 336
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryThread;->access$702(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 337
    goto :goto_4

    .line 333
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryThread;->access$602(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 334
    goto :goto_4

    .line 330
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryThread;->access$502(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 331
    goto :goto_4

    .line 327
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextBooleanOrNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryThread;->access$402(Lio/sentry/protocol/SentryThread;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 328
    goto :goto_4

    .line 324
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryThread;->access$302(Lio/sentry/protocol/SentryThread;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    goto :goto_4

    .line 321
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryThread;->access$202(Lio/sentry/protocol/SentryThread;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    goto :goto_4

    .line 318
    :pswitch_8
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextIntegerOrNull()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryThread;->access$102(Lio/sentry/protocol/SentryThread;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 319
    goto :goto_4

    .line 315
    :pswitch_9
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryThread;->access$002(Lio/sentry/protocol/SentryThread;Ljava/lang/Long;)Ljava/lang/Long;

    .line 316
    goto :goto_4

    .line 353
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 356
    .end local v2    # "nextName":Ljava/lang/String;
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 357
    :cond_3
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setUnknown(Ljava/util/Map;)V

    .line 358
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 359
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4fd4e97c -> :sswitch_9
        -0x4577865c -> :sswitch_8
        -0x1df9e8e2 -> :sswitch_7
        0xd1b -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x68ac491 -> :sswitch_3
        0x3d1e2286 -> :sswitch_2
        0x432bbd79 -> :sswitch_1
        0x7a8983bd -> :sswitch_0
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

    .line 303
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryThread$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryThread;

    move-result-object p1

    return-object p1
.end method
