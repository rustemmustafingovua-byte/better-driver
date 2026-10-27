.class public final Lio/sentry/CheckIn$Deserializer;
.super Ljava/lang/Object;
.source "CheckIn.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/CheckIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/CheckIn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/CheckIn;
    .locals 12
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "sentryId":Lio/sentry/protocol/SentryId;
    const/4 v1, 0x0

    .line 177
    .local v1, "monitorConfig":Lio/sentry/MonitorConfig;
    const/4 v2, 0x0

    .line 178
    .local v2, "monitorSlug":Ljava/lang/String;
    const/4 v3, 0x0

    .line 179
    .local v3, "status":Ljava/lang/String;
    const/4 v4, 0x0

    .line 180
    .local v4, "duration":Ljava/lang/Double;
    const/4 v5, 0x0

    .line 181
    .local v5, "release":Ljava/lang/String;
    const/4 v6, 0x0

    .line 182
    .local v6, "environment":Ljava/lang/String;
    const/4 v7, 0x0

    .line 183
    .local v7, "contexts":Lio/sentry/MonitorContexts;
    const/4 v8, 0x0

    .line 185
    .local v8, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 186
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v9

    sget-object v10, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v9, v10, :cond_2

    .line 187
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v9

    .line 188
    .local v9, "nextName":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v10, "monitor_slug"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_2

    :sswitch_1
    const-string v10, "check_in_id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    goto :goto_2

    :sswitch_2
    const-string v10, "release"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    goto :goto_2

    :sswitch_3
    const-string v10, "environment"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_4
    const-string v10, "contexts"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x7

    goto :goto_2

    :sswitch_5
    const-string v10, "status"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    goto :goto_2

    :sswitch_6
    const-string v10, "duration"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    goto :goto_2

    :sswitch_7
    const-string v10, "monitor_config"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x6

    goto :goto_2

    :goto_1
    const/4 v10, -0x1

    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 214
    if-nez v8, :cond_1

    .line 215
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object v8, v10

    goto :goto_3

    .line 211
    :pswitch_0
    new-instance v10, Lio/sentry/MonitorContexts$Deserializer;

    invoke-direct {v10}, Lio/sentry/MonitorContexts$Deserializer;-><init>()V

    invoke-virtual {v10, p1, p2}, Lio/sentry/MonitorContexts$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorContexts;

    move-result-object v7

    .line 212
    goto :goto_4

    .line 208
    :pswitch_1
    new-instance v10, Lio/sentry/MonitorConfig$Deserializer;

    invoke-direct {v10}, Lio/sentry/MonitorConfig$Deserializer;-><init>()V

    invoke-virtual {v10, p1, p2}, Lio/sentry/MonitorConfig$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorConfig;

    move-result-object v1

    .line 209
    goto :goto_4

    .line 205
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v6

    .line 206
    goto :goto_4

    .line 202
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v5

    .line 203
    goto :goto_4

    .line 199
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextDoubleOrNull()Ljava/lang/Double;

    move-result-object v4

    .line 200
    goto :goto_4

    .line 196
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 197
    goto :goto_4

    .line 193
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    .line 194
    goto :goto_4

    .line 190
    :pswitch_7
    new-instance v10, Lio/sentry/protocol/SentryId$Deserializer;

    invoke-direct {v10}, Lio/sentry/protocol/SentryId$Deserializer;-><init>()V

    invoke-virtual {v10, p1, p2}, Lio/sentry/protocol/SentryId$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 191
    goto :goto_4

    .line 217
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v8, v9}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 220
    .end local v9    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 221
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 223
    if-eqz v0, :cond_5

    .line 230
    if-eqz v2, :cond_4

    .line 237
    if-eqz v3, :cond_3

    .line 244
    new-instance v9, Lio/sentry/CheckIn;

    invoke-direct {v9, v0, v2, v3}, Lio/sentry/CheckIn;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v9, "checkIn":Lio/sentry/CheckIn;
    invoke-virtual {v9, v4}, Lio/sentry/CheckIn;->setDuration(Ljava/lang/Double;)V

    .line 246
    invoke-virtual {v9, v5}, Lio/sentry/CheckIn;->setRelease(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v9, v6}, Lio/sentry/CheckIn;->setEnvironment(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v9, v1}, Lio/sentry/CheckIn;->setMonitorConfig(Lio/sentry/MonitorConfig;)V

    .line 249
    invoke-virtual {v9}, Lio/sentry/CheckIn;->getContexts()Lio/sentry/MonitorContexts;

    move-result-object v10

    invoke-virtual {v10, v7}, Lio/sentry/MonitorContexts;->putAll(Ljava/util/Map;)V

    .line 250
    invoke-virtual {v9, v8}, Lio/sentry/CheckIn;->setUnknown(Ljava/util/Map;)V

    .line 251
    return-object v9

    .line 238
    .end local v9    # "checkIn":Lio/sentry/CheckIn;
    :cond_3
    const-string v9, "Missing required field \"status\""

    .line 239
    .local v9, "message":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    .local v10, "exception":Ljava/lang/Exception;
    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v11, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    throw v10

    .line 231
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "exception":Ljava/lang/Exception;
    :cond_4
    const-string v9, "Missing required field \"monitor_slug\""

    .line 232
    .restart local v9    # "message":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v10    # "exception":Ljava/lang/Exception;
    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v11, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    throw v10

    .line 224
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "exception":Ljava/lang/Exception;
    :cond_5
    const-string v9, "Missing required field \"check_in_id\""

    .line 225
    .restart local v9    # "message":Ljava/lang/String;
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 226
    .restart local v10    # "exception":Ljava/lang/Exception;
    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v11, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    throw v10

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bb61639 -> :sswitch_7
        -0x76bbb26c -> :sswitch_6
        -0x3532300e -> :sswitch_5
        -0x21d07f5c -> :sswitch_4
        -0x51ecded -> :sswitch_3
        0x41012807 -> :sswitch_2
        0x41ad787e -> :sswitch_1
        0x67422e70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 171
    invoke-virtual {p0, p1, p2}, Lio/sentry/CheckIn$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/CheckIn;

    move-result-object p1

    return-object p1
.end method
