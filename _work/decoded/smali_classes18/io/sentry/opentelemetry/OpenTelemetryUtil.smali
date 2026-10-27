.class public final Lio/sentry/opentelemetry/OpenTelemetryUtil;
.super Ljava/lang/Object;
.source "OpenTelemetryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyIgnoredSpanOrigins(Lio/sentry/SentryOptions;)V
    .locals 3
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 20
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0}, Lio/sentry/opentelemetry/OpenTelemetryUtil;->ignoredSpanOrigins(Lio/sentry/SentryOptions;)Ljava/util/List;

    move-result-object v0

    .line 22
    .local v0, "ignored":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    .local v2, "origin":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lio/sentry/SentryOptions;->addIgnoredSpanOrigin(Ljava/lang/String;)V

    .line 24
    .end local v2    # "origin":Ljava/lang/String;
    goto :goto_0

    .line 26
    .end local v0    # "ignored":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private static ignoredSpanOrigins(Lio/sentry/SentryOptions;)Ljava/util/List;
    .locals 2
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryOptions;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;

    move-result-object v0

    .line 69
    .local v0, "openTelemetryMode":Lio/sentry/SentryOpenTelemetryMode;
    sget-object v1, Lio/sentry/SentryOpenTelemetryMode;->OFF:Lio/sentry/SentryOpenTelemetryMode;

    invoke-virtual {v1, v0}, Lio/sentry/SentryOpenTelemetryMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 73
    :cond_0
    invoke-static {v0}, Lio/sentry/util/SpanUtils;->ignoredSpanOriginsForOpenTelemetry(Lio/sentry/SentryOpenTelemetryMode;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static updateOpenTelemetryModeIfAuto(Lio/sentry/SentryOptions;Lio/sentry/util/LoadClass;)V
    .locals 5
    .param p0, "options"    # Lio/sentry/SentryOptions;
    .param p1, "loadClass"    # Lio/sentry/util/LoadClass;

    .line 31
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;

    move-result-object v0

    .line 36
    .local v0, "openTelemetryMode":Lio/sentry/SentryOpenTelemetryMode;
    sget-object v1, Lio/sentry/SentryOpenTelemetryMode;->AUTO:Lio/sentry/SentryOpenTelemetryMode;

    invoke-virtual {v1, v0}, Lio/sentry/SentryOpenTelemetryMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    nop

    .line 38
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v1

    .line 37
    const-string v2, "io.sentry.opentelemetry.agent.AgentMarker"

    invoke-virtual {p1, v2, v1}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 39
    nop

    .line 40
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    const-string v4, "openTelemetryMode has been inferred from AUTO to AGENT"

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-object v1, Lio/sentry/SentryOpenTelemetryMode;->AGENT:Lio/sentry/SentryOpenTelemetryMode;

    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setOpenTelemetryMode(Lio/sentry/SentryOpenTelemetryMode;)V

    .line 43
    return-void

    .line 45
    :cond_1
    nop

    .line 46
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v1

    .line 45
    const-string v3, "io.sentry.opentelemetry.agent.AgentlessMarker"

    invoke-virtual {p1, v3, v1}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    nop

    .line 48
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    const-string v4, "openTelemetryMode has been inferred from AUTO to AGENTLESS"

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    sget-object v1, Lio/sentry/SentryOpenTelemetryMode;->AGENTLESS:Lio/sentry/SentryOpenTelemetryMode;

    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setOpenTelemetryMode(Lio/sentry/SentryOpenTelemetryMode;)V

    .line 51
    return-void

    .line 53
    :cond_2
    nop

    .line 54
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v1

    .line 53
    const-string v3, "io.sentry.opentelemetry.agent.AgentlessSpringMarker"

    invoke-virtual {p1, v3, v1}, Lio/sentry/util/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    const-string v4, "openTelemetryMode has been inferred from AUTO to AGENTLESS_SPRING"

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    sget-object v1, Lio/sentry/SentryOpenTelemetryMode;->AGENTLESS_SPRING:Lio/sentry/SentryOpenTelemetryMode;

    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setOpenTelemetryMode(Lio/sentry/SentryOpenTelemetryMode;)V

    .line 61
    return-void

    .line 64
    :cond_3
    return-void
.end method
