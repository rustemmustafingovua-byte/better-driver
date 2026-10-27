.class public final Lio/sentry/protocol/SentryException$Deserializer;
.super Ljava/lang/Object;
.source "SentryException.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentryException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentryException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryException;
    .locals 4
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    new-instance v0, Lio/sentry/protocol/SentryException;

    invoke-direct {v0}, Lio/sentry/protocol/SentryException;-><init>()V

    .line 233
    .local v0, "sentryException":Lio/sentry/protocol/SentryException;
    const/4 v1, 0x0

    .line 234
    .local v1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 235
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_2

    .line 236
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "stacktrace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_1
    const-string v3, "mechanism"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_2
    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_3
    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_4
    const-string v3, "module"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_5
    const-string v3, "thread_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 258
    if-nez v1, :cond_1

    .line 259
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    goto :goto_3

    .line 255
    :pswitch_0
    new-instance v3, Lio/sentry/protocol/Mechanism$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/Mechanism$Deserializer;-><init>()V

    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/Mechanism;

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryException;->access$502(Lio/sentry/protocol/SentryException;Lio/sentry/protocol/Mechanism;)Lio/sentry/protocol/Mechanism;

    .line 256
    goto :goto_4

    .line 251
    :pswitch_1
    new-instance v3, Lio/sentry/protocol/SentryStackTrace$Deserializer;

    invoke-direct {v3}, Lio/sentry/protocol/SentryStackTrace$Deserializer;-><init>()V

    .line 252
    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/protocol/SentryStackTrace;

    .line 251
    invoke-static {v0, v3}, Lio/sentry/protocol/SentryException;->access$402(Lio/sentry/protocol/SentryException;Lio/sentry/protocol/SentryStackTrace;)Lio/sentry/protocol/SentryStackTrace;

    .line 253
    goto :goto_4

    .line 248
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryException;->access$302(Lio/sentry/protocol/SentryException;Ljava/lang/Long;)Ljava/lang/Long;

    .line 249
    goto :goto_4

    .line 245
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryException;->access$202(Lio/sentry/protocol/SentryException;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    goto :goto_4

    .line 242
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryException;->access$102(Lio/sentry/protocol/SentryException;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    goto :goto_4

    .line 239
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/sentry/protocol/SentryException;->access$002(Lio/sentry/protocol/SentryException;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    goto :goto_4

    .line 261
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 264
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 265
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 266
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryException;->setUnknown(Ljava/util/Map;)V

    .line 267
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5d1dd090 -> :sswitch_5
        -0x3fb45994 -> :sswitch_4
        0x368f3a -> :sswitch_3
        0x6ac9171 -> :sswitch_2
        0x49056359 -> :sswitch_1
        0x7a8983bd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 227
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/SentryException$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryException;

    move-result-object p1

    return-object p1
.end method
