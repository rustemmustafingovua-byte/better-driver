.class public final Lio/sentry/MonitorConfig$Deserializer;
.super Ljava/lang/Object;
.source "MonitorConfig.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MonitorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/MonitorConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorConfig;
    .locals 10
    .param p1, "reader"    # Lio/sentry/ObjectReader;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "schedule":Lio/sentry/MonitorSchedule;
    const/4 v1, 0x0

    .line 143
    .local v1, "checkinMargin":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 144
    .local v2, "maxRuntime":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 145
    .local v3, "timezone":Ljava/lang/String;
    const/4 v4, 0x0

    .line 146
    .local v4, "failureIssureThreshold":Ljava/lang/Long;
    const/4 v5, 0x0

    .line 147
    .local v5, "recoveryThreshold":Ljava/lang/Long;
    const/4 v6, 0x0

    .line 149
    .local v6, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/sentry/ObjectReader;->beginObject()V

    .line 150
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v7

    sget-object v8, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v7, v8, :cond_2

    .line 151
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "nextName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v8, "failure_issue_threshold"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_2

    :sswitch_1
    const-string v8, "max_runtime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_2
    const-string v8, "recovery_threshold"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_3
    const-string v8, "schedule"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_4
    const-string v8, "checkin_margin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_5
    const-string v8, "timezone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    goto :goto_2

    :goto_1
    const/4 v8, -0x1

    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 172
    if-nez v6, :cond_1

    .line 173
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v6, v8

    goto :goto_3

    .line 169
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v5

    .line 170
    goto :goto_4

    .line 166
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v4

    .line 167
    goto :goto_4

    .line 163
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    .line 164
    goto :goto_4

    .line 160
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v2

    .line 161
    goto :goto_4

    .line 157
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->nextLongOrNull()Ljava/lang/Long;

    move-result-object v1

    .line 158
    goto :goto_4

    .line 154
    :pswitch_5
    new-instance v8, Lio/sentry/MonitorSchedule$Deserializer;

    invoke-direct {v8}, Lio/sentry/MonitorSchedule$Deserializer;-><init>()V

    invoke-virtual {v8, p1, p2}, Lio/sentry/MonitorSchedule$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorSchedule;

    move-result-object v0

    .line 155
    goto :goto_4

    .line 175
    :cond_1
    :goto_3
    invoke-interface {p1, p2, v6, v7}, Lio/sentry/ObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 178
    .end local v7    # "nextName":Ljava/lang/String;
    :goto_4
    goto/16 :goto_0

    .line 179
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->endObject()V

    .line 181
    if-eqz v0, :cond_3

    .line 188
    new-instance v7, Lio/sentry/MonitorConfig;

    invoke-direct {v7, v0}, Lio/sentry/MonitorConfig;-><init>(Lio/sentry/MonitorSchedule;)V

    .line 189
    .local v7, "monitorConfig":Lio/sentry/MonitorConfig;
    invoke-virtual {v7, v1}, Lio/sentry/MonitorConfig;->setCheckinMargin(Ljava/lang/Long;)V

    .line 190
    invoke-virtual {v7, v2}, Lio/sentry/MonitorConfig;->setMaxRuntime(Ljava/lang/Long;)V

    .line 191
    invoke-virtual {v7, v3}, Lio/sentry/MonitorConfig;->setTimezone(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v7, v4}, Lio/sentry/MonitorConfig;->setFailureIssueThreshold(Ljava/lang/Long;)V

    .line 193
    invoke-virtual {v7, v5}, Lio/sentry/MonitorConfig;->setRecoveryThreshold(Ljava/lang/Long;)V

    .line 194
    invoke-virtual {v7, v6}, Lio/sentry/MonitorConfig;->setUnknown(Ljava/util/Map;)V

    .line 195
    return-object v7

    .line 182
    .end local v7    # "monitorConfig":Lio/sentry/MonitorConfig;
    :cond_3
    const-string v7, "Missing required field \"schedule\""

    .line 183
    .local v7, "message":Ljava/lang/String;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 184
    .local v8, "exception":Ljava/lang/Exception;
    sget-object v9, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p2, v9, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    throw v8

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bc0b807 -> :sswitch_5
        -0x35f76a00 -> :sswitch_4
        -0x29996d69 -> :sswitch_3
        -0x243557bf -> :sswitch_2
        0x5e4977fd -> :sswitch_1
        0x7f773fd0 -> :sswitch_0
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

    .line 137
    invoke-virtual {p0, p1, p2}, Lio/sentry/MonitorConfig$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/MonitorConfig;

    move-result-object p1

    return-object p1
.end method
