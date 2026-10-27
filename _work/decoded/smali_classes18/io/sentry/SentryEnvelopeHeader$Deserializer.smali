.class public final Lio/sentry/SentryEnvelopeHeader$Deserializer;
.super Ljava/lang/Object;
.source "SentryEnvelopeHeader.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryEnvelopeHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryEnvelopeHeader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryEnvelopeHeader;
    .locals 7
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "eventId":Lio/sentry/protocol/SentryId;
    const/4 v1, 0x0

    .line 125
    .local v1, "sdkVersion":Lio/sentry/protocol/SdkVersion;
    const/4 v2, 0x0

    .line 126
    .local v2, "traceContext":Lio/sentry/TraceContext;
    const/4 v3, 0x0

    .line 127
    .local v3, "sentAt":Ljava/util/Date;
    const/4 v4, 0x0

    .line 129
    .local v4, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v5, v6, :cond_2

    .line 130
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "nextName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v6, "sent_at"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1
    const-string v6, "event_id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_2
    const-string v6, "trace"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_3
    const-string v6, "sdk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 145
    if-nez v4, :cond_1

    .line 146
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v4, v6

    goto :goto_3

    .line 142
    :pswitch_0
    invoke-interface {p1, p2}, Lio/sentry/ObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v3

    .line 143
    goto :goto_4

    .line 139
    :pswitch_1
    new-instance v6, Lio/sentry/TraceContext$Deserializer;

    invoke-direct {v6}, Lio/sentry/TraceContext$Deserializer;-><init>()V

    invoke-interface {p1, p2, v6}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Lio/sentry/TraceContext;

    .line 140
    goto :goto_4

    .line 136
    :pswitch_2
    new-instance v6, Lio/sentry/protocol/SdkVersion$Deserializer;

    invoke-direct {v6}, Lio/sentry/protocol/SdkVersion$Deserializer;-><init>()V

    invoke-interface {p1, p2, v6}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lio/sentry/protocol/SdkVersion;

    .line 137
    goto :goto_4

    .line 133
    :pswitch_3
    new-instance v6, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v6}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-interface {p1, p2, v6}, Lio/sentry/ObjectReader;->nextOrNull(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lio/sentry/protocol/SentryId;

    .line 134
    goto :goto_4

    .line 148
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v4, v5}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 151
    .end local v5    # "nextName":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 152
    :cond_2
    new-instance v5, Lio/sentry/SentryEnvelopeHeader;

    invoke-direct {v5, v0, v1, v2}, Lio/sentry/SentryEnvelopeHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/TraceContext;)V

    .line 154
    .local v5, "sentryEnvelopeHeader":Lio/sentry/SentryEnvelopeHeader;
    invoke-virtual {v5, v3}, Lio/sentry/SentryEnvelopeHeader;->setSentAt(Ljava/util/Date;)V

    .line 155
    invoke-virtual {v5, v4}, Lio/sentry/SentryEnvelopeHeader;->setUnknown(Ljava/util/Map;)V

    .line 156
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 157
    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x1bc3a -> :sswitch_3
        0x697f145 -> :sswitch_2
        0x1093c0e0 -> :sswitch_1
        0x760a5a3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 117
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryEnvelopeHeader$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryEnvelopeHeader;

    move-result-object p1

    return-object p1
.end method
