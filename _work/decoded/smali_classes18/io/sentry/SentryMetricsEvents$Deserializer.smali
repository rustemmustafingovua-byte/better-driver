.class public final Lio/sentry/SentryMetricsEvents$Deserializer;
.super Ljava/lang/Object;
.source "SentryMetricsEvents.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryMetricsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryMetricsEvents;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryMetricsEvents;
    .locals 6
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 66
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryMetricsEvent;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 67
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_2

    .line 68
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "nextName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    goto :goto_1

    :pswitch_0
    const-string v3, "items"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 74
    if-nez v0, :cond_1

    .line 75
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    goto :goto_3

    .line 71
    :pswitch_1
    new-instance v3, Lio/sentry/SentryMetricsEvent$Deserializer;

    invoke-direct {v3}, Lio/sentry/SentryMetricsEvent$Deserializer;-><init>()V

    invoke-interface {p1, p2, v3}, Lio/sentry/ObjectReader;->nextListOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v1

    .line 72
    goto :goto_4

    .line 77
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v0, v2}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 80
    .end local v2    # "nextName":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 83
    if-eqz v1, :cond_3

    .line 90
    new-instance v2, Lio/sentry/SentryMetricsEvents;

    invoke-direct {v2, v1}, Lio/sentry/SentryMetricsEvents;-><init>(Ljava/util/List;)V

    .line 92
    .local v2, "metricsEvent":Lio/sentry/SentryMetricsEvents;
    invoke-virtual {v2, v0}, Lio/sentry/SentryMetricsEvents;->setUnknown(Ljava/util/Map;)V

    .line 94
    return-object v2

    .line 84
    .end local v2    # "metricsEvent":Lio/sentry/SentryMetricsEvents;
    :cond_3
    const-string v2, "Missing required field \"items\""

    .line 85
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Missing required field \"items\""

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .local v3, "exception":Ljava/lang/Exception;
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v5, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x5fde7c0
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

    .line 57
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryMetricsEvents$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryMetricsEvents;

    move-result-object p1

    return-object p1
.end method
