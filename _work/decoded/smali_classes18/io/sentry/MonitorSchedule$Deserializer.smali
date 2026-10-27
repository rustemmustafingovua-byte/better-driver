.class public final Lio/sentry/MonitorSchedule$Deserializer;
.super Ljava/lang/Object;
.source "MonitorSchedule.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MonitorSchedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/MonitorSchedule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorSchedule;
    .locals 7
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 129
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 130
    .local v2, "unit":Ljava/lang/String;
    const/4 v3, 0x0

    .line 132
    .local v3, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 133
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v4, v5, :cond_2

    .line 134
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "nextName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_1
    const-string v5, "unit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_2
    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 146
    if-nez v3, :cond_1

    .line 147
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v3, v5

    goto :goto_3

    .line 143
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    .line 144
    goto :goto_4

    .line 140
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v1

    .line 141
    goto :goto_4

    .line 137
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v0

    .line 138
    goto :goto_4

    .line 149
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v3, v4}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 152
    .end local v4    # "nextName":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 153
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 155
    if-eqz v0, :cond_4

    .line 162
    if-eqz v1, :cond_3

    .line 169
    new-instance v4, Lio/sentry/MonitorSchedule;

    invoke-direct {v4, v0, v1, v2}, Lio/sentry/MonitorSchedule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v4, "monitorSchedule":Lio/sentry/MonitorSchedule;
    invoke-virtual {v4, v3}, Lio/sentry/MonitorSchedule;->setUnknown(Ljava/util/Map;)V

    .line 171
    return-object v4

    .line 163
    .end local v4    # "monitorSchedule":Lio/sentry/MonitorSchedule;
    :cond_3
    const-string v4, "Missing required field \"value\""

    .line 164
    .local v4, "message":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .local v5, "exception":Ljava/lang/Exception;
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v6, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    throw v5

    .line 156
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "exception":Ljava/lang/Exception;
    :cond_4
    const-string v4, "Missing required field \"type\""

    .line 157
    .restart local v4    # "message":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v5    # "exception":Ljava/lang/Exception;
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v6, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    throw v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x368f3a -> :sswitch_2
        0x36d984 -> :sswitch_1
        0x6ac9171 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 123
    invoke-virtual {p0, p1, p2}, Lio/sentry/MonitorSchedule$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorSchedule;

    move-result-object p1

    return-object p1
.end method
