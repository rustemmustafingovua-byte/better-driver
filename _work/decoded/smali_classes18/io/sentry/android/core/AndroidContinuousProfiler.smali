.class public Lio/sentry/android/core/AndroidContinuousProfiler;
.super Ljava/lang/Object;
.source "AndroidContinuousProfiler.java"

# interfaces
.implements Lio/sentry/IContinuousProfiler;
.implements Lio/sentry/transport/RateLimiter$IRateLimitObserver;


# static fields
.field private static final MAX_CHUNK_DURATION_MILLIS:J = 0xea60L


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private chunkId:Lio/sentry/protocol/SentryId;

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

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isInitialized:Z

.field private isRunning:Z

.field private isSampled:Z

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final logger:Lio/sentry/ILogger;

.field private final payloadBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/ProfileChunk$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final payloadLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private performanceCollector:Lio/sentry/CompositePerformanceCollector;

.field private profiler:Lio/sentry/android/core/AndroidProfiler;

.field private profilerId:Lio/sentry/protocol/SentryId;

.field private final profilingTracesDirPath:Ljava/lang/String;

.field private final profilingTracesHz:I

.field private rootSpanCounter:I

.field private scopes:Lio/sentry/IScopes;

.field private volatile shouldSample:Z

.field private shouldStop:Z

.field private startProfileChunkTimestamp:Lio/sentry/SentryDate;

.field private stopFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ILio/sentry/util/LazyEvaluator$Evaluator;)V
    .locals 2
    .param p1, "buildInfoProvider"    # Lio/sentry/android/core/BuildInfoProvider;
    .param p2, "frameMetricsCollector"    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .param p4, "profilingTracesDirPath"    # Ljava/lang/String;
    .param p5, "profilingTracesHz"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/core/BuildInfoProvider;",
            "Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;",
            "Lio/sentry/ILogger;",
            "Ljava/lang/String;",
            "I",
            "Lio/sentry/util/LazyEvaluator$Evaluator<",
            "Lio/sentry/ISentryExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p6, "executorServiceSupplier":Lio/sentry/util/LazyEvaluator$Evaluator;, "Lio/sentry/util/LazyEvaluator$Evaluator<Lio/sentry/ISentryExecutorService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isInitialized:Z

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    .line 60
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning:Z

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadBuilders:Ljava/util/List;

    .line 65
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 66
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 67
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v1, Lio/sentry/SentryNanotimeDate;

    invoke-direct {v1}, Lio/sentry/SentryNanotimeDate;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldSample:Z

    .line 70
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z

    .line 71
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isSampled:Z

    .line 72
    iput v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    .line 74
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 75
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 84
    iput-object p3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    .line 85
    iput-object p2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 86
    iput-object p1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 87
    iput-object p4, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesDirPath:Ljava/lang/String;

    .line 88
    iput p5, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesHz:I

    .line 89
    iput-object p6, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->executorServiceSupplier:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 90
    return-void
.end method

.method private init()V
    .locals 10

    .line 94
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isInitialized:Z

    .line 98
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesDirPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Disabling profiling because no profiling traces dir path is defined in options."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    return-void

    .line 104
    :cond_1
    iget v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesHz:I

    if-gtz v0, :cond_2

    .line 105
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    iget v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesHz:I

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 105
    const-string v3, "Disabling profiling because trace rate is set to %d"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-void

    .line 112
    :cond_2
    new-instance v4, Lio/sentry/android/core/AndroidProfiler;

    iget-object v5, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesDirPath:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 115
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilingTracesHz:I

    div-int v6, v0, v1

    iget-object v7, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    const/4 v8, 0x0

    iget-object v9, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    invoke-direct/range {v4 .. v9}, Lio/sentry/android/core/AndroidProfiler;-><init>(Ljava/lang/String;ILio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/util/LazyEvaluator$Evaluator;Lio/sentry/ILogger;)V

    iput-object v4, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    .line 119
    return-void
.end method

.method private initScopes()V
    .locals 2

    .line 162
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 163
    :cond_0
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 164
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    .line 165
    nop

    .line 166
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 167
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    .line 168
    .local v0, "rateLimiter":Lio/sentry/transport/RateLimiter;
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0, p0}, Lio/sentry/transport/RateLimiter;->addRateLimitObserver(Lio/sentry/transport/RateLimiter$IRateLimitObserver;)V

    .line 172
    .end local v0    # "rateLimiter":Lio/sentry/transport/RateLimiter;
    :cond_1
    return-void
.end method

.method private sendChunks(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 4
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 376
    nop

    .line 377
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/AndroidContinuousProfiler;Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V

    .line 378
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Failed to send profile chunks."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private start()V
    .locals 6

    .line 175
    invoke-direct {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->initScopes()V

    .line 179
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->init()V

    .line 184
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    if-nez v0, :cond_1

    .line 185
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_5

    .line 189
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v0

    .line 190
    .local v0, "rateLimiter":Lio/sentry/transport/RateLimiter;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v2, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 191
    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    .line 192
    invoke-virtual {v0, v2}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    :cond_2
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "SDK is rate limited. Stopping profiler."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-direct {p0, v1}, Lio/sentry/android/core/AndroidContinuousProfiler;->stop(Z)V

    .line 196
    return-void

    .line 201
    :cond_3
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    invoke-interface {v2}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v2

    sget-object v3, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-ne v2, v3, :cond_4

    .line 202
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Device is offline. Stopping profiler."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-direct {p0, v1}, Lio/sentry/android/core/AndroidContinuousProfiler;->stop(Z)V

    .line 205
    return-void

    .line 207
    :cond_4
    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    invoke-interface {v1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    .line 208
    .end local v0    # "rateLimiter":Lio/sentry/transport/RateLimiter;
    goto :goto_0

    .line 209
    :cond_5
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    invoke-direct {v0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    .line 211
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    invoke-virtual {v0}, Lio/sentry/android/core/AndroidProfiler;->start()Lio/sentry/android/core/AndroidProfiler$ProfileStartData;

    move-result-object v0

    .line 213
    .local v0, "startData":Lio/sentry/android/core/AndroidProfiler$ProfileStartData;
    if-nez v0, :cond_6

    .line 214
    return-void

    .line 217
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning:Z

    .line 219
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    sget-object v3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v2, v3}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 220
    new-instance v2, Lio/sentry/protocol/SentryId;

    invoke-direct {v2}, Lio/sentry/protocol/SentryId;-><init>()V

    iput-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 223
    :cond_7
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    sget-object v3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v2, v3}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 224
    new-instance v2, Lio/sentry/protocol/SentryId;

    invoke-direct {v2}, Lio/sentry/protocol/SentryId;-><init>()V

    iput-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 227
    :cond_8
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    if-eqz v2, :cond_9

    .line 228
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    iget-object v3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v3}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/sentry/CompositePerformanceCollector;->start(Ljava/lang/String;)V

    .line 232
    :cond_9
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->executorServiceSupplier:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 233
    invoke-interface {v2}, Lio/sentry/util/LazyEvaluator$Evaluator;->evaluate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ISentryExecutorService;

    new-instance v3, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lio/sentry/android/core/AndroidContinuousProfiler$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/AndroidContinuousProfiler;)V

    const-wide/32 v4, 0xea60

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->stopFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_1

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to schedule profiling chunk finish. Did you call Sentry.close()?"

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z

    .line 241
    .end local v2    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_1
    return-void
.end method

.method private stop(Z)V
    .locals 13
    .param p1, "restartProfiler"    # Z

    .line 268
    invoke-direct {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->initScopes()V

    .line 269
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 270
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->stopFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->stopFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 274
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning:Z

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 284
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x16

    if-ge v0, v2, :cond_3

    .line 333
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 285
    :cond_2
    return-void

    .line 288
    :cond_3
    const/4 v0, 0x0

    .line 289
    .local v0, "performanceCollectionData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    :try_start_1
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    if-eqz v2, :cond_4

    .line 290
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    iget-object v3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v3}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/sentry/CompositePerformanceCollector;->stop(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 289
    :cond_4
    move-object v2, v0

    .line 293
    .end local v0    # "performanceCollectionData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    .local v2, "performanceCollectionData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profiler:Lio/sentry/android/core/AndroidProfiler;

    .line 294
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lio/sentry/android/core/AndroidProfiler;->endAndCollect(ZLjava/util/List;)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    move-result-object v0

    move-object v4, v0

    .line 297
    .local v4, "endData":Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    if-nez v4, :cond_5

    .line 298
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "An error occurred while collecting a profile chunk, and it won\'t be sent."

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 305
    :cond_5
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v5, v0

    .line 306
    .local v5, "ignored2":Lio/sentry/ISentryLifecycleToken;
    :try_start_2
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadBuilders:Ljava/util/List;

    new-instance v6, Lio/sentry/ProfileChunk$Builder;

    iget-object v7, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    iget-object v8, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    iget-object v9, v4, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->measurementsMap:Ljava/util/Map;

    iget-object v10, v4, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->traceFile:Ljava/io/File;

    iget-object v11, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    const-string v12, "android"

    invoke-direct/range {v6 .. v12}, Lio/sentry/ProfileChunk$Builder;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/util/Map;Ljava/io/File;Lio/sentry/SentryDate;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    if-eqz v5, :cond_6

    :try_start_3
    invoke-interface {v5}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 317
    .end local v5    # "ignored2":Lio/sentry/ISentryLifecycleToken;
    :cond_6
    :goto_1
    iput-boolean v3, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning:Z

    .line 319
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 321
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_7

    .line 322
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    iget-object v5, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->scopes:Lio/sentry/IScopes;

    invoke-interface {v5}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lio/sentry/android/core/AndroidContinuousProfiler;->sendChunks(Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V

    .line 325
    :cond_7
    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z

    if-nez v0, :cond_8

    .line 326
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "Profile chunk finished. Starting a new one."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-direct {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->start()V

    goto :goto_2

    .line 330
    :cond_8
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 331
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "Profile chunk finished."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 333
    .end local v2    # "performanceCollectionData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    .end local v4    # "endData":Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    :goto_2
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 334
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_9
    return-void

    .line 305
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local v2    # "performanceCollectionData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    .restart local v4    # "endData":Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    .restart local v5    # "ignored2":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v5, :cond_a

    :try_start_4
    invoke-interface {v5}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .end local p1    # "restartProfiler":Z
    :cond_a
    :goto_3
    throw v3

    .line 277
    .end local v2    # "performanceCollectionData":Ljava/util/List;, "Ljava/util/List<Lio/sentry/PerformanceCollectionData;>;"
    .end local v4    # "endData":Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    .end local v5    # "ignored2":Lio/sentry/ISentryLifecycleToken;
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local p1    # "restartProfiler":Z
    :cond_b
    :goto_4
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 278
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 333
    if-eqz v1, :cond_c

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 279
    :cond_c
    return-void

    .line 269
    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_d

    :try_start_6
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_5
    throw v2
.end method


# virtual methods
.method public close(Z)V
    .locals 3
    .param p1, "isTerminating"    # Z

    .line 342
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 343
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    .line 344
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z

    .line 345
    if-eqz p1, :cond_0

    .line 346
    invoke-direct {p0, v1}, Lio/sentry/android/core/AndroidContinuousProfiler;->stop(Z)V

    .line 347
    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 350
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 342
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public getChunkId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 359
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getProfileRecordingState(Lio/sentry/protocol/SentryId;Lio/sentry/SentryDate;Lio/sentry/SentryDate;)Lio/sentry/profiling/ProfileRecordingState;
    .locals 1
    .param p1, "profilerId"    # Lio/sentry/protocol/SentryId;
    .param p2, "startTime"    # Lio/sentry/SentryDate;
    .param p3, "endTime"    # Lio/sentry/SentryDate;

    .line 371
    sget-object v0, Lio/sentry/profiling/ProfileRecordingState;->UNKNOWN:Lio/sentry/profiling/ProfileRecordingState;

    return-object v0
.end method

.method public getProfilerId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 354
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getRootSpanCounter()I
    .locals 1

    .line 413
    iget v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    return v0
.end method

.method getStopFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->stopFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning:Z

    return v0
.end method

.method synthetic lambda$sendChunks$1$io-sentry-android-core-AndroidContinuousProfiler(Lio/sentry/SentryOptions;Lio/sentry/IScopes;)V
    .locals 5
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "scopes"    # Lio/sentry/IScopes;

    .line 381
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    return-void

    .line 384
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .local v0, "payloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/sentry/ProfileChunk;>;"
    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 386
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/ProfileChunk$Builder;

    .line 387
    .local v3, "builder":Lio/sentry/ProfileChunk$Builder;
    invoke-virtual {v3, p1}, Lio/sentry/ProfileChunk$Builder;->build(Lio/sentry/SentryOptions;)Lio/sentry/ProfileChunk;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    nop

    .end local v3    # "builder":Lio/sentry/ProfileChunk$Builder;
    goto :goto_0

    .line 389
    :cond_1
    iget-object v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->payloadBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 391
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ProfileChunk;

    .line 392
    .local v2, "payload":Lio/sentry/ProfileChunk;
    invoke-interface {p2, v2}, Lio/sentry/IScopes;->captureProfileChunk(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;

    .line 393
    .end local v2    # "payload":Lio/sentry/ProfileChunk;
    goto :goto_1

    .line 394
    :cond_3
    return-void

    .line 385
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v2
.end method

.method synthetic lambda$start$0$io-sentry-android-core-AndroidContinuousProfiler()V
    .locals 1

    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/sentry/android/core/AndroidContinuousProfiler;->stop(Z)V

    return-void
.end method

.method public onRateLimitChanged(Lio/sentry/transport/RateLimiter;)V
    .locals 5
    .param p1, "rateLimiter"    # Lio/sentry/transport/RateLimiter;

    .line 419
    sget-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    .line 420
    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "SDK is rate limited. Stopping profiler."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    invoke-direct {p0, v3}, Lio/sentry/android/core/AndroidContinuousProfiler;->stop(Z)V

    .line 426
    :cond_1
    return-void
.end method

.method public reevaluateSampling()V
    .locals 1

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldSample:Z

    .line 338
    return-void
.end method

.method public startProfiler(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V
    .locals 5
    .param p1, "profileLifecycle"    # Lio/sentry/ProfileLifecycle;
    .param p2, "tracesSampler"    # Lio/sentry/TracesSampler;

    .line 125
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 126
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldSample:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 127
    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/util/Random;->nextDouble()D

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lio/sentry/TracesSampler;->sampleSessionProfile(D)Z

    move-result v1

    iput-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isSampled:Z

    .line 128
    iput-boolean v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldSample:Z

    .line 130
    :cond_0
    iget-boolean v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->isSampled:Z

    if-nez v1, :cond_2

    .line 131
    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Profiler was not started due to sampling decision."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 132
    :cond_1
    return-void

    .line 134
    :cond_2
    :try_start_1
    sget-object v1, Lio/sentry/android/core/AndroidContinuousProfiler$1;->$SwitchMap$io$sentry$ProfileLifecycle:[I

    invoke-virtual {p1}, Lio/sentry/ProfileLifecycle;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Profiler is already running."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 150
    :cond_3
    return-void

    .line 139
    :pswitch_1
    :try_start_2
    iget v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    if-gez v1, :cond_4

    .line 140
    iput v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    .line 142
    :cond_4
    iget v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    .line 143
    nop

    .line 154
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->isRunning()Z

    move-result v1

    if-nez v1, :cond_6

    .line 155
    iget-object v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Started Profiler."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-direct {p0}, Lio/sentry/android/core/AndroidContinuousProfiler;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 159
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_7
    return-void

    .line 125
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_8

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopProfiler(Lio/sentry/ProfileLifecycle;)V
    .locals 3
    .param p1, "profileLifecycle"    # Lio/sentry/ProfileLifecycle;

    .line 245
    iget-object v0, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 246
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v1, Lio/sentry/android/core/AndroidContinuousProfiler$1;->$SwitchMap$io$sentry$ProfileLifecycle:[I

    invoke-virtual {p1}, Lio/sentry/ProfileLifecycle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 261
    :pswitch_0
    iput-boolean v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z

    goto :goto_0

    .line 248
    :pswitch_1
    iget v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    sub-int/2addr v1, v2

    iput v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    .line 250
    iget v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_1

    .line 264
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 251
    :cond_0
    return-void

    .line 255
    :cond_1
    :try_start_1
    iget v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    if-gez v1, :cond_2

    .line 256
    const/4 v1, 0x0

    iput v1, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->rootSpanCounter:I

    .line 258
    :cond_2
    iput-boolean v2, p0, Lio/sentry/android/core/AndroidContinuousProfiler;->shouldStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    nop

    .line 264
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 265
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    return-void

    .line 245
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
