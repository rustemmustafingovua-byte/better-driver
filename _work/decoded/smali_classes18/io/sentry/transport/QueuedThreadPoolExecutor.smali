.class final Lio/sentry/transport/QueuedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "QueuedThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;
    }
.end annotation


# static fields
.field private static final RECENT_THRESHOLD:J


# instance fields
.field private final dateProvider:Lio/sentry/SentryDateProvider;

.field private lastRejectTimestamp:Lio/sentry/SentryDate;

.field private final logger:Lio/sentry/ILogger;

.field private final maxQueueSize:I

.field private final unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->RECENT_THRESHOLD:J

    return-void
.end method

.method public constructor <init>(IILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maxQueueSize"    # I
    .param p3, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p4, "rejectedExecutionHandler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .param p5, "logger"    # Lio/sentry/ILogger;
    .param p6, "dateProvider"    # Lio/sentry/SentryDateProvider;

    .line 52
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move v2, p1

    move-object v0, p0

    move v1, p1

    move-object v7, p3

    move-object v8, p4

    .end local p1    # "corePoolSize":I
    .end local p3    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .end local p4    # "rejectedExecutionHandler":Ljava/util/concurrent/RejectedExecutionHandler;
    .local v1, "corePoolSize":I
    .local v7, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .local v8, "rejectedExecutionHandler":Ljava/util/concurrent/RejectedExecutionHandler;
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 30
    const/4 p1, 0x0

    iput-object p1, v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->lastRejectTimestamp:Lio/sentry/SentryDate;

    .line 33
    new-instance p1, Lio/sentry/transport/ReusableCountLatch;

    invoke-direct {p1}, Lio/sentry/transport/ReusableCountLatch;-><init>()V

    iput-object p1, v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    .line 60
    iput p2, v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->maxQueueSize:I

    .line 61
    iput-object p5, v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->logger:Lio/sentry/ILogger;

    .line 62
    iput-object p6, v0, Lio/sentry/transport/QueuedThreadPoolExecutor;->dateProvider:Lio/sentry/SentryDateProvider;

    .line 63
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 89
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->decrement()V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v1}, Lio/sentry/transport/ReusableCountLatch;->decrement()V

    .line 92
    throw v0
.end method

.method public didRejectRecently()Z
    .locals 6

    .line 110
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->lastRejectTimestamp:Lio/sentry/SentryDate;

    .line 111
    .local v0, "lastReject":Lio/sentry/SentryDate;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    return v1

    .line 115
    :cond_0
    iget-object v2, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->dateProvider:Lio/sentry/SentryDateProvider;

    invoke-interface {v2}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v2

    .line 116
    .local v2, "diff":J
    sget-wide v4, Lio/sentry/transport/QueuedThreadPoolExecutor;->RECENT_THRESHOLD:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSchedulingAllowed()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->getCount()I

    move-result v0

    iget v1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->maxQueueSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lio/sentry/transport/QueuedThreadPoolExecutor;->isSchedulingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v0}, Lio/sentry/transport/ReusableCountLatch;->increment()V

    .line 70
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    invoke-virtual {v1}, Lio/sentry/transport/ReusableCountLatch;->decrement()V

    .line 73
    iget-object v1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->dateProvider:Lio/sentry/SentryDateProvider;

    invoke-interface {v1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->lastRejectTimestamp:Lio/sentry/SentryDate;

    .line 74
    iget-object v1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Submit rejected by thread pool executor"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    new-instance v1, Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;

    invoke-direct {v1}, Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;-><init>()V

    return-object v1

    .line 78
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_0
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->dateProvider:Lio/sentry/SentryDateProvider;

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->lastRejectTimestamp:Lio/sentry/SentryDate;

    .line 80
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Submit cancelled"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    new-instance v0, Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;

    invoke-direct {v0}, Lio/sentry/transport/QueuedThreadPoolExecutor$CancelledFuture;-><init>()V

    return-object v0
.end method

.method waitTillIdle(J)V
    .locals 4
    .param p1, "timeoutMillis"    # J

    .line 98
    :try_start_0
    iget-object v0, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->unfinishedTasksCount:Lio/sentry/transport/ReusableCountLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lio/sentry/transport/ReusableCountLatch;->waitTillZero(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lio/sentry/transport/QueuedThreadPoolExecutor;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to wait till idle"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 103
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method
