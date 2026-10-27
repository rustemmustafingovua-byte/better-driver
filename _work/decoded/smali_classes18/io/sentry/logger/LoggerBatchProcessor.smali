.class public Lio/sentry/logger/LoggerBatchProcessor;
.super Ljava/lang/Object;
.source "LoggerBatchProcessor.java"

# interfaces
.implements Lio/sentry/logger/ILoggerBatchProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/logger/LoggerBatchProcessor$BatchRunnable;
    }
.end annotation


# static fields
.field public static final FLUSH_AFTER_MS:I = 0x1388

.field public static final MAX_BATCH_SIZE:I = 0x64

.field public static final MAX_QUEUE_SIZE:I = 0x3e8


# instance fields
.field private final client:Lio/sentry/ISentryClient;

.field private final executorService:Lio/sentry/ISentryExecutorService;

.field protected volatile hasAcceptedItem:Z

.field private final hasScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isShuttingDown:Z

.field protected final options:Lio/sentry/SentryOptions;

.field private final pendingCount:Lio/sentry/transport/ReusableCountLatch;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/sentry/SentryLogEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "client"    # Lio/sentry/ISentryClient;

    .line 46
    new-instance v0, Lio/sentry/SentryExecutorService;

    invoke-direct {v0, p1}, Lio/sentry/SentryExecutorService;-><init>(Lio/sentry/SentryOptions;)V

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/logger/LoggerBatchProcessor;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;Lio/sentry/ISentryExecutorService;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;Lio/sentry/ISentryExecutorService;)V
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "client"    # Lio/sentry/ISentryClient;
    .param p3, "executorService"    # Lio/sentry/ISentryExecutorService;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->hasScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput-boolean v1, p0, Lio/sentry/logger/LoggerBatchProcessor;->hasAcceptedItem:Z

    .line 40
    iput-boolean v1, p0, Lio/sentry/logger/LoggerBatchProcessor;->isShuttingDown:Z

    .line 42
    new-instance v0, Lio/sentry/transport/ReusableCountLatch;

    invoke-direct {v0}, Lio/sentry/transport/ReusableCountLatch;-><init>()V

    iput-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->pendingCount:Lio/sentry/transport/ReusableCountLatch;

    .line 55
    iput-object p1, p0, Lio/sentry/logger/LoggerBatchProcessor;->options:Lio/sentry/SentryOptions;

    .line 56
    iput-object p2, p0, Lio/sentry/logger/LoggerBatchProcessor;->client:Lio/sentry/ISentryClient;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->queue:Ljava/util/Queue;

    .line 58
    iput-object p3, p0, Lio/sentry/logger/LoggerBatchProcessor;->executorService:Lio/sentry/ISentryExecutorService;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lio/sentry/logger/LoggerBatchProcessor;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/logger/LoggerBatchProcessor;

    .line 28
    invoke-direct {p0}, Lio/sentry/logger/LoggerBatchProcessor;->flush()V

    return-void
.end method

.method private flush()V
    .locals 2

    .line 134
    invoke-direct {p0}, Lio/sentry/logger/LoggerBatchProcessor;->flushInternal()V

    .line 135
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->hasScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0, v1}, Lio/sentry/logger/LoggerBatchProcessor;->maybeSchedule(Z)V

    .line 139
    :cond_0
    return-void
.end method

.method private flushBatch()V
    .locals 3

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v0, "logEvents":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryLogEvent;>;"
    :cond_0
    iget-object v2, p0, Lio/sentry/logger/LoggerBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/SentryLogEvent;

    .line 151
    .local v2, "logEvent":Lio/sentry/SentryLogEvent;
    if-eqz v2, :cond_1

    .line 152
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v2    # "logEvent":Lio/sentry/SentryLogEvent;
    :cond_1
    iget-object v2, p0, Lio/sentry/logger/LoggerBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 156
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 157
    iget-object v1, p0, Lio/sentry/logger/LoggerBatchProcessor;->client:Lio/sentry/ISentryClient;

    new-instance v2, Lio/sentry/SentryLogEvents;

    invoke-direct {v2, v0}, Lio/sentry/SentryLogEvents;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Lio/sentry/ISentryClient;->captureBatchedLogEvents(Lio/sentry/SentryLogEvents;)V

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 159
    iget-object v2, p0, Lio/sentry/logger/LoggerBatchProcessor;->pendingCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v2}, Lio/sentry/transport/ReusableCountLatch;->decrement()V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private flushInternal()V
    .locals 2

    .line 143
    nop

    :cond_0
    invoke-direct {p0}, Lio/sentry/logger/LoggerBatchProcessor;->flushBatch()V

    .line 144
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 145
    return-void
.end method

.method private maybeSchedule(Z)V
    .locals 6
    .param p1, "immediately"    # Z

    .line 102
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 105
    iget-object v2, p0, Lio/sentry/logger/LoggerBatchProcessor;->hasScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v2, p0, Lio/sentry/logger/LoggerBatchProcessor;->hasScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    return-void

    .line 110
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x1388

    .line 112
    .local v0, "flushAfterMs":I
    :goto_1
    :try_start_0
    iget-object v2, p0, Lio/sentry/logger/LoggerBatchProcessor;->executorService:Lio/sentry/ISentryExecutorService;

    new-instance v3, Lio/sentry/logger/LoggerBatchProcessor$BatchRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lio/sentry/logger/LoggerBatchProcessor$BatchRunnable;-><init>(Lio/sentry/logger/LoggerBatchProcessor;Lio/sentry/logger/LoggerBatchProcessor$1;)V

    int-to-long v4, v0

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_2

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v3, p0, Lio/sentry/logger/LoggerBatchProcessor;->hasScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    iget-object v1, p0, Lio/sentry/logger/LoggerBatchProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Logs batch processor flush task rejected"

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v2    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_2
    return-void
.end method


# virtual methods
.method public add(Lio/sentry/SentryLogEvent;)V
    .locals 5
    .param p1, "logEvent"    # Lio/sentry/SentryLogEvent;

    .line 63
    iget-boolean v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->isShuttingDown:Z

    if-eqz v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->pendingCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->getCount()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->options:Lio/sentry/SentryOptions;

    .line 68
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    sget-object v2, Lio/sentry/DataCategory;->LogItem:Lio/sentry/DataCategory;

    .line 69
    invoke-interface {v0, v1, v2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 70
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->options:Lio/sentry/SentryOptions;

    .line 71
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/logger/LoggerBatchProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/sentry/util/JsonSerializationUtils;->byteSizeOf(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/JsonSerializable;)J

    move-result-wide v0

    .line 72
    .local v0, "lostBytes":J
    iget-object v2, p0, Lio/sentry/logger/LoggerBatchProcessor;->options:Lio/sentry/SentryOptions;

    .line 73
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->LogByte:Lio/sentry/DataCategory;

    .line 74
    invoke-interface {v2, v3, v4, v0, v1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 75
    return-void

    .line 77
    .end local v0    # "lostBytes":J
    :cond_1
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->pendingCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->increment()V

    .line 78
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->hasAcceptedItem:Z

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/sentry/logger/LoggerBatchProcessor;->maybeSchedule(Z)V

    .line 81
    return-void
.end method

.method public close(Z)V
    .locals 3
    .param p1, "isRestarting"    # Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->isShuttingDown:Z

    .line 87
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lio/sentry/logger/LoggerBatchProcessor;->hasAcceptedItem:Z

    if-eqz v1, :cond_0

    .line 88
    invoke-direct {p0, v0}, Lio/sentry/logger/LoggerBatchProcessor;->maybeSchedule(Z)V

    .line 89
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->executorService:Lio/sentry/ISentryExecutorService;

    new-instance v1, Lio/sentry/logger/LoggerBatchProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/logger/LoggerBatchProcessor$$ExternalSyntheticLambda0;-><init>(Lio/sentry/logger/LoggerBatchProcessor;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 90
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->executorService:Lio/sentry/ISentryExecutorService;

    iget-object v1, p0, Lio/sentry/logger/LoggerBatchProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ISentryExecutorService;->close(J)V

    .line 95
    :goto_0
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-direct {p0}, Lio/sentry/logger/LoggerBatchProcessor;->flushBatch()V

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method

.method public flush(J)V
    .locals 4
    .param p1, "timeoutMillis"    # J

    .line 121
    iget-boolean v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->hasAcceptedItem:Z

    if-nez v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/sentry/logger/LoggerBatchProcessor;->maybeSchedule(Z)V

    .line 126
    :try_start_0
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->pendingCount:Lio/sentry/transport/ReusableCountLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lio/sentry/transport/ReusableCountLatch;->waitTillZero(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lio/sentry/logger/LoggerBatchProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to flush log events"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 131
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method synthetic lambda$close$0$io-sentry-logger-LoggerBatchProcessor()V
    .locals 3

    .line 89
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->executorService:Lio/sentry/ISentryExecutorService;

    iget-object v1, p0, Lio/sentry/logger/LoggerBatchProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ISentryExecutorService;->close(J)V

    return-void
.end method
