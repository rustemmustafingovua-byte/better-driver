.class public Lio/sentry/metrics/MetricsBatchProcessor;
.super Ljava/lang/Object;
.source "MetricsBatchProcessor.java"

# interfaces
.implements Lio/sentry/metrics/IMetricsBatchProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;
    }
.end annotation


# static fields
.field public static final FLUSH_AFTER_MS:I = 0x1388

.field public static final MAX_BATCH_SIZE:I = 0x3e8

.field public static final MAX_QUEUE_SIZE:I = 0x2710


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
            "Lio/sentry/SentryMetricsEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;)V
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "client"    # Lio/sentry/ISentryClient;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->hasScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput-boolean v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->hasAcceptedItem:Z

    .line 38
    iput-boolean v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->isShuttingDown:Z

    .line 40
    new-instance v0, Lio/sentry/transport/ReusableCountLatch;

    invoke-direct {v0}, Lio/sentry/transport/ReusableCountLatch;-><init>()V

    iput-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->pendingCount:Lio/sentry/transport/ReusableCountLatch;

    .line 44
    iput-object p1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->options:Lio/sentry/SentryOptions;

    .line 45
    iput-object p2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->client:Lio/sentry/ISentryClient;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->queue:Ljava/util/Queue;

    .line 47
    new-instance v0, Lio/sentry/SentryExecutorService;

    invoke-direct {v0, p1}, Lio/sentry/SentryExecutorService;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->executorService:Lio/sentry/ISentryExecutorService;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lio/sentry/metrics/MetricsBatchProcessor;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/metrics/MetricsBatchProcessor;

    .line 26
    invoke-direct {p0}, Lio/sentry/metrics/MetricsBatchProcessor;->flush()V

    return-void
.end method

.method private flush()V
    .locals 2

    .line 126
    invoke-direct {p0}, Lio/sentry/metrics/MetricsBatchProcessor;->flushInternal()V

    .line 127
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->hasScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 128
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0, v1}, Lio/sentry/metrics/MetricsBatchProcessor;->maybeSchedule(Z)V

    .line 131
    :cond_0
    return-void
.end method

.method private flushBatch()V
    .locals 3

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v0, "metricsEvents":Ljava/util/List;, "Ljava/util/List<Lio/sentry/SentryMetricsEvent;>;"
    :cond_0
    iget-object v2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/SentryMetricsEvent;

    .line 143
    .local v2, "metricsEvent":Lio/sentry/SentryMetricsEvent;
    if-eqz v2, :cond_1

    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v2    # "metricsEvent":Lio/sentry/SentryMetricsEvent;
    :cond_1
    iget-object v2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 148
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 149
    iget-object v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->client:Lio/sentry/ISentryClient;

    new-instance v2, Lio/sentry/SentryMetricsEvents;

    invoke-direct {v2, v0}, Lio/sentry/SentryMetricsEvents;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Lio/sentry/ISentryClient;->captureBatchedMetricsEvents(Lio/sentry/SentryMetricsEvents;)V

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 151
    iget-object v2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->pendingCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v2}, Lio/sentry/transport/ReusableCountLatch;->decrement()V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private flushInternal()V
    .locals 2

    .line 135
    nop

    :cond_0
    invoke-direct {p0}, Lio/sentry/metrics/MetricsBatchProcessor;->flushBatch()V

    .line 136
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    .line 137
    return-void
.end method

.method private maybeSchedule(Z)V
    .locals 6
    .param p1, "immediately"    # Z

    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 95
    iget-object v2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->hasScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->hasScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    return-void

    .line 100
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x1388

    .line 102
    .local v0, "flushAfterMs":I
    :goto_1
    :try_start_0
    iget-object v2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->executorService:Lio/sentry/ISentryExecutorService;

    new-instance v3, Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lio/sentry/metrics/MetricsBatchProcessor$BatchRunnable;-><init>(Lio/sentry/metrics/MetricsBatchProcessor;Lio/sentry/metrics/MetricsBatchProcessor$1;)V

    int-to-long v4, v0

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_2

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v3, p0, Lio/sentry/metrics/MetricsBatchProcessor;->hasScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    iget-object v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->options:Lio/sentry/SentryOptions;

    .line 106
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 107
    const-string v4, "Metrics batch processor flush task rejected"

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .end local v2    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_2
    return-void
.end method


# virtual methods
.method public add(Lio/sentry/SentryMetricsEvent;)V
    .locals 5
    .param p1, "metricsEvent"    # Lio/sentry/SentryMetricsEvent;

    .line 52
    iget-boolean v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->isShuttingDown:Z

    if-eqz v0, :cond_0

    .line 53
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->pendingCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->getCount()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->options:Lio/sentry/SentryOptions;

    .line 57
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    sget-object v2, Lio/sentry/DataCategory;->TraceMetric:Lio/sentry/DataCategory;

    .line 58
    invoke-interface {v0, v1, v2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 59
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->options:Lio/sentry/SentryOptions;

    .line 61
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    .line 60
    invoke-static {v0, v1, p1}, Lio/sentry/util/JsonSerializationUtils;->byteSizeOf(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/JsonSerializable;)J

    move-result-wide v0

    .line 62
    .local v0, "lostBytes":J
    iget-object v2, p0, Lio/sentry/metrics/MetricsBatchProcessor;->options:Lio/sentry/SentryOptions;

    .line 63
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v2

    sget-object v3, Lio/sentry/clientreport/DiscardReason;->QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    sget-object v4, Lio/sentry/DataCategory;->TraceMetricByte:Lio/sentry/DataCategory;

    .line 64
    invoke-interface {v2, v3, v4, v0, v1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 65
    return-void

    .line 67
    .end local v0    # "lostBytes":J
    :cond_1
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->pendingCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->increment()V

    .line 68
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->hasAcceptedItem:Z

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/sentry/metrics/MetricsBatchProcessor;->maybeSchedule(Z)V

    .line 71
    return-void
.end method

.method public close(Z)V
    .locals 3
    .param p1, "isRestarting"    # Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->isShuttingDown:Z

    .line 77
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->hasAcceptedItem:Z

    if-eqz v1, :cond_0

    .line 78
    invoke-direct {p0, v0}, Lio/sentry/metrics/MetricsBatchProcessor;->maybeSchedule(Z)V

    .line 79
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->executorService:Lio/sentry/ISentryExecutorService;

    new-instance v1, Lio/sentry/metrics/MetricsBatchProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/metrics/MetricsBatchProcessor$$ExternalSyntheticLambda0;-><init>(Lio/sentry/metrics/MetricsBatchProcessor;)V

    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 80
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->executorService:Lio/sentry/ISentryExecutorService;

    iget-object v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ISentryExecutorService;->close(J)V

    .line 85
    :goto_0
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-direct {p0}, Lio/sentry/metrics/MetricsBatchProcessor;->flushBatch()V

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method public flush(J)V
    .locals 4
    .param p1, "timeoutMillis"    # J

    .line 113
    iget-boolean v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->hasAcceptedItem:Z

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/sentry/metrics/MetricsBatchProcessor;->maybeSchedule(Z)V

    .line 118
    :try_start_0
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->pendingCount:Lio/sentry/transport/ReusableCountLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lio/sentry/transport/ReusableCountLatch;->waitTillZero(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to flush metrics events"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 123
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method synthetic lambda$close$0$io-sentry-metrics-MetricsBatchProcessor()V
    .locals 3

    .line 79
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->executorService:Lio/sentry/ISentryExecutorService;

    iget-object v1, p0, Lio/sentry/metrics/MetricsBatchProcessor;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ISentryExecutorService;->close(J)V

    return-void
.end method
