.class public final Lio/sentry/TracesSampler;
.super Ljava/lang/Object;
.source "TracesSampler.java"


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "options are required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 16
    return-void
.end method

.method private sample(Ljava/lang/Double;Ljava/lang/Double;)Z
    .locals 4
    .param p1, "sampleRate"    # Ljava/lang/Double;
    .param p2, "sampleRand"    # Ljava/lang/Double;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public sample(Lio/sentry/SamplingContext;)Lio/sentry/TracesSamplingDecision;
    .locals 14
    .param p1, "samplingContext"    # Lio/sentry/SamplingContext;

    .line 21
    invoke-virtual {p1}, Lio/sentry/SamplingContext;->getSampleRand()Ljava/lang/Double;

    move-result-object v3

    .line 22
    .local v3, "sampleRand":Ljava/lang/Double;
    nop

    .line 23
    invoke-virtual {p1}, Lio/sentry/SamplingContext;->getTransactionContext()Lio/sentry/TransactionContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/TransactionContext;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v6

    .line 24
    .local v6, "samplingContextSamplingDecision":Lio/sentry/TracesSamplingDecision;
    if-eqz v6, :cond_0

    .line 25
    invoke-static {v6}, Lio/sentry/util/SampleRateUtils;->backfilledSampleRand(Lio/sentry/TracesSamplingDecision;)Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    return-object v0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    .local v1, "profilesSampleRate":Ljava/lang/Double;
    const/4 v2, 0x0

    .line 30
    .local v2, "profilesSamplerFailed":Z
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfilesSampler()Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    :try_start_0
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfilesSampler()Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/SentryOptions$ProfilesSamplerCallback;->sample(Lio/sentry/SamplingContext;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 38
    move v7, v2

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v2, 0x1

    .line 35
    iget-object v4, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 36
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 37
    const-string v7, "Error in the \'ProfilesSamplerCallback\' callback."

    invoke-interface {v4, v5, v7, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v2

    goto :goto_0

    .line 30
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    move v7, v2

    .line 40
    .end local v2    # "profilesSamplerFailed":Z
    .local v7, "profilesSamplerFailed":Z
    :goto_0
    if-nez v1, :cond_2

    if-nez v7, :cond_2

    .line 41
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    .line 43
    :cond_2
    move-object v5, v1

    .end local v1    # "profilesSampleRate":Ljava/lang/Double;
    .local v5, "profilesSampleRate":Ljava/lang/Double;
    :goto_1
    const/4 v1, 0x0

    if-eqz v5, :cond_3

    invoke-direct {p0, v5, v3}, Lio/sentry/TracesSampler;->sample(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 45
    .local v4, "profilesSampled":Ljava/lang/Boolean;
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 48
    :try_start_1
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/SentryOptions$TracesSamplerCallback;->sample(Lio/sentry/SamplingContext;)Ljava/lang/Double;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .local v2, "samplerResult":Ljava/lang/Double;
    nop

    .line 61
    if-eqz v2, :cond_4

    .line 62
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    .line 63
    invoke-direct {p0, v2, v3}, Lio/sentry/TracesSampler;->sample(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 62
    move-object v9, v4

    move-object v8, v5

    .end local v4    # "profilesSampled":Ljava/lang/Boolean;
    .end local v5    # "profilesSampleRate":Ljava/lang/Double;
    .local v8, "profilesSampleRate":Ljava/lang/Double;
    .local v9, "profilesSampled":Ljava/lang/Boolean;
    return-object v0

    .line 61
    .end local v8    # "profilesSampleRate":Ljava/lang/Double;
    .end local v9    # "profilesSampled":Ljava/lang/Boolean;
    .restart local v4    # "profilesSampled":Ljava/lang/Boolean;
    .restart local v5    # "profilesSampleRate":Ljava/lang/Double;
    :cond_4
    move-object v9, v4

    move-object v8, v5

    .end local v4    # "profilesSampled":Ljava/lang/Boolean;
    .end local v5    # "profilesSampleRate":Ljava/lang/Double;
    .restart local v8    # "profilesSampleRate":Ljava/lang/Double;
    .restart local v9    # "profilesSampled":Ljava/lang/Boolean;
    move v2, v1

    goto :goto_3

    .line 49
    .end local v2    # "samplerResult":Ljava/lang/Double;
    .end local v8    # "profilesSampleRate":Ljava/lang/Double;
    .end local v9    # "profilesSampled":Ljava/lang/Boolean;
    .restart local v4    # "profilesSampled":Ljava/lang/Boolean;
    .restart local v5    # "profilesSampleRate":Ljava/lang/Double;
    :catchall_1
    move-exception v0

    move-object v9, v4

    move-object v8, v5

    .end local v4    # "profilesSampled":Ljava/lang/Boolean;
    .end local v5    # "profilesSampleRate":Ljava/lang/Double;
    .restart local v8    # "profilesSampleRate":Ljava/lang/Double;
    .restart local v9    # "profilesSampled":Ljava/lang/Boolean;
    move-object v10, v0

    .line 50
    .local v10, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 51
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 52
    const-string v4, "Error in the \'TracesSamplerCallback\' callback."

    invoke-interface {v0, v2, v4, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 54
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v2, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 55
    invoke-interface {v0, v2, v4}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 56
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 57
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v2, Lio/sentry/clientreport/DiscardReason;->CALLBACK_ERROR:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 58
    invoke-interface {v0, v2, v4}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 59
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    move v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-object v0

    .line 45
    .end local v8    # "profilesSampleRate":Ljava/lang/Double;
    .end local v9    # "profilesSampled":Ljava/lang/Boolean;
    .end local v10    # "t":Ljava/lang/Throwable;
    .restart local v4    # "profilesSampled":Ljava/lang/Boolean;
    .restart local v5    # "profilesSampleRate":Ljava/lang/Double;
    :cond_5
    move v2, v1

    move-object v9, v4

    move-object v8, v5

    .line 71
    .end local v4    # "profilesSampled":Ljava/lang/Boolean;
    .end local v5    # "profilesSampleRate":Ljava/lang/Double;
    .restart local v8    # "profilesSampleRate":Ljava/lang/Double;
    .restart local v9    # "profilesSampled":Ljava/lang/Boolean;
    :goto_3
    nop

    .line 72
    invoke-virtual {p1}, Lio/sentry/SamplingContext;->getTransactionContext()Lio/sentry/TransactionContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/TransactionContext;->getParentSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v10

    .line 73
    .local v10, "parentSamplingDecision":Lio/sentry/TracesSamplingDecision;
    if-eqz v10, :cond_7

    .line 74
    if-eqz v7, :cond_6

    .line 75
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    .line 77
    invoke-virtual {v10}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v1

    .line 78
    invoke-virtual {v10}, Lio/sentry/TracesSamplingDecision;->getSampleRate()Ljava/lang/Double;

    move-result-object v2

    .line 79
    invoke-virtual {v10}, Lio/sentry/TracesSamplingDecision;->getSampleRand()Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 75
    invoke-static {v0}, Lio/sentry/util/SampleRateUtils;->backfilledSampleRand(Lio/sentry/TracesSamplingDecision;)Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    return-object v0

    .line 81
    :cond_6
    invoke-static {v10}, Lio/sentry/util/SampleRateUtils;->backfilledSampleRand(Lio/sentry/TracesSamplingDecision;)Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    return-object v0

    .line 84
    :cond_7
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v11

    .line 85
    .local v11, "tracesSampleRateFromOptions":Ljava/lang/Double;
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    .line 86
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/backpressure/IBackpressureMonitor;->getDownsampleFactor()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 88
    .local v12, "downsampleFactor":Ljava/lang/Double;
    if-nez v11, :cond_8

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 90
    .local v0, "downsampledTracesSampleRate":Ljava/lang/Double;
    :goto_4
    if-eqz v0, :cond_9

    .line 91
    move-object v2, v0

    .end local v0    # "downsampledTracesSampleRate":Ljava/lang/Double;
    .local v2, "downsampledTracesSampleRate":Ljava/lang/Double;
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    .line 92
    invoke-direct {p0, v2, v3}, Lio/sentry/TracesSampler;->sample(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v5, v8

    move-object v4, v9

    .end local v8    # "profilesSampleRate":Ljava/lang/Double;
    .end local v9    # "profilesSampled":Ljava/lang/Boolean;
    .restart local v4    # "profilesSampled":Ljava/lang/Boolean;
    .restart local v5    # "profilesSampleRate":Ljava/lang/Double;
    invoke-direct/range {v0 .. v5}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 91
    move-object v13, v2

    .end local v2    # "downsampledTracesSampleRate":Ljava/lang/Double;
    .end local v4    # "profilesSampled":Ljava/lang/Boolean;
    .end local v5    # "profilesSampleRate":Ljava/lang/Double;
    .restart local v8    # "profilesSampleRate":Ljava/lang/Double;
    .restart local v9    # "profilesSampled":Ljava/lang/Boolean;
    .local v13, "downsampledTracesSampleRate":Ljava/lang/Double;
    return-object v0

    .line 99
    .end local v13    # "downsampledTracesSampleRate":Ljava/lang/Double;
    .restart local v0    # "downsampledTracesSampleRate":Ljava/lang/Double;
    :cond_9
    move-object v13, v0

    .end local v0    # "downsampledTracesSampleRate":Ljava/lang/Double;
    .restart local v13    # "downsampledTracesSampleRate":Ljava/lang/Double;
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-object v0
.end method

.method public sampleSessionProfile(D)Z
    .locals 2
    .param p1, "sampleRand"    # D

    .line 103
    iget-object v0, p0, Lio/sentry/TracesSampler;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfileSessionSampleRate()Ljava/lang/Double;

    move-result-object v0

    .line 104
    .local v0, "sampling":Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/TracesSampler;->sample(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
