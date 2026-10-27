.class public final Lio/sentry/android/core/SentryPerformanceProvider;
.super Lio/sentry/android/core/EmptySecureContentProvider;
.source "SentryPerformanceProvider.java"


# static fields
.field private static final sdkInitMillis:J


# instance fields
.field private app:Landroid/app/Application;

.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/SentryPerformanceProvider;->sdkInitMillis:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lio/sentry/android/core/EmptySecureContentProvider;-><init>()V

    .line 57
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    .line 58
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    iget-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    invoke-direct {v0, v1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    iput-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 59
    return-void
.end method

.method constructor <init>(Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;

    .line 51
    invoke-direct {p0}, Lio/sentry/android/core/EmptySecureContentProvider;-><init>()V

    .line 52
    iput-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    .line 53
    iput-object p2, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 54
    return-void
.end method

.method private createAndStartContinuousProfiler(Landroid/content/Context;Lio/sentry/SentryAppStartProfilingOptions;Lio/sentry/android/core/performance/AppStartMetrics;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profilingOptions"    # Lio/sentry/SentryAppStartProfilingOptions;
    .param p3, "appStartMetrics"    # Lio/sentry/android/core/performance/AppStartMetrics;

    .line 192
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->isContinuousProfileSampled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "App start profiling was not sampled. It will not start."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void

    .line 197
    :cond_0
    new-instance v0, Lio/sentry/SentryExecutorService;

    invoke-direct {v0}, Lio/sentry/SentryExecutorService;-><init>()V

    .line 198
    .local v0, "startupExecutorService":Lio/sentry/SentryExecutorService;
    new-instance v2, Lio/sentry/android/core/AndroidContinuousProfiler;

    iget-object v3, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    new-instance v4, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    iget-object v7, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v4, v5, v6, v7}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    iget-object v5, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    .line 204
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v6

    .line 205
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->getProfilingTracesHz()I

    move-result v7

    new-instance v8, Lio/sentry/android/core/SentryPerformanceProvider$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lio/sentry/android/core/SentryPerformanceProvider$$ExternalSyntheticLambda1;-><init>(Lio/sentry/SentryExecutorService;)V

    invoke-direct/range {v2 .. v8}, Lio/sentry/android/core/AndroidContinuousProfiler;-><init>(Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ILio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 207
    .local v2, "appStartContinuousProfiler":Lio/sentry/IContinuousProfiler;
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 208
    invoke-virtual {p3, v2}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartContinuousProfiler(Lio/sentry/IContinuousProfiler;)V

    .line 209
    iget-object v3, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "App start continuous profiling started."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 212
    .local v1, "sentryOptions":Lio/sentry/SentryOptions;
    nop

    .line 213
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->isContinuousProfileSampled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 212
    invoke-virtual {v1, v3}, Lio/sentry/SentryOptions;->setProfileSessionSampleRate(Ljava/lang/Double;)V

    .line 214
    nop

    .line 215
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    move-result-object v3

    new-instance v4, Lio/sentry/TracesSampler;

    invoke-direct {v4, v1}, Lio/sentry/TracesSampler;-><init>(Lio/sentry/SentryOptions;)V

    .line 214
    invoke-interface {v2, v3, v4}, Lio/sentry/IContinuousProfiler;->startProfiler(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V

    .line 216
    return-void
.end method

.method private createAndStartTransactionProfiler(Landroid/content/Context;Lio/sentry/SentryAppStartProfilingOptions;Lio/sentry/android/core/performance/AppStartMetrics;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profilingOptions"    # Lio/sentry/SentryAppStartProfilingOptions;
    .param p3, "appStartMetrics"    # Lio/sentry/android/core/performance/AppStartMetrics;

    .line 222
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    .line 224
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->isTraceSampled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 225
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->getTraceSampleRate()Ljava/lang/Double;

    move-result-object v2

    .line 226
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->isProfileSampled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 227
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->getProfileSampleRate()Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 229
    .local v0, "appStartSamplingDecision":Lio/sentry/TracesSamplingDecision;
    invoke-virtual {p3, v0}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 231
    invoke-virtual {v0}, Lio/sentry/TracesSamplingDecision;->getProfileSampled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v4, p1

    goto :goto_0

    .line 236
    :cond_0
    new-instance v1, Lio/sentry/SentryExecutorService;

    invoke-direct {v1}, Lio/sentry/SentryExecutorService;-><init>()V

    .line 237
    .local v1, "executorService":Lio/sentry/SentryExecutorService;
    new-instance v3, Lio/sentry/android/core/AndroidTransactionProfiler;

    iget-object v5, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    new-instance v6, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v4, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    iget-object v7, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v6, p1, v4, v7}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    iget-object v7, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    .line 243
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v8

    .line 244
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled()Z

    move-result v9

    .line 245
    invoke-virtual {p2}, Lio/sentry/SentryAppStartProfilingOptions;->getProfilingTracesHz()I

    move-result v10

    new-instance v11, Lio/sentry/android/core/SentryPerformanceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v11, v1}, Lio/sentry/android/core/SentryPerformanceProvider$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SentryExecutorService;)V

    move-object v4, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v4, "context":Landroid/content/Context;
    invoke-direct/range {v3 .. v11}, Lio/sentry/android/core/AndroidTransactionProfiler;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 247
    .local v3, "appStartProfiler":Lio/sentry/ITransactionProfiler;
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartContinuousProfiler(Lio/sentry/IContinuousProfiler;)V

    .line 248
    invoke-virtual {p3, v3}, Lio/sentry/android/core/performance/AppStartMetrics;->setAppStartProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 249
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "App start profiling started."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v5, v6, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-interface {v3}, Lio/sentry/ITransactionProfiler;->start()V

    .line 251
    return-void

    .line 231
    .end local v1    # "executorService":Lio/sentry/SentryExecutorService;
    .end local v3    # "appStartProfiler":Lio/sentry/ITransactionProfiler;
    .end local v4    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    move-object v4, p1

    .line 232
    .end local p1    # "context":Landroid/content/Context;
    .restart local v4    # "context":Landroid/content/Context;
    :goto_0
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "App start profiling was not sampled. It will not start."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method private deserializeProfilingConfig(Ljava/io/Reader;)Lio/sentry/SentryAppStartProfilingOptions;
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;

    .line 179
    :try_start_0
    new-instance v0, Lio/sentry/JsonObjectReader;

    invoke-direct {v0, p1}, Lio/sentry/JsonObjectReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .local v0, "jsonReader":Lio/sentry/JsonObjectReader;
    :try_start_1
    new-instance v1, Lio/sentry/SentryAppStartProfilingOptions$Deserializer;

    invoke-direct {v1}, Lio/sentry/SentryAppStartProfilingOptions$Deserializer;-><init>()V

    iget-object v2, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    invoke-virtual {v1, v0, v2}, Lio/sentry/SentryAppStartProfilingOptions$Deserializer;->deserialize(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryAppStartProfilingOptions;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :try_start_2
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    return-object v1

    .line 179
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lio/sentry/JsonObjectReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "reader":Ljava/io/Reader;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 181
    .end local v0    # "jsonReader":Lio/sentry/JsonObjectReader;
    .restart local p1    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error when deserializing"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$createAndStartContinuousProfiler$0(Lio/sentry/SentryExecutorService;)Lio/sentry/ISentryExecutorService;
    .locals 0
    .param p0, "startupExecutorService"    # Lio/sentry/SentryExecutorService;

    .line 206
    return-object p0
.end method

.method static synthetic lambda$createAndStartTransactionProfiler$1(Lio/sentry/SentryExecutorService;)Lio/sentry/ISentryExecutorService;
    .locals 0
    .param p0, "executorService"    # Lio/sentry/SentryExecutorService;

    .line 246
    return-object p0
.end method

.method private launchAppStartProfiler(Lio/sentry/android/core/performance/AppStartMetrics;)V
    .locals 9
    .param p1, "appStartMetrics"    # Lio/sentry/android/core/performance/AppStartMetrics;

    .line 102
    invoke-virtual {p0}, Lio/sentry/android/core/SentryPerformanceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    iget-object v2, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v4, "App. Context from ContentProvider is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    return-void

    .line 109
    :cond_0
    invoke-static {v0}, Lio/sentry/android/core/AndroidOptionsInitializer;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 110
    .local v2, "cacheDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "app_start_profiling_config"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v3, "configFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 117
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 119
    .local v4, "reader":Ljava/io/Reader;
    nop

    .line 120
    :try_start_1
    invoke-direct {p0, v4}, Lio/sentry/android/core/SentryPerformanceProvider;->deserializeProfilingConfig(Ljava/io/Reader;)Lio/sentry/SentryAppStartProfilingOptions;

    move-result-object v5

    .line 122
    .local v5, "profilingOptions":Lio/sentry/SentryAppStartProfilingOptions;
    if-nez v5, :cond_2

    .line 123
    iget-object v6, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v8, "Unable to deserialize the SentryAppStartProfilingOptions. App start profiling will not start."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 126
    return-void

    .line 129
    :cond_2
    :try_start_3
    iget-object v6, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v6}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v6

    const/16 v7, 0x23

    if-lt v6, v7, :cond_3

    .line 131
    iget-object v6, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v8, "Device is API 35+. Skipping legacy app-start profiling \u2014 Perfetto ProfilingManager will be initialized after Sentry.init()."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    :try_start_4
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    return-void

    .line 138
    :cond_3
    :try_start_5
    invoke-virtual {v5}, Lio/sentry/SentryAppStartProfilingOptions;->isEnableLegacyProfiling()Z

    move-result v6

    if-nez v6, :cond_4

    .line 139
    iget-object v6, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v8, "enableLegacyProfiling is disabled and device is below API 35. App start profiling will not start."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    :try_start_6
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 143
    return-void

    .line 146
    :cond_4
    :try_start_7
    invoke-virtual {v5}, Lio/sentry/SentryAppStartProfilingOptions;->isContinuousProfilingEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 147
    invoke-virtual {v5}, Lio/sentry/SentryAppStartProfilingOptions;->isStartProfilerOnAppStart()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 148
    invoke-direct {p0, v0, v5, p1}, Lio/sentry/android/core/SentryPerformanceProvider;->createAndStartContinuousProfiler(Landroid/content/Context;Lio/sentry/SentryAppStartProfilingOptions;Lio/sentry/android/core/performance/AppStartMetrics;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 161
    :try_start_8
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 149
    return-void

    .line 152
    :cond_5
    :try_start_9
    invoke-virtual {v5}, Lio/sentry/SentryAppStartProfilingOptions;->isProfilingEnabled()Z

    move-result v6

    if-nez v6, :cond_6

    .line 153
    iget-object v6, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v8, "Profiling is not enabled. App start profiling will not start."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 161
    :try_start_a
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 155
    return-void

    .line 158
    :cond_6
    :try_start_b
    invoke-virtual {v5}, Lio/sentry/SentryAppStartProfilingOptions;->isEnableAppStartProfiling()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 159
    invoke-direct {p0, v0, v5, p1}, Lio/sentry/android/core/SentryPerformanceProvider;->createAndStartTransactionProfiler(Landroid/content/Context;Lio/sentry/SentryAppStartProfilingOptions;Lio/sentry/android/core/performance/AppStartMetrics;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 161
    .end local v5    # "profilingOptions":Lio/sentry/SentryAppStartProfilingOptions;
    :cond_7
    :try_start_c
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v1

    :try_start_d
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_e
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "cacheDir":Ljava/io/File;
    .end local v3    # "configFile":Ljava/io/File;
    .end local p1    # "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    :goto_0
    throw v1
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 163
    .end local v4    # "reader":Ljava/io/Reader;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "cacheDir":Ljava/io/File;
    .restart local v3    # "configFile":Ljava/io/File;
    .restart local p1    # "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    :catchall_2
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Error reading app start profiling config file. "

    invoke-interface {v4, v5, v6, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 161
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lio/sentry/android/core/SentryPerformanceProvider;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "App start profiling config file not found. "

    invoke-interface {v4, v5, v6, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    nop

    .line 166
    :goto_2
    return-void

    .line 114
    :cond_8
    :goto_3
    return-void
.end method

.method private onAppLaunched(Landroid/content/Context;Lio/sentry/android/core/performance/AppStartMetrics;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appStartMetrics"    # Lio/sentry/android/core/performance/AppStartMetrics;

    .line 258
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 259
    .local v0, "sdkInitTimeSpan":Lio/sentry/android/core/performance/TimeSpan;
    sget-wide v1, Lio/sentry/android/core/SentryPerformanceProvider;->sdkInitMillis:J

    invoke-virtual {v0, v1, v2}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 263
    iget-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v1

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 264
    invoke-virtual {p2}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v1

    .line 265
    .local v1, "appStartTimespan":Lio/sentry/android/core/performance/TimeSpan;
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 268
    .end local v1    # "appStartTimespan":Lio/sentry/android/core/performance/TimeSpan;
    :cond_0
    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_1

    .line 269
    move-object v1, p1

    check-cast v1, Landroid/app/Application;

    iput-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->app:Landroid/app/Application;

    .line 271
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->app:Landroid/app/Application;

    if-nez v1, :cond_2

    .line 272
    return-void

    .line 275
    :cond_2
    iget-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->app:Landroid/app/Application;

    invoke-virtual {p2, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->registerLifecycleCallbacks(Landroid/app/Application;)V

    .line 276
    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 72
    const-class v0, Lio/sentry/android/core/SentryPerformanceProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-super {p0, p1, p2}, Lio/sentry/android/core/EmptySecureContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 77
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An applicationId is required to fulfill the manifest placeholder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .line 63
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    .line 64
    .local v0, "appStartMetrics":Lio/sentry/android/core/performance/AppStartMetrics;
    invoke-virtual {p0}, Lio/sentry/android/core/SentryPerformanceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/SentryPerformanceProvider;->onAppLaunched(Landroid/content/Context;Lio/sentry/android/core/performance/AppStartMetrics;)V

    .line 65
    invoke-direct {p0, v0}, Lio/sentry/android/core/SentryPerformanceProvider;->launchAppStartProfiler(Lio/sentry/android/core/performance/AppStartMetrics;)V

    .line 66
    const/4 v1, 0x1

    return v1
.end method

.method public shutdown()V
    .locals 4

    .line 87
    sget-object v0, Lio/sentry/android/core/performance/AppStartMetrics;->staticLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 89
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object v1

    .line 90
    .local v1, "appStartProfiler":Lio/sentry/ITransactionProfiler;
    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v1}, Lio/sentry/ITransactionProfiler;->close()V

    .line 94
    :cond_0
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v2

    .line 95
    .local v2, "appStartContinuousProfiler":Lio/sentry/IContinuousProfiler;
    if-eqz v2, :cond_1

    .line 96
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lio/sentry/IContinuousProfiler;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v1    # "appStartProfiler":Lio/sentry/ITransactionProfiler;
    .end local v2    # "appStartContinuousProfiler":Lio/sentry/IContinuousProfiler;
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 99
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 87
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method
