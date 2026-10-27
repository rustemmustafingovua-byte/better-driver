.class public final Lio/sentry/util/InitUtil;
.super Ljava/lang/Object;
.source "InitUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOrCreateProfilingTracesDir(Lio/sentry/SentryOptions;)Ljava/lang/String;
    .locals 5
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 125
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "profilingTracesDirPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 127
    return-object v0

    .line 130
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sentry_profiling_traces"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v1, "tempDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating a fallback directory for profiling failed in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProfilingTracesDirPath(Ljava/lang/String;)V

    .line 138
    return-object v0
.end method

.method public static initializeProfileConverter(Lio/sentry/SentryOptions;)Lio/sentry/IProfileConverter;
    .locals 5
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 92
    invoke-static {p0}, Lio/sentry/util/InitUtil;->shouldInitializeProfileConverter(Lio/sentry/SentryOptions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilerConverter()Lio/sentry/IProfileConverter;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    invoke-static {}, Lio/sentry/profiling/ProfilingServiceLoader;->loadProfileConverter()Lio/sentry/IProfileConverter;

    move-result-object v0

    .line 98
    .local v0, "converter":Lio/sentry/IProfileConverter;
    instance-of v1, v0, Lio/sentry/NoOpProfileConverter;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 99
    nop

    .line 100
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 101
    const-string v4, "Could not load profile converter. If you are using Spring or Spring Boot with the OTEL Agent, profile converter init will be retried."

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProfilerConverter(Lio/sentry/IProfileConverter;)V

    .line 106
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Successfully loaded profile converter"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilerConverter()Lio/sentry/IProfileConverter;

    move-result-object v1

    return-object v1
.end method

.method public static initializeProfiler(Lio/sentry/SentryOptions;)Lio/sentry/IContinuousProfiler;
    .locals 6
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 59
    invoke-static {p0}, Lio/sentry/util/InitUtil;->shouldInitializeProfiler(Lio/sentry/SentryOptions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    :try_start_0
    invoke-static {p0}, Lio/sentry/util/InitUtil;->getOrCreateProfilingTracesDir(Lio/sentry/SentryOptions;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "profilingTracesDirPath":Ljava/lang/String;
    nop

    .line 67
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesHz()I

    move-result v2

    .line 70
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v3

    .line 66
    invoke-static {v1, v0, v2, v3}, Lio/sentry/profiling/ProfilingServiceLoader;->loadContinuousProfiler(Lio/sentry/ILogger;Ljava/lang/String;ILio/sentry/ISentryExecutorService;)Lio/sentry/IContinuousProfiler;

    move-result-object v1

    .line 72
    .local v1, "profiler":Lio/sentry/IContinuousProfiler;
    instance-of v2, v1, Lio/sentry/NoOpContinuousProfiler;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 73
    nop

    .line 74
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Could not load profiler, profiling will be disabled. If you are using Spring or Spring Boot with the OTEL Agent profiler init will be retried."

    new-array v3, v3, [Ljava/lang/Object;

    .line 75
    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setContinuousProfiler(Lio/sentry/IContinuousProfiler;)V

    .line 80
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "Successfully loaded profiler"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0    # "profilingTracesDirPath":Ljava/lang/String;
    .end local v1    # "profiler":Lio/sentry/IContinuousProfiler;
    :goto_0
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 84
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 85
    const-string v3, "Failed to create default profiling traces directory"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v0

    return-object v0
.end method

.method public static shouldInit(Lio/sentry/SentryOptions;Lio/sentry/SentryOptions;Z)Z
    .locals 4
    .param p0, "previousOptions"    # Lio/sentry/SentryOptions;
    .param p1, "newOptions"    # Lio/sentry/SentryOptions;
    .param p2, "isEnabled"    # Z

    .line 25
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getVersionDetector()Lio/sentry/IVersionDetector;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/NoopVersionDetector;

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lio/sentry/ManifestVersionDetector;

    invoke-direct {v0, p1}, Lio/sentry/ManifestVersionDetector;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setVersionDetector(Lio/sentry/IVersionDetector;)V

    .line 28
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getVersionDetector()Lio/sentry/IVersionDetector;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IVersionDetector;->checkForMixedVersions()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 29
    nop

    .line 30
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    const-string v3, "Not initializing Sentry because mixed SDK versions have been detected."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lio/sentry/util/Platform;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const-string v0, "https://docs.sentry.io/platforms/android/troubleshooting/mixed-versions"

    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "https://docs.sentry.io/platforms/java/troubleshooting/mixed-versions"

    :goto_0
    nop

    .line 38
    .local v0, "docsUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sentry SDK has detected a mix of versions. This is not supported and likely leads to crashes. Please always use the same version of all SDK modules (dependencies). See "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for more details."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v0    # "docsUrl":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    if-nez p2, :cond_3

    .line 44
    return v0

    .line 47
    :cond_3
    if-nez p0, :cond_4

    .line 48
    return v0

    .line 51
    :cond_4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isForceInit()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 52
    return v0

    .line 55
    :cond_5
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getInitPriority()Lio/sentry/InitPriority;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/InitPriority;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getInitPriority()Lio/sentry/InitPriority;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/InitPriority;->ordinal()I

    move-result v3

    if-gt v2, v3, :cond_6

    move v1, v0

    :cond_6
    return v1
.end method

.method private static shouldInitializeProfileConverter(Lio/sentry/SentryOptions;)Z
    .locals 1
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 119
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilerConverter()Lio/sentry/IProfileConverter;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/NoOpProfileConverter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0
.end method

.method private static shouldInitializeProfiler(Lio/sentry/SentryOptions;)Z
    .locals 1
    .param p0, "options"    # Lio/sentry/SentryOptions;

    .line 113
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/NoOpContinuousProfiler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0
.end method
