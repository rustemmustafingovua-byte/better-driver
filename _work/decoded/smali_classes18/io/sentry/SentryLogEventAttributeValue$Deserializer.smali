.class public final Lio/sentry/SentryLogEventAttributeValue$Deserializer;
.super Ljava/lang/Object;
.source "SentryLogEventAttributeValue.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryLogEventAttributeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryLogEventAttributeValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryLogEventAttributeValue;
    .locals 7
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 94
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 96
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 97
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v3

    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v3, v4, :cond_2

    .line 98
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "nextName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_1
    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 107
    if-nez v0, :cond_1

    .line 108
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, v4

    goto :goto_3

    .line 104
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v2

    .line 105
    goto :goto_4

    .line 101
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    .line 102
    goto :goto_4

    .line 110
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v0, v3}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 113
    .end local v3    # "nextName":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 114
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 116
    if-eqz v1, :cond_3

    .line 123
    new-instance v3, Lio/sentry/SentryLogEventAttributeValue;

    invoke-direct {v3, v1, v2}, Lio/sentry/SentryLogEventAttributeValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    .local v3, "logEvent":Lio/sentry/SentryLogEventAttributeValue;
    invoke-virtual {v3, v0}, Lio/sentry/SentryLogEventAttributeValue;->setUnknown(Ljava/util/Map;)V

    .line 127
    return-object v3

    .line 117
    .end local v3    # "logEvent":Lio/sentry/SentryLogEventAttributeValue;
    :cond_3
    const-string v3, "Missing required field \"type\""

    .line 118
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Missing required field \"type\""

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, "exception":Ljava/lang/Exception;
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v6, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    throw v4

    :sswitch_data_0
    .sparse-switch
        0x368f3a -> :sswitch_1
        0x6ac9171 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 86
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryLogEventAttributeValue$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryLogEventAttributeValue;

    move-result-object p1

    return-object p1
.end method
