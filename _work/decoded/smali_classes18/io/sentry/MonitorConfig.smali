.class public final Lio/sentry/MonitorConfig;
.super Ljava/lang/Object;
.source "MonitorConfig.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/MonitorConfig$JsonKeys;,
        Lio/sentry/MonitorConfig$Deserializer;
    }
.end annotation


# instance fields
.field private checkinMargin:Ljava/lang/Long;

.field private failureIssueThreshold:Ljava/lang/Long;

.field private maxRuntime:Ljava/lang/Long;

.field private recoveryThreshold:Ljava/lang/Long;

.field private schedule:Lio/sentry/MonitorSchedule;

.field private timezone:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/MonitorSchedule;)V
    .locals 2
    .param p1, "schedule"    # Lio/sentry/MonitorSchedule;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/sentry/MonitorConfig;->schedule:Lio/sentry/MonitorSchedule;

    .line 22
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    .line 23
    .local v0, "defaultCron":Lio/sentry/SentryOptions$Cron;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultCheckinMargin()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/MonitorConfig;->checkinMargin:Ljava/lang/Long;

    .line 25
    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultMaxRuntime()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/MonitorConfig;->maxRuntime:Ljava/lang/Long;

    .line 26
    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultTimezone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/MonitorConfig;->timezone:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultFailureIssueThreshold()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/MonitorConfig;->failureIssueThreshold:Ljava/lang/Long;

    .line 28
    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultRecoveryThreshold()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/MonitorConfig;->recoveryThreshold:Ljava/lang/Long;

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckinMargin()Ljava/lang/Long;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/sentry/MonitorConfig;->checkinMargin:Ljava/lang/Long;

    return-object v0
.end method

.method public getFailureIssueThreshold()Ljava/lang/Long;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/sentry/MonitorConfig;->failureIssueThreshold:Ljava/lang/Long;

    return-object v0
.end method

.method public getMaxRuntime()Ljava/lang/Long;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/sentry/MonitorConfig;->maxRuntime:Ljava/lang/Long;

    return-object v0
.end method

.method public getRecoveryThreshold()Ljava/lang/Long;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/sentry/MonitorConfig;->recoveryThreshold:Ljava/lang/Long;

    return-object v0
.end method

.method public getSchedule()Lio/sentry/MonitorSchedule;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/sentry/MonitorConfig;->schedule:Lio/sentry/MonitorSchedule;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/sentry/MonitorConfig;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/sentry/MonitorConfig;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 4
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 109
    const-string v0, "schedule"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 110
    iget-object v0, p0, Lio/sentry/MonitorConfig;->schedule:Lio/sentry/MonitorSchedule;

    invoke-virtual {v0, p1, p2}, Lio/sentry/MonitorSchedule;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 111
    iget-object v0, p0, Lio/sentry/MonitorConfig;->checkinMargin:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "checkin_margin"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorConfig;->checkinMargin:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 114
    :cond_0
    iget-object v0, p0, Lio/sentry/MonitorConfig;->maxRuntime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 115
    const-string v0, "max_runtime"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorConfig;->maxRuntime:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 117
    :cond_1
    iget-object v0, p0, Lio/sentry/MonitorConfig;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 118
    const-string v0, "timezone"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorConfig;->timezone:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 120
    :cond_2
    iget-object v0, p0, Lio/sentry/MonitorConfig;->failureIssueThreshold:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 121
    const-string v0, "failure_issue_threshold"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorConfig;->failureIssueThreshold:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 123
    :cond_3
    iget-object v0, p0, Lio/sentry/MonitorConfig;->recoveryThreshold:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 124
    const-string v0, "recovery_threshold"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/MonitorConfig;->recoveryThreshold:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 126
    :cond_4
    iget-object v0, p0, Lio/sentry/MonitorConfig;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 127
    iget-object v0, p0, Lio/sentry/MonitorConfig;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/MonitorConfig;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 130
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 132
    :cond_5
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 133
    return-void
.end method

.method public setCheckinMargin(Ljava/lang/Long;)V
    .locals 0
    .param p1, "checkinMargin"    # Ljava/lang/Long;

    .line 45
    iput-object p1, p0, Lio/sentry/MonitorConfig;->checkinMargin:Ljava/lang/Long;

    .line 46
    return-void
.end method

.method public setFailureIssueThreshold(Ljava/lang/Long;)V
    .locals 0
    .param p1, "failureIssueThreshold"    # Ljava/lang/Long;

    .line 69
    iput-object p1, p0, Lio/sentry/MonitorConfig;->failureIssueThreshold:Ljava/lang/Long;

    .line 70
    return-void
.end method

.method public setMaxRuntime(Ljava/lang/Long;)V
    .locals 0
    .param p1, "maxRuntime"    # Ljava/lang/Long;

    .line 53
    iput-object p1, p0, Lio/sentry/MonitorConfig;->maxRuntime:Ljava/lang/Long;

    .line 54
    return-void
.end method

.method public setRecoveryThreshold(Ljava/lang/Long;)V
    .locals 0
    .param p1, "recoveryThreshold"    # Ljava/lang/Long;

    .line 77
    iput-object p1, p0, Lio/sentry/MonitorConfig;->recoveryThreshold:Ljava/lang/Long;

    .line 78
    return-void
.end method

.method public setSchedule(Lio/sentry/MonitorSchedule;)V
    .locals 0
    .param p1, "schedule"    # Lio/sentry/MonitorSchedule;

    .line 37
    iput-object p1, p0, Lio/sentry/MonitorConfig;->schedule:Lio/sentry/MonitorSchedule;

    .line 38
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lio/sentry/MonitorConfig;->timezone:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/MonitorConfig;->unknown:Ljava/util/Map;

    .line 101
    return-void
.end method
