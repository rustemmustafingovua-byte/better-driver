.class public Lio/sentry/android/core/PerfettoContinuousProfiler;
.super Ljava/lang/Object;
.source "PerfettoContinuousProfiler.java"

# interfaces
.implements Lio/sentry/IContinuousProfiler;
.implements Lio/sentry/transport/RateLimiter$IRateLimitObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;
    }
.end annotation


# static fields
.field private static final EXECUTOR_THREAD_NAME_PREFIX:Ljava/lang/String; = "SentryExecutorServiceThreadFactory"

.field private static final MAX_CHUNK_DURATION_MILLIS:J = 0xea60L

.field static final MAX_CHUNK_HISTORY_SIZE:I = 0xa


# instance fields
.field private activeTraceCount:I

.field private final chunkHistory:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/android/core/internal/profiling/ChunkRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkHistoryLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private chunkId:Lio/sentry/protocol/SentryId;

.field private final chunkMeasurements:Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

.field private final executorServiceSupplier:Lio/sentry/util/LazyEvaluator$Evaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator$Evaluator<",
            "Lio/sentry/ISentryExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isRunning:Z

.field private isSampled:Z

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final logger:Lio/sentry/ILogger;

.field private perfettoProfiler:Lio/sentry/android/core/PerfettoProfiler;

.field private final perfettoProfilerFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lio/sentry/android/core/PerfettoProfiler;",
            ">;"
        }
    .end annotation
.end field

.field private performanceCollector:Lio/sentry/CompositePerformanceCollector;

.field private profilerId:Lio/sentry/protocol/SentryId;

.field private scopes:Lio/sentry/IScopes;

.field private shouldSample:Z

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
.method public constructor <init>(Lio/sentry/ILogger;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/util/LazyEvaluator$Evaluator;Ljava/util/function/Supplier;)V
    .locals 2
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "frameMetricsCollector"    # Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ILogger;",
            "Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;",
            "Lio/sentry/util/LazyEvaluator$Evaluator<",
            "Lio/sentry/ISentryExecutorService;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lio/sentry/android/core/PerfettoProfiler;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p3, "executorServiceSupplier":Lio/sentry/util/LazyEvaluator$Evaluator;, "Lio/sentry/util/LazyEvaluator$Evaluator<Lio/sentry/ISentryExecutorService;>;"
    .local p4, "perfettoProfilerFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lio/sentry/android/core/PerfettoProfiler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->perfettoProfiler:Lio/sentry/android/core/PerfettoProfiler;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isRunning:Z

    .line 104
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 105
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 106
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    new-instance v1, Lio/sentry/SentryNanotimeDate;

    invoke-direct {v1}, Lio/sentry/SentryNanotimeDate;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldSample:Z

    .line 109
    iput-boolean v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldStop:Z

    .line 110
    iput-boolean v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isSampled:Z

    .line 111
    iput v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->activeTraceCount:I

    .line 113
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 115
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistory:Ljava/util/ArrayDeque;

    .line 118
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistoryLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 125
    iput-object p1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    .line 126
    new-instance v0, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    invoke-direct {v0, p2}, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;-><init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkMeasurements:Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    .line 127
    iput-object p3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->executorServiceSupplier:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 128
    iput-object p4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->perfettoProfilerFactory:Ljava/util/function/Supplier;

    .line 129
    return-void
.end method

.method private addChunkRecord(Lio/sentry/android/core/internal/profiling/ChunkRecord;)V
    .locals 3
    .param p1, "chunk"    # Lio/sentry/android/core/internal/profiling/ChunkRecord;

    .line 295
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistoryLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 296
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 297
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 299
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 301
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 295
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

.method private endChunkRecord(Lio/sentry/SentryDate;)Lio/sentry/android/core/internal/profiling/ChunkRecord;
    .locals 3
    .param p1, "endTimestamp"    # Lio/sentry/SentryDate;

    .line 314
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistoryLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 315
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/internal/profiling/ChunkRecord;

    .line 316
    .local v1, "chunk":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->hasEnded()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v1, p1}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->setEndTimestamp(Lio/sentry/SentryDate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    nop

    .line 321
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 320
    :cond_1
    return-object v1

    .line 317
    :cond_2
    :goto_0
    nop

    .line 321
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 317
    :cond_3
    const/4 v2, 0x0

    return-object v2

    .line 314
    .end local v1    # "chunk":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method private markLastChunkNotRecordedIfUnknown()V
    .locals 4

    .line 286
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistoryLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 287
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/internal/profiling/ChunkRecord;

    .line 288
    .local v1, "lastChunk":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->getRecordingState()Lio/sentry/profiling/ProfileRecordingState;

    move-result-object v2

    sget-object v3, Lio/sentry/profiling/ProfileRecordingState;->UNKNOWN:Lio/sentry/profiling/ProfileRecordingState;

    if-ne v2, v3, :cond_0

    .line 289
    sget-object v2, Lio/sentry/profiling/ProfileRecordingState;->NOT_RECORDED:Lio/sentry/profiling/ProfileRecordingState;

    invoke-virtual {v1, v2}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->setRecordingState(Lio/sentry/profiling/ProfileRecordingState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v1    # "lastChunk":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 292
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 286
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

.method private onChunkCollected(Ljava/io/File;Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Lio/sentry/android/core/internal/profiling/ChunkRecord;Ljava/util/Map;Lio/sentry/SentryDate;ZLio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 13
    .param p1, "traceFile"    # Ljava/io/File;
    .param p2, "chunkProfilerId"    # Lio/sentry/protocol/SentryId;
    .param p3, "chunkChunkId"    # Lio/sentry/protocol/SentryId;
    .param p4, "chunkRecord"    # Lio/sentry/android/core/internal/profiling/ChunkRecord;
    .param p6, "chunkTimestamp"    # Lio/sentry/SentryDate;
    .param p7, "shouldRestart"    # Z
    .param p8, "scopes"    # Lio/sentry/IScopes;
    .param p9, "options"    # Lio/sentry/SentryOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/android/core/internal/profiling/ChunkRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;",
            "Lio/sentry/SentryDate;",
            "Z",
            "Lio/sentry/IScopes;",
            "Lio/sentry/SentryOptions;",
            ")V"
        }
    .end annotation

    .line 488
    .local p5, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    move-object/from16 v1, p4

    if-eqz v1, :cond_1

    .line 490
    nop

    .line 491
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    sget-object v0, Lio/sentry/profiling/ProfileRecordingState;->RECORDED:Lio/sentry/profiling/ProfileRecordingState;

    goto :goto_0

    .line 493
    :cond_0
    sget-object v0, Lio/sentry/profiling/ProfileRecordingState;->NOT_RECORDED:Lio/sentry/profiling/ProfileRecordingState;

    .line 490
    :goto_0
    invoke-virtual {v1, v0}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->setRecordingState(Lio/sentry/profiling/ProfileRecordingState;)V

    .line 496
    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 497
    iget-object v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "An error occurred while collecting a profile chunk, and it won\'t be sent."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    goto :goto_1

    .line 501
    :cond_2
    new-instance v6, Lio/sentry/ProfileChunk$Builder;

    const-string v12, "android"

    move-object v10, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v11, p6

    invoke-direct/range {v6 .. v12}, Lio/sentry/ProfileChunk$Builder;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/util/Map;Ljava/io/File;Lio/sentry/SentryDate;Ljava/lang/String;)V

    .line 509
    .local v6, "builder":Lio/sentry/ProfileChunk$Builder;
    const-string v2, "application/x-perfetto-trace"

    invoke-virtual {v6, v2}, Lio/sentry/ProfileChunk$Builder;->setContentType(Ljava/lang/String;)Lio/sentry/ProfileChunk$Builder;

    .line 510
    move-object/from16 v2, p8

    move-object/from16 v3, p9

    invoke-direct {p0, v6, v2, v3}, Lio/sentry/android/core/PerfettoContinuousProfiler;->sendChunk(Lio/sentry/ProfileChunk$Builder;Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V

    .line 513
    .end local v6    # "builder":Lio/sentry/ProfileChunk$Builder;
    :goto_1
    if-eqz p7, :cond_8

    .line 514
    iget-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v4}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v4

    .line 517
    .local v4, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v5, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isRunning:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldStop:Z

    if-eqz v5, :cond_3

    goto :goto_2

    .line 523
    :cond_3
    iget-object v5, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v7, "Profile chunk finished. Starting a new one."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-direct {p0}, Lio/sentry/android/core/PerfettoContinuousProfiler;->startInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 514
    .end local v4    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_4
    goto :goto_4

    .line 518
    .restart local v4    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_5
    :goto_2
    :try_start_1
    iget-object v5, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v7, "Profile chunk finished, but profiler was already restarted, closed or stopped. Skipping."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    if-eqz v4, :cond_6

    invoke-interface {v4}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 521
    :cond_6
    return-void

    .line 514
    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_7

    :try_start_2
    invoke-interface {v4}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v5

    .line 527
    .end local v4    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_8
    iget-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v6, "Profile chunk finished."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    :goto_4
    return-void
.end method

.method private removeChunkRecord(Lio/sentry/android/core/internal/profiling/ChunkRecord;)V
    .locals 3
    .param p1, "chunk"    # Lio/sentry/android/core/internal/profiling/ChunkRecord;

    .line 304
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistoryLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 305
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 307
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 304
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
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
.end method

.method private resolveScopes()Lio/sentry/IScopes;
    .locals 5

    .line 332
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->scopes:Lio/sentry/IScopes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->scopes:Lio/sentry/IScopes;

    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->scopes:Lio/sentry/IScopes;

    return-object v0

    .line 335
    :cond_0
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    .line 336
    .local v0, "currentScopes":Lio/sentry/IScopes;
    invoke-static {}, Lio/sentry/NoOpScopes;->getInstance()Lio/sentry/NoOpScopes;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 337
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "PerfettoContinuousProfiler: scopes not available. This is unexpected."

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    return-object v0

    .line 342
    :cond_1
    iput-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->scopes:Lio/sentry/IScopes;

    .line 343
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    .line 344
    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v1

    .line 345
    .local v1, "rateLimiter":Lio/sentry/transport/RateLimiter;
    if-eqz v1, :cond_2

    .line 346
    invoke-virtual {v1, p0}, Lio/sentry/transport/RateLimiter;->addRateLimitObserver(Lio/sentry/transport/RateLimiter$IRateLimitObserver;)V

    .line 348
    :cond_2
    iget-object v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->scopes:Lio/sentry/IScopes;

    return-object v2
.end method

.method private sendChunk(Lio/sentry/ProfileChunk$Builder;Lio/sentry/IScopes;Lio/sentry/SentryOptions;)V
    .locals 5
    .param p1, "builder"    # Lio/sentry/ProfileChunk$Builder;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .param p3, "options"    # Lio/sentry/SentryOptions;

    .line 541
    new-instance v0, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1, p3}, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/PerfettoContinuousProfiler;Lio/sentry/IScopes;Lio/sentry/ProfileChunk$Builder;Lio/sentry/SentryOptions;)V

    .line 551
    .local v0, "task":Ljava/lang/Runnable;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SentryExecutorServiceThreadFactory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->executorServiceSupplier:Lio/sentry/util/LazyEvaluator$Evaluator;

    invoke-interface {v1}, Lio/sentry/util/LazyEvaluator$Evaluator;->evaluate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISentryExecutorService;

    invoke-interface {v1, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :goto_0
    goto :goto_1

    .line 556
    :catchall_0
    move-exception v1

    .line 557
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Failed to send profile chunk."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private startInternal()V
    .locals 9

    .line 353
    invoke-direct {p0}, Lio/sentry/android/core/PerfettoContinuousProfiler;->resolveScopes()Lio/sentry/IScopes;

    move-result-object v0

    .line 355
    .local v0, "scopes":Lio/sentry/IScopes;
    invoke-interface {v0}, Lio/sentry/IScopes;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v1

    .line 356
    .local v1, "rateLimiter":Lio/sentry/transport/RateLimiter;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v3, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 357
    invoke-virtual {v1, v3}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    .line 358
    invoke-virtual {v1, v3}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    :cond_0
    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "SDK is rate limited. Stopping profiler."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-direct {p0, v2}, Lio/sentry/android/core/PerfettoContinuousProfiler;->stopInternal(Z)V

    .line 361
    return-void

    .line 365
    :cond_1
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v3

    invoke-interface {v3}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v3

    sget-object v4, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-ne v3, v4, :cond_2

    .line 366
    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Device is offline. Stopping profiler."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-direct {p0, v2}, Lio/sentry/android/core/PerfettoContinuousProfiler;->stopInternal(Z)V

    .line 368
    return-void

    .line 370
    :cond_2
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v3

    invoke-interface {v3}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v3

    iput-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    .line 372
    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->perfettoProfilerFactory:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/android/core/PerfettoProfiler;

    iput-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->perfettoProfiler:Lio/sentry/android/core/PerfettoProfiler;

    .line 373
    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->perfettoProfiler:Lio/sentry/android/core/PerfettoProfiler;

    if-nez v3, :cond_3

    .line 374
    return-void

    .line 376
    :cond_3
    sget-object v3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iget-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v3, v4}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 377
    new-instance v3, Lio/sentry/protocol/SentryId;

    invoke-direct {v3}, Lio/sentry/protocol/SentryId;-><init>()V

    iput-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 382
    :cond_4
    new-instance v3, Lio/sentry/android/core/internal/profiling/ChunkRecord;

    iget-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    iget-object v5, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    invoke-direct {v3, v4, v5}, Lio/sentry/android/core/internal/profiling/ChunkRecord;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SentryDate;)V

    .line 384
    .local v3, "chunkRecord":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    invoke-direct {p0, v3}, Lio/sentry/android/core/PerfettoContinuousProfiler;->addChunkRecord(Lio/sentry/android/core/internal/profiling/ChunkRecord;)V

    .line 386
    iget-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->perfettoProfiler:Lio/sentry/android/core/PerfettoProfiler;

    const-wide/32 v5, 0xea60

    invoke-virtual {v4, v3, v5, v6}, Lio/sentry/android/core/PerfettoProfiler;->start(Lio/sentry/android/core/internal/profiling/ChunkRecord;J)Z

    move-result v4

    if-nez v4, :cond_5

    .line 389
    invoke-direct {p0, v3}, Lio/sentry/android/core/PerfettoContinuousProfiler;->removeChunkRecord(Lio/sentry/android/core/internal/profiling/ChunkRecord;)V

    .line 390
    sget-object v4, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 391
    sget-object v4, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 392
    iget-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Failed to start Perfetto profiling."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    return-void

    .line 396
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isRunning:Z

    .line 397
    iget-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    sget-object v7, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v4, v7}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 398
    new-instance v4, Lio/sentry/protocol/SentryId;

    invoke-direct {v4}, Lio/sentry/protocol/SentryId;-><init>()V

    iput-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 401
    :cond_6
    iget-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkMeasurements:Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    iget-object v7, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->performanceCollector:Lio/sentry/CompositePerformanceCollector;

    iget-object v8, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    invoke-virtual {v8}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->start(Lio/sentry/CompositePerformanceCollector;Ljava/lang/String;)V

    .line 404
    :try_start_0
    iget-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->executorServiceSupplier:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 406
    invoke-interface {v4}, Lio/sentry/util/LazyEvaluator$Evaluator;->evaluate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/ISentryExecutorService;

    new-instance v7, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/PerfettoContinuousProfiler;)V

    .line 407
    invoke-interface {v4, v7, v5, v6}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->stopFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    goto :goto_0

    .line 414
    :catch_0
    move-exception v4

    .line 415
    .local v4, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v5, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Failed to schedule profiling chunk finish. Did you call Sentry.close()?"

    invoke-interface {v5, v6, v7, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    iput-boolean v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldStop:Z

    .line 421
    .end local v4    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private stopInternal(Z)V
    .locals 13
    .param p1, "restartProfiler"    # Z

    .line 425
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->perfettoProfiler:Lio/sentry/android/core/PerfettoProfiler;

    .line 427
    .local v0, "currentProfiler":Lio/sentry/android/core/PerfettoProfiler;
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->stopFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->stopFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 432
    :cond_0
    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isRunning:Z

    if-nez v1, :cond_1

    move-object v4, p0

    goto :goto_0

    .line 438
    :cond_1
    invoke-direct {p0}, Lio/sentry/android/core/PerfettoContinuousProfiler;->resolveScopes()Lio/sentry/IScopes;

    move-result-object v11

    .line 439
    .local v11, "scopes":Lio/sentry/IScopes;
    invoke-interface {v11}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v12

    .line 441
    .local v12, "options":Lio/sentry/SentryOptions;
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkMeasurements:Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;

    invoke-virtual {v1}, Lio/sentry/android/core/PerfettoContinuousProfiler$ChunkMeasurementCollector;->stop()Ljava/util/Map;

    move-result-object v8

    .line 444
    .local v8, "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    iget-object v5, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 445
    .local v5, "chunkProfilerId":Lio/sentry/protocol/SentryId;
    iget-object v6, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 446
    .local v6, "chunkChunkId":Lio/sentry/protocol/SentryId;
    iget-object v9, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->startProfileChunkTimestamp:Lio/sentry/SentryDate;

    .line 447
    .local v9, "chunkTimestamp":Lio/sentry/SentryDate;
    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/sentry/android/core/PerfettoContinuousProfiler;->endChunkRecord(Lio/sentry/SentryDate;)Lio/sentry/android/core/internal/profiling/ChunkRecord;

    move-result-object v7

    .line 449
    .local v7, "chunkRecord":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    iput-boolean v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isRunning:Z

    .line 450
    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->perfettoProfiler:Lio/sentry/android/core/PerfettoProfiler;

    .line 451
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 453
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldStop:Z

    if-eqz v1, :cond_3

    .line 454
    :cond_2
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 457
    :cond_3
    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldStop:Z

    if-nez v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    move v10, v2

    .line 462
    .local v10, "shouldRestart":Z
    new-instance v3, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;

    move-object v4, p0

    invoke-direct/range {v3 .. v12}, Lio/sentry/android/core/PerfettoContinuousProfiler$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/PerfettoContinuousProfiler;Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Lio/sentry/android/core/internal/profiling/ChunkRecord;Ljava/util/Map;Lio/sentry/SentryDate;ZLio/sentry/IScopes;Lio/sentry/SentryOptions;)V

    invoke-virtual {v0, v3}, Lio/sentry/android/core/PerfettoProfiler;->endAndCollect(Ljava/util/function/Consumer;)V

    .line 474
    return-void

    .line 432
    .end local v5    # "chunkProfilerId":Lio/sentry/protocol/SentryId;
    .end local v6    # "chunkChunkId":Lio/sentry/protocol/SentryId;
    .end local v7    # "chunkRecord":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    .end local v8    # "measurements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/profilemeasurements/ProfileMeasurement;>;"
    .end local v9    # "chunkTimestamp":Lio/sentry/SentryDate;
    .end local v10    # "shouldRestart":Z
    .end local v11    # "scopes":Lio/sentry/IScopes;
    .end local v12    # "options":Lio/sentry/SentryOptions;
    :cond_5
    move-object v4, p0

    .line 433
    :goto_0
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v1, v4, Lio/sentry/android/core/PerfettoContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;

    .line 434
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v1, v4, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;

    .line 435
    return-void
.end method


# virtual methods
.method public close(Z)V
    .locals 4
    .param p1, "isTerminating"    # Z

    .line 206
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 207
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->activeTraceCount:I

    .line 208
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldStop:Z

    .line 209
    if-eqz p1, :cond_0

    .line 212
    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    invoke-direct {p0, v1}, Lio/sentry/android/core/PerfettoContinuousProfiler;->stopInternal(Z)V

    .line 215
    invoke-direct {p0}, Lio/sentry/android/core/PerfettoContinuousProfiler;->markLastChunkNotRecordedIfUnknown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 218
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 206
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
    .locals 3

    .line 229
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 230
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkId:Lio/sentry/protocol/SentryId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 230
    :cond_0
    return-object v1

    .line 229
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
.end method

.method public getProfileRecordingState(Lio/sentry/protocol/SentryId;Lio/sentry/SentryDate;Lio/sentry/SentryDate;)Lio/sentry/profiling/ProfileRecordingState;
    .locals 7
    .param p1, "profilerId"    # Lio/sentry/protocol/SentryId;
    .param p2, "startTime"    # Lio/sentry/SentryDate;
    .param p3, "endTime"    # Lio/sentry/SentryDate;

    .line 246
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistoryLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 247
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    .line 248
    .local v1, "hasFailedChunk":Z
    const/4 v2, 0x0

    .line 250
    .local v2, "hasUnknownChunk":Z
    :try_start_0
    iget-object v3, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->chunkHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/android/core/internal/profiling/ChunkRecord;

    .line 251
    .local v4, "chunk":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    invoke-virtual {v4}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->getProfilerId()Lio/sentry/protocol/SentryId;

    move-result-object v5

    invoke-virtual {v5, p1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p2, p3}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->overlaps(Lio/sentry/SentryDate;Lio/sentry/SentryDate;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 252
    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v4}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->getRecordingState()Lio/sentry/profiling/ProfileRecordingState;

    move-result-object v5

    .line 255
    .local v5, "state":Lio/sentry/profiling/ProfileRecordingState;
    sget-object v6, Lio/sentry/profiling/ProfileRecordingState;->RECORDED:Lio/sentry/profiling/ProfileRecordingState;

    if-ne v5, v6, :cond_3

    .line 256
    sget-object v3, Lio/sentry/profiling/ProfileRecordingState;->RECORDED:Lio/sentry/profiling/ProfileRecordingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 256
    :cond_2
    return-object v3

    .line 258
    :cond_3
    :try_start_1
    sget-object v6, Lio/sentry/profiling/ProfileRecordingState;->UNKNOWN:Lio/sentry/profiling/ProfileRecordingState;

    if-ne v5, v6, :cond_4

    .line 259
    const/4 v2, 0x1

    goto :goto_1

    .line 261
    :cond_4
    const/4 v1, 0x1

    .line 263
    .end local v4    # "chunk":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    .end local v5    # "state":Lio/sentry/profiling/ProfileRecordingState;
    :goto_1
    goto :goto_0

    .line 266
    :cond_5
    if-eqz v2, :cond_7

    .line 267
    sget-object v3, Lio/sentry/profiling/ProfileRecordingState;->UNKNOWN:Lio/sentry/profiling/ProfileRecordingState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 267
    :cond_6
    return-object v3

    .line 271
    :cond_7
    if-eqz v1, :cond_9

    .line 272
    :try_start_2
    sget-object v3, Lio/sentry/profiling/ProfileRecordingState;->NOT_RECORDED:Lio/sentry/profiling/ProfileRecordingState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 272
    :cond_8
    return-object v3

    .line 277
    :cond_9
    :try_start_3
    sget-object v3, Lio/sentry/profiling/ProfileRecordingState;->UNKNOWN:Lio/sentry/profiling/ProfileRecordingState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    if-eqz v0, :cond_a

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 277
    :cond_a
    return-object v3

    .line 246
    .end local v1    # "hasFailedChunk":Z
    .end local v2    # "hasUnknownChunk":Z
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_b

    :try_start_4
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_2
    throw v1
.end method

.method public getProfilerId()Lio/sentry/protocol/SentryId;
    .locals 3

    .line 222
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 223
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->profilerId:Lio/sentry/protocol/SentryId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 223
    :cond_0
    return-object v1

    .line 222
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
.end method

.method public isRunning()Z
    .locals 3

    .line 236
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 237
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 237
    :cond_0
    return v1

    .line 236
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
.end method

.method synthetic lambda$sendChunk$2$io-sentry-android-core-PerfettoContinuousProfiler(Lio/sentry/IScopes;Lio/sentry/ProfileChunk$Builder;Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "scopes"    # Lio/sentry/IScopes;
    .param p2, "builder"    # Lio/sentry/ProfileChunk$Builder;
    .param p3, "options"    # Lio/sentry/SentryOptions;

    .line 543
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    return-void

    .line 546
    :cond_0
    invoke-virtual {p2, p3}, Lio/sentry/ProfileChunk$Builder;->build(Lio/sentry/SentryOptions;)Lio/sentry/ProfileChunk;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/IScopes;->captureProfileChunk(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;

    .line 547
    return-void
.end method

.method synthetic lambda$startInternal$0$io-sentry-android-core-PerfettoContinuousProfiler()V
    .locals 3

    .line 409
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 410
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lio/sentry/android/core/PerfettoContinuousProfiler;->stopInternal(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 412
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 409
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
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
.end method

.method synthetic lambda$stopInternal$1$io-sentry-android-core-PerfettoContinuousProfiler(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Lio/sentry/android/core/internal/profiling/ChunkRecord;Ljava/util/Map;Lio/sentry/SentryDate;ZLio/sentry/IScopes;Lio/sentry/SentryOptions;Ljava/io/File;)V
    .locals 10
    .param p1, "chunkProfilerId"    # Lio/sentry/protocol/SentryId;
    .param p2, "chunkChunkId"    # Lio/sentry/protocol/SentryId;
    .param p3, "chunkRecord"    # Lio/sentry/android/core/internal/profiling/ChunkRecord;
    .param p4, "measurements"    # Ljava/util/Map;
    .param p5, "chunkTimestamp"    # Lio/sentry/SentryDate;
    .param p6, "shouldRestart"    # Z
    .param p7, "scopes"    # Lio/sentry/IScopes;
    .param p8, "options"    # Lio/sentry/SentryOptions;
    .param p9, "traceFile"    # Ljava/io/File;

    .line 464
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v1, p9

    invoke-direct/range {v0 .. v9}, Lio/sentry/android/core/PerfettoContinuousProfiler;->onChunkCollected(Ljava/io/File;Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Lio/sentry/android/core/internal/profiling/ChunkRecord;Ljava/util/Map;Lio/sentry/SentryDate;ZLio/sentry/IScopes;Lio/sentry/SentryOptions;)V

    return-void
.end method

.method public onRateLimitChanged(Lio/sentry/transport/RateLimiter;)V
    .locals 6
    .param p1, "rateLimiter"    # Lio/sentry/transport/RateLimiter;

    .line 193
    sget-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/sentry/DataCategory;->ProfileChunkUi:Lio/sentry/DataCategory;

    .line 194
    invoke-virtual {p1, v0}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 196
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "SDK is rate limited. Stopping profiler."

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0, v4}, Lio/sentry/android/core/PerfettoContinuousProfiler;->stopInternal(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 202
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 195
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

.method public reevaluateSampling()V
    .locals 3

    .line 532
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 533
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldSample:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 535
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 532
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
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
.end method

.method public startProfiler(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V
    .locals 6
    .param p1, "profileLifecycle"    # Lio/sentry/ProfileLifecycle;
    .param p2, "tracesSampler"    # Lio/sentry/TracesSampler;

    .line 135
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 136
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldSample:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Lio/sentry/util/SentryRandom;->current()Lio/sentry/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/util/Random;->nextDouble()D

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lio/sentry/TracesSampler;->sampleSessionProfile(D)Z

    move-result v1

    iput-boolean v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isSampled:Z

    .line 138
    iput-boolean v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldSample:Z

    .line 140
    :cond_0
    iget-boolean v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->isSampled:Z

    if-nez v1, :cond_2

    .line 141
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Profiler was not started due to sampling decision."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 142
    :cond_1
    return-void

    .line 144
    :cond_2
    :try_start_1
    sget-object v1, Lio/sentry/android/core/PerfettoContinuousProfiler$1;->$SwitchMap$io$sentry$ProfileLifecycle:[I

    invoke-virtual {p1}, Lio/sentry/ProfileLifecycle;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-virtual {p0}, Lio/sentry/android/core/PerfettoContinuousProfiler;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Unexpected call to startProfiler(MANUAL) while profiler already running. Skipping."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 154
    :cond_3
    return-void

    .line 146
    :pswitch_1
    :try_start_2
    iget v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->activeTraceCount:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->activeTraceCount:I

    .line 147
    iget v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->activeTraceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->activeTraceCount:I

    .line 148
    nop

    .line 158
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/core/PerfettoContinuousProfiler;->isRunning()Z

    move-result v1

    if-nez v1, :cond_5

    .line 159
    iget-object v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Started Profiler."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iput-boolean v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldStop:Z

    .line 161
    invoke-direct {p0}, Lio/sentry/android/core/PerfettoContinuousProfiler;->startInternal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 164
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_6
    return-void

    .line 135
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopProfiler(Lio/sentry/ProfileLifecycle;)V
    .locals 4
    .param p1, "profileLifecycle"    # Lio/sentry/ProfileLifecycle;

    .line 168
    iget-object v0, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 169
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    sget-object v1, Lio/sentry/android/core/PerfettoContinuousProfiler$1;->$SwitchMap$io$sentry$ProfileLifecycle:[I

    invoke-virtual {p1}, Lio/sentry/ProfileLifecycle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 180
    :pswitch_0
    iput-boolean v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldStop:Z

    goto :goto_0

    .line 171
    :pswitch_1
    iget v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->activeTraceCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->activeTraceCount:I

    .line 172
    iget v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->activeTraceCount:I

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->activeTraceCount:I

    .line 174
    iget v1, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->activeTraceCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_1

    .line 183
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 175
    :cond_0
    return-void

    .line 177
    :cond_1
    :try_start_1
    iput-boolean v2, p0, Lio/sentry/android/core/PerfettoContinuousProfiler;->shouldStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    nop

    .line 183
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 184
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 168
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
