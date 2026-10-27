.class public final Lio/sentry/util/SampleRateUtils;
.super Ljava/lang/Object;
.source "SampleRateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backfilledSampleRand(Lio/sentry/TracesSamplingDecision;)Lio/sentry/TracesSamplingDecision;
    .locals 9
    .param p0, "samplingDecision"    # Lio/sentry/TracesSamplingDecision;

    .line 54
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampleRand()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    return-object p0

    .line 58
    :cond_0
    nop

    .line 59
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lio/sentry/util/SampleRateUtils;->backfilledSampleRand(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)Ljava/lang/Double;

    move-result-object v6

    .line 60
    .local v6, "sampleRand":Ljava/lang/Double;
    new-instance v3, Lio/sentry/TracesSamplingDecision;

    .line 61
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v4

    .line 62
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampleRate()Ljava/lang/Double;

    move-result-object v5

    .line 64
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getProfileSampled()Ljava/lang/Boolean;

    move-result-object v7

    .line 65
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getProfileSampleRate()Ljava/lang/Double;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 60
    return-object v3
.end method

.method public static backfilledSampleRand(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)Ljava/lang/Double;
    .locals 8
    .param p0, "sampleRand"    # Ljava/lang/Double;
    .param p1, "sampleRate"    # Ljava/lang/Double;
    .param p2, "sampled"    # Ljava/lang/Boolean;

    .line 36
    if-eqz p0, :cond_0

    .line 37
    return-object p0

    .line 40
    :cond_0
    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/util/Random;->nextDouble()D

    move-result-wide v0

    .line 41
    .local v0, "newSampleRand":D
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    .line 49
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static isValidContinuousProfilesSampleRate(Ljava/lang/Double;)Z
    .locals 1
    .param p0, "profilesSampleRate"    # Ljava/lang/Double;

    .line 29
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/sentry/util/SampleRateUtils;->isValidRate(Ljava/lang/Double;Z)Z

    move-result v0

    return v0
.end method

.method public static isValidProfilesSampleRate(Ljava/lang/Double;)Z
    .locals 1
    .param p0, "profilesSampleRate"    # Ljava/lang/Double;

    .line 25
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/sentry/util/SampleRateUtils;->isValidRate(Ljava/lang/Double;Z)Z

    move-result v0

    return v0
.end method

.method private static isValidRate(Ljava/lang/Double;Z)Z
    .locals 4
    .param p0, "rate"    # Ljava/lang/Double;
    .param p1, "allowNull"    # Z

    .line 69
    if-nez p0, :cond_0

    .line 70
    return p1

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidSampleRate(Ljava/lang/Double;)Z
    .locals 1
    .param p0, "sampleRate"    # Ljava/lang/Double;

    .line 12
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/sentry/util/SampleRateUtils;->isValidRate(Ljava/lang/Double;Z)Z

    move-result v0

    return v0
.end method

.method public static isValidTracesSampleRate(Ljava/lang/Double;)Z
    .locals 1
    .param p0, "tracesSampleRate"    # Ljava/lang/Double;

    .line 16
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;Z)Z

    move-result v0

    return v0
.end method

.method public static isValidTracesSampleRate(Ljava/lang/Double;Z)Z
    .locals 1
    .param p0, "tracesSampleRate"    # Ljava/lang/Double;
    .param p1, "allowNull"    # Z

    .line 21
    invoke-static {p0, p1}, Lio/sentry/util/SampleRateUtils;->isValidRate(Ljava/lang/Double;Z)Z

    move-result v0

    return v0
.end method
