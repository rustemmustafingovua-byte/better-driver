.class public final Lio/sentry/SentryExecutorService;
.super Ljava/lang/Object;
.source "SentryExecutorService.java"

# interfaces
.implements Lio/sentry/ISentryExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;,
        Lio/sentry/SentryExecutorService$SentryExecutorServiceThread;
    }
.end annotation


# static fields
.field private static final MAX_QUEUE_SIZE:I = 0x10f

.field static final TIMER_KEEP_ALIVE_SECONDS:J = 0x1eL


# instance fields
.field private final executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 65
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;-><init>(Lio/sentry/SentryExecutorService$1;)V

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, v0, v2}, Lio/sentry/SentryExecutorService;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lio/sentry/SentryOptions;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 3
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 44
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/sentry/SentryExecutorService$SentryExecutorServiceThreadFactory;-><init>(Lio/sentry/SentryExecutorService$1;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, v0, p1}, Lio/sentry/SentryExecutorService;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lio/sentry/SentryOptions;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;ZJLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;
    .param p2, "removeOnCancelPolicy"    # Z
    .param p3, "keepAliveTime"    # J
    .param p5, "keepAliveTimeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 52
    invoke-direct {p0, p1}, Lio/sentry/SentryExecutorService;-><init>(Lio/sentry/SentryOptions;)V

    .line 55
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    .line 56
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p3, p4, p5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 57
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 61
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p2, "options"    # Lio/sentry/SentryOptions;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryExecutorService;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 39
    iput-object p1, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 40
    iput-object p2, p0, Lio/sentry/SentryExecutorService;->options:Lio/sentry/SentryOptions;

    .line 41
    return-void
.end method

.method private isQueueAvailable()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x10f

    if-lt v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V

    .line 74
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSentryExecutorThread()Z
    .locals 1

    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lio/sentry/SentryExecutorService$SentryExecutorServiceThread;

    return v0
.end method


# virtual methods
.method public close(J)V
    .locals 3
    .param p1, "timeoutMillis"    # J

    .line 113
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 114
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    iget-object v1, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    iget-object v1, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_0
    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v2, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 126
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 113
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method public isClosed()Z
    .locals 3

    .line 130
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 131
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 131
    :cond_0
    return v1

    .line 130
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

.method public schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lio/sentry/SentryExecutorService;->isQueueAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->options:Lio/sentry/SentryOptions;

    .line 85
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rejected from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 86
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_1
    new-instance v0, Lio/sentry/CancelledFuture;

    invoke-direct {v0}, Lio/sentry/CancelledFuture;-><init>()V

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 94
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Lio/sentry/SentryExecutorService;->isQueueAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lio/sentry/SentryExecutorService;->options:Lio/sentry/SentryOptions;

    .line 99
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rejected from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/SentryExecutorService;->executorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 100
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_1
    new-instance v0, Lio/sentry/CancelledFuture;

    invoke-direct {v0}, Lio/sentry/CancelledFuture;-><init>()V

    return-object v0
.end method
