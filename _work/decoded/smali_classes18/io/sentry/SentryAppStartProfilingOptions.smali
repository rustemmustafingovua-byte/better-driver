.class public final Lio/sentry/SentryAppStartProfilingOptions;
.super Ljava/lang/Object;
.source "SentryAppStartProfilingOptions.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryAppStartProfilingOptions$JsonKeys;,
        Lio/sentry/SentryAppStartProfilingOptions$Deserializer;
    }
.end annotation


# instance fields
.field continuousProfileSampled:Z

.field enableLegacyProfiling:Z

.field isContinuousProfilingEnabled:Z

.field isEnableAppStartProfiling:Z

.field isProfilingEnabled:Z

.field isStartProfilerOnAppStart:Z

.field profileLifecycle:Lio/sentry/ProfileLifecycle;

.field profileSampleRate:Ljava/lang/Double;

.field profileSampled:Z

.field profilingTracesDirPath:Ljava/lang/String;

.field profilingTracesHz:I

.field traceSampleRate:Ljava/lang/Double;

.field traceSampled:Z

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
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

    .line 36
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    .line 37
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    .line 38
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->continuousProfileSampled:Z

    .line 39
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 40
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    .line 41
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isContinuousProfilingEnabled:Z

    .line 42
    sget-object v1, Lio/sentry/ProfileLifecycle;->MANUAL:Lio/sentry/ProfileLifecycle;

    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    .line 43
    iput v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isEnableAppStartProfiling:Z

    .line 45
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isStartProfilerOnAppStart:Z

    .line 46
    iput-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->enableLegacyProfiling:Z

    .line 47
    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;)V
    .locals 3
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p2}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    .line 53
    invoke-virtual {p2}, Lio/sentry/TracesSamplingDecision;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

    .line 54
    invoke-virtual {p2}, Lio/sentry/TracesSamplingDecision;->getProfileSampled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    .line 55
    invoke-virtual {p2}, Lio/sentry/TracesSamplingDecision;->getProfileSampleRate()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    .line 56
    nop

    .line 58
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getInternalTracesSampler()Lio/sentry/TracesSampler;

    move-result-object v0

    .line 59
    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/util/Random;->nextDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/sentry/TracesSampler;->sampleSessionProfile(D)Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->continuousProfileSampled:Z

    .line 60
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    .line 62
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isContinuousProfilingEnabled:Z

    .line 63
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    .line 64
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getProfilingTracesHz()I

    move-result v0

    iput v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    .line 65
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableAppStartProfiling()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isEnableAppStartProfiling:Z

    .line 66
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isStartProfilerOnAppStart()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isStartProfilerOnAppStart:Z

    .line 67
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableLegacyProfiling()Z

    move-result v0

    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->enableLegacyProfiling:Z

    .line 68
    return-void
.end method


# virtual methods
.method public getProfileLifecycle()Lio/sentry/ProfileLifecycle;
    .locals 1

    .line 91
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    return-object v0
.end method

.method public getProfileSampleRate()Ljava/lang/Double;
    .locals 1

    .line 99
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getProfilingTracesDirPath()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilingTracesHz()I
    .locals 1

    .line 147
    iget v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    return v0
.end method

.method public getTraceSampleRate()Ljava/lang/Double;
    .locals 1

    .line 115
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

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

    .line 225
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public isContinuousProfileSampled()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->continuousProfileSampled:Z

    return v0
.end method

.method public isContinuousProfilingEnabled()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isContinuousProfilingEnabled:Z

    return v0
.end method

.method public isEnableAppStartProfiling()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isEnableAppStartProfiling:Z

    return v0
.end method

.method public isEnableLegacyProfiling()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->enableLegacyProfiling:Z

    return v0
.end method

.method public isProfileSampled()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    return v0
.end method

.method public isProfilingEnabled()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    return v0
.end method

.method public isStartProfilerOnAppStart()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->isStartProfilerOnAppStart:Z

    return v0
.end method

.method public isTraceSampled()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 196
    const-string v0, "profile_sampled"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 197
    const-string v0, "profile_sample_rate"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 198
    const-string v0, "continuous_profile_sampled"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->continuousProfileSampled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 199
    const-string v0, "trace_sampled"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 200
    const-string v0, "trace_sample_rate"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 201
    const-string v0, "profiling_traces_dir_path"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 202
    const-string v0, "is_profiling_enabled"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 203
    nop

    .line 204
    const-string v0, "is_continuous_profiling_enabled"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isContinuousProfilingEnabled:Z

    .line 205
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 206
    const-string v0, "profile_lifecycle"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    invoke-virtual {v1}, Lio/sentry/ProfileLifecycle;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 207
    const-string v0, "profiling_traces_hz"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 208
    const-string v0, "is_enable_app_start_profiling"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isEnableAppStartProfiling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 209
    const-string v0, "is_start_profiler_on_app_start"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isStartProfilerOnAppStart:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 210
    const-string v0, "enable_legacy_profiling"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->enableLegacyProfiling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 212
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->unknown:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lio/sentry/SentryAppStartProfilingOptions;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 215
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 216
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 217
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 220
    return-void
.end method

.method public setContinuousProfileSampled(Z)V
    .locals 0
    .param p1, "continuousProfileSampled"    # Z

    .line 79
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->continuousProfileSampled:Z

    .line 80
    return-void
.end method

.method public setContinuousProfilingEnabled(Z)V
    .locals 0
    .param p1, "continuousProfilingEnabled"    # Z

    .line 135
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isContinuousProfilingEnabled:Z

    .line 136
    return-void
.end method

.method public setEnableAppStartProfiling(Z)V
    .locals 0
    .param p1, "enableAppStartProfiling"    # Z

    .line 151
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isEnableAppStartProfiling:Z

    .line 152
    return-void
.end method

.method public setEnableLegacyProfiling(Z)V
    .locals 0
    .param p1, "enableLegacyProfiling"    # Z

    .line 167
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->enableLegacyProfiling:Z

    .line 168
    return-void
.end method

.method public setProfileLifecycle(Lio/sentry/ProfileLifecycle;)V
    .locals 0
    .param p1, "profileLifecycle"    # Lio/sentry/ProfileLifecycle;

    .line 87
    iput-object p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileLifecycle:Lio/sentry/ProfileLifecycle;

    .line 88
    return-void
.end method

.method public setProfileSampleRate(Ljava/lang/Double;)V
    .locals 0
    .param p1, "profileSampleRate"    # Ljava/lang/Double;

    .line 95
    iput-object p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampleRate:Ljava/lang/Double;

    .line 96
    return-void
.end method

.method public setProfileSampled(Z)V
    .locals 0
    .param p1, "profileSampled"    # Z

    .line 71
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profileSampled:Z

    .line 72
    return-void
.end method

.method public setProfilingEnabled(Z)V
    .locals 0
    .param p1, "profilingEnabled"    # Z

    .line 127
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled:Z

    .line 128
    return-void
.end method

.method public setProfilingTracesDirPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "profilingTracesDirPath"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesDirPath:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setProfilingTracesHz(I)V
    .locals 0
    .param p1, "profilingTracesHz"    # I

    .line 143
    iput p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->profilingTracesHz:I

    .line 144
    return-void
.end method

.method public setStartProfilerOnAppStart(Z)V
    .locals 0
    .param p1, "startProfilerOnAppStart"    # Z

    .line 159
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->isStartProfilerOnAppStart:Z

    .line 160
    return-void
.end method

.method public setTraceSampleRate(Ljava/lang/Double;)V
    .locals 0
    .param p1, "traceSampleRate"    # Ljava/lang/Double;

    .line 111
    iput-object p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampleRate:Ljava/lang/Double;

    .line 112
    return-void
.end method

.method public setTraceSampled(Z)V
    .locals 0
    .param p1, "traceSampled"    # Z

    .line 103
    iput-boolean p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->traceSampled:Z

    .line 104
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

    .line 230
    .local p1, "unknown":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lio/sentry/SentryAppStartProfilingOptions;->unknown:Ljava/util/Map;

    .line 231
    return-void
.end method
