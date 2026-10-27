.class final Lio/sentry/android/core/AndroidTransactionProfiler;
.super Ljava/lang/Object;
.source "AndroidTransactionProfiler.java"

# interfaces
.implements Lio/sentry/ITransactionProfiler;


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private volatile currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

.field private final executorServiceSupplier:Lio/sentry/util/LazyEvaluator$Evaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator$Evaluator<",
            "Lio/sentry/ISentryExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private isInitialized:Z

.field private final isProfilingEnabled:Z

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final logger:Lio/sentry/ILogger;

.field private profileStartCpuMillis:J

.field private profileStartNanos:J

.field private profileStartTimestamp:Ljava/util/Date;

.field private volatile profiler:Lio/sentry/android/core/AndroidProfiler;

.field private final profilingTracesDirPath:Ljava/lang/String;

.field private final profilingTracesHz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/ISentryExecutorService;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "frameMetricsCollector"    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    .param p4, "logger"    # Lio/sentry/ILogger;
    .param p5, "profilingTracesDirPath"    # Ljava/lang/String;
    .param p6, "isProfilingEnabled"    # Z
    .param p7, "profilingTracesHz"    # I
    .param p8, "executorService"    # Lio/sentry/ISentryExecutorService;

    .line 81
    new-instance v8, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda2;

    move-object/from16 v9, p8

    invoke-direct {v8, v9}, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda2;-><init>(Lio/sentry/ISentryExecutorService;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lio/sentry/android/core/AndroidTransactionProfiler;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/util/LazyEvaluator$Evaluator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p3, "frameMetricsCollector"    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    .param p4, "logger"    # Lio/sentry/ILogger;
    .param p5, "profilingTracesDirPath"    # Ljava/lang/String;
    .param p6, "isProfilingEnabled"    # Z
    .param p7, "profilingTracesHz"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/android/core/BuildInfoProvider;",
            "Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;",
            "Lio/sentry/ILogger;",
            "Ljava/lang/String;",
            "ZI",
            "Lio/sentry/util/LazyEvaluator$Evaluator<",
            "Lio/sentry/ISentryExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p8, "executorServiceSupplier":Lio/sentry/util/LazyEvaluator$Evaluator;, "Lio/sentry/util/LazyEvaluator$Evaluator<Lio/sentry/ISentryExecutorService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isInitialized:Z

    .line 41
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    .line 54
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 101
    nop

    .line 103
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 102
    const-string v1, "The application context is required"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->context:Landroid/content/Context;

    .line 104
    const-string v0, "ILogger is required"

    invoke-static {p4, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ILogger;

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    .line 105
    nop

    .line 106
    const-string v0, "SentryFrameMetricsCollector is required"

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 107
    nop

    .line 108
    const-string v0, "The BuildInfoProvider is required."

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/BuildInfoProvider;

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 109
    iput-object p5, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesDirPath:Ljava/lang/String;

    .line 110
    iput-boolean p6, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isProfilingEnabled:Z

    .line 111
    iput p7, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesHz:I

    .line 112
    nop

    .line 113
    const-string v0, "A supplier for ISentryExecutorService is required."

    invoke-static {p8, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/util/LazyEvaluator$Evaluator;

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->executorServiceSupplier:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 115
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartTimestamp:Ljava/util/Date;

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sentryAndroidOptions"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p3, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p4, "frameMetricsCollector"    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 61
    nop

    .line 65
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    .line 66
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isProfilingEnabled()Z

    move-result v6

    .line 68
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilingTracesHz()I

    move-result v7

    new-instance v8, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v8, p2}, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p3    # "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    .end local p4    # "frameMetricsCollector":Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    .local v1, "context":Landroid/content/Context;
    .local v2, "buildInfoProvider":Lio/sentry/android/core/BuildInfoProvider;
    .local v3, "frameMetricsCollector":Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    invoke-direct/range {v0 .. v8}, Lio/sentry/android/core/AndroidTransactionProfiler;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 70
    return-void
.end method

.method private init()V
    .locals 10

    .line 120
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isInitialized:Z

    .line 125
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isProfilingEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Profiling is disabled in options."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesDirPath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Disabling profiling because no profiling traces dir path is defined in options."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return-void

    .line 135
    :cond_2
    iget v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesHz:I

    if-gtz v0, :cond_3

    .line 136
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    iget v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesHz:I

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 136
    const-string v3, "Disabling profiling because trace rate is set to %d"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    return-void

    .line 143
    :cond_3
    new-instance v4, Lio/sentry/android/core/AndroidProfiler;

    iget-object v5, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesDirPath:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 146
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profilingTracesHz:I

    div-int v6, v0, v1

    iget-object v7, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v8, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->executorServiceSupplier:Lio/sentry/util/LazyEvaluator$Evaluator;

    iget-object v9, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    invoke-direct/range {v4 .. v9}, Lio/sentry/android/core/AndroidProfiler;-><init>(Ljava/lang/String;ILio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/util/LazyEvaluator$Evaluator;Lio/sentry/ILogger;)V

    iput-object v4, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    .line 150
    return-void
.end method

.method static synthetic lambda$new$0(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/ISentryExecutorService;
    .locals 1
    .param p0, "sentryAndroidOptions"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 69
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1(Lio/sentry/ISentryExecutorService;)Lio/sentry/ISentryExecutorService;
    .locals 0
    .param p0, "executorService"    # Lio/sentry/ISentryExecutorService;

    .line 89
    return-object p0
.end method

.method static synthetic lambda$onTransactionFinish$2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 305
    invoke-static {}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->readMaxFrequencies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private onFirstStart()Z
    .locals 3

    .line 185
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    return v1

    .line 189
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    invoke-virtual {v0}, Lio/sentry/android/core/AndroidProfiler;->start()Lio/sentry/android/core/AndroidProfiler$ProfileStartData;

    move-result-object v0

    .line 191
    .local v0, "startData":Lio/sentry/android/core/AndroidProfiler$ProfileStartData;
    if-nez v0, :cond_1

    .line 192
    return v1

    .line 194
    :cond_1
    iget-wide v1, v0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->startNanos:J

    iput-wide v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartNanos:J

    .line 195
    iget-wide v1, v0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->startCpuMillis:J

    iput-wide v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    .line 196
    iget-object v1, v0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->startTimestamp:Ljava/util/Date;

    iput-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartTimestamp:Ljava/util/Date;

    .line 197
    const/4 v1, 0x1

    return v1
.end method

.method private onTransactionFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;
    .locals 29
    .param p1, "transactionName"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;
    .param p3, "traceId"    # Ljava/lang/String;
    .param p4, "isTimeout"    # Z
    .param p6, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;",
            "Lio/sentry/SentryOptions;",
            ")",
            "Lio/sentry/ProfilingTraceData;"
        }
    .end annotation

    .line 240
    .local p5, "performanceCollectionData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v2, p6

    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v3, 0x16

    const/4 v4, 0x0

    if-ge v0, v3, :cond_0

    return-object v4

    .line 243
    :cond_0
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    if-nez v0, :cond_1

    .line 244
    return-object v4

    .line 248
    :cond_1
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v3

    .line 249
    .local v3, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    .line 252
    .local v0, "txData":Lio/sentry/ProfilingTransactionData;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/sentry/ProfilingTransactionData;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, p2

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v26, v0

    goto/16 :goto_5

    .line 261
    :cond_2
    iput-object v4, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 264
    .end local v3    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    iget-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v9, "Transaction %s (%s) finished."

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v5, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    .line 267
    const/4 v5, 0x0

    move-object/from16 v9, p5

    invoke-virtual {v3, v5, v9}, Lio/sentry/android/core/AndroidProfiler;->endAndCollect(ZLjava/util/List;)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    move-result-object v3

    .line 269
    .local v3, "endData":Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    iget-object v10, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 272
    if-nez v3, :cond_4

    .line 273
    return-object v4

    .line 276
    :cond_4
    iget-wide v10, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->endNanos:J

    iget-wide v12, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartNanos:J

    sub-long v23, v10, v12

    .line 278
    .local v23, "transactionDurationNanos":J
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v10, "transactionList":Ljava/util/List;, "Ljava/util/List<Lio/sentry/ProfilingTransactionData;>;"
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-wide v11, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->endNanos:J

    .line 281
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v12, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartNanos:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->endCpuMillis:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v14, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 280
    invoke-virtual {v0, v11, v12, v13, v14}, Lio/sentry/ProfilingTransactionData;->notifyFinish(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 283
    const-string v11, "0"

    .line 285
    .local v11, "totalMem":Ljava/lang/String;
    instance-of v12, v2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v12, :cond_5

    .line 286
    iget-object v4, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->context:Landroid/content/Context;

    move-object v12, v2

    check-cast v12, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v4, v12}, Lio/sentry/android/core/DeviceInfoUtil;->getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/android/core/DeviceInfoUtil;->getTotalMemory()Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    .line 287
    :cond_5
    nop

    :goto_0
    move-object/from16 v25, v4

    .line 288
    .local v25, "memory":Ljava/lang/Long;
    if-eqz v25, :cond_6

    .line 289
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v17, v11

    goto :goto_1

    .line 288
    :cond_6
    move-object/from16 v17, v11

    .line 291
    .end local v11    # "totalMem":Ljava/lang/String;
    .local v17, "totalMem":Ljava/lang/String;
    :goto_1
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 295
    .local v4, "abis":[Ljava/lang/String;
    new-instance v2, Lio/sentry/ProfilingTraceData;

    iget-object v11, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->traceFile:Ljava/io/File;

    iget-object v12, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartTimestamp:Ljava/util/Date;

    .line 302
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    iget-object v13, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 303
    invoke-virtual {v13}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v13

    .line 304
    if-eqz v4, :cond_7

    array-length v14, v4

    if-lez v14, :cond_7

    aget-object v5, v4, v5

    goto :goto_2

    :cond_7
    const-string v5, ""

    :goto_2
    move-object v14, v4

    move-object v4, v12

    .end local v4    # "abis":[Ljava/lang/String;
    .local v14, "abis":[Ljava/lang/String;
    new-instance v12, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda1;-><init>()V

    iget-object v15, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 306
    invoke-virtual {v15}, Lio/sentry/android/core/BuildInfoProvider;->getManufacturer()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v0

    .end local v0    # "txData":Lio/sentry/ProfilingTransactionData;
    .local v26, "txData":Lio/sentry/ProfilingTransactionData;
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 307
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getModel()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 308
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getVersionRelease()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 309
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->isEmulator()Ljava/lang/Boolean;

    move-result-object v0

    .line 311
    move-object/from16 v19, v11

    move-object v11, v5

    move-object v5, v10

    move v10, v13

    move-object v13, v15

    move-object/from16 v15, v18

    .end local v10    # "transactionList":Ljava/util/List;, "Ljava/util/List<Lio/sentry/ProfilingTransactionData;>;"
    .local v5, "transactionList":Ljava/util/List;, "Ljava/util/List<Lio/sentry/ProfilingTransactionData;>;"
    invoke-virtual/range {p6 .. p6}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v18

    .line 312
    move-object/from16 v20, v19

    invoke-virtual/range {p6 .. p6}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v19

    .line 313
    move-object/from16 v21, v20

    invoke-virtual/range {p6 .. p6}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v20

    .line 314
    move-object/from16 v22, v0

    iget-boolean v0, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->didTimeout:Z

    if-nez v0, :cond_9

    if-eqz p4, :cond_8

    goto :goto_3

    .line 316
    :cond_8
    const-string v0, "normal"

    goto :goto_4

    .line 315
    :cond_9
    :goto_3
    const-string v0, "timeout"

    .line 316
    :goto_4
    move-object/from16 v27, v0

    iget-object v0, v3, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->measurementsMap:Ljava/util/Map;

    move-object/from16 v28, v22

    move-object/from16 v22, v0

    move-object v0, v3

    move-object/from16 v3, v21

    move-object/from16 v21, v27

    move-object/from16 v27, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v28

    .end local v3    # "endData":Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    .end local v14    # "abis":[Ljava/lang/String;
    .local v0, "endData":Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    .local v27, "abis":[Ljava/lang/String;
    invoke-direct/range {v2 .. v22}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 295
    return-object v2

    .line 252
    .end local v5    # "transactionList":Ljava/util/List;, "Ljava/util/List<Lio/sentry/ProfilingTransactionData;>;"
    .end local v17    # "totalMem":Ljava/lang/String;
    .end local v23    # "transactionDurationNanos":J
    .end local v25    # "memory":Ljava/lang/Long;
    .end local v26    # "txData":Lio/sentry/ProfilingTransactionData;
    .end local v27    # "abis":[Ljava/lang/String;
    .local v0, "txData":Lio/sentry/ProfilingTransactionData;
    .local v3, "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_a
    move-object/from16 v26, v0

    .line 254
    .end local v0    # "txData":Lio/sentry/ProfilingTransactionData;
    .restart local v26    # "txData":Lio/sentry/ProfilingTransactionData;
    :goto_5
    :try_start_1
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "Transaction %s (%s) finished, but was not currently being profiled. Skipping"

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v2, v5, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    nop

    .line 262
    if-eqz v3, :cond_b

    invoke-interface {v3}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 259
    :cond_b
    return-object v4

    .line 248
    .end local v26    # "txData":Lio/sentry/ProfilingTransactionData;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_c

    :try_start_2
    invoke-interface {v3}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_6
    throw v2
.end method


# virtual methods
.method public bindTransaction(Lio/sentry/ITransaction;)V
    .locals 5
    .param p1, "transaction"    # Lio/sentry/ITransaction;

    .line 203
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    if-nez v0, :cond_2

    .line 204
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 206
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Lio/sentry/ProfilingTransactionData;

    iget-wide v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartNanos:J

    .line 208
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lio/sentry/ProfilingTransactionData;-><init>(Lio/sentry/ITransaction;Ljava/lang/Long;Ljava/lang/Long;)V

    iput-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 212
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_1
    return-void
.end method

.method public close()V
    .locals 8

    .line 327
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    .line 329
    .local v0, "txData":Lio/sentry/ProfilingTransactionData;
    if-eqz v0, :cond_0

    .line 330
    nop

    .line 331
    invoke-virtual {v0}, Lio/sentry/ProfilingTransactionData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {v0}, Lio/sentry/ProfilingTransactionData;->getId()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {v0}, Lio/sentry/ProfilingTransactionData;->getTraceId()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/ScopesAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v7

    .line 330
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lio/sentry/android/core/AndroidTransactionProfiler;->onTransactionFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;

    goto :goto_0

    .line 329
    :cond_0
    move-object v1, p0

    .line 340
    :goto_0
    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 343
    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    if-eqz v2, :cond_1

    .line 344
    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    invoke-virtual {v2}, Lio/sentry/android/core/AndroidProfiler;->close()V

    .line 346
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onTransactionFinish(Lio/sentry/ITransaction;Ljava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;
    .locals 7
    .param p1, "transaction"    # Lio/sentry/ITransaction;
    .param p3, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;",
            "Lio/sentry/SentryOptions;",
            ")",
            "Lio/sentry/ProfilingTraceData;"
        }
    .end annotation

    .line 219
    .local p2, "performanceCollectionData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    nop

    .line 220
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    .end local p2    # "performanceCollectionData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    .end local p3    # "options":Lio/sentry/SentryOptions;
    .local v5, "performanceCollectionData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    .local v6, "options":Lio/sentry/SentryOptions;
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/AndroidTransactionProfiler;->onTransactionFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;

    move-result-object p2

    return-object p2
.end method

.method public start()V
    .locals 4

    .line 156
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 161
    invoke-direct {p0}, Lio/sentry/android/core/AndroidTransactionProfiler;->init()V

    .line 163
    invoke-direct {p0}, Lio/sentry/android/core/AndroidTransactionProfiler;->onFirstStart()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Profiler started."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 167
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    invoke-virtual {v0}, Lio/sentry/android/core/AndroidProfiler;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "A profile is already running. This profile will be ignored."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 171
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 173
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 176
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 171
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1

    .line 180
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_5
    :goto_1
    return-void
.end method
