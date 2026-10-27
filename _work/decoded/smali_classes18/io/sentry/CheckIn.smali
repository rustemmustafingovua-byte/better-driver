.class public final Lio/sentry/CheckIn;
.super Ljava/lang/Object;
.source "CheckIn.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/CheckIn$JsonKeys;,
        Lio/sentry/CheckIn$Deserializer;
    }
.end annotation


# instance fields
.field private final checkInId:Lio/sentry/protocol/SentryId;

.field private final contexts:Lio/sentry/MonitorContexts;

.field private duration:Ljava/lang/Double;

.field private environment:Ljava/lang/String;

.field private monitorConfig:Lio/sentry/MonitorConfig;

.field private monitorSlug:Ljava/lang/String;

.field private release:Ljava/lang/String;

.field private status:Ljava/lang/String;

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
.method public constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Lio/sentry/CheckInStatus;)V
    .locals 1
    .param p1, "id"    # Lio/sentry/protocol/SentryId;
    .param p2, "monitorSlug"    # Ljava/lang/String;
    .param p3, "status"    # Lio/sentry/CheckInStatus;

    .line 35
    invoke-virtual {p3}, Lio/sentry/CheckInStatus;->apiName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/CheckIn;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "checkInId"    # Lio/sentry/protocol/SentryId;
    .param p2, "monitorSlug"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lio/sentry/MonitorContexts;

    invoke-direct {v0}, Lio/sentry/MonitorContexts;-><init>()V

    iput-object v0, p0, Lio/sentry/CheckIn;->contexts:Lio/sentry/MonitorContexts;

    .line 43
    if-nez p1, :cond_0

    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lio/sentry/CheckIn;->checkInId:Lio/sentry/protocol/SentryId;

    .line 44
    iput-object p2, p0, Lio/sentry/CheckIn;->monitorSlug:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lio/sentry/CheckIn;->status:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/CheckInStatus;)V
    .locals 2
    .param p1, "monitorSlug"    # Ljava/lang/String;
    .param p2, "status"    # Lio/sentry/CheckInStatus;

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p2}, Lio/sentry/CheckInStatus;->apiName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lio/sentry/CheckIn;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getCheckInId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/sentry/CheckIn;->checkInId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getContexts()Lio/sentry/MonitorContexts;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/sentry/CheckIn;->contexts:Lio/sentry/MonitorContexts;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Double;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/sentry/CheckIn;->duration:Ljava/lang/Double;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/sentry/CheckIn;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitorConfig()Lio/sentry/MonitorConfig;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/sentry/CheckIn;->monitorConfig:Lio/sentry/MonitorConfig;

    return-object v0
.end method

.method public getMonitorSlug()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/sentry/CheckIn;->monitorSlug:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/sentry/CheckIn;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/sentry/CheckIn;->status:Ljava/lang/String;

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

    .line 125
    iget-object v0, p0, Lio/sentry/CheckIn;->unknown:Ljava/util/Map;

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

    .line 138
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 139
    const-string v0, "check_in_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 140
    iget-object v0, p0, Lio/sentry/CheckIn;->checkInId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/SentryId;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 141
    const-string v0, "monitor_slug"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/CheckIn;->monitorSlug:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 142
    const-string v0, "status"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/CheckIn;->status:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 143
    iget-object v0, p0, Lio/sentry/CheckIn;->duration:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "duration"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/CheckIn;->duration:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 146
    :cond_0
    iget-object v0, p0, Lio/sentry/CheckIn;->release:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "release"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/CheckIn;->release:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 149
    :cond_1
    iget-object v0, p0, Lio/sentry/CheckIn;->environment:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 150
    const-string v0, "environment"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/CheckIn;->environment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 152
    :cond_2
    iget-object v0, p0, Lio/sentry/CheckIn;->monitorConfig:Lio/sentry/MonitorConfig;

    if-eqz v0, :cond_3

    .line 153
    const-string v0, "monitor_config"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 154
    iget-object v0, p0, Lio/sentry/CheckIn;->monitorConfig:Lio/sentry/MonitorConfig;

    invoke-virtual {v0, p1, p2}, Lio/sentry/MonitorConfig;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 156
    :cond_3
    iget-object v0, p0, Lio/sentry/CheckIn;->contexts:Lio/sentry/MonitorContexts;

    if-eqz v0, :cond_4

    .line 157
    const-string v0, "contexts"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 158
    iget-object v0, p0, Lio/sentry/CheckIn;->contexts:Lio/sentry/MonitorContexts;

    invoke-virtual {v0, p1, p2}, Lio/sentry/MonitorContexts;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 160
    :cond_4
    iget-object v0, p0, Lio/sentry/CheckIn;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 161
    iget-object v0, p0, Lio/sentry/CheckIn;->unknown:Ljava/util/Map;

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

    .line 162
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/CheckIn;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 163
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 164
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 166
    :cond_5
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 167
    return-void
.end method

.method public setDuration(Ljava/lang/Double;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/Double;

    .line 90
    iput-object p1, p0, Lio/sentry/CheckIn;->duration:Ljava/lang/Double;

    .line 91
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0
    .param p1, "environment"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lio/sentry/CheckIn;->environment:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setMonitorConfig(Lio/sentry/MonitorConfig;)V
    .locals 0
    .param p1, "monitorConfig"    # Lio/sentry/MonitorConfig;

    .line 114
    iput-object p1, p0, Lio/sentry/CheckIn;->monitorConfig:Lio/sentry/MonitorConfig;

    .line 115
    return-void
.end method

.method public setMonitorSlug(Ljava/lang/String;)V
    .locals 0
    .param p1, "monitorSlug"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lio/sentry/CheckIn;->monitorSlug:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0
    .param p1, "release"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lio/sentry/CheckIn;->release:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setStatus(Lio/sentry/CheckInStatus;)V
    .locals 1
    .param p1, "status"    # Lio/sentry/CheckInStatus;

    .line 82
    invoke-virtual {p1}, Lio/sentry/CheckInStatus;->apiName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/CheckIn;->status:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lio/sentry/CheckIn;->status:Ljava/lang/String;

    .line 79
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

    .line 130
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/CheckIn;->unknown:Ljava/util/Map;

    .line 131
    return-void
.end method
