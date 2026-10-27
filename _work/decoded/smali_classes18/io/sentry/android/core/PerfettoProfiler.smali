.class public Lio/sentry/android/core/PerfettoProfiler;
.super Ljava/lang/Object;
.source "PerfettoProfiler.java"


# static fields
.field private static final KEY_DURATION_MS:Ljava/lang/String; = "KEY_DURATION_MS"

.field private static final KEY_FREQUENCY_HZ:Ljava/lang/String; = "KEY_FREQUENCY_HZ"

.field private static final PROFILING_FREQUENCY_HZ:I = 0x65

.field private static final RESULT_TIMEOUT_MS:J = 0x1388L


# instance fields
.field private final cancellationSignal:Landroid/os/CancellationSignal;

.field private volatile chunkRecord:Lio/sentry/android/core/internal/profiling/ChunkRecord;

.field private final executorService:Lio/sentry/ISentryExecutorService;

.field private final logger:Lio/sentry/ILogger;

.field private final profilingManager:Landroid/os/ProfilingManager;

.field private volatile profilingResult:Landroid/os/ProfilingResult;

.field private final profilingResultLock:Ljava/lang/Object;

.field private resultListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private volatile started:Z


# direct methods
.method public static synthetic $r8$lambda$YXYrUGUNKWu39Gwtzh_R0r6MHfc(Lio/sentry/android/core/PerfettoProfiler;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/PerfettoProfiler;->deleteTraceFile(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ohp00NkoouMKI3yoS2-cXbJ7k8U(Lio/sentry/android/core/PerfettoProfiler;Landroid/os/ProfilingResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/android/core/PerfettoProfiler;->onProfilingResult(Landroid/os/ProfilingResult;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/ISentryExecutorService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .param p3, "executorService"    # Lio/sentry/ISentryExecutorService;

    .line 64
    nop

    .line 67
    const-string v0, "profiling"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ProfilingManager;

    .line 64
    invoke-direct {p0, p2, p3, v0}, Lio/sentry/android/core/PerfettoProfiler;-><init>(Lio/sentry/ILogger;Lio/sentry/ISentryExecutorService;Landroid/os/ProfilingManager;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lio/sentry/ILogger;Lio/sentry/ISentryExecutorService;Landroid/os/ProfilingManager;)V
    .locals 2
    .param p1, "logger"    # Lio/sentry/ILogger;
    .param p2, "executorService"    # Lio/sentry/ISentryExecutorService;
    .param p3, "profilingManager"    # Landroid/os/ProfilingManager;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->profilingResultLock:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->profilingResult:Landroid/os/ProfilingResult;

    .line 54
    iput-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->resultListener:Ljava/util/function/Consumer;

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/sentry/android/core/PerfettoProfiler;->started:Z

    .line 57
    iput-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->chunkRecord:Lio/sentry/android/core/internal/profiling/ChunkRecord;

    .line 74
    iput-object p1, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    .line 75
    iput-object p2, p0, Lio/sentry/android/core/PerfettoProfiler;->executorService:Lio/sentry/ISentryExecutorService;

    .line 76
    iput-object p3, p0, Lio/sentry/android/core/PerfettoProfiler;->profilingManager:Landroid/os/ProfilingManager;

    .line 77
    return-void
.end method

.method private deleteTraceFile(Ljava/io/File;)V
    .locals 4
    .param p1, "traceFile"    # Ljava/io/File;

    .line 198
    if-nez p1, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 203
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 202
    const-string v3, "Failed to delete late Perfetto trace file %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_1
    return-void
.end method

.method private static errorCodeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .line 256
    packed-switch p0, :pswitch_data_0

    .line 270
    :pswitch_0
    const-string v0, "UNKNOWN_ERROR_CODE"

    return-object v0

    .line 268
    :pswitch_1
    const-string v0, "ERROR_UNKNOWN"

    return-object v0

    .line 262
    :pswitch_2
    const-string v0, "ERROR_FAILED_INVALID_REQUEST"

    return-object v0

    .line 266
    :pswitch_3
    const-string v0, "ERROR_FAILED_POST_PROCESSING"

    return-object v0

    .line 264
    :pswitch_4
    const-string v0, "ERROR_FAILED_PROFILING_IN_PROGRESS"

    return-object v0

    .line 258
    :pswitch_5
    const-string v0, "ERROR_FAILED_RATE_LIMIT_PROCESS"

    return-object v0

    .line 260
    :pswitch_6
    const-string v0, "ERROR_FAILED_RATE_LIMIT_SYSTEM"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onProfilingResult(Landroid/os/ProfilingResult;)V
    .locals 5
    .param p1, "result"    # Landroid/os/ProfilingResult;

    .line 171
    iget-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Perfetto ProfilingResult received: errorCode=%d, filePath=%s"

    .line 174
    invoke-virtual {p1}, Landroid/os/ProfilingResult;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 175
    invoke-virtual {p1}, Landroid/os/ProfilingResult;->getResultFilePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 171
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->chunkRecord:Lio/sentry/android/core/internal/profiling/ChunkRecord;

    .line 180
    .local v0, "record":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/ProfilingResult;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    sget-object v1, Lio/sentry/profiling/ProfileRecordingState;->NOT_RECORDED:Lio/sentry/profiling/ProfileRecordingState;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->setRecordingState(Lio/sentry/profiling/ProfileRecordingState;)V

    .line 184
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/PerfettoProfiler;->profilingResultLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iput-object p1, p0, Lio/sentry/android/core/PerfettoProfiler;->profilingResult:Landroid/os/ProfilingResult;

    .line 186
    iget-object v2, p0, Lio/sentry/android/core/PerfettoProfiler;->resultListener:Ljava/util/function/Consumer;

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lio/sentry/android/core/PerfettoProfiler;->resultListener:Ljava/util/function/Consumer;

    invoke-direct {p0, p1}, Lio/sentry/android/core/PerfettoProfiler;->processResult(Landroid/os/ProfilingResult;)Ljava/io/File;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 188
    const/4 v2, 0x0

    iput-object v2, p0, Lio/sentry/android/core/PerfettoProfiler;->resultListener:Ljava/util/function/Consumer;

    .line 190
    :cond_1
    monitor-exit v1

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private processResult(Landroid/os/ProfilingResult;)Ljava/io/File;
    .locals 10
    .param p1, "result"    # Landroid/os/ProfilingResult;

    .line 208
    invoke-virtual {p1}, Landroid/os/ProfilingResult;->getErrorCode()I

    move-result v0

    .line 209
    .local v0, "errorCode":I
    iget-object v1, p0, Lio/sentry/android/core/PerfettoProfiler;->chunkRecord:Lio/sentry/android/core/internal/profiling/ChunkRecord;

    .line 210
    .local v1, "record":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 211
    packed-switch v0, :pswitch_data_0

    .line 222
    iget-object v3, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 226
    invoke-static {v0}, Lio/sentry/android/core/PerfettoProfiler;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 228
    invoke-virtual {p1}, Landroid/os/ProfilingResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 222
    const-string v6, "Perfetto profiling failed with %s (error code %d): %s. See https://developer.android.com/reference/android/os/ProfilingResult"

    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :pswitch_0
    iget-object v3, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 219
    invoke-static {v0}, Lio/sentry/android/core/PerfettoProfiler;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 214
    const-string v6, "Perfetto profiling failed: %s. To disable during development run: adb shell device_config put profiling_testing rate_limiter.disabled true"

    invoke-interface {v3, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    nop

    .line 231
    :goto_0
    return-object v2

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/os/ProfilingResult;->getResultFilePath()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "resultFilePath":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 236
    if-eqz v1, :cond_1

    .line 237
    sget-object v5, Lio/sentry/profiling/ProfileRecordingState;->NOT_RECORDED:Lio/sentry/profiling/ProfileRecordingState;

    invoke-virtual {v1, v5}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->setRecordingState(Lio/sentry/profiling/ProfileRecordingState;)V

    .line 239
    :cond_1
    iget-object v5, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v7, "Perfetto profiling result file path is null."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    return-object v2

    .line 243
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v5, "traceFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    goto :goto_1

    .line 252
    :cond_3
    return-object v5

    .line 245
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 246
    sget-object v6, Lio/sentry/profiling/ProfileRecordingState;->NOT_RECORDED:Lio/sentry/profiling/ProfileRecordingState;

    invoke-virtual {v1, v6}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->setRecordingState(Lio/sentry/profiling/ProfileRecordingState;)V

    .line 248
    :cond_5
    iget-object v6, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v8, "Perfetto trace file does not exist or is empty."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public endAndCollect(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/File;>;"
    iget-boolean v0, p0, Lio/sentry/android/core/PerfettoProfiler;->started:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "PerfettoProfiler was never started"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 130
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 135
    iget-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->profilingResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/PerfettoProfiler;->profilingResult:Landroid/os/ProfilingResult;

    .line 137
    .local v1, "result":Landroid/os/ProfilingResult;
    if-eqz v1, :cond_1

    .line 138
    invoke-direct {p0, v1}, Lio/sentry/android/core/PerfettoProfiler;->processResult(Landroid/os/ProfilingResult;)Ljava/io/File;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 139
    monitor-exit v0

    return-void

    .line 141
    :cond_1
    iput-object p1, p0, Lio/sentry/android/core/PerfettoProfiler;->resultListener:Ljava/util/function/Consumer;

    .line 142
    .end local v1    # "result":Landroid/os/ProfilingResult;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->executorService:Lio/sentry/ISentryExecutorService;

    new-instance v1, Lio/sentry/android/core/PerfettoProfiler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/sentry/android/core/PerfettoProfiler$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/PerfettoProfiler;)V

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v1, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Failed to schedule profiling result timeout."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void

    .line 142
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method synthetic lambda$endAndCollect$0$io-sentry-android-core-PerfettoProfiler()V
    .locals 6

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "hasTimedOut":Z
    iget-object v1, p0, Lio/sentry/android/core/PerfettoProfiler;->profilingResultLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/PerfettoProfiler;->resultListener:Ljava/util/function/Consumer;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Timed out waiting for Perfetto profiling result."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v2, p0, Lio/sentry/android/core/PerfettoProfiler;->resultListener:Ljava/util/function/Consumer;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 153
    new-instance v2, Lio/sentry/android/core/PerfettoProfiler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/sentry/android/core/PerfettoProfiler$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/PerfettoProfiler;)V

    iput-object v2, p0, Lio/sentry/android/core/PerfettoProfiler;->resultListener:Ljava/util/function/Consumer;

    .line 154
    const/4 v0, 0x1

    .line 156
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    if-eqz v0, :cond_1

    .line 158
    iget-object v1, p0, Lio/sentry/android/core/PerfettoProfiler;->chunkRecord:Lio/sentry/android/core/internal/profiling/ChunkRecord;

    .line 159
    .local v1, "record":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    if-eqz v1, :cond_1

    .line 160
    sget-object v2, Lio/sentry/profiling/ProfileRecordingState;->NOT_RECORDED:Lio/sentry/profiling/ProfileRecordingState;

    invoke-virtual {v1, v2}, Lio/sentry/android/core/internal/profiling/ChunkRecord;->setRecordingState(Lio/sentry/profiling/ProfileRecordingState;)V

    .line 163
    .end local v1    # "record":Lio/sentry/android/core/internal/profiling/ChunkRecord;
    :cond_1
    return-void

    .line 156
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method start(Lio/sentry/android/core/internal/profiling/ChunkRecord;J)Z
    .locals 10
    .param p1, "chunkRecord"    # Lio/sentry/android/core/internal/profiling/ChunkRecord;
    .param p2, "durationMs"    # J

    .line 87
    iget-boolean v0, p0, Lio/sentry/android/core/PerfettoProfiler;->started:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "PerfettoProfiler was already started."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return v1

    .line 91
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/PerfettoProfiler;->started:Z

    .line 93
    iget-object v2, p0, Lio/sentry/android/core/PerfettoProfiler;->profilingManager:Landroid/os/ProfilingManager;

    if-nez v2, :cond_1

    .line 94
    iget-object v0, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "ProfilingManager is not available."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return v1

    .line 97
    :cond_1
    iput-object p1, p0, Lio/sentry/android/core/PerfettoProfiler;->chunkRecord:Lio/sentry/android/core/internal/profiling/ChunkRecord;

    .line 99
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v2

    .line 100
    .local v5, "params":Landroid/os/Bundle;
    const-string v2, "KEY_DURATION_MS"

    long-to-int v3, p2

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v2, "KEY_FREQUENCY_HZ"

    const/16 v3, 0x65

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    :try_start_0
    iget-object v3, p0, Lio/sentry/android/core/PerfettoProfiler;->profilingManager:Landroid/os/ProfilingManager;

    const-string v6, "sentry-profiling"

    iget-object v7, p0, Lio/sentry/android/core/PerfettoProfiler;->cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v8, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;-><init>()V

    new-instance v9, Lio/sentry/android/core/PerfettoProfiler$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lio/sentry/android/core/PerfettoProfiler$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/PerfettoProfiler;)V

    const/4 v4, 0x3

    invoke-virtual/range {v3 .. v9}, Landroid/os/ProfilingManager;->requestProfiling(ILandroid/os/Bundle;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    nop

    .line 118
    return v0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/sentry/android/core/PerfettoProfiler;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to request Profiling."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    const/4 v2, 0x0

    iput-object v2, p0, Lio/sentry/android/core/PerfettoProfiler;->chunkRecord:Lio/sentry/android/core/internal/profiling/ChunkRecord;

    .line 115
    return v1
.end method
